// ignore_for_file: inference_failure_on_instance_creation

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:reactive_date_time_picker/reactive_date_time_picker.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:urolit/cubits/urolit_form/urolit_form_cubit.dart';
import 'package:urolit/models/study_model.dart';

class StudyFormView extends StatelessWidget {
  const StudyFormView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return BlocSelector<UrolitFormCubit, UrolitFormState, StudyModel?>(
      selector: (state) => state.study,
      builder: (context, state) {
        return StudyModelFormBuilder(
          model: state,
          builder: (
            BuildContext context,
            StudyModelForm formModel,
            Widget? child,
          ) {
            return Center(
              child: SizedBox(
                width: width * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Datos del estudio',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Gutter(),
                    SizedBox(
                      width: width * 0.15,
                      child: ReactiveDateTimePicker(
                        formControlName: StudyModelForm.dateControlName,
                        lastDate: DateTime.now(),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          labelText: 'Fecha',
                          errorMaxLines: 2,
                        ),
                      ),
                    ),
                    const Gutter(),
                    SizedBox(
                      width: width * 0.25,
                      child: ReactiveTextField(
                        formControlName: StudyModelForm.doctorNameControlName,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          labelText: 'Nombre del Dr',
                        ),
                      ),
                    ),
                    const Gutter(),
                    Divider(
                      color: Colors.grey.shade400,
                    ),
                    const Gutter(),
                    ReactiveStudyModelFormConsumer(
                      builder: (
                        BuildContext context,
                        StudyModelForm formModel,
                        Widget? child,
                      ) {
                        if (formModel.form.invalid) {
                          context.read<UrolitFormCubit>().addPatient(null);
                        }

                        return Center(
                          child: CupertinoButton.filled(
                            child: const Text('Siguiente'),
                            onPressed: () {
                              formModel.form.markAllAsTouched();
                              if (formModel.form.valid) {
                                context.read<UrolitFormCubit>()
                                  ..addStudy(formModel.model)
                                  ..nextStep();
                              } else {
                                context.read<UrolitFormCubit>().addStudy(null);
                              }
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        );
        // return PatientModelFormBuilder(
        //   model: state,
        // builder: (
        //   BuildContext context,
        //   PatientModelForm formModel,
        //   Widget? child,
        // ) {
        //     return Center(
        //       child: SizedBox(
        //         width: width * 0.4,
        //         child: Column(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             const Text(
        //               'Datos del estudio',
        //               style: TextStyle(
        //                 fontSize: 20,
        //                 fontWeight: FontWeight.bold,
        //               ),
        //             ),
        //             const Gutter(),
        //             SizedBox(
        //               width: width * 0.15,
        //               child: ReactiveValueListenableBuilder(
        //                 formControlName: PatientModelForm.ageControlName,
        //                 builder: (context, control, child) {
        //                   final age = control.value as int?;

        //                   final firstDate = control.value != null
        //                       ? DateTime(DateTime.now().year - age!)
        //                       : DateTime.now()
        //                           .subtract(const Duration(days: 365));
        //                   return ReactiveDateTimePicker(
        //                     formControlName: PatientModelForm.dateControlName,
        //                     firstDate: firstDate,
        //                     lastDate: DateTime.now(),
        //                     decoration: InputDecoration(
        //                       border: OutlineInputBorder(
        //                         borderRadius: BorderRadius.circular(15),
        //                       ),
        //                       labelText: 'Fecha',
        //                       errorMaxLines: 2,
        //                     ),
        //                   );
        //                 },
        //               ),
        //             ),
        // //             const Gutter(),
        // //             const Text(
        // //               'Datos del paciente',
        // //               style: TextStyle(
        // //                 fontSize: 20,
        // //                 fontWeight: FontWeight.bold,
        // //               ),
        // //             ),
        // //             const Gutter(),
        // //             Row(
        // //               children: [
        // //                 SizedBox(
        // //                   width: width * 0.25,
        // //                   child: ReactiveTextField(
        // //                     formControlName: PatientModelForm.nameControlName,
        // //                     decoration: InputDecoration(
        // //                       border: OutlineInputBorder(
        // //                         borderRadius: BorderRadius.circular(15),
        // //                       ),
        // //                       labelText: 'Nombre',
        // //                     ),
        // //                   ),
        // //                 ),
        // //                 const Gutter(),
        // //                 SizedBox(
        // //                   width: width * 0.1,
        // //                   child: ReactiveTextField(
        // //                     formControlName: PatientModelForm.ehrControlName,
        // //                     decoration: InputDecoration(
        // //                       border: OutlineInputBorder(
        // //                         borderRadius: BorderRadius.circular(15),
        // //                       ),
        // //                       labelText: 'HC',
        // //                       errorMaxLines: 2,
        // //                     ),
        // //                   ),
        // //                 ),
        // //               ],
        // //             ),
        // //             const Gutter(),
        // //             Row(
        // //               children: [
        // //                 SizedBox(
        // //                   width: width * 0.1,
        // //                   child: ReactiveTextField(
        // //                     formControlName: PatientModelForm.weightControlName,
        // //                     inputFormatters: [numberMask],
        // //                     decoration: InputDecoration(
        // //                       border: OutlineInputBorder(
        // //                         borderRadius: BorderRadius.circular(15),
        // //                       ),
        // //                       labelText: 'Peso (kg)',
        // //                       errorMaxLines: 2,
        // //                     ),
        // //                   ),
        // //                 ),
        // //                 const Gutter(),
        // //                 SizedBox(
        // //                   width: width * 0.1,
        // //                   child: ReactiveTextField(
        // //                     formControlName: PatientModelForm.heightControlName,
        // //                     inputFormatters: [numberMask],
        // //                     decoration: InputDecoration(
        // //                       border: OutlineInputBorder(
        // //                         borderRadius: BorderRadius.circular(15),
        // //                       ),
        // //                       labelText: 'Talla (cm)',
        // //                       errorMaxLines: 2,
        // //                     ),
        // //                   ),
        // //                 ),
        // //                 const Gutter(),
        // //                 SizedBox(
        // //                   width: width * 0.15,
        // //                   child: ReactiveDropdownField(
        // //                     formControlName:
        // //                         PatientModelForm.skinColorControlName,
        // //                     decoration: InputDecoration(
        // //                       border: OutlineInputBorder(
        // //                         borderRadius: BorderRadius.circular(15),
        // //                       ),
        // //                       labelText: 'Color piel',
        // //                       errorMaxLines: 2,
        // //                     ),
        // //                     items: const [
        // //                       DropdownMenuItem(
        // //                         value: 'BLANCA',
        // //                         child: Text('Blanca'),
        // //                       ),
        // //                       DropdownMenuItem(
        // //                         value: 'NEGRA',
        // //                         child: Text('Negra'),
        // //                       ),
        // //                       DropdownMenuItem(
        // //                         value: 'MESTIZA',
        // //                         child: Text('Mestiza'),
        // //                       ),
        // //                     ],
        // //                   ),
        // //                 ),
        // //               ],
        // //             ),
        // //             const Gutter(),
        // //             Row(
        // //               children: [
        // //                 SizedBox(
        // //                   width: width * 0.1,
        // //                   child: ReactiveTextField(
        // //                     formControlName: PatientModelForm.ageControlName,
        // //                     inputFormatters: [numberMask],
        // //                     decoration: InputDecoration(
        // //                       border: OutlineInputBorder(
        // //                         borderRadius: BorderRadius.circular(15),
        // //                       ),
        // //                       labelText: 'Edad',
        // //                       errorMaxLines: 2,
        // //                     ),
        // //                   ),
        // //                 ),
        // //                 const Gutter(),
        // //                 SizedBox(
        // //                   width: width * 0.25,
        // //                   child: Row(
        // //                     children: [
        // //                       const Text('Sexo: '),
        // //                       const Gutter(),
        // //                       SizedBox(
        // //                         width: width * 0.05,
        // //                         child: ReactiveRadioListTile(
        // //                           value: 'M',
        // //                           formControlName:
        // //                               PatientModelForm.sexControlName,
        // //                           title: const Text('M'),
        // //                         ),
        // //                       ),
        // //                       SizedBox(
        // //                         width: width * 0.05,
        // //                         child: ReactiveRadioListTile(
        // //                           value: 'F',
        // //                           formControlName:
        // //                               PatientModelForm.sexControlName,
        // //                           title: const Text('F'),
        // //                         ),
        // //                       ),
        // //                     ],
        // //                   ),
        // //                 ),
        // //               ],
        // //             ),
        // //             const Gutter(),
        // //             SizedBox(
        // //               width: width * 0.15,
        // //               child: ReactiveDropdownField(
        // //                 formControlName: PatientModelForm.provinceControlName,
        // //                 decoration: InputDecoration(
        // //                   border: OutlineInputBorder(
        // //                     borderRadius: BorderRadius.circular(15),
        // //                   ),
        // //                   labelText: 'Provincia',
        // //                   errorMaxLines: 2,
        // //                 ),
        // //                 items: const [
        // //                   DropdownMenuItem(
        // //                     value: 'La Habana',
        // //                     child: Text('La Habana'),
        // //                   ),
        // //                   DropdownMenuItem(
        // //                     value: 'Pinar del Río',
        // //                     child: Text('Pinar del Río'),
        // //                   ),
        // //                   DropdownMenuItem(
        // //                     value: 'Artemisa',
        // //                     child: Text('Artemisa'),
        // //                   ),
        // //                   DropdownMenuItem(
        // //                     value: 'Mayabeque',
        // //                     child: Text('Mayabeque'),
        // //                   ),
        // //                   DropdownMenuItem(
        // //                     value: 'Matanzas',
        // //                     child: Text('Matanzas'),
        // //                   ),
        // //                   DropdownMenuItem(
        // //                     value: 'Cienfuegos',
        // //                     child: Text('Cienfuegos'),
        // //                   ),
        // //                   DropdownMenuItem(
        // //                     value: 'Villa Clara',
        // //                     child: Text('Villa Clara'),
        // //                   ),
        // //                   DropdownMenuItem(
        // //                     value: 'Sancti Spíritus',
        // //                     child: Text('Sancti Spíritus'),
        // //                   ),
        // //                   DropdownMenuItem(
        // //                     value: 'Ciego de Ávila',
        // //                     child: Text('Ciego de Ávila'),
        // //                   ),
        // //                   DropdownMenuItem(
        // //                     value: 'Camagüey',
        // //                     child: Text('Camagüey'),
        // //                   ),
        // //                   DropdownMenuItem(
        // //                     value: 'Las Tunas',
        // //                     child: Text('Las Tunas'),
        // //                   ),
        // //                   DropdownMenuItem(
        // //                     value: 'Holguín',
        // //                     child: Text('Holguín'),
        // //                   ),
        // //                   DropdownMenuItem(
        // //                     value: 'Granma',
        // //                     child: Text('Granma'),
        // //                   ),
        // //                   DropdownMenuItem(
        // //                     value: 'Santiago de Cuba',
        // //                     child: Text('Santiago de Cuba'),
        // //                   ),
        // //                   DropdownMenuItem(
        // //                     value: 'Guantánamo',
        // //                     child: Text('Guantánamo'),
        // //                   ),
        // //                   DropdownMenuItem(
        // //                     value: 'Isla de la Juventud',
        // //                     child: Text('Isla de la Juventud'),
        // //                   ),
        // //                 ],
        // //               ),
        // //             ),
        // //             const Gutter(),
        // //             Divider(
        // //               color: Colors.grey.shade400,
        // //             ),
        // //             const GutterTiny(),
        // //             ReactivePatientModelFormConsumer(
        // //               builder: (
        // //                 BuildContext context,
        // //                 PatientModelForm formModel,
        // //                 Widget? child,
        // //               ) {
        // //                 if (formModel.form.invalid) {
        // //                   context.read<UrolitFormCubit>().addPatient(null);
        // //                 }

        // //                 return Center(
        // //                   child: CupertinoButton.filled(
        // //                     child: const Text('Siguiente'),
        // //                     onPressed: () {
        // //                       formModel.form.markAllAsTouched();
        // //                       if (formModel.form.valid) {
        // //                         context.read<UrolitFormCubit>()
        // //                           ..addPatient(formModel.model)
        // //                           ..nextStep();
        // //                       } else {
        // //                         context
        // //                             .read<UrolitFormCubit>()
        // //                             .addPatient(null);
        // //                       }
        // //                     },
        // //                   ),
        // //                 );
        // //               },
        // //             ),
        // //           ],
        // //         ),
        // //       ),
        // //     );
        // //   },
        // // );
        // return Container();
      },
    );
  }
}

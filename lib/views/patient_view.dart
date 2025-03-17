// ignore_for_file: inference_failure_on_instance_creation

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:urolit/cubits/urolit_form/urolit_form_cubit.dart';
import 'package:urolit/models/patient.dart';

class PatientFormView extends StatelessWidget {
  const PatientFormView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final numberMask = MaskTextInputFormatter(
      mask: '###',
      filter: {
        '#': RegExp('[0-9]'),
      },
    );

    return BlocSelector<UrolitFormCubit, UrolitFormState, PatientModel?>(
      selector: (state) => state.patient,
      builder: (context, state) {
        return PatientModelFormBuilder(
          model: state,
          builder: (
            BuildContext context,
            PatientModelForm formModel,
            Widget? child,
          ) {
            return Center(
              child: Row(
                children: [
                  const Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Datos del paciente',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Gutter(),
                      Row(
                        children: [
                          SizedBox(
                            width: width * 0.25,
                            child: ReactiveTextField(
                              formControlName: PatientModelForm.nameControlName,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                labelText: 'Nombre',
                              ),
                            ),
                          ),
                          const Gutter(),
                          SizedBox(
                            width: width * 0.1,
                            child: ReactiveTextField(
                              formControlName: PatientModelForm.ehrControlName,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                labelText: 'HC',
                                errorMaxLines: 2,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Gutter(),
                      Row(
                        children: [
                          SizedBox(
                            width: width * 0.1,
                            child: ReactiveTextField(
                              formControlName:
                                  PatientModelForm.weightControlName,
                              inputFormatters: [numberMask],
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                labelText: 'Peso',
                                errorMaxLines: 2,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 120,
                            child: ReactiveRadioListTile(
                              value: true,
                              formControlName:
                                  PatientModelForm.weightIsInKgControlName,
                              title: const Text('kg'),
                            ),
                          ),
                          SizedBox(
                            width: 150,
                            child: ReactiveRadioListTile(
                              value: false,
                              formControlName:
                                  PatientModelForm.weightIsInKgControlName,
                              title: const Text('lb'),
                            ),
                          ),
                          const Gutter(),
                          Row(
                            children: [
                              SizedBox(
                                width: width * 0.1,
                                child: ReactiveTextField(
                                  formControlName:
                                      PatientModelForm.heightControlName,
                                  inputFormatters: [numberMask],
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    labelText: 'Talla',
                                    errorMaxLines: 2,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 120,
                                child: ReactiveRadioListTile(
                                  value: true,
                                  formControlName:
                                      PatientModelForm.heightIsInCmControlName,
                                  title: const Text('cm'),
                                ),
                              ),
                              SizedBox(
                                width: 150,
                                child: ReactiveRadioListTile(
                                  value: false,
                                  formControlName:
                                      PatientModelForm.heightIsInCmControlName,
                                  title: const Text('pulg'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Gutter(),
                      Row(
                        children: [
                          SizedBox(
                            width: width * 0.1,
                            child: ReactiveTextField(
                              formControlName: PatientModelForm.ageControlName,
                              inputFormatters: [numberMask],
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                labelText: 'Edad',
                                errorMaxLines: 2,
                              ),
                            ),
                          ),
                          const Gutter(),
                          SizedBox(
                            width: width * 0.15,
                            child: ReactiveDropdownField(
                              formControlName:
                                  PatientModelForm.skinColorControlName,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                labelText: 'Color piel',
                                errorMaxLines: 2,
                              ),
                              items: const [
                                DropdownMenuItem(
                                  value: 'BLANCA',
                                  child: Text('Blanca'),
                                ),
                                DropdownMenuItem(
                                  value: 'NEGRA',
                                  child: Text('Negra'),
                                ),
                                DropdownMenuItem(
                                  value: 'MESTIZA',
                                  child: Text('Mestiza'),
                                ),
                              ],
                            ),
                          ),
                          const Gutter(),
                          SizedBox(
                            width: width * 0.25,
                            child: Row(
                              children: [
                                const Text('Sexo: '),
                                const Gutter(),
                                SizedBox(
                                  width: 100,
                                  child: ReactiveRadioListTile(
                                    value: 'M',
                                    formControlName:
                                        PatientModelForm.sexControlName,
                                    title: const Text('M'),
                                  ),
                                ),
                                SizedBox(
                                  width: 100,
                                  child: ReactiveRadioListTile(
                                    value: 'F',
                                    formControlName:
                                        PatientModelForm.sexControlName,
                                    title: const Text('F'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Gutter(),
                      SizedBox(
                        width: width * 0.15,
                        child: ReactiveDropdownField(
                          formControlName: PatientModelForm.provinceControlName,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            labelText: 'Provincia',
                            errorMaxLines: 2,
                          ),
                          items: const [
                            DropdownMenuItem(
                              value: 'La Habana',
                              child: Text('La Habana'),
                            ),
                            DropdownMenuItem(
                              value: 'Pinar del Río',
                              child: Text('Pinar del Río'),
                            ),
                            DropdownMenuItem(
                              value: 'Artemisa',
                              child: Text('Artemisa'),
                            ),
                            DropdownMenuItem(
                              value: 'Mayabeque',
                              child: Text('Mayabeque'),
                            ),
                            DropdownMenuItem(
                              value: 'Matanzas',
                              child: Text('Matanzas'),
                            ),
                            DropdownMenuItem(
                              value: 'Cienfuegos',
                              child: Text('Cienfuegos'),
                            ),
                            DropdownMenuItem(
                              value: 'Villa Clara',
                              child: Text('Villa Clara'),
                            ),
                            DropdownMenuItem(
                              value: 'Sancti Spíritus',
                              child: Text('Sancti Spíritus'),
                            ),
                            DropdownMenuItem(
                              value: 'Ciego de Ávila',
                              child: Text('Ciego de Ávila'),
                            ),
                            DropdownMenuItem(
                              value: 'Camagüey',
                              child: Text('Camagüey'),
                            ),
                            DropdownMenuItem(
                              value: 'Las Tunas',
                              child: Text('Las Tunas'),
                            ),
                            DropdownMenuItem(
                              value: 'Holguín',
                              child: Text('Holguín'),
                            ),
                            DropdownMenuItem(
                              value: 'Granma',
                              child: Text('Granma'),
                            ),
                            DropdownMenuItem(
                              value: 'Santiago de Cuba',
                              child: Text('Santiago de Cuba'),
                            ),
                            DropdownMenuItem(
                              value: 'Guantánamo',
                              child: Text('Guantánamo'),
                            ),
                            DropdownMenuItem(
                              value: 'Isla de la Juventud',
                              child: Text('Isla de la Juventud'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(30),
                        child: SizedBox(
                          width: width * 0.4,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Divider(
                                color: Colors.grey.shade400,
                              ),
                              const GutterTiny(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextButton(
                                    onPressed: context
                                        .read<UrolitFormCubit>()
                                        .previousStep,
                                    child: const Text('Anterior'),
                                  ),
                                  const Gutter(),
                                  CupertinoButton.filled(
                                    onPressed: () {
                                      formModel.form.markAllAsTouched();
                                      if (formModel.form.valid) {
                                        context.read<UrolitFormCubit>()
                                          ..addPatient(formModel.model)
                                          ..nextStep();
                                      } else {
                                        context
                                            .read<UrolitFormCubit>()
                                            .addPatient(null);
                                      }
                                    },
                                    child: const Text('Siguiente'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

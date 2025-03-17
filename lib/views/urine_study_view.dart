import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:reactive_date_time_picker/reactive_date_time_picker.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:urolit/cubits/urolit_form/urolit_form_cubit.dart';
import 'package:urolit/models/urine_study.dart';
import 'package:urolit/router.dart';

class _InputItem {
  _InputItem({
    required this.formControlName,
    required this.input,
    this.unit,
  });

  final String input;
  final String? unit;
  final String formControlName;
}

final _inputsWithUnit = [
  _InputItem(
    input: 'VOL. URINARIO',
    formControlName: UrineStudyModelForm.voloControlName,
    unit: 'ml',
  ),
  _InputItem(
    input: 'CREATININA',
    formControlName: UrineStudyModelForm.creaoControlName,
    unit: 'mg/dl',
  ),
  _InputItem(
    input: 'CALCIO',
    formControlName: UrineStudyModelForm.caloControlName,
    unit: 'mg/dl',
  ),
  _InputItem(
    input: 'FOSFORO',
    formControlName: UrineStudyModelForm.fosoControlName,
    unit: 'mg/dl',
  ),
];

final _inputs = [
  _InputItem(
    input: 'ACIDO URICO',
    formControlName: UrineStudyModelForm.acuoControlName,
    unit: 'mg/dl',
  ),
  _InputItem(
    input: 'MAGNESIO',
    formControlName: UrineStudyModelForm.magoControlName,
    unit: 'meq/l',
  ),
  _InputItem(
    input: 'OXALATO',
    formControlName: UrineStudyModelForm.oxalatoControlName,
    unit: 'mM/l',
  ),
  _InputItem(
    input: 'CITRATO',
    formControlName: UrineStudyModelForm.citratoControlName,
    unit: 'mM/l',
  ),
];

class UrineStudyFormView extends StatelessWidget {
  const UrineStudyFormView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return BlocSelector<UrolitFormCubit, UrolitFormState, UrineStudyModel?>(
      selector: (state) => state.urineStudy,
      builder: (context, state) {
        return UrineStudyModelFormBuilder(
          model: state,
          builder: (
            BuildContext context,
            UrineStudyModelForm formModel,
            Widget? child,
          ) {
            return Container(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Datos del estudio en orina',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gutter(),
                  const Text(
                    'Rango de horas',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const Gutter(),
                  SizedBox(
                    width: width * 0.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: width * 0.1,
                          child: ReactiveDateTimePicker(
                            formControlName:
                                UrineStudyModelForm.startHourControlName,
                            type: ReactiveDatePickerFieldType.time,
                            timePickerEntryMode: TimePickerEntryMode.inputOnly,
                            decoration: const InputDecoration(
                              labelText: 'Hora inicio',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const GutterTiny(),
                        Divider(
                          color: Colors.grey.shade400,
                        ),
                        const GutterTiny(),
                        SizedBox(
                          width: width * 0.1,
                          child: ReactiveValueListenableBuilder(
                            formControlName:
                                UrineStudyModelForm.startHourControlName,
                            builder: (context, formControl, child) {
                              final value = formControl.value as DateTime?;

                              return ReactiveDateTimePicker(
                                formControlName:
                                    UrineStudyModelForm.endHourControlName,
                                type: ReactiveDatePickerFieldType.time,
                                firstDate: value ?? DateTime.now(),
                                timePickerEntryMode:
                                    TimePickerEntryMode.inputOnly,
                                decoration: const InputDecoration(
                                  labelText: 'Hora fin',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  ReactiveUrineStudyModelFormConsumer(
                    builder: (context, form, child) {
                      final startHour = form.startHourControl.value;
                      final endHour = form.endHourControl.value;

                      if (startHour == null || endHour == null) {
                        return const SizedBox();
                      }

                      final difference =
                          endHour.difference(startHour).inMinutes;

                      if (difference.isNegative) {
                        return Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.red,
                              ),
                              color: Colors.red.shade50,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            padding: const EdgeInsets.all(15),
                            child: const Text(
                              'El rango de horas no es válido',
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ),
                        );
                      }

                      return const SizedBox();
                    },
                  ),
                  const Gutter(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey.shade400,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: width * 0.4,
                        child: SingleChildScrollView(
                          child: DataTable(
                            dataRowMaxHeight: 75,
                            dividerThickness: 0.002,
                            columns: const [
                              DataColumn(label: Text('Valor')),
                              DataColumn(label: Text('Valor')),
                              DataColumn(label: Text('Unidad')),
                            ],
                            rows: _inputsWithUnit
                                .map(
                                  (input) => DataRow(
                                    cells: [
                                      DataCell(Text(input.input)),
                                      DataCell(
                                        SizedBox(
                                          width: width * 0.1,
                                          child: ReactiveTextField<double>(
                                            formControlName:
                                                input.formControlName,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      DataCell(Text(input.unit!)),
                                    ],
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      ),
                      const GutterLarge(),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey.shade400,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: width * 0.4,
                        child: SingleChildScrollView(
                          child: DataTable(
                            dataRowMaxHeight: 75,
                            dividerThickness: 0.002,
                            columns: const [
                              DataColumn(label: Text('Valor')),
                              DataColumn(label: Text('Valor')),
                              DataColumn(label: Text('Medida')),
                            ],
                            rows: _inputs
                                .map(
                                  (input) => DataRow(
                                    cells: [
                                      DataCell(Text(input.input)),
                                      DataCell(
                                        SizedBox(
                                          width: width * 0.1,
                                          child: ReactiveTextField<double>(
                                            formControlName:
                                                input.formControlName,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      DataCell(Text(input.unit ?? ' - ')),
                                    ],
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Gutter(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'CULT.ORINA (+/-): ',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      const GutterTiny(),
                      SizedBox(
                        width: width * 0.1,
                        child: ReactiveTextField<double?>(
                          formControlName:
                              UrineStudyModelForm.cultivoControlName,
                          decoration: InputDecoration(
                            isDense: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      const GutterLarge(),
                      const Text(
                        'TEST DE CISTINA (+/-): ',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      const GutterTiny(),
                      SizedBox(
                        width: 100,
                        child: ReactiveRadioListTile(
                          value: true,
                          formControlName:
                              UrineStudyModelForm.cistinaControlName,
                          title: const Text('+'),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: ReactiveRadioListTile(
                          value: false,
                          formControlName:
                              UrineStudyModelForm.cistinaControlName,
                          title: const Text('-'),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('pH'),
                      const GutterTiny(),
                      SizedBox(
                        width: 100,
                        child: ReactiveTextField<double>(
                          formControlName: UrineStudyModelForm.phControlName,
                          decoration: InputDecoration(
                            isDense: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ],
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
                                  final cubit = context.read<UrolitFormCubit>();
                                  if (formModel.form.valid) {
                                    cubit.addUrineStudy(formModel.model);
                                    context.router.push(
                                      ResultRoute(
                                        analysisModel: cubit.state.analysis!,
                                      ),
                                    );
                                  } else {
                                    cubit.addUrineStudy(null);
                                  }
                                },
                                child: const Text('Ver Resultado'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

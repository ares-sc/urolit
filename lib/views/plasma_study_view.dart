import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:urolit/cubits/urolit_form/urolit_form_cubit.dart';
import 'package:urolit/models/plasma_study.dart';

class _InputItem {
  _InputItem({
    required this.formControlName,
    required this.input,
    required this.unit,
  });

  final String input;
  final String unit;
  final String formControlName;
}

final inputs = [
  _InputItem(
    input: 'FOSFORO',
    formControlName: PlasmaStudyModelForm.fospControlName,
    unit: 'mg/dl',
  ),
  _InputItem(
    input: 'ÁCIDO ÚRICO',
    formControlName: PlasmaStudyModelForm.acupControlName,
    unit: 'mg/dl',
  ),
  _InputItem(
    input: 'CALCIO IONICO',
    formControlName: PlasmaStudyModelForm.calcionControlName,
    unit: 'U/l',
  ),
];

final inputs2 = [
  _InputItem(
    input: 'CREATININA',
    formControlName: PlasmaStudyModelForm.creapControlName,
    unit: 'mg/dl',
  ),
  _InputItem(
    input: 'FOSFATASA ALCALINA',
    formControlName: PlasmaStudyModelForm.fosfaControlName,
    unit: 'U/l',
  ),
  _InputItem(
    input: 'CALCIO',
    formControlName: PlasmaStudyModelForm.calpControlName,
    unit: 'mg/dl',
  ),
];

class PlasmaStudyFormView extends StatelessWidget {
  const PlasmaStudyFormView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final numberMask = MaskTextInputFormatter(
      filter: {
        '#': RegExp('[0-9]'),
      },
    );

    return BlocSelector<UrolitFormCubit, UrolitFormState, PlasmaStudyModel?>(
      selector: (state) => state.plasmaStudy,
      builder: (context, state) {
        return PlasmaStudyModelFormBuilder(
          model: state,
          builder: (
            BuildContext context,
            PlasmaStudyModelForm formModel,
            Widget? child,
          ) {
            return SizedBox(
              width: width * 0.4,
              height: width * 0.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Datos del estudio en plasma',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const GutterSmall(),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
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
                              child: DataTable(
                                dataRowMaxHeight: 100,
                                dividerThickness: 0.002,
                                columns: const [
                                  DataColumn(label: Text('Valor')),
                                  DataColumn(label: Text('Valor')),
                                  DataColumn(label: Text('Unidad')),
                                ],
                                rows: inputs
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
                                                inputFormatters: [numberMask],
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      15,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          DataCell(Text(input.unit)),
                                        ],
                                      ),
                                    )
                                    .toList(),
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
                              child: DataTable(
                                dataRowMaxHeight: 100,
                                dividerThickness: 0.002,
                                columns: const [
                                  DataColumn(label: Text('Valor')),
                                  DataColumn(label: Text('Valor')),
                                  DataColumn(label: Text('Unidad')),
                                ],
                                rows: inputs2
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
                                                inputFormatters: [numberMask],
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      15,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          DataCell(Text(input.unit)),
                                        ],
                                      ),
                                    )
                                    .toList(),
                              ),
                            ),
                          ],
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
                                      ..addPlasmaStudy(formModel.model)
                                      ..nextStep();
                                  } else {
                                    context
                                        .read<UrolitFormCubit>()
                                        .addPlasmaStudy(null);
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
            );
          },
        );
      },
    );
  }
}

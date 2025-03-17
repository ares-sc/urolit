import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:intl/intl.dart';
import 'package:urolit/models/analysis_model.dart';
import 'package:urolit/models/diagnosis_model.dart';
import 'package:urolit/models/patient.dart';
import 'package:urolit/models/study_model.dart';
import 'package:urolit/pdf.dart';

@RoutePage()
class ResultPage extends StatelessWidget {
  const ResultPage({required this.analysisModel, super.key});

  final AnalysisModel analysisModel;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final study = analysisModel.study;
    final patient = analysisModel.patient;
    final bs = double.parse(analysisModel.bs.toStringAsFixed(2));

    final diagnosisModel = DiagnosisModel(analysis: analysisModel);
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Center(
          child: SizedBox(
            width: width * 0.4,
            height: width * 0.65,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'PROTOCOLO DE INVESTIGACION DE PACIENTES CON UROLITIASIS ACTIVA',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gutter(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text('FECHA: '),
                          const GutterTiny(),
                          Text(DateFormat.yMMMMd('es').format(study.date)),
                        ],
                      ),
                    ],
                  ),
                  const Gutter(),
                  _PatientInfo(
                    patient: patient,
                    bs: bs,
                    study: study,
                  ),
                  const Gutter(),
                  const SizedBox(
                    child: TabBar(
                      tabs: [
                        Tab(
                          text: 'Pág. 1: Análisis',
                        ),
                        Tab(
                          text: 'Pág. 2: Hallazgos',
                        ),
                        Tab(
                          text: 'Pág. 3: Conclusiones',
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            children: [
                              const Spacer(),
                              _Page1(
                                analysisModel: analysisModel,
                              ),
                              const Spacer(),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: _Page2(
                            diagnosis: diagnosisModel,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: _Page3(diagnosis: diagnosisModel),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OutlinedButton(
                        onPressed: () {
                          context.popRoute(false);
                        },
                        child: const Text('Regresar'),
                      ),
                      const Gutter(),
                      CupertinoButton.filled(
                        child: const Text('Generar reporte'),
                        onPressed: () {
                          PdfReport.genPdf(diagnosisModel);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Page2 extends StatelessWidget {
  const _Page2({
    required this.diagnosis,
    super.key,
  });

  final DiagnosisModel diagnosis;

  @override
  Widget build(BuildContext context) {
    final diagnoses = diagnosis.diagnoses();
    return ListView.builder(
      itemCount: diagnoses.length,
      itemBuilder: (context, index) {
        final d = diagnoses[index];

        return Text(d);
      },
    );
  }
}

class _Page3 extends StatelessWidget {
  const _Page3({
    required this.diagnosis,
    super.key,
  });

  final DiagnosisModel diagnosis;

  @override
  Widget build(BuildContext context) {
    final concAndRec = diagnosis.conclusions();
    return ListView.builder(
      itemCount: concAndRec.length,
      itemBuilder: (context, index) {
        final d = concAndRec[index];

        return Text(d);
      },
    );
  }
}

class _Page1 extends StatelessWidget {
  const _Page1({
    required this.analysisModel,
    super.key,
  });

  final AnalysisModel analysisModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gutter(),
          _PlasmaticDeterminations(
            analysisModel: analysisModel,
          ),
          const GutterLarge(),
          _PlasmaticClearness(
            analysisModel: analysisModel,
          ),
          const GutterLarge(),
          _ReabsortionFractions(
            analysisModel: analysisModel,
          ),
          const GutterLarge(),
          _MetabolitesExcretions(
            analysisModel: analysisModel,
          ),
          const GutterLarge(),
          _RiskIndexes(
            analysisModel: analysisModel,
          ),
        ],
      ),
    );
  }
}

class _PlasmaticClearness extends StatelessWidget {
  const _PlasmaticClearness({
    required this.analysisModel,
    super.key,
  });

  final AnalysisModel analysisModel;

  double get clcr => double.parse(analysisModel.clcr.toStringAsFixed(2));
  double get clp => double.parse(analysisModel.clp.toStringAsFixed(2));
  double get clau => double.parse(analysisModel.clau.toStringAsFixed(2));

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'ACLARAMIENTOS PLASMATICOS (normalizados a 1.73 m2 sup. corp.)',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        DataTable(
          dividerThickness: 0.002,
          columnSpacing: 20,
          headingRowHeight: 0,
          columns: const [
            DataColumn(label: Text('')),
            DataColumn(label: Text('')),
            DataColumn(label: Text('')),
          ],
          rows: [
            DataRow(
              cells: [
                const DataCell(
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text('ACLARAMIENTO DE CREATININA'),
                  ),
                ),
                DataCell(Text(clcr.toString())),
                const DataCell(Text('ml/min')),
              ],
            ),
            DataRow(
              cells: [
                const DataCell(
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text('ACLARAMIENTO DE FOSFORO'),
                  ),
                ),
                DataCell(Text(clp.toString())),
                const DataCell(Text('ml/min')),
              ],
            ),
            DataRow(
              cells: [
                const DataCell(
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text('ACLARAMIENTO DE AC. URICO'),
                  ),
                ),
                DataCell(Text(clau.toString())),
                const DataCell(Text('ml/min')),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class _ReabsortionFractions extends StatelessWidget {
  const _ReabsortionFractions({
    required this.analysisModel,
    super.key,
  });

  final AnalysisModel analysisModel;

  double get trfp => double.parse(analysisModel.trfp.toStringAsFixed(2));
  double get trfau => double.parse(analysisModel.trfau.toStringAsFixed(2));

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'FRACCIONES DE REABSORCION',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
        DataTable(
          dividerThickness: 0.002,
          columnSpacing: 20,
          headingRowHeight: 0,
          columns: const [
            DataColumn(label: Text('')),
            DataColumn(label: Text('')),
            DataColumn(label: Text('')),
          ],
          rows: [
            DataRow(
              cells: [
                const DataCell(
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text('TRF FOSFORO'),
                  ),
                ),
                DataCell(Text(trfp.toString())),
                const DataCell(Text('%')),
              ],
            ),
            DataRow(
              cells: [
                const DataCell(
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text('TRF AC. URICO'),
                  ),
                ),
                DataCell(Text(trfau.toString())),
                const DataCell(Text('%')),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class _PlasmaticDeterminations extends StatelessWidget {
  const _PlasmaticDeterminations({
    required this.analysisModel,
    super.key,
  });

  final AnalysisModel analysisModel;

  double get creap => double.parse(analysisModel.creap.toStringAsFixed(2));
  double get calp => double.parse(analysisModel.calp.toStringAsFixed(2));
  double get calcioni =>
      double.parse(analysisModel.calcioni.toStringAsFixed(2));
  double get fosp => double.parse(analysisModel.fosp.toStringAsFixed(2));
  double get acup => double.parse(analysisModel.acup.toStringAsFixed(2));

  double get creapi => double.parse(analysisModel.creapi.toStringAsFixed(2));
  double get calpi => double.parse(analysisModel.calpi.toStringAsFixed(2));
  double get calcion => double.parse(analysisModel.calcion.toStringAsFixed(2));
  double get fospi => double.parse(analysisModel.fospi.toStringAsFixed(2));
  double get acupi => double.parse(analysisModel.acupi.toStringAsFixed(2));

  double get fosfa => double.parse(analysisModel.fosfa.toStringAsFixed(2));
  double get flujoo => double.parse(analysisModel.flujoo.toStringAsFixed(2));

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'DETERMINACIONES PLASMATICAS',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        DataTable(
          dividerThickness: 0.002,
          columnSpacing: 20,
          headingRowHeight: 0,
          columns: const [
            DataColumn(label: Text('')),
            DataColumn(label: Text('')),
            DataColumn(label: Text('')),
            DataColumn(label: Text('')),
            DataColumn(label: Text('')),
          ],
          rows: [
            DataRow(
              cells: [
                const DataCell(
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text('CREATININA'),
                  ),
                ),
                DataCell(Text(creap.toString())),
                const DataCell(Text('mg/dl')),
                DataCell(Text(creapi.toString())),
                const DataCell(Text('umol/l')),
              ],
            ),
            DataRow(
              cells: [
                const DataCell(
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text('CALCIO'),
                  ),
                ),
                DataCell(Text(calp.toString())),
                const DataCell(Text('mg/dl')),
                DataCell(Text(calpi.toString())),
                const DataCell(Text('mmol/l')),
              ],
            ),
            if (calcion != 0)
              DataRow(
                cells: [
                  const DataCell(
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text('CALCIO IONICO'),
                    ),
                  ),
                  DataCell(Text(calcioni.toString())),
                  const DataCell(Text('mg/dl')),
                  DataCell(Text(calcion.toString())),
                  const DataCell(Text('mmol/l')),
                ],
              ),
            DataRow(
              cells: [
                const DataCell(
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text('FOSFORO'),
                  ),
                ),
                DataCell(Text(fosp.toString())),
                const DataCell(Text('mg/dl')),
                DataCell(Text(fospi.toString())),
                const DataCell(Text('mmol/l')),
              ],
            ),
            DataRow(
              cells: [
                const DataCell(
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text('ACIDO URICO'),
                  ),
                ),
                DataCell(Text(acup.toString())),
                const DataCell(Text('mg/dl')),
                DataCell(Text(acupi.toString())),
                const DataCell(Text('mmol/l')),
              ],
            ),
          ],
        ),
        const GutterTiny(),
        DataTable(
          dividerThickness: 0.002,
          columnSpacing: 20,
          headingRowHeight: 0,
          columns: const [
            DataColumn(label: Text('')),
            DataColumn(label: Text('')),
            DataColumn(label: Text('')),
          ],
          rows: [
            DataRow(
              cells: [
                const DataCell(
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text('FOSFATASA ALCALINA'),
                  ),
                ),
                DataCell(Text(fosfa.toString())),
                const DataCell(Text('U/l')),
              ],
            ),
            DataRow(
              cells: [
                const DataCell(
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text('FLUJO URINARIO'),
                  ),
                ),
                DataCell(Text(flujoo.toString())),
                const DataCell(Text('ml/min')),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class _MetabolitesExcretions extends StatelessWidget {
  const _MetabolitesExcretions({
    required this.analysisModel,
    super.key,
  });

  final AnalysisModel analysisModel;

  double get op => double.parse(analysisModel.op.toStringAsFixed(2));
  double get oau => double.parse(analysisModel.oau.toStringAsFixed(2));
  double get oca => double.parse(analysisModel.oca.toStringAsFixed(2));
  double get ocr => double.parse(analysisModel.ocr.toStringAsFixed(2));
  double? get oxaoi => analysisModel.oxaoi == null
      ? null
      : double.parse(analysisModel.oxaoi!.toStringAsFixed(2));
  double? get citraoi => analysisModel.citraoi == null
      ? null
      : double.parse(analysisModel.citraoi!.toStringAsFixed(2));

  double get opi => double.parse(analysisModel.opi.toStringAsFixed(2));
  double get oaui => double.parse(analysisModel.oaui.toStringAsFixed(2));
  double get ocai => double.parse(analysisModel.ocai.toStringAsFixed(2));
  double get ocri => double.parse(analysisModel.ocri.toStringAsFixed(2));
  double? get oxao => analysisModel.oxao == null
      ? null
      : double.parse(analysisModel.oxao!.toStringAsFixed(2));
  double? get citrao => analysisModel.citrao == null
      ? null
      : double.parse(analysisModel.citrao!.toStringAsFixed(2));

  double get indcamg => double.parse(analysisModel.indcamg.toStringAsFixed(2));
  double get indcacr => double.parse(analysisModel.indcacr.toStringAsFixed(2));
  double get ph => double.parse(analysisModel.ph.toStringAsFixed(2));

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'EXCRECIONDE METABOLITOS Y ELECTROLITOS EN 24 HORAS',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        DataTable(
          dividerThickness: 0.002,
          columnSpacing: 20,
          headingRowHeight: 0,
          columns: const [
            DataColumn(label: Text('')),
            DataColumn(label: Text('')),
            DataColumn(label: Text('')),
            DataColumn(label: Text('')),
            DataColumn(label: Text('')),
          ],
          rows: [
            DataRow(
              cells: [
                const DataCell(
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text('EXCRECION DE FOSFORO'),
                  ),
                ),
                DataCell(Text(op.toString())),
                const DataCell(Text('mg/24h')),
                DataCell(Text(opi.toString())),
                const DataCell(Text('umol/l')),
              ],
            ),
            DataRow(
              cells: [
                const DataCell(
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text('EXCRECION DE AC. URICO'),
                  ),
                ),
                DataCell(Text(oau.toString())),
                const DataCell(Text('mg/24h')),
                DataCell(Text(oaui.toString())),
                const DataCell(Text('umol/l')),
              ],
            ),
            DataRow(
              cells: [
                const DataCell(
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text('EXCRECION DE CALCIO'),
                  ),
                ),
                DataCell(Text(oca.toString())),
                const DataCell(Text('mg/24h')),
                DataCell(Text(ocai.toString())),
                const DataCell(Text('mmol/l')),
              ],
            ),
            DataRow(
              cells: [
                const DataCell(
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text('EXCRECION DE CREATININA'),
                  ),
                ),
                DataCell(Text(ocr.toString())),
                const DataCell(Text('mg/24h')),
                DataCell(Text(ocri.toString())),
                const DataCell(Text('mmol/l')),
              ],
            ),
            DataRow(
              cells: [
                const DataCell(
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text('EXCRECION DE OXALATO'),
                  ),
                ),
                DataCell(Text(oxaoi.toString())),
                const DataCell(Text('mg/24h')),
                DataCell(Text(oxao.toString())),
                const DataCell(Text('mmol/l')),
              ],
            ),
            DataRow(
              cells: [
                const DataCell(
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text('EXCRECION DE CITRATO'),
                  ),
                ),
                DataCell(Text(citraoi.toString())),
                const DataCell(Text('mg/24h')),
                DataCell(Text(citrao.toString())),
                const DataCell(Text('mmol/l')),
              ],
            ),
          ],
        ),
        const Gutter(),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('INDICE Ca/Mg: '),
                  const GutterTiny(),
                  Text('$indcamg'),
                  const GutterLarge(),
                  const Text('INDICE Ca/Cr: '),
                  const GutterTiny(),
                  Text('$indcacr'),
                ],
              ),
              const GutterTiny(),
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('pH'),
                  const GutterTiny(),
                  Text('$ph'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _PatientInfo extends StatelessWidget {
  const _PatientInfo({
    required this.patient,
    required this.bs,
    required this.study,
    super.key,
  });

  final StudyModel study;
  final PatientModel patient;
  final double bs;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('NOMBRE: '),
            const GutterTiny(),
            Text(patient.name),
            const GutterLarge(),
            const Text('HISTORIA CLINICA: '),
            const GutterTiny(),
            Text(patient.ehr),
          ],
        ),
        const GutterTiny(),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('EDAD: '),
            const GutterTiny(),
            Text('${patient.age} años'),
            const GutterLarge(),
            const Text('PROVINCIA: '),
            const GutterTiny(),
            Text(patient.province),
          ],
        ),
        const GutterTiny(),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('PESO: '),
            const GutterTiny(),
            if (patient.weightIsInKg) Text('${patient.weight} kg'),
            if (!patient.weightIsInKg) Text('${patient.weight} lb'),
            const GutterLarge(),
            const Text('TALLA: '),
            const GutterTiny(),
            if (patient.heightIsInCm) Text('${patient.height} cm'),
            if (!patient.heightIsInCm) Text('${patient.height} pulg'),
            const GutterLarge(),
            const Text('SUP.CORP: '),
            const GutterTiny(),
            Text('$bs m2'),
          ],
        ),
      ],
    );
  }
}

class _RiskIndexes extends StatelessWidget {
  const _RiskIndexes({
    required this.analysisModel,
    super.key,
  });

  final AnalysisModel analysisModel;

  double? get oxalato => analysisModel.oxalato;
  double? get citrato => analysisModel.citrato;

  double? get pacaox => analysisModel.pacaox;
  double? get pacap => analysisModel.pacap;
  double? get ircaox => analysisModel.ircaox;
  double? get cultivo => analysisModel.cultivo;
  bool get cistina => analysisModel.cistina;

  @override
  Widget build(BuildContext context) {
    if (oxalato == 0 || citrato == 0) {
      return const Text(
        'INDICES DE RIESGO NO CALCULABLES POR FALTA DE DATOS',
        style: TextStyle(
          fontSize: 18,
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'SATURACION URINARIA',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        DataTable(
          dividerThickness: 0.002,
          columnSpacing: 20,
          headingRowHeight: 0,
          columns: const [
            DataColumn(label: Text('')),
            DataColumn(label: Text('')),
          ],
          rows: [
            DataRow(
              cells: [
                const DataCell(
                  Text('PRODUCTO DE ACTIVIDAD DE OXALATO (Tiselius)'),
                ),
                DataCell(Text('$pacaox')),
              ],
            ),
            DataRow(
              cells: [
                const DataCell(
                  Text('PRODUCTO DE ACTIVIDAD DE FOSFATO (Tiselius)'),
                ),
                DataCell(Text('$pacap')),
              ],
            ),
            DataRow(
              cells: [
                const DataCell(
                  Text('INDICE DE RIESGO DE CRISTALIZACION DE OXALATO'),
                ),
                DataCell(Text('$ircaox')),
              ],
            ),
          ],
        ),
        DataTable(
          dividerThickness: 0.002,
          columnSpacing: 20,
          headingRowHeight: 0,
          columns: const [
            DataColumn(label: Text('')),
            DataColumn(label: Text('')),
          ],
          rows: [
            DataRow(
              cells: [
                const DataCell(
                  Text('CULTIVO DE ORINA'),
                ),
                DataCell(Text('$cultivo')),
              ],
            ),
            DataRow(
              cells: [
                const DataCell(
                  Text('TEST DE CISTINA'),
                ),
                DataCell(Text(cistina ? '+' : '-')),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

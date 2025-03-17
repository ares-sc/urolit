import 'dart:io';

import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:urolit/models/diagnosis_model.dart';

abstract class PdfReport {
  static Future<void> genPdf(
    DiagnosisModel diagnosis,
  ) async {
    final pdf = pw.Document();
    final patient = diagnosis.analysis.patient;
    final bs = diagnosis.bs;

    final clcr = double.parse(diagnosis.clcr.toStringAsFixed(2));
    final clp = double.parse(diagnosis.clp.toStringAsFixed(2));
    final clau = double.parse(diagnosis.clau.toStringAsFixed(2));

    final creap = double.parse(diagnosis.creap.toStringAsFixed(2));
    final calp = double.parse(diagnosis.calp.toStringAsFixed(2));
    final calcioni = double.parse(diagnosis.calcioni.toStringAsFixed(2));
    final fosp = double.parse(diagnosis.fosp.toStringAsFixed(2));
    final acup = double.parse(diagnosis.acup.toStringAsFixed(2));

    final creapi = double.parse(diagnosis.creapi.toStringAsFixed(2));
    final calpi = double.parse(diagnosis.calpi.toStringAsFixed(2));
    final calcion = double.parse(diagnosis.calcion.toStringAsFixed(2));
    final fospi = double.parse(diagnosis.fospi.toStringAsFixed(2));
    final acupi = double.parse(diagnosis.acupi.toStringAsFixed(2));

    final fosfa = double.parse(diagnosis.fosfa.toStringAsFixed(2));
    final flujoo = double.parse(diagnosis.flujoo.toStringAsFixed(2));

    final trfp = double.parse(diagnosis.trfp.toStringAsFixed(2));
    final trfau = double.parse(diagnosis.trfau.toStringAsFixed(2));

    final op = double.parse(diagnosis.op.toStringAsFixed(2));
    final oau = double.parse(diagnosis.oau.toStringAsFixed(2));
    final oca = double.parse(diagnosis.oca.toStringAsFixed(2));
    final ocr = double.parse(diagnosis.ocr.toStringAsFixed(2));
    final oxaoi = diagnosis.oxaoi == null
        ? null
        : double.parse(diagnosis.oxaoi!.toStringAsFixed(2));
    final citraoi = diagnosis.citraoi == null
        ? null
        : double.parse(diagnosis.citraoi!.toStringAsFixed(2));

    final opi = double.parse(diagnosis.opi.toStringAsFixed(2));
    final oaui = double.parse(diagnosis.oaui.toStringAsFixed(2));
    final ocai = double.parse(diagnosis.ocai.toStringAsFixed(2));
    final ocri = double.parse(diagnosis.ocri.toStringAsFixed(2));
    final oxao = diagnosis.oxao == null
        ? null
        : double.parse(diagnosis.oxao!.toStringAsFixed(2));
    final citrao = diagnosis.citrao == null
        ? null
        : double.parse(diagnosis.citrao!.toStringAsFixed(2));

    final indcamg = double.parse(diagnosis.indcamg.toStringAsFixed(2));
    final indcacr = double.parse(diagnosis.indcacr.toStringAsFixed(2));
    final ph = double.parse(diagnosis.ph.toStringAsFixed(2));

    final oxalato = diagnosis.oxalato;
    final citrato = diagnosis.citrato;

    final pacaox = diagnosis.pacaox;
    final pacap = diagnosis.pacap;
    final ircaox = diagnosis.ircaox;
    final cultivo = diagnosis.cultivo;
    final cistina = diagnosis.cistina;

    pdf.addPage(
      pw.Page(
        build: (context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Text(
                'PROTOCOLO DE INVESTIGACION DE PACIENTES CON UROLITIASIS ACTIVA',
                style: pw.TextStyle(
                  fontSize: 15,
                  fontWeight: pw.FontWeight.bold,
                ),
                textAlign: pw.TextAlign.center,
              ),
              pw.SizedBox(height: 15),
              pw.Row(
                mainAxisSize: pw.MainAxisSize.min,
                children: [
                  pw.Text('NOMBRE: '),
                  pw.SizedBox(width: 5),
                  pw.Text(patient.name),
                  pw.SizedBox(width: 20),
                  pw.Text('HISTORIA CLINICA: '),
                  pw.SizedBox(width: 5),
                  pw.Text(patient.ehr),
                ],
              ),
              pw.SizedBox(width: 5),
              pw.Row(
                mainAxisSize: pw.MainAxisSize.min,
                children: [
                  pw.Text('EDAD: '),
                  pw.SizedBox(width: 5),
                  pw.Text('${patient.age} años'),
                  pw.SizedBox(width: 20),
                  pw.Text('PROVINCIA: '),
                  pw.SizedBox(width: 5),
                  pw.Text(patient.province),
                ],
              ),
              pw.SizedBox(width: 5),
              pw.Row(
                mainAxisSize: pw.MainAxisSize.min,
                children: [
                  pw.Text('PESO: '),
                  pw.SizedBox(width: 5),
                  if (patient.weightIsInKg) pw.Text('${patient.weight} kg'),
                  if (!patient.weightIsInKg) pw.Text('${patient.weight} lb'),
                  pw.SizedBox(width: 20),
                  pw.Text('TALLA: '),
                  pw.SizedBox(width: 5),
                  if (patient.heightIsInCm) pw.Text('${patient.height} cm'),
                  if (!patient.heightIsInCm) pw.Text('${patient.height} pulg'),
                  pw.SizedBox(width: 20),
                  pw.Text('SUP.CORP: '),
                  pw.SizedBox(width: 5),
                  pw.Text('$bs m2'),
                ],
              ),
              pw.SizedBox(height: 15),
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              pw.Text(
                'DETERMINACIONES PLASMATICAS',
                style: pw.TextStyle(
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.Row(
                children: [
                  pw.SizedBox(
                    width: 150,
                    child: pw.Text(
                      'CREATININA',
                    ),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    creap.toString(),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    'mg/dl',
                  ),
                  pw.SizedBox(width: 15),
                  pw.Text(
                    creapi.toString(),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    'umol/l',
                  ),
                ],
              ),
              pw.Row(
                children: [
                  pw.SizedBox(
                    width: 150,
                    child: pw.Text(
                      'CALCIO',
                    ),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    calp.toString(),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    'mg/dl',
                  ),
                  pw.SizedBox(width: 15),
                  pw.Text(
                    calpi.toString(),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    'umol/l',
                  ),
                ],
              ),
              pw.Row(
                children: [
                  pw.SizedBox(
                    width: 150,
                    child: pw.Text(
                      'CALCIO IONICO',
                    ),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    calcioni.toString(),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    'mg/dl',
                  ),
                  pw.SizedBox(width: 15),
                  pw.Text(
                    calcion.toString(),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    'umol/l',
                  ),
                ],
              ),
              pw.Row(
                children: [
                  pw.SizedBox(
                    width: 150,
                    child: pw.Text(
                      'FOSFORO',
                    ),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    fosp.toString(),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    'mg/dl',
                  ),
                  pw.SizedBox(width: 15),
                  pw.Text(
                    fospi.toString(),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    'umol/l',
                  ),
                ],
              ),
              pw.Row(
                children: [
                  pw.SizedBox(
                    width: 150,
                    child: pw.Text(
                      'ACIDO URICO',
                    ),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    acup.toString(),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    'mg/dl',
                  ),
                  pw.SizedBox(width: 15),
                  pw.Text(
                    acupi.toString(),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    'umol/l',
                  ),
                ],
              ),
              pw.SizedBox(height: 15),
              pw.Row(
                children: [
                  pw.SizedBox(
                    width: 150,
                    child: pw.Text(
                      'FOSFATASA ALCALINA',
                    ),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    fosfa.toString(),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    'U/l',
                  ),
                ],
              ),
              pw.Row(
                children: [
                  pw.SizedBox(
                    width: 150,
                    child: pw.Text(
                      'FLUJO URINARIO',
                    ),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    flujoo.toString(),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    'ml/min',
                  ),
                ],
              ),
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              pw.SizedBox(height: 15),
              pw.Text(
                'ACLARAMIENTOS PLASMATICOS (normalizados a 1.73 m2 sup. corp.)',
                style: pw.TextStyle(
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.Row(
                children: [
                  pw.SizedBox(
                    width: 250,
                    child: pw.Text(
                      'ACLARAMIENTO DE CREATININA',
                    ),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    clcr.toString(),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    'ml/min',
                  ),
                ],
              ),
              pw.Row(
                children: [
                  pw.SizedBox(
                    width: 250,
                    child: pw.Text(
                      'ACLARAMIENTO DE FOSFORO',
                    ),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    clp.toString(),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    'ml/min',
                  ),
                ],
              ),
              pw.Row(
                children: [
                  pw.SizedBox(
                    width: 250,
                    child: pw.Text(
                      'ACLARAMIENTO DE AC. URICO',
                    ),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    clau.toString(),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    'ml/min',
                  ),
                ],
              ),
              pw.SizedBox(height: 15),
              pw.Text(
                'FRACCIONES DE REABSORCION',
              ),
              pw.Row(
                children: [
                  pw.SizedBox(
                    width: 250,
                    child: pw.Text(
                      'TRF FOSFORO',
                    ),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    trfp.toString(),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    '%',
                  ),
                ],
              ),
              pw.Row(
                children: [
                  pw.SizedBox(
                    width: 250,
                    child: pw.Text(
                      'TRF AC. URICO',
                    ),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    trfau.toString(),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    '%',
                  ),
                ],
              ),
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              pw.SizedBox(height: 15),
              pw.Text(
                'EXCRECIONDE METABOLITOS Y ELECTROLITOS EN 24 HORAS',
                style: pw.TextStyle(
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.Row(
                children: [
                  pw.SizedBox(
                    width: 250,
                    child: pw.Text(
                      'EXCRECION DE FOSFORO',
                    ),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    op.toString(),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    'mg/24h',
                  ),
                  pw.SizedBox(width: 15),
                  pw.Text(
                    opi.toString(),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    'umol/l',
                  ),
                ],
              ),
              pw.Row(
                children: [
                  pw.SizedBox(
                    width: 250,
                    child: pw.Text(
                      'EXCRECION DE AC. URICO',
                    ),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    oau.toString(),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    'mg/24h',
                  ),
                  pw.SizedBox(width: 15),
                  pw.Text(
                    oaui.toString(),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    'umol/l',
                  ),
                ],
              ),
              pw.Row(
                children: [
                  pw.SizedBox(
                    width: 250,
                    child: pw.Text(
                      'EXCRECION DE CALCIO',
                    ),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    oca.toString(),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    'mg/24h',
                  ),
                  pw.SizedBox(width: 15),
                  pw.Text(
                    ocai.toString(),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    'umol/l',
                  ),
                ],
              ),
              pw.Row(
                children: [
                  pw.SizedBox(
                    width: 250,
                    child: pw.Text(
                      'EXCRECION DE CREATININA',
                    ),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    ocr.toString(),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    'mg/24h',
                  ),
                  pw.SizedBox(width: 15),
                  pw.Text(
                    ocri.toString(),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    'umol/l',
                  ),
                ],
              ),
              pw.Row(
                children: [
                  pw.SizedBox(
                    width: 250,
                    child: pw.Text(
                      'EXCRECION DE OXALATO',
                    ),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    oxaoi.toString(),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    'mg/24h',
                  ),
                  pw.SizedBox(width: 15),
                  pw.Text(
                    oxao.toString(),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    'umol/l',
                  ),
                ],
              ),
              pw.SizedBox(height: 15),
              pw.Row(
                children: [
                  pw.SizedBox(
                    width: 100,
                    child: pw.Text(
                      'INDICE Ca/Mg: ',
                    ),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    indcamg.toString(),
                  ),
                  pw.SizedBox(width: 10),
                  pw.SizedBox(
                    width: 100,
                    child: pw.Text(
                      'INDICE Ca/Cr: ',
                    ),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    indcacr.toString(),
                  ),
                ],
              ),
              pw.Row(
                children: [
                  pw.SizedBox(
                    width: 150,
                    child: pw.Text(
                      'FLUJO URINARIO',
                    ),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    flujoo.toString(),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    'ml/min',
                  ),
                ],
              ),
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////
              pw.SizedBox(height: 15),
              if (oxalato == 0 || citrato == 0)
                pw.Text(
                  'INDICES DE RIESGO NO CALCULABLES POR FALTA DE DATOS',
                  style: pw.TextStyle(
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
              pw.Text(
                'SATURACION URINARIA',
                style: pw.TextStyle(
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.Row(
                children: [
                  pw.SizedBox(
                    width: 300,
                    child: pw.Text(
                      'PRODUCTO DE ACTIVIDAD DE OXALATO (Tiselius)',
                    ),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    pacaox.toString(),
                  ),
                ],
              ),
              pw.Row(
                children: [
                  pw.SizedBox(
                    width: 300,
                    child: pw.Text(
                      'PRODUCTO DE ACTIVIDAD DE FOSFATO (Tiselius)',
                    ),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    pacap.toString(),
                  ),
                ],
              ),
              pw.Row(
                children: [
                  pw.SizedBox(
                    width: 350,
                    child: pw.Text(
                      'INDICE DE RIESGO DE CRISTALIZACION DE OXALATO',
                    ),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    ircaox.toString(),
                  ),
                ],
              ),
              pw.Row(
                children: [
                  pw.SizedBox(
                    width: 150,
                    child: pw.Text(
                      'CULTIVO DE ORINA',
                    ),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    cultivo.toString(),
                  ),
                ],
              ),
              pw.Row(
                children: [
                  pw.SizedBox(
                    width: 150,
                    child: pw.Text(
                      'TEST DE CISTINA',
                    ),
                  ),
                  pw.SizedBox(width: 5),
                  pw.Text(
                    cistina ? '+' : '-',
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );

    pdf
      ..addPage(
        pw.Page(
          build: (context) {
            return pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text(
                  'HALLAZGOS',
                  style: pw.TextStyle(
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
                ...diagnosis.diagnoses().map((e) {
                  return pw.Text(
                    e,
                    textAlign: pw.TextAlign.start,
                  );
                }),
              ],
            );
          },
        ),
      )
      ..addPage(
        pw.Page(
          build: (context) {
            return pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text(
                  'CONCLUSIONES Y RECOMENDACIONES',
                  style: pw.TextStyle(
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
                ...diagnosis.conclusions().map((e) {
                  return pw.Text(
                    e,
                    textAlign: pw.TextAlign.start,
                  );
                }),
              ],
            );
          },
        ),
      );

    pdf.addPage(
      pw.Page(
        build: (context) {
          return pw.Column(
            children: [
              pw.SizedBox(height: 30),
              pw.Divider(),
              pw.Text(
                'Dr. ${diagnosis.analysis.study.doctorName}',
                style: pw.TextStyle(
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
            ],
          );
        },
      ),
    );

    final output = await getTemporaryDirectory();
    final file = File('${output.path}/inventario.pdf');
    await file.writeAsBytes(await pdf.save());

    await OpenFile.open(file.path);
  }
}

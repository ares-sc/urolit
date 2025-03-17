// ignore_for_file: cascade_invocations

import 'package:urolit/models/analysis_model.dart';

class DiagnosisModel {
  DiagnosisModel({required this.analysis});

  final AnalysisModel analysis;

  String get sex => analysis.patient.sex;
  int get age => analysis.patient.age;

  double get creap => analysis.creap;
  double get fosfa => analysis.fosfa;
  double get calp => analysis.calp;
  double get fosp => analysis.fosp;
  double get acup => analysis.acup;
  double get calcion => analysis.calcion;

  DateTime get startHour => analysis.startHour;
  DateTime get endHour => analysis.endHour;
  double get volo => analysis.volo;
  double get creao => analysis.creao;
  double get calo => analysis.calo;
  double get foso => analysis.foso;
  double get acuo => analysis.acuo;
  double get mago => analysis.mago;
  double get ph => analysis.ph;
  double? get cultivo => analysis.cultivo;
  bool get cistina => analysis.cistina;
  double get oxalato => analysis.oxalato;
  double get citrato => analysis.citrato;

  double get clcr => analysis.clcr;
  double get clcrm => analysis.clcrm;
  double get sclcr => analysis.sclcr;

  double get bs => analysis.bs;
  int get minutes => analysis.minutes;
  double get auo => analysis.auo;
  double get mg => analysis.mg;
  double get p => analysis.p;
  double get cr => analysis.cr;
  double get ca => analysis.ca;
  double? get exc24hox => analysis.exc24hox;
  double? get exc24hcit => analysis.exc24hcit;
  double get exc24hmg => analysis.exc24hmg;
  double get exc24hca => analysis.exc24hca;
  double get exc24hcr => analysis.exc24hcr;
  double get exc24hp => analysis.exc24hp;
  double get exc24hac => analysis.exc24hac;
  double? get r => analysis.r;
  double? get pacaox => analysis.pacaox;
  double? get pacap => analysis.pacap;
  double? get ircaox => analysis.ircaox;

  double get flujoo => analysis.flujoo;
  double get clp => analysis.clp;
  double get clau => analysis.clau;
  double get trfp => analysis.trfp;
  double get trfau => analysis.trfau;
  double get op => analysis.op;
  double get opi => analysis.opi;
  double get oau => analysis.oau;
  double get oaui => analysis.oaui;
  double get oca => analysis.oca;
  double get ocai => analysis.ocai;
  double? get oxao => analysis.oxao;
  double? get oxaoi => analysis.oxaoi;
  double? get citrao => analysis.citrao;
  double? get citraoi => analysis.citraoi;
  double get ocr => analysis.ocr;
  double get ocri => analysis.ocri;
  double get indcamg => analysis.indcamg;
  double get indcacr => analysis.indcacr;
  double get creapi => analysis.creapi;
  double get calpi => analysis.calpi;
  double get fospi => analysis.fospi;
  double get acupi => analysis.acupi;
  double get calcioni => analysis.calcioni;
  double get calpm => analysis.calpm;
  double get scalp => analysis.scalp;

  double get prom => clcr / clcrm * 100;

  List<String> get findings => [
        diacacr,
        diacap,
        diaup,
        diap,
        diafos,
        diacamg,
        diacacr,
        diaflu,
        diaph,
        diaclp,
        diaclau,
        diatrfp,
        diatrfau,
        diaopi,
        diaoau,
        diaoca,
      ];

  String get diaclcr {
    if (clcr < clcrm - sclcr && clcr >= clcrm - 2 * sclcr) {
      return 'NORMAL';
    } else if (clcr < clcrm - 2 * sclcr) {
      return 'DISMINUCION MUY DISCRETA DEL ACLARAMIENTO DE CREATININA';
    } else {
      return 'DISMINUCION DE LA FILTRACION GLOMERULAR';
    }
  }

  String get diacap {
    if (calp > calpm + 2 * scalp && calp <= calpm + 3 * scalp) {
      return 'HIPERCALCEMIA DISCRETA';
    } else if (calp > calpm + 3 * scalp && calp <= calpm + 4 * scalp) {
      return 'HIPERCALCEMIA MODERADA';
    } else if (calp > calpm + scalp * 4) {
      return 'HIPERCALCEMIA SEVERA';
    } else {
      return 'NORMAL';
    }
  }

  String get diaup {
    if (sex.contains('M')) {
      if (acup > 7.11 && acup <= 8.11) {
        return 'DISCRETA HIPERURICEMIA';
      } else if (acup > 8.11 && acup <= 9.109999) {
        return 'HIPERURICEMIA MODERADA';
      } else if (acup > 9.109999) {
        return 'HIPERURICEMIA SEVERA';
      } else {
        return 'NORMAL';
      }
    } else if (sex.contains('F')) {
      if (acup > 6 && acup <= 7) {
        return 'DISCRETA HIPERURICEMIA';
      } else if (acup > 7 && acup <= 8) {
        return 'HIPERURICEMIA MODERADA';
      } else if (acup > 8) {
        return 'HIPERURICEMIA SEVERA';
      } else {
        return 'NORMAL';
      }
    } else {
      return 'Invalid Gender';
    }
  }

  String get diap {
    if (fosp < 2.66) {
      return 'HIPOFOSFATEMIA';
    } else if (fosp > 4.7) {
      return 'HIPERFOSFATEMIA';
    } else {
      return 'NORMAL';
    }
  }

  String get diafos {
    if (age > 15) {
      if (fosfa > 123) {
        return 'AUMENTO DE LA FOSFATASA ALCALINA';
      } else {
        return 'NORMAL';
      }
    } else {
      if (fosfa > 250) {
        return 'AUMENTO DE LA FOSFATASA ALCALINA';
      } else {
        return 'NORMAL';
      }
    }
  }

  String get diacamg {
    if (indcamg > 3.64) {
      return 'AUMENTO DEL INDICE Ca/Mg';
    } else {
      return 'NORMAL';
    }
  }

  String get diacacr {
    if (sex.contains('M')) {
      if (indcacr > 0.36) {
        return 'AUMENTO DEL INDICE Ca/Cr';
      } else {
        return 'NORMAL';
      }
    } else if (sex.contains('F')) {
      if (indcacr > 0.28) {
        return 'AUMENTO DEL INDICE Ca/Cr';
      } else {
        return 'NORMAL';
      }
    } else {
      return 'Invalid Gender';
    }
  }

  String get diaflu {
    if (flujoo < 0.694) {
      return 'DISMINUCION DEL VOLUMEN URINARIO';
    } else {
      return 'NORMAL';
    }
  }

  String get diaph {
    if (ph < 4.5) {
      return 'PH NO CONFIABLE, ERROR DE LABORATORIO';
    } else if (ph >= 4.5 && ph < 4.9) {
      return 'PH MUY ACIDO';
    } else if (ph >= 4.9 && ph < 5.3) {
      return 'PH ACIDO';
    } else if (ph >= 5.3 && ph < 6) {
      return 'PH DEBILMENTE ACIDO';
    } else {
      return 'PH ALCALINO';
    }
  }

  String get diaclp {
    if (clp > 26.6) {
      return 'AUMENTO DEL ACLARAMIENTO DE FOSFORO';
    } else {
      return 'NORMAL';
    }
  }

  String get diaclau {
    if (clau > 10.92) {
      return 'AUMENTO DEL ACLARAMIENTO DEL ACIDO URICO';
    } else {
      return 'NORMAL';
    }
  }

  String get diatrfp {
    if (trfp < 80.6) {
      return 'DISMINUCION DE LA REABSORCION FRACCIONAL DE FOSFORO';
    } else {
      return 'NORMAL';
    }
  }

  String get diatrfau {
    if (trfau < 85) {
      return 'DISMINUCION DE LA REABSORCION FRACCIONAL DE ACIDO URICO';
    } else {
      return 'NORMAL';
    }
  }

  String get diaopi {
    if (opi > 917.4) {
      return 'AUMENTO DE LA EXCRECION DE FOSFORO';
    } else {
      return 'NORMAL';
    }
  }

  String get diaoau {
    if (sex.contains('M')) {
      if (oau > 850) {
        return 'AUMENTO DE LA EXCRECION DE ACIDO URICO';
      } else {
        return 'NORMAL';
      }
    } else if (sex.contains('F')) {
      if (oau > 850) {
        return 'AUMENTO DE LA EXCRECION DE ACIDO URICO';
      } else {
        return 'NORMAL';
      }
    } else {
      return 'Invalid Gender';
    }
  }

  String get diaoca {
    if (oca > 212 && oca <= 252) {
      return 'AUMENTO MUY DISCRETO DE LA EXCRECION DE CALCIO';
    } else if (oca > 252 && oca <= 332.7) {
      return 'AUMENTO DISCRETO DE LA EXCRECION DE CALCIO';
    } else if (oca > 332.7 && oca <= 497) {
      return 'AUMENTO DE LA EXCRECION DE CALCIO';
    } else if (oca > 497) {
      return 'AUMENTO SEVERO DE LA EXCRECION DE CALCIO';
    } else {
      return 'NORMAL';
    }
  }

  void _addDiagnosisIfNotNormal(
    String value,
    List<String> diagnoses,
  ) {
    if (value != 'NORMAL') {
      diagnoses.add(value);
    }
  }

  List<String> diagnoses() {
    final diagnoses = <String>[];
    _addDiagnosisIfNotNormal(diaclcr, diagnoses);
    _addDiagnosisIfNotNormal(diacap, diagnoses);
    _addDiagnosisIfNotNormal(diaup, diagnoses);
    _addDiagnosisIfNotNormal(diap, diagnoses);
    _addDiagnosisIfNotNormal(diafos, diagnoses);
    _addDiagnosisIfNotNormal(diaclp, diagnoses);
    _addDiagnosisIfNotNormal(diaclau, diagnoses);
    _addDiagnosisIfNotNormal(diatrfp, diagnoses);
    _addDiagnosisIfNotNormal(diatrfau, diagnoses);
    _addDiagnosisIfNotNormal(diaopi, diagnoses);
    _addDiagnosisIfNotNormal(diaoau, diagnoses);
    _addDiagnosisIfNotNormal(diaoca, diagnoses);
    _addDiagnosisIfNotNormal(diacamg, diagnoses);
    _addDiagnosisIfNotNormal(diacacr, diagnoses);
    _addDiagnosisIfNotNormal(diaflu, diagnoses);

    diagnoses.add(diaph);

    if (cultivo == null) {
      diagnoses.add('INFECCION URINARIA');
    }

    if (oxao != null && oxao! > 0.488) {
      diagnoses.add('AUMENTO DE LA EXCRECION DE OXALATO');
    }

    if (citrao != null && citrao! < 1.69) {
      diagnoses.add('DISMINUCION DE LA EXCRECION DE CITRATO');
    }

    if (pacaox != null && pacaox! > 2.3) {
      diagnoses.add('AUMENTO DEL PRODUCTO DE ACTIVIDAD DE OXALATO DE CALCIO');
    }

    if (pacap != null && pacap! > 2.3) {
      diagnoses.add('AUMENTO DEL PRODUCTO DE ACTIVIDAD DE FOSFATO DE CALCIO');
    }

    if (ircaox != null && ircaox! > 600 && ircaox! < 1000) {
      diagnoses
          .add('AUMENTO DEL INDICE DE RIESGO DE CRISTALIZACION DE OXALATO');
    } else if (ircaox != null && ircaox! > 1000) {
      diagnoses
          .add('INDICE DE RIESGO DE CRISTALIZACION DE OXALATO MUY ELEVADO');
    }

    return diagnoses;
  }

  List<String> get recommendations => [
        ' *** FUNCION RENAL DISMINUIDA A UN $prom POR CIENTO DEL VALOR NORMAL',
        ' *** AUMENTAR LA INGESTION DE LIQUIDOS, LA MITAD DE LOS CUALES DEBE SER AGUA, PARA OBTENER UN VOLUMEN URINARIO > 2L EN 24 HORAS',
        ' *** HIDROCLOROTIAZIDA, 50 mg DOS VECES AL DIA',
        ' *** REALIZAR TEST DE DEPRIVACION Y SOBRECARGA DE CALCIO',
        ' *** REPETIR CALCIURIA DE 24 HORAS AL MES DE TRATAMIENTO',
        ' *** ALLOPURINOL 100 mg TRES VECES AL DIA',
        ' *** DAR ALCALINIZANTES URINARIOS (CITRATO DE SODIO AL 12,5%  O SOLUCION SCHOL PARA MANTENER pH URINARIO >6',
        ' *** DAR d-PENICILAMINA 1-2 g CADA 24 HORAS',
        ' *** REDUCIR LA INGESTION DE LECHE Y DERIVADOS',
        ' *** REDUCIR LA INGESTION DE ALIMENTOS RICOS EN PURINAS (VISCERAS',
        ' *** VIGILAR LA PROTEINURIA MENSUALMENTE',
        ' *** DESCARTAR TRATAMIENTO CON TIAZIDAS',
      ];

  List<String> conclusions() {
    final conclusions = <String>[];

    var stopGenerating = false;

    if (diaclcr.contains('NORMAL') &&
        diacap.contains('NORMAL') &&
        diaup.contains('NORMAL') &&
        diap.contains('NORMAL') &&
        diaoau.contains('NORMAL') &&
        diaoca.contains('NORMAL') &&
        diacacr.contains('NORMAL') &&
        diacamg.contains('NORMAL') &&
        diaflu.contains('NORMAL') &&
        ph > 5.3 &&
        ph < 6.5 &&
        cultivo == null) {
      conclusions.add('ESTUDIO NORMAL');
      return conclusions;
    }

    if (ocr < 844) {
      conclusions.add(
        'ERROR EN LA RECOLECCION DE LA MUESTRA DE ORINA. REPETIR ESTUDIO',
      );
      return conclusions;
    }

    if (cultivo == null) {
      conclusions.add('INFECCION URINARIA AL GERMEN');
    } else {
      conclusions.add('INFECCION URINARIA AL GERMEN');
    }

    if (clcr < 35) {
      conclusions.add(
        'PACIENTE EN INSUFICIENCIA RENAL',
      );
      return conclusions;
    }

    if (diaclcr.contains('DISMINUCION DE LA FILTRACION GLOMERULAR')) {
      conclusions.add(
        'FUNCION RENAL DISMINUIDA A UN $prom POR CIENTO DEL VALOR NORMAL',
      );
    }

    final hipercal = diacap;
    final hipercalo = diaoca;
    final hiperauo = diaoau;
    final hipercalciu = diaoca;
    final dismTRFP = diatrfp;
    final hipofp = diap;
    final aumFosFap = diafos;
    final hiperurip = diaup;

    if (hipercal.contains('HIPERCALCEMIA')) {
      if (hipercalo.contains('AUMENTO')) {
        if (dismTRFP.contains('DISMINUCION')) {
          if (hipofp.contains('HIPOFOSFATEMIA')) {
            if (aumFosFap.contains('AUMENTO')) {
              conclusions
                  .add('SOSPECHA FUERTE DE HIPERPARATIROIDISMO PRIMARIO');
              conclusions.add(recommendations[2]);
              stopGenerating = true;
            } else {
              conclusions.add('SOSPECHA DE HIPERPARATIROIDISMO PRIMARIO');
              conclusions.add(recommendations[2]);
              stopGenerating = true;
            }
          } else {
            conclusions.add('DESCARTAR TRATAMIENTO CON TIAZIDAS');
            conclusions.add('EN CASO NEGATIVO, REPETIR ESTUDIO METABOLICO');
          }
        } else {
          conclusions.add('SOSPECHA LIGERA DE HIPERPARATIROIDISMO PRIMARIO');
          conclusions.add(recommendations[2]);
          stopGenerating = true;
        }
      } else {
        conclusions.add('DESCARTAR TRATAMIENTO CON TIAZIDAS');
        conclusions.add('EN CASO NEGATIVO, REPETIR ESTUDIO METABOLICO');
      }
    }

    if (!stopGenerating) {
      if (hipercalciu.contains('MUY DISCRETO')) {
        conclusions.add('HIPERCALCIURIA GRADO I');
        conclusions.addAll([recommendations[0], recommendations[3]]);
      } else if (hipercalciu.contains('DISCRETO DE ')) {
        conclusions.add('HIPERCALCIURIA GRADO II');
        conclusions.addAll([recommendations[0], recommendations[1]]);
        conclusions.add(
          ' *** ${recommendations[3]} SI PERSISTE HIPERCALCIURIA ${recommendations[7]} Y ${recommendations[3]} SI SIGUE ALTA ${recommendations[2]}',
        );
      } else if (hipercalciu.contains('DE LA EXCREC')) {
        conclusions.add('HIPERCALCIURIA GRADO III');
        conclusions.addAll([recommendations[0], recommendations[2]]);
      } else if (hipercalciu.contains('SEVERO DE LA')) {
        conclusions.add('HIPERCALCIURIA GRADO IV');
        conclusions.addAll([recommendations[0], recommendations[2]]);
      }
    }

    if (hipercalo.contains('AUMENTO') && hiperurip.contains('HIPERURICEMIA')) {
      conclusions.add('HIPERURICEMIA');
      conclusions.addAll([
        recommendations[8],
        recommendations[4],
        ' *** REPETIR ACIDO URICO EN SANGRE A LOS DOS MESES',
      ]);
      stopGenerating = true;
    }

    if (stopGenerating != true) {
      if (hipercalo.contains('AUMENTO') && hiperauo.contains('AUMENTO')) {
        conclusions.add(recommendations[4]);
        stopGenerating = true;
      }
    }

    if (stopGenerating != true) {
      if (hiperurip.contains('HIPERURICEMIA') &&
          diaoau.contains('NORMAL') &&
          diaph.contains('PH ALCALINO')) {
        conclusions.add('HIPERURICEMIA');
        conclusions.add(recommendations[0]);
        conclusions.add(recommendations[8]);
        conclusions.add(recommendations[4]);
        conclusions.add('REPETIR ACIDO URICO EN SANGRE A LOS DOS MESES');
      }
      stopGenerating = true;
    }

    if (stopGenerating != true) {
      if (hiperurip.contains('HIPERURICEMIA') &&
          diaoau.contains('NORMAL') &&
          ph < 6) {
        conclusions.add('HIPERURICEMIA');
        conclusions.add(recommendations[0]);
        conclusions.add(recommendations[8]);
        conclusions.add(recommendations[4]);
        conclusions.add('REPETIR ACIDO URICO EN SANGRE A LOS DOS MESES');
        conclusions.add('${recommendations[4]} VIGILAR pH URINARIO ');
      }
      stopGenerating = true;
    }

    if (stopGenerating != true) {
      if (diaup.contains('NORMAL') &&
          diaoca.contains('NORMAL') &&
          diacap.contains('AUMENTO DE LA EXCRECION DE ACIDO URICO') &&
          ph < 6) {
        conclusions.add(recommendations[0]);
        conclusions.add(recommendations[4]);
        conclusions.add(recommendations[5]);
        conclusions.add('VIGILAR pH Y REPETIR ESTUDIO DENTRO DE DOS MESES');
      }
      stopGenerating = true;
    }

    if (stopGenerating != true) {
      if (hiperurip.contains('HIPERURICEMIA') &&
          diaoau.contains('AUMENTO DE LA EXCRECION DE ACIDO URICO') &&
          ph < 6) {
        conclusions.add(recommendations[0]);
        conclusions.add(recommendations[8]);
        conclusions.add(recommendations[4]);
        conclusions.add(recommendations[6]);
      }
      stopGenerating = true;
    }

    if (stopGenerating != true) {
      if (hiperurip.contains('HIPERURICEMIA') &&
          diaoau.contains('AUMENTO DE LA EXCRECION DE ACIDO URICO') &&
          ph >= 6) {
        conclusions.add(recommendations[0]);
        conclusions.add(recommendations[8]);
        conclusions.add(recommendations[4]);
        if (cultivo == null) {
          conclusions.add(
            'SOSPECHA DE pH ELEVADO POR EFECTO DE TRATAMIENTO ALCALINIZANTE',
          );
        } else {
          conclusions.add(
            'RESOLVER INFECCION URINARIA, REPETIR pH Y VALORAR ALCALINIZANTES',
          );
        }
      } else if (diaup.contains('NORMAL') ||
          diaup.contains('DISCRETA HIPERURICEMIA') &&
              diaoau.contains('NORMAL') &&
              diacap.contains('NORMAL') &&
              diaoca.contains('NORMAL')) {
        if (ph < 5.3) {
          conclusions.add(recommendations[0]);
          conclusions.add(
            'SI TIENE ANTECEDENTES DE LITIASIS DE ACIDO URICO: ${recommendations[5]}',
          );
        } else if (ph > 6.5) {
          conclusions.add(recommendations[0]);
          conclusions.add(
            'SI TIENE ANTECEDENTES DE LITIASIS DE FOSFATO CALCICO: ',
          );
          conclusions.add(
            ' *** DAR ACIDIFICANTES URINARIOS. SI ELIGE VITAMINA C, NO SOBREPASAR  UNA DOSIS DE 1 G EN 24 H Y VIGILAR PH URINARIO',
          );
        } else if (flujoo < .694 &&
                diacap.contains('NORMAL') &&
                diaup.contains('NORMAL') ||
            diaup.contains('DISCRETA HIPERURICEMIA') &&
                diaoau.contains('NORMAL') &&
                diaoca.contains('NORMAL') &&
                clcr > 35) {
          conclusions.add(recommendations[0]);
        }
      }
      stopGenerating = true;
    }

    if (hipercalo.contains('AUMENTO') &&
        diaph.contains('PH ALCALINO') &&
        cultivo == null &&
        hiperurip != 'HIPERURICEMIA' &&
        diaoau.contains('NORMAL')) {
      conclusions.add('REALIZAR TEST CORTO DE ACIDIFICACION URINARIA');
    }

    if (diaup != 'NORMAL') {
      conclusions.add(recommendations[10]);
    } else {
      if (diaclcr.contains('NORMAL') &&
          diacap.contains('NORMAL') &&
          diaup.contains('NORMAL') &&
          diap.contains('NORMAL') &&
          diaoau.contains('NORMAL') &&
          diaoca.contains('NORMAL') &&
          diacacr.contains('NORMAL') &&
          diacamg.contains('NORMAL') &&
          diaflu.contains('NORMAL') &&
          ph > 5.3 &&
          ph < 6.5 &&
          cultivo == null) {
        conclusions.add('ESTUDIO NORMAL');
      } else {
        // Add code for other conditions if needed
      }
    }

    if (cultivo == null) {
      conclusions.add(recommendations[0]);
      conclusions.add(recommendations[9]);
      conclusions.add(recommendations[5]);
      conclusions.add(
        'SOSPECHA DE pH ELEVADO POR EFECTO DE TRATAMIENTO ALCALINIZANTE',
      );
    }

    return conclusions;
  }
}

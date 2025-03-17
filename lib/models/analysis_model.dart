import 'dart:math';

import 'package:urolit/models/patient.dart';
import 'package:urolit/models/plasma_study.dart';
import 'package:urolit/models/study_model.dart';
import 'package:urolit/models/urine_study.dart';

class AnalysisModel {
  AnalysisModel({
    required this.study,
    required this.patient,
    required this.plasmaStudyModel,
    required this.urineStudyModel,
  });

  final StudyModel study;

  final PatientModel patient;

  final PlasmaStudyModel plasmaStudyModel;

  final UrineStudyModel urineStudyModel;

  double get creap => plasmaStudyModel.creap;
  double get fosfa => plasmaStudyModel.fosfa;
  double get calp => plasmaStudyModel.calp;
  double get fosp => plasmaStudyModel.fosp;
  double get acup => plasmaStudyModel.acup;
  double get calcion => plasmaStudyModel.calcion;

  DateTime get startHour => urineStudyModel.startHour;
  DateTime get endHour => urineStudyModel.endHour;
  double get volo => urineStudyModel.volo;
  double get creao => urineStudyModel.creao;
  double get calo => urineStudyModel.calo;
  double get foso => urineStudyModel.foso;
  double get acuo => urineStudyModel.acuo;
  double get mago => urineStudyModel.mago;
  double get ph => urineStudyModel.ph;
  double? get cultivo => urineStudyModel.cultivo;
  bool get cistina => urineStudyModel.cistina;
  double get oxalato => urineStudyModel.oxalato;
  double get citrato => urineStudyModel.citrato;

  double get height =>
      patient.heightIsInCm ? patient.height : patient.height * 2.54;

  double get weight =>
      patient.weightIsInKg ? patient.weight : patient.weight / 2.2;

  /// Superficie Corporal
  double get bs =>
      pow(height, 0.425) * pow(weight, 0.725) * 0.007184;

  /// minutes en minutos
  int get minutes => endHour.difference(startHour).inMinutes;

  double get auo => acuo * 0.0595;

  double get mg => mago * 0.5;

  double get p => foso * 0.323;

  double get cr => creao * 88.4 / 1000000;

  double get ca => calo * 0.25;

  double? get exc24hox =>
      oxalato != 0 ? citrato * volo * 1440 / minutes / 1000 : null;

  double? get exc24hcit =>
      oxalato != 0 ? citrato * volo * 1440 / minutes / 1000 : null;

  double get exc24hmg => mg * (volo * 1440) / minutes / 1000;

  double get exc24hca => ca * (volo * 1440) / minutes / 1000;

  double get exc24hcr => cr * (volo * 1440) / minutes / 1000;

  double get exc24hp => p * (volo * 1440) / minutes / 1000;

  double get exc24hac => auo * (volo * 1440) / minutes / 1000;

  double? get r => citrato == 0
      ? null
      : (exc24hca / exc24hcr) * (exc24hox! / exc24hcr) / (exc24hmg / exc24hcr);

  double? get pacaox => citrato == 0
      ? null
      : 3.8 *
          ((pow(exc24hca, 0.71) * exc24hox!) /
              (pow(exc24hmg, 0.14) *
                  pow(exc24hcit!, 0.1) *
                  pow(volo / 1000, 1.2)));

  double? get pacap => citrato == 0
      ? null
      : (0.0045 *
              pow(exc24hca, 1.07) *
              pow(exc24hp, 0.7) *
              pow(ph - 4.5, 6.8)) /
          (pow(exc24hcit!, 0.2) * pow(volo / 1000, 1.31));

  double? get ircaox => citrato == 0
      ? null
      : (pow(exc24hca / exc24hcr, 0.71) * (exc24hox! / exc24hcr)) /
          (pow(exc24hmg / exc24hcr, 0.14) * pow(exc24hcit! / exc24hcr, 0.1));

  double get flujoo => volo / minutes;
  double get clcr => creao * flujoo / plasmaStudyModel.creap * 1.73 / bs;
  double get clp => foso * flujoo / plasmaStudyModel.fosp * 1.73 / bs;
  double get clau => acuo * flujoo / plasmaStudyModel.acup * 1.73 / bs;
  double get trfp => (1 - clp / clcr) * 100;
  double get trfau => (1 - clau / clcr) * 100;
  double get op => volo * 1440 / minutes * foso / 100;
  double get opi => op * .0323;
  double get oau => volo * 1440 / minutes * acuo / 100;
  double get oaui => oau * .00595;
  double get oca => volo * 1440 / minutes * calo / 100;
  double get ocai => oca * .025;
  double? get oxao =>
      oxalato != 0 ? volo * 1440 / minutes * oxalato / 1000 : null;
  double? get oxaoi => oxao != null ? 90.07 * oxao! : null;
  double? get citrao =>
      citrato != 0 ? volo * 1440 / minutes * citrato / 1000 : null;
  double? get citraoi => citrao != null ? 192.14 * citrao! : null;
  double get ocr => volo * 1440 / minutes * creao / 100;
  double get ocri => ocr * .00884;
  double get indcamg => ocai / mago / .5 / volo * 1000;
  double get indcacr => ocai / ocri;
  double get creapi => creap * 88.4;
  double get calpi => calp * .25;
  double get fospi => fosp * .323;
  double get acupi => acup * .0595;
  double get calcioni => calcion * 4;

  double get clcrm => patient.sex == 'M' ? 95.83999 : 91.94;
  double get sclcr => patient.sex == 'M' ? 18.28 : 15;
  double get calpm => 9.2;
  double get scalp => .49;
}

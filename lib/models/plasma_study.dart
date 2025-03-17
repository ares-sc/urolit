/* cspell disable*/

import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'plasma_study.gform.dart';

@Rf()
class PlasmaStudyModel {
  /// Datos del estudio en plasma
  ///
  /// @param creap CREATININA (mg/dl)
  /// @param fosfa FOSFATASA ALCALINA (U/l)
  /// @param calp CALCIO (mg/dl)
  /// @param fosp FOSFORO (mg/dl)
  /// @param acup ACIDO URICO (mg/dl)
  /// @param calcion CALCIO IONICO (mmol/l)
  ///
  PlasmaStudyModel({
    @RfControl(validators: [RequiredValidator()]) this.creap = 0,
    @RfControl(validators: [RequiredValidator()]) this.fosfa = 0,
    @RfControl(validators: [RequiredValidator()]) this.calp = 0,
    @RfControl(validators: [RequiredValidator()]) this.fosp = 0,
    @RfControl(validators: [RequiredValidator()]) this.acup = 0,
    @RfControl(validators: [RequiredValidator()]) this.calcion = 0,
  });

  /// CREATININA (mg/dl)
  final double creap;

  /// FOSFATASA ALCALINA (U/l)
  final double fosfa;

  /// CALCIO (mg/dl)
  final double calp;

  /// FOSFORO (mg/dl)
  final double fosp;

  /// ACIDO URICO (mg/dl)
  final double acup;

  /// CALCIO IONICO (mmol/l)
  final double calcion;

  @override
  String toString() {
    return '''
    PlasmaStudyModel(
      creap: $creap mg/dl,
      fosfa: $fosfa U/l,
      calp: $calp mg/dl,
      fosp: $fosp mg/dl,
      acup: $acup mg/dl,
      calcion: $calcion mmol/l,
    )''';
  }
}

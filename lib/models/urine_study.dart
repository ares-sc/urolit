// ignore_for_file: inference_failure_on_instance_creation

import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'urine_study.gform.dart';

@Rf()
class UrineStudyModel {
  /// DATOS DEL ESTUDIO EN ORINA
  ///
  /// @param startHour HORA INICIO DE LA RECOGIDA
  /// @param endHour HORA FINAL DE LA RECOGIDA
  /// @param creao CREATININA (mg/dl)
  /// @param calo CALCIO (mg/dl)
  /// @param foso FOSFORO (mg/dl)
  /// @param acuo ACIDO URICO (mg/dl)
  /// @param mago MAGNESIO (meq/l)
  /// @param ph PH
  /// @param cultivo CULTIVO ORINA (+ / -)
  /// @param cistina TEST CISTINA (+ / -)
  /// @param oxalato OXALATO (mM/l)
  /// @param citrato CITRATO (mM/l)
  ///
  ///
  UrineStudyModel({
    @RfControl(validators: [RequiredValidator()]) required this.volo,
    @RfControl(validators: [RequiredValidator()]) required this.startHour,
    @RfControl(validators: [RequiredValidator()]) required this.endHour,
    @RfControl(validators: [RequiredValidator()]) required this.creao,
    @RfControl(validators: [RequiredValidator()]) required this.calo,
    @RfControl(validators: [RequiredValidator()]) required this.foso,
    @RfControl(validators: [RequiredValidator()]) required this.acuo,
    @RfControl(validators: [RequiredValidator()]) required this.mago,
    @RfControl(validators: [RequiredValidator()]) required this.ph,
    @RfControl(validators: [RequiredValidator()]) required this.oxalato,
    @RfControl(validators: [RequiredValidator()]) required this.citrato,
    @RfControl() this.cultivo,
    @RfControl() this.cistina = false,
  });

  /// VOL. URINARIO (ml)
  final double volo;

  /// HORA INICIO DE LA RECOGIDA
  final DateTime startHour;

  /// HORA FINAL DE LA RECOGIDA
  final DateTime endHour;

  /// CREATININA (mg/dl)
  final double creao;

  /// CALCIO (mg/dl)
  final double calo;

  /// FOSFORO (mg/dl)
  final double foso;

  /// ACIDO URICO (mg/dl)
  final double acuo;

  /// MAGNESIO (meq/l)
  final double mago;

  /// PH
  final double ph;

  /// CULTIVO ORINA (+ / -)
  final double? cultivo;

  /// TEST CISTINA (+ / -)
  final bool cistina;

  /// OXALATO (mM/l)
  final double oxalato;

  /// CITRATO (mM/l)
  final double citrato;

  @override
  String toString() {
    return '''
    UrineStudy(
      startHour: $startHour,
      endHour: $endHour,
      volo: $volo ml,
      creao: $creao mg/dl,
      calo: $calo mg/dl,
      foso: $foso mg/dl,
      acuo: $acuo mg/dl,
      mago: $mago meq/l,
      ph: $ph,
      cultivo: $cultivo,
      cistina: $cistina,
      oxalato: $oxalato mM/l,
      citrato: $citrato mM/l,
    )''';
  }
}

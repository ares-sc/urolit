// ignore_for_file: inference_failure_on_instance_creation

import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'patient.gform.dart';

@Rf()
class PatientModel {
  PatientModel({
    @RfControl(validators: [RequiredValidator()]) required this.name,
    @RfControl(validators: [RequiredValidator()]) required this.ehr,
    @RfControl(validators: [RequiredValidator()]) required this.skinColor,
    @RfControl(validators: [RequiredValidator()]) required this.province,
    @RfControl(validators: [RequiredValidator()]) required this.weight,
    @RfControl(validators: [RequiredValidator()]) required this.height,
    @RfControl(validators: [RequiredValidator()]) required this.age,
    @RfControl(validators: [RequiredValidator()]) required this.weightIsInKg,
    @RfControl(validators: [RequiredValidator()]) required this.heightIsInCm,
    @RfControl(validators: [RequiredValidator()]) required this.sex,
  });

  final String name;
  final String ehr;
  final String skinColor;
  final String province;
  final double weight;
  final double height;
  final bool weightIsInKg;
  final bool heightIsInCm;
  final int age;
  final String sex;

  @override
  String toString() {
    return '''
    Patient

    nombre: $name,
    hc: $ehr,
    peso: $weight kg
    colorPiel: $skinColor
    province: $province
    altura: $height cm
    edad: $age años
    sexo: $sex

    ''';
  }
}

import 'package:equatable/equatable.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'study_model.gform.dart';

@Rf()
class StudyModel extends Equatable {
  const StudyModel({
    @RfControl(validators: [RequiredValidator()]) required this.date,
    @RfControl(validators: [RequiredValidator()]) required this.doctorName,
  });

  final DateTime date;
  final String doctorName;

  @override
  String toString() {
    return '''
    Study

    fecha: $date

    nombre: $doctorName,
    ''';
  }

  @override
  List<Object?> get props => [
        date,
        doctorName,
      ];
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'urolit_form_cubit.dart';

final class UrolitFormState extends Equatable {
  const UrolitFormState({
    this.study,
    this.patient,
    this.plasmaStudy,
    this.urineStudy,
    this.step = 0,
  });

  final StudyModel? study;
  final PatientModel? patient;
  final PlasmaStudyModel? plasmaStudy;
  final UrineStudyModel? urineStudy;
  final int step;

  AnalysisModel? get analysis =>
      patient == null || plasmaStudy == null || urineStudy == null
          ? null
          : AnalysisModel(
              patient: patient!,
              plasmaStudyModel: plasmaStudy!,
              urineStudyModel: urineStudy!,
              study: study!,
            );

  bool get isCompleted =>
      study != null &&
      patient != null &&
      plasmaStudy != null &&
      urineStudy != null;

  Object? model(int step) => {
        0: study,
        1: patient,
        2: plasmaStudy,
        3: urineStudy,
      }[step];

  @override
  List<Object?> get props => [
        study,
        patient,
        plasmaStudy,
        urineStudy,
        step,
      ];

  UrolitFormState copyWith({
    StudyModel? study,
    PatientModel? patient,
    PlasmaStudyModel? plasmaStudy,
    UrineStudyModel? urineStudy,
    int? step,
  }) {
    return UrolitFormState(
      study: study ?? this.study,
      patient: patient ?? this.patient,
      plasmaStudy: plasmaStudy ?? this.plasmaStudy,
      urineStudy: urineStudy ?? this.urineStudy,
      step: step ?? this.step,
    );
  }

  @override
  String toString() {
    return '''

    study: $study
    patient: $patient,
    plasmaStudy: $plasmaStudy,
    urineStudy: $urineStudy,
    step: $step,

    ''';
  }
}

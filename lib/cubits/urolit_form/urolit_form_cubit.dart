import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:urolit/models/analysis_model.dart';
import 'package:urolit/models/patient.dart';
import 'package:urolit/models/plasma_study.dart';
import 'package:urolit/models/study_model.dart';
import 'package:urolit/models/urine_study.dart';

part 'urolit_form_state.dart';

class UrolitFormCubit extends Cubit<UrolitFormState> {
  UrolitFormCubit()
      : super(
          UrolitFormState(
            study: StudyModel(
              date: DateTime.now(),
              doctorName: 'Yalina Madrigal Barreto',
            ),
            patient: PatientModel(
              name: 'José Javier Quesada Madrigal',
              ehr: '00031573280',
              weight: 62 * 2.2,
              height: 172 / 2.54,
              age: 23,
              sex: 'M',
              skinColor: 'BLANCA',
              province: 'La Habana',
              weightIsInKg: false,
              heightIsInCm: false,
            ),
            plasmaStudy: PlasmaStudyModel(
              creap: 0.7,
              fosfa: 100,
              calp: 9.5,
              fosp: 4.5,
              acup: 5.5,
              calcion: 1.2,
            ),
            urineStudy: UrineStudyModel(
              volo: 24,
              startHour: DateTime(2024, 1, 8, 12, 20),
              endHour: DateTime(2024, 1, 8, 12, 22),
              creao: 0.7,
              calo: 9.5,
              foso: 4.5,
              acuo: 5.5,
              mago: 1.2,
              ph: 5.5,
              cultivo: 100000,
              oxalato: 2,
              citrato: 1,
            ),
          ),
        );

  @override
  void onChange(Change<UrolitFormState> change) {
    super.onChange(change);
    debugPrint(change.toString());
  }

  void nextStep() {
    emit(state.copyWith(step: state.step + 1));
  }

  void previousStep() {
    emit(state.copyWith(step: state.step - 1));
  }

  void goToStep(int step) {
    if (step < state.step) {
      return emit(state.copyWith(step: step));
    }

    final model = state.model(step);

    if (model != null) {
      return emit(state.copyWith(step: step));
    }
  }

  void addStudy(StudyModel? study) {
    emit(state.copyWith(study: study));
  }

  void addPatient(PatientModel? patient) {
    emit(state.copyWith(patient: patient));
  }

  void addPlasmaStudy(PlasmaStudyModel? plasmaStudy) {
    emit(state.copyWith(plasmaStudy: plasmaStudy));
  }

  void addUrineStudy(UrineStudyModel? urineStudy) {
    emit(state.copyWith(urineStudy: urineStudy));
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urolit/cubits/urolit_form/urolit_form_cubit.dart';
import 'package:urolit/views/patient_view.dart';
import 'package:urolit/views/plasma_study_view.dart';
import 'package:urolit/views/study_view.dart';
import 'package:urolit/views/urine_study_view.dart';
import 'package:urolit/widgets/indexed_step_widget.dart';

@RoutePage()
class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => UrolitFormCubit(),
        child: const _UrolitFormPageInternal(),
      ),
    );
  }
}

final class _StepWithContent {
  _StepWithContent({required this.content, required this.title});

  final Widget content;
  final String title;
}

final _steps = [
  _StepWithContent(
    title: 'Datos Generales',
    content: const StudyFormView(),
  ),
  _StepWithContent(
    title: 'Paciente',
    content: const PatientFormView(),
  ),
  _StepWithContent(
    title: 'Plasma',
    content: const PlasmaStudyFormView(),
  ),
  _StepWithContent(
    title: 'Orina',
    content: const UrineStudyFormView(),
  ),
];

class _UrolitFormPageInternal extends StatelessWidget {
  const _UrolitFormPageInternal();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<UrolitFormCubit>();
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(8),
      child: BlocBuilder<UrolitFormCubit, UrolitFormState>(
        builder: (context, state) {
          return Stepper(
            type: StepperType.horizontal,
            elevation: 0,
            onStepContinue: cubit.nextStep,
            onStepCancel: cubit.previousStep,
            onStepTapped: cubit.goToStep,
            currentStep: state.step,
            steps: _steps
                .mapIndexed(
                  (index, step) => IndexedStep(
                    title: Text(step.title),
                    content: step.content,
                    index: index,
                    currentStep: state.step,
                    state: state.model(index) != null
                        ? StepState.complete
                        : index == state.step
                            ? StepState.editing
                            : StepState.indexed,
                  ),
                )
                .toList(),
            controlsBuilder: (context, details) {
              return const SizedBox();
            },
          );
        },
      ),
    );
  }
}

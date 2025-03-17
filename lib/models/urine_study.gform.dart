// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'urine_study.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveUrineStudyModelFormConsumer extends StatelessWidget {
  const ReactiveUrineStudyModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
          BuildContext context, UrineStudyModelForm formModel, Widget? child)
      builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveUrineStudyModelForm.of(context);

    if (formModel is! UrineStudyModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class UrineStudyModelFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const UrineStudyModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final UrineStudyModelForm form;
}

class ReactiveUrineStudyModelForm extends StatelessWidget {
  const ReactiveUrineStudyModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final UrineStudyModelForm form;

  final WillPopCallback? onWillPop;

  static UrineStudyModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              UrineStudyModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        UrineStudyModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as UrineStudyModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return UrineStudyModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

extension ReactiveReactiveUrineStudyModelFormExt on BuildContext {
  UrineStudyModelForm? urineStudyModelFormWatch() =>
      ReactiveUrineStudyModelForm.of(this);

  UrineStudyModelForm? urineStudyModelFormRead() =>
      ReactiveUrineStudyModelForm.of(this, listen: false);
}

class UrineStudyModelFormBuilder extends StatefulWidget {
  const UrineStudyModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final UrineStudyModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
          BuildContext context, UrineStudyModelForm formModel, Widget? child)
      builder;

  final void Function(BuildContext context, UrineStudyModelForm formModel)?
      initState;

  @override
  _UrineStudyModelFormBuilderState createState() =>
      _UrineStudyModelFormBuilderState();
}

class _UrineStudyModelFormBuilderState
    extends State<UrineStudyModelFormBuilder> {
  late UrineStudyModelForm _formModel;

  @override
  void initState() {
    _formModel = UrineStudyModelForm(
        UrineStudyModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant UrineStudyModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel.updateValue(widget.model);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _formModel.form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveUrineStudyModelForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      onWillPop: widget.onWillPop,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        onWillPop: widget.onWillPop,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

class UrineStudyModelForm implements FormModel<UrineStudyModel> {
  UrineStudyModelForm(
    this.form,
    this.path,
  );

  static const String voloControlName = "volo";

  static const String startHourControlName = "startHour";

  static const String endHourControlName = "endHour";

  static const String creaoControlName = "creao";

  static const String caloControlName = "calo";

  static const String fosoControlName = "foso";

  static const String acuoControlName = "acuo";

  static const String magoControlName = "mago";

  static const String phControlName = "ph";

  static const String oxalatoControlName = "oxalato";

  static const String citratoControlName = "citrato";

  static const String cultivoControlName = "cultivo";

  static const String cistinaControlName = "cistina";

  final FormGroup form;

  final String? path;

  String voloControlPath() => pathBuilder(voloControlName);

  String startHourControlPath() => pathBuilder(startHourControlName);

  String endHourControlPath() => pathBuilder(endHourControlName);

  String creaoControlPath() => pathBuilder(creaoControlName);

  String caloControlPath() => pathBuilder(caloControlName);

  String fosoControlPath() => pathBuilder(fosoControlName);

  String acuoControlPath() => pathBuilder(acuoControlName);

  String magoControlPath() => pathBuilder(magoControlName);

  String phControlPath() => pathBuilder(phControlName);

  String oxalatoControlPath() => pathBuilder(oxalatoControlName);

  String citratoControlPath() => pathBuilder(citratoControlName);

  String cultivoControlPath() => pathBuilder(cultivoControlName);

  String cistinaControlPath() => pathBuilder(cistinaControlName);

  double get _voloValue => voloControl.value as double;

  DateTime get _startHourValue => startHourControl.value as DateTime;

  DateTime get _endHourValue => endHourControl.value as DateTime;

  double get _creaoValue => creaoControl.value as double;

  double get _caloValue => caloControl.value as double;

  double get _fosoValue => fosoControl.value as double;

  double get _acuoValue => acuoControl.value as double;

  double get _magoValue => magoControl.value as double;

  double get _phValue => phControl.value as double;

  double get _oxalatoValue => oxalatoControl.value as double;

  double get _citratoValue => citratoControl.value as double;

  double? get _cultivoValue => cultivoControl?.value;

  bool get _cistinaValue => cistinaControl.value as bool;

  bool get containsVolo {
    try {
      form.control(voloControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsStartHour {
    try {
      form.control(startHourControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsEndHour {
    try {
      form.control(endHourControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsCreao {
    try {
      form.control(creaoControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsCalo {
    try {
      form.control(caloControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsFoso {
    try {
      form.control(fosoControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsAcuo {
    try {
      form.control(acuoControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsMago {
    try {
      form.control(magoControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPh {
    try {
      form.control(phControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsOxalato {
    try {
      form.control(oxalatoControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsCitrato {
    try {
      form.control(citratoControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsCultivo {
    try {
      form.control(cultivoControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsCistina {
    try {
      form.control(cistinaControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get voloErrors => voloControl.errors;

  Object? get startHourErrors => startHourControl.errors;

  Object? get endHourErrors => endHourControl.errors;

  Object? get creaoErrors => creaoControl.errors;

  Object? get caloErrors => caloControl.errors;

  Object? get fosoErrors => fosoControl.errors;

  Object? get acuoErrors => acuoControl.errors;

  Object? get magoErrors => magoControl.errors;

  Object? get phErrors => phControl.errors;

  Object? get oxalatoErrors => oxalatoControl.errors;

  Object? get citratoErrors => citratoControl.errors;

  Object? get cultivoErrors => cultivoControl?.errors;

  Object? get cistinaErrors => cistinaControl.errors;

  void get voloFocus => form.focus(voloControlPath());

  void get startHourFocus => form.focus(startHourControlPath());

  void get endHourFocus => form.focus(endHourControlPath());

  void get creaoFocus => form.focus(creaoControlPath());

  void get caloFocus => form.focus(caloControlPath());

  void get fosoFocus => form.focus(fosoControlPath());

  void get acuoFocus => form.focus(acuoControlPath());

  void get magoFocus => form.focus(magoControlPath());

  void get phFocus => form.focus(phControlPath());

  void get oxalatoFocus => form.focus(oxalatoControlPath());

  void get citratoFocus => form.focus(citratoControlPath());

  void get cultivoFocus => form.focus(cultivoControlPath());

  void get cistinaFocus => form.focus(cistinaControlPath());

  void cultivoRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsCultivo) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          cultivoControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            cultivoControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void voloValueUpdate(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    voloControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void startHourValueUpdate(
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    startHourControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void endHourValueUpdate(
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    endHourControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void creaoValueUpdate(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    creaoControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void caloValueUpdate(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    caloControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void fosoValueUpdate(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    fosoControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void acuoValueUpdate(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    acuoControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void magoValueUpdate(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    magoControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void phValueUpdate(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    phControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void oxalatoValueUpdate(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    oxalatoControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void citratoValueUpdate(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    citratoControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void cultivoValueUpdate(
    double? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    cultivoControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void cistinaValueUpdate(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    cistinaControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void voloValuePatch(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    voloControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void startHourValuePatch(
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    startHourControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void endHourValuePatch(
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    endHourControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void creaoValuePatch(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    creaoControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void caloValuePatch(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    caloControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void fosoValuePatch(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    fosoControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void acuoValuePatch(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    acuoControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void magoValuePatch(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    magoControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void phValuePatch(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    phControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void oxalatoValuePatch(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    oxalatoControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void citratoValuePatch(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    citratoControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void cultivoValuePatch(
    double? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    cultivoControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void cistinaValuePatch(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    cistinaControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void voloValueReset(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      voloControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void startHourValueReset(
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      startHourControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void endHourValueReset(
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      endHourControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void creaoValueReset(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      creaoControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void caloValueReset(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      caloControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void fosoValueReset(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      fosoControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void acuoValueReset(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      acuoControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void magoValueReset(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      magoControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void phValueReset(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      phControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void oxalatoValueReset(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      oxalatoControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void citratoValueReset(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      citratoControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void cultivoValueReset(
    double? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      cultivoControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void cistinaValueReset(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      cistinaControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<double> get voloControl =>
      form.control(voloControlPath()) as FormControl<double>;

  FormControl<DateTime> get startHourControl =>
      form.control(startHourControlPath()) as FormControl<DateTime>;

  FormControl<DateTime> get endHourControl =>
      form.control(endHourControlPath()) as FormControl<DateTime>;

  FormControl<double> get creaoControl =>
      form.control(creaoControlPath()) as FormControl<double>;

  FormControl<double> get caloControl =>
      form.control(caloControlPath()) as FormControl<double>;

  FormControl<double> get fosoControl =>
      form.control(fosoControlPath()) as FormControl<double>;

  FormControl<double> get acuoControl =>
      form.control(acuoControlPath()) as FormControl<double>;

  FormControl<double> get magoControl =>
      form.control(magoControlPath()) as FormControl<double>;

  FormControl<double> get phControl =>
      form.control(phControlPath()) as FormControl<double>;

  FormControl<double> get oxalatoControl =>
      form.control(oxalatoControlPath()) as FormControl<double>;

  FormControl<double> get citratoControl =>
      form.control(citratoControlPath()) as FormControl<double>;

  FormControl<double>? get cultivoControl => containsCultivo
      ? form.control(cultivoControlPath()) as FormControl<double>?
      : null;

  FormControl<bool> get cistinaControl =>
      form.control(cistinaControlPath()) as FormControl<bool>;

  void voloSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      voloControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      voloControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void startHourSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      startHourControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      startHourControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void endHourSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      endHourControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      endHourControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void creaoSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      creaoControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      creaoControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void caloSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      caloControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      caloControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void fosoSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      fosoControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      fosoControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void acuoSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      acuoControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      acuoControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void magoSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      magoControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      magoControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void phSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      phControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      phControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void oxalatoSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      oxalatoControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      oxalatoControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void citratoSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      citratoControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      citratoControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void cultivoSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      cultivoControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      cultivoControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void cistinaSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      cistinaControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      cistinaControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  UrineStudyModel get model {
    if (!currentForm.valid) {
      debugPrintStack(
          label:
              '[${path ?? 'UrineStudyModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return UrineStudyModel(
        volo: _voloValue,
        startHour: _startHourValue,
        endHour: _endHourValue,
        creao: _creaoValue,
        calo: _caloValue,
        foso: _fosoValue,
        acuo: _acuoValue,
        mago: _magoValue,
        ph: _phValue,
        oxalato: _oxalatoValue,
        citrato: _citratoValue,
        cultivo: _cultivoValue,
        cistina: _cistinaValue);
  }

  @override
  void submit({
    required void Function(UrineStudyModel model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    UrineStudyModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(UrineStudyModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    UrineStudyModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(UrineStudyModel? urineStudyModel) => FormGroup({
        voloControlName: FormControl<double>(
            value: urineStudyModel?.volo,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        startHourControlName: FormControl<DateTime>(
            value: urineStudyModel?.startHour,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        endHourControlName: FormControl<DateTime>(
            value: urineStudyModel?.endHour,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        creaoControlName: FormControl<double>(
            value: urineStudyModel?.creao,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        caloControlName: FormControl<double>(
            value: urineStudyModel?.calo,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        fosoControlName: FormControl<double>(
            value: urineStudyModel?.foso,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        acuoControlName: FormControl<double>(
            value: urineStudyModel?.acuo,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        magoControlName: FormControl<double>(
            value: urineStudyModel?.mago,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        phControlName: FormControl<double>(
            value: urineStudyModel?.ph,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        oxalatoControlName: FormControl<double>(
            value: urineStudyModel?.oxalato,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        citratoControlName: FormControl<double>(
            value: urineStudyModel?.citrato,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        cultivoControlName: FormControl<double>(
            value: urineStudyModel?.cultivo,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        cistinaControlName: FormControl<bool>(
            value: urineStudyModel?.cistina,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ReactiveUrineStudyModelFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveUrineStudyModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(UrineStudyModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      UrineStudyModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, UrineStudyModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveUrineStudyModelForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<T>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.map((e) => e.value).toList();
        final itemList = values
            .asMap()
            .map((i, item) {
              return MapEntry(
                i,
                itemBuilder(
                  context,
                  i,
                  item,
                  formModel,
                ),
              );
            })
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactiveUrineStudyModelFormFormGroupArrayBuilder<T>
    extends StatelessWidget {
  const ReactiveUrineStudyModelFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>, List<T>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>, List<T>> Function(
      UrineStudyModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      UrineStudyModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, UrineStudyModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveUrineStudyModelForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ?? <T>[])
            .asMap()
            .map((i, item) => MapEntry(
                  i,
                  itemBuilder(
                    context,
                    i,
                    item,
                    formModel,
                  ),
                ))
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}

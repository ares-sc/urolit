// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'study_model.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveStudyModelFormConsumer extends StatelessWidget {
  const ReactiveStudyModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, StudyModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveStudyModelForm.of(context);

    if (formModel is! StudyModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class StudyModelFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const StudyModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final StudyModelForm form;
}

class ReactiveStudyModelForm extends StatelessWidget {
  const ReactiveStudyModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final StudyModelForm form;

  final WillPopCallback? onWillPop;

  static StudyModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<StudyModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        StudyModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as StudyModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return StudyModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

extension ReactiveReactiveStudyModelFormExt on BuildContext {
  StudyModelForm? studyModelFormWatch() => ReactiveStudyModelForm.of(this);

  StudyModelForm? studyModelFormRead() =>
      ReactiveStudyModelForm.of(this, listen: false);
}

class StudyModelFormBuilder extends StatefulWidget {
  const StudyModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final StudyModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, StudyModelForm formModel, Widget? child) builder;

  final void Function(BuildContext context, StudyModelForm formModel)?
      initState;

  @override
  _StudyModelFormBuilderState createState() => _StudyModelFormBuilderState();
}

class _StudyModelFormBuilderState extends State<StudyModelFormBuilder> {
  late StudyModelForm _formModel;

  @override
  void initState() {
    _formModel =
        StudyModelForm(StudyModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant StudyModelFormBuilder oldWidget) {
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
    return ReactiveStudyModelForm(
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

class StudyModelForm implements FormModel<StudyModel> {
  StudyModelForm(
    this.form,
    this.path,
  );

  static const String dateControlName = "date";

  static const String doctorNameControlName = "doctorName";

  final FormGroup form;

  final String? path;

  String dateControlPath() => pathBuilder(dateControlName);

  String doctorNameControlPath() => pathBuilder(doctorNameControlName);

  DateTime get _dateValue => dateControl.value as DateTime;

  String get _doctorNameValue => doctorNameControl.value as String;

  bool get containsDate {
    try {
      form.control(dateControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsDoctorName {
    try {
      form.control(doctorNameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get dateErrors => dateControl.errors;

  Object? get doctorNameErrors => doctorNameControl.errors;

  void get dateFocus => form.focus(dateControlPath());

  void get doctorNameFocus => form.focus(doctorNameControlPath());

  void dateValueUpdate(
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    dateControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void doctorNameValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    doctorNameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void dateValuePatch(
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    dateControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void doctorNameValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    doctorNameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void dateValueReset(
    DateTime value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      dateControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void doctorNameValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      doctorNameControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<DateTime> get dateControl =>
      form.control(dateControlPath()) as FormControl<DateTime>;

  FormControl<String> get doctorNameControl =>
      form.control(doctorNameControlPath()) as FormControl<String>;

  void dateSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      dateControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      dateControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void doctorNameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      doctorNameControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      doctorNameControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  StudyModel get model {
    if (!currentForm.valid) {
      debugPrintStack(
          label:
              '[${path ?? 'StudyModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return StudyModel(date: _dateValue, doctorName: _doctorNameValue);
  }

  @override
  void submit({
    required void Function(StudyModel model) onValid,
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
    StudyModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(StudyModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    StudyModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(StudyModel? studyModel) => FormGroup({
        dateControlName: FormControl<DateTime>(
            value: studyModel?.date,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        doctorNameControlName: FormControl<String>(
            value: studyModel?.doctorName,
            validators: [RequiredValidator()],
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

class ReactiveStudyModelFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveStudyModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(StudyModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      StudyModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, StudyModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveStudyModelForm.of(context);

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

class ReactiveStudyModelFormFormGroupArrayBuilder<T> extends StatelessWidget {
  const ReactiveStudyModelFormFormGroupArrayBuilder({
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
      StudyModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      StudyModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, StudyModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveStudyModelForm.of(context);

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

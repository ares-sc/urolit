// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'patient.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactivePatientModelFormConsumer extends StatelessWidget {
  const ReactivePatientModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, PatientModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePatientModelForm.of(context);

    if (formModel is! PatientModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class PatientModelFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const PatientModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final PatientModelForm form;
}

class ReactivePatientModelForm extends StatelessWidget {
  const ReactivePatientModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final PatientModelForm form;

  final WillPopCallback? onWillPop;

  static PatientModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              PatientModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        PatientModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as PatientModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return PatientModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

extension ReactiveReactivePatientModelFormExt on BuildContext {
  PatientModelForm? patientModelFormWatch() =>
      ReactivePatientModelForm.of(this);

  PatientModelForm? patientModelFormRead() =>
      ReactivePatientModelForm.of(this, listen: false);
}

class PatientModelFormBuilder extends StatefulWidget {
  const PatientModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final PatientModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, PatientModelForm formModel, Widget? child) builder;

  final void Function(BuildContext context, PatientModelForm formModel)?
      initState;

  @override
  _PatientModelFormBuilderState createState() =>
      _PatientModelFormBuilderState();
}

class _PatientModelFormBuilderState extends State<PatientModelFormBuilder> {
  late PatientModelForm _formModel;

  @override
  void initState() {
    _formModel =
        PatientModelForm(PatientModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant PatientModelFormBuilder oldWidget) {
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
    return ReactivePatientModelForm(
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

class PatientModelForm implements FormModel<PatientModel> {
  PatientModelForm(
    this.form,
    this.path,
  );

  static const String nameControlName = "name";

  static const String ehrControlName = "ehr";

  static const String skinColorControlName = "skinColor";

  static const String provinceControlName = "province";

  static const String weightControlName = "weight";

  static const String heightControlName = "height";

  static const String ageControlName = "age";

  static const String weightIsInKgControlName = "weightIsInKg";

  static const String heightIsInCmControlName = "heightIsInCm";

  static const String sexControlName = "sex";

  final FormGroup form;

  final String? path;

  String nameControlPath() => pathBuilder(nameControlName);

  String ehrControlPath() => pathBuilder(ehrControlName);

  String skinColorControlPath() => pathBuilder(skinColorControlName);

  String provinceControlPath() => pathBuilder(provinceControlName);

  String weightControlPath() => pathBuilder(weightControlName);

  String heightControlPath() => pathBuilder(heightControlName);

  String ageControlPath() => pathBuilder(ageControlName);

  String weightIsInKgControlPath() => pathBuilder(weightIsInKgControlName);

  String heightIsInCmControlPath() => pathBuilder(heightIsInCmControlName);

  String sexControlPath() => pathBuilder(sexControlName);

  String get _nameValue => nameControl.value as String;

  String get _ehrValue => ehrControl.value as String;

  String get _skinColorValue => skinColorControl.value as String;

  String get _provinceValue => provinceControl.value as String;

  double get _weightValue => weightControl.value as double;

  double get _heightValue => heightControl.value as double;

  int get _ageValue => ageControl.value as int;

  bool get _weightIsInKgValue => weightIsInKgControl.value as bool;

  bool get _heightIsInCmValue => heightIsInCmControl.value as bool;

  String get _sexValue => sexControl.value as String;

  bool get containsName {
    try {
      form.control(nameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsEhr {
    try {
      form.control(ehrControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsSkinColor {
    try {
      form.control(skinColorControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsProvince {
    try {
      form.control(provinceControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsWeight {
    try {
      form.control(weightControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsHeight {
    try {
      form.control(heightControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsAge {
    try {
      form.control(ageControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsWeightIsInKg {
    try {
      form.control(weightIsInKgControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsHeightIsInCm {
    try {
      form.control(heightIsInCmControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsSex {
    try {
      form.control(sexControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get nameErrors => nameControl.errors;

  Object? get ehrErrors => ehrControl.errors;

  Object? get skinColorErrors => skinColorControl.errors;

  Object? get provinceErrors => provinceControl.errors;

  Object? get weightErrors => weightControl.errors;

  Object? get heightErrors => heightControl.errors;

  Object? get ageErrors => ageControl.errors;

  Object? get weightIsInKgErrors => weightIsInKgControl.errors;

  Object? get heightIsInCmErrors => heightIsInCmControl.errors;

  Object? get sexErrors => sexControl.errors;

  void get nameFocus => form.focus(nameControlPath());

  void get ehrFocus => form.focus(ehrControlPath());

  void get skinColorFocus => form.focus(skinColorControlPath());

  void get provinceFocus => form.focus(provinceControlPath());

  void get weightFocus => form.focus(weightControlPath());

  void get heightFocus => form.focus(heightControlPath());

  void get ageFocus => form.focus(ageControlPath());

  void get weightIsInKgFocus => form.focus(weightIsInKgControlPath());

  void get heightIsInCmFocus => form.focus(heightIsInCmControlPath());

  void get sexFocus => form.focus(sexControlPath());

  void nameValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void ehrValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    ehrControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void skinColorValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    skinColorControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void provinceValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    provinceControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void weightValueUpdate(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    weightControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void heightValueUpdate(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    heightControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void ageValueUpdate(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    ageControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void weightIsInKgValueUpdate(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    weightIsInKgControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void heightIsInCmValueUpdate(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    heightIsInCmControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void sexValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    sexControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void ehrValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    ehrControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void skinColorValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    skinColorControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void provinceValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    provinceControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void weightValuePatch(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    weightControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void heightValuePatch(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    heightControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void ageValuePatch(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    ageControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void weightIsInKgValuePatch(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    weightIsInKgControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void heightIsInCmValuePatch(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    heightIsInCmControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void sexValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    sexControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      nameControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void ehrValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      ehrControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void skinColorValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      skinColorControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void provinceValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      provinceControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void weightValueReset(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      weightControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void heightValueReset(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      heightControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void ageValueReset(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      ageControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void weightIsInKgValueReset(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      weightIsInKgControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void heightIsInCmValueReset(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      heightIsInCmControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void sexValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      sexControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<String> get nameControl =>
      form.control(nameControlPath()) as FormControl<String>;

  FormControl<String> get ehrControl =>
      form.control(ehrControlPath()) as FormControl<String>;

  FormControl<String> get skinColorControl =>
      form.control(skinColorControlPath()) as FormControl<String>;

  FormControl<String> get provinceControl =>
      form.control(provinceControlPath()) as FormControl<String>;

  FormControl<double> get weightControl =>
      form.control(weightControlPath()) as FormControl<double>;

  FormControl<double> get heightControl =>
      form.control(heightControlPath()) as FormControl<double>;

  FormControl<int> get ageControl =>
      form.control(ageControlPath()) as FormControl<int>;

  FormControl<bool> get weightIsInKgControl =>
      form.control(weightIsInKgControlPath()) as FormControl<bool>;

  FormControl<bool> get heightIsInCmControl =>
      form.control(heightIsInCmControlPath()) as FormControl<bool>;

  FormControl<String> get sexControl =>
      form.control(sexControlPath()) as FormControl<String>;

  void nameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      nameControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      nameControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void ehrSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      ehrControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      ehrControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void skinColorSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      skinColorControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      skinColorControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void provinceSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      provinceControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      provinceControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void weightSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      weightControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      weightControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void heightSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      heightControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      heightControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void ageSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      ageControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      ageControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void weightIsInKgSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      weightIsInKgControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      weightIsInKgControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void heightIsInCmSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      heightIsInCmControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      heightIsInCmControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void sexSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      sexControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      sexControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  PatientModel get model {
    if (!currentForm.valid) {
      debugPrintStack(
          label:
              '[${path ?? 'PatientModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return PatientModel(
        name: _nameValue,
        ehr: _ehrValue,
        skinColor: _skinColorValue,
        province: _provinceValue,
        weight: _weightValue,
        height: _heightValue,
        age: _ageValue,
        weightIsInKg: _weightIsInKgValue,
        heightIsInCm: _heightIsInCmValue,
        sex: _sexValue);
  }

  @override
  void submit({
    required void Function(PatientModel model) onValid,
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
    PatientModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(PatientModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    PatientModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(PatientModel? patientModel) => FormGroup({
        nameControlName: FormControl<String>(
            value: patientModel?.name,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        ehrControlName: FormControl<String>(
            value: patientModel?.ehr,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        skinColorControlName: FormControl<String>(
            value: patientModel?.skinColor,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        provinceControlName: FormControl<String>(
            value: patientModel?.province,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        weightControlName: FormControl<double>(
            value: patientModel?.weight,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        heightControlName: FormControl<double>(
            value: patientModel?.height,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        ageControlName: FormControl<int>(
            value: patientModel?.age,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        weightIsInKgControlName: FormControl<bool>(
            value: patientModel?.weightIsInKg,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        heightIsInCmControlName: FormControl<bool>(
            value: patientModel?.heightIsInCm,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        sexControlName: FormControl<String>(
            value: patientModel?.sex,
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

class ReactivePatientModelFormArrayBuilder<T> extends StatelessWidget {
  const ReactivePatientModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(PatientModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      PatientModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, PatientModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePatientModelForm.of(context);

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

class ReactivePatientModelFormFormGroupArrayBuilder<T> extends StatelessWidget {
  const ReactivePatientModelFormFormGroupArrayBuilder({
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
      PatientModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      PatientModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, PatientModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePatientModelForm.of(context);

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

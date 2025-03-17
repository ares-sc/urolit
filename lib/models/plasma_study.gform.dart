// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'plasma_study.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactivePlasmaStudyModelFormConsumer extends StatelessWidget {
  const ReactivePlasmaStudyModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
          BuildContext context, PlasmaStudyModelForm formModel, Widget? child)
      builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePlasmaStudyModelForm.of(context);

    if (formModel is! PlasmaStudyModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class PlasmaStudyModelFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const PlasmaStudyModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final PlasmaStudyModelForm form;
}

class ReactivePlasmaStudyModelForm extends StatelessWidget {
  const ReactivePlasmaStudyModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final PlasmaStudyModelForm form;

  final WillPopCallback? onWillPop;

  static PlasmaStudyModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              PlasmaStudyModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        PlasmaStudyModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as PlasmaStudyModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return PlasmaStudyModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

extension ReactiveReactivePlasmaStudyModelFormExt on BuildContext {
  PlasmaStudyModelForm? plasmaStudyModelFormWatch() =>
      ReactivePlasmaStudyModelForm.of(this);

  PlasmaStudyModelForm? plasmaStudyModelFormRead() =>
      ReactivePlasmaStudyModelForm.of(this, listen: false);
}

class PlasmaStudyModelFormBuilder extends StatefulWidget {
  const PlasmaStudyModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final PlasmaStudyModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
          BuildContext context, PlasmaStudyModelForm formModel, Widget? child)
      builder;

  final void Function(BuildContext context, PlasmaStudyModelForm formModel)?
      initState;

  @override
  _PlasmaStudyModelFormBuilderState createState() =>
      _PlasmaStudyModelFormBuilderState();
}

class _PlasmaStudyModelFormBuilderState
    extends State<PlasmaStudyModelFormBuilder> {
  late PlasmaStudyModelForm _formModel;

  @override
  void initState() {
    _formModel = PlasmaStudyModelForm(
        PlasmaStudyModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant PlasmaStudyModelFormBuilder oldWidget) {
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
    return ReactivePlasmaStudyModelForm(
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

class PlasmaStudyModelForm implements FormModel<PlasmaStudyModel> {
  PlasmaStudyModelForm(
    this.form,
    this.path,
  );

  static const String creapControlName = "creap";

  static const String fosfaControlName = "fosfa";

  static const String calpControlName = "calp";

  static const String fospControlName = "fosp";

  static const String acupControlName = "acup";

  static const String calcionControlName = "calcion";

  final FormGroup form;

  final String? path;

  String creapControlPath() => pathBuilder(creapControlName);

  String fosfaControlPath() => pathBuilder(fosfaControlName);

  String calpControlPath() => pathBuilder(calpControlName);

  String fospControlPath() => pathBuilder(fospControlName);

  String acupControlPath() => pathBuilder(acupControlName);

  String calcionControlPath() => pathBuilder(calcionControlName);

  double get _creapValue => creapControl.value as double;

  double get _fosfaValue => fosfaControl.value as double;

  double get _calpValue => calpControl.value as double;

  double get _fospValue => fospControl.value as double;

  double get _acupValue => acupControl.value as double;

  double get _calcionValue => calcionControl.value as double;

  bool get containsCreap {
    try {
      form.control(creapControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsFosfa {
    try {
      form.control(fosfaControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsCalp {
    try {
      form.control(calpControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsFosp {
    try {
      form.control(fospControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsAcup {
    try {
      form.control(acupControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsCalcion {
    try {
      form.control(calcionControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get creapErrors => creapControl.errors;

  Object? get fosfaErrors => fosfaControl.errors;

  Object? get calpErrors => calpControl.errors;

  Object? get fospErrors => fospControl.errors;

  Object? get acupErrors => acupControl.errors;

  Object? get calcionErrors => calcionControl.errors;

  void get creapFocus => form.focus(creapControlPath());

  void get fosfaFocus => form.focus(fosfaControlPath());

  void get calpFocus => form.focus(calpControlPath());

  void get fospFocus => form.focus(fospControlPath());

  void get acupFocus => form.focus(acupControlPath());

  void get calcionFocus => form.focus(calcionControlPath());

  void creapValueUpdate(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    creapControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void fosfaValueUpdate(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    fosfaControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void calpValueUpdate(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    calpControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void fospValueUpdate(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    fospControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void acupValueUpdate(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    acupControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void calcionValueUpdate(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    calcionControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void creapValuePatch(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    creapControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void fosfaValuePatch(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    fosfaControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void calpValuePatch(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    calpControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void fospValuePatch(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    fospControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void acupValuePatch(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    acupControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void calcionValuePatch(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    calcionControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void creapValueReset(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      creapControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void fosfaValueReset(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      fosfaControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void calpValueReset(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      calpControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void fospValueReset(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      fospControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void acupValueReset(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      acupControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void calcionValueReset(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      calcionControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<double> get creapControl =>
      form.control(creapControlPath()) as FormControl<double>;

  FormControl<double> get fosfaControl =>
      form.control(fosfaControlPath()) as FormControl<double>;

  FormControl<double> get calpControl =>
      form.control(calpControlPath()) as FormControl<double>;

  FormControl<double> get fospControl =>
      form.control(fospControlPath()) as FormControl<double>;

  FormControl<double> get acupControl =>
      form.control(acupControlPath()) as FormControl<double>;

  FormControl<double> get calcionControl =>
      form.control(calcionControlPath()) as FormControl<double>;

  void creapSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      creapControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      creapControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void fosfaSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      fosfaControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      fosfaControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void calpSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      calpControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      calpControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void fospSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      fospControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      fospControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void acupSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      acupControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      acupControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void calcionSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      calcionControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      calcionControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  PlasmaStudyModel get model {
    if (!currentForm.valid) {
      debugPrintStack(
          label:
              '[${path ?? 'PlasmaStudyModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return PlasmaStudyModel(
        creap: _creapValue,
        fosfa: _fosfaValue,
        calp: _calpValue,
        fosp: _fospValue,
        acup: _acupValue,
        calcion: _calcionValue);
  }

  @override
  void submit({
    required void Function(PlasmaStudyModel model) onValid,
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
    PlasmaStudyModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(PlasmaStudyModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    PlasmaStudyModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(PlasmaStudyModel? plasmaStudyModel) =>
      FormGroup({
        creapControlName: FormControl<double>(
            value: plasmaStudyModel?.creap,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        fosfaControlName: FormControl<double>(
            value: plasmaStudyModel?.fosfa,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        calpControlName: FormControl<double>(
            value: plasmaStudyModel?.calp,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        fospControlName: FormControl<double>(
            value: plasmaStudyModel?.fosp,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        acupControlName: FormControl<double>(
            value: plasmaStudyModel?.acup,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        calcionControlName: FormControl<double>(
            value: plasmaStudyModel?.calcion,
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

class ReactivePlasmaStudyModelFormArrayBuilder<T> extends StatelessWidget {
  const ReactivePlasmaStudyModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(PlasmaStudyModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      PlasmaStudyModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, PlasmaStudyModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePlasmaStudyModelForm.of(context);

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

class ReactivePlasmaStudyModelFormFormGroupArrayBuilder<T>
    extends StatelessWidget {
  const ReactivePlasmaStudyModelFormFormGroupArrayBuilder({
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
      PlasmaStudyModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      PlasmaStudyModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, PlasmaStudyModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePlasmaStudyModelForm.of(context);

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

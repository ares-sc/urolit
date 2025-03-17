import 'package:flutter/material.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:urolit/l10n/app_localizations.dart';
import 'package:urolit/router.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return ReactiveFormConfig(
      validationMessages: {
        ValidationMessage.required: (error) => 'Requerido',
      },
      child: MaterialApp.router(
        locale: const Locale('es'),
        localizationsDelegates: S.localizationsDelegates,
        supportedLocales: S.supportedLocales,
        routerConfig: appRouter.config(),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:urolit/models/analysis_model.dart';
import 'package:urolit/pages/pages.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: FormRoute.page, initial: true),
        AutoRoute(page: ResultRoute.page),
      ];
}

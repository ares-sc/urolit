// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    FormRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FormPage(),
      );
    },
    ResultRoute.name: (routeData) {
      final args = routeData.argsAs<ResultRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ResultPage(
          analysisModel: args.analysisModel,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [FormPage]
class FormRoute extends PageRouteInfo<void> {
  const FormRoute({List<PageRouteInfo>? children})
      : super(
          FormRoute.name,
          initialChildren: children,
        );

  static const String name = 'FormRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ResultPage]
class ResultRoute extends PageRouteInfo<ResultRouteArgs> {
  ResultRoute({
    required AnalysisModel analysisModel,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ResultRoute.name,
          args: ResultRouteArgs(
            analysisModel: analysisModel,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ResultRoute';

  static const PageInfo<ResultRouteArgs> page = PageInfo<ResultRouteArgs>(name);
}

class ResultRouteArgs {
  const ResultRouteArgs({
    required this.analysisModel,
    this.key,
  });

  final AnalysisModel analysisModel;

  final Key? key;

  @override
  String toString() {
    return 'ResultRouteArgs{analysisModel: $analysisModel, key: $key}';
  }
}

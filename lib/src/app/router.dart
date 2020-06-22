import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:soru/src/models/routes/home_view_arguments.dart';
import 'package:soru/src/models/routes/routes.dart';
import 'package:soru/src/models/routes/startup_view_arguments.dart';
import 'package:soru/src/views/home_view.dart';
import 'package:soru/src/views/sign_in_view.dart';
import 'package:soru/src/views/sign_up_view.dart';
import 'package:soru/src/views/start_up_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  final Object args = settings.arguments;

  switch (settings.name) {
    case Routes.signInViewRoute:
      return MaterialPageRoute<SignInView>(
        builder: (BuildContext context) => SignInView(),
        settings: settings,
      );
    case Routes.signUpViewRoute:
      return MaterialPageRoute<SignUpView>(
        builder: (BuildContext context) => SignUpView(),
        settings: settings,
      );
    case Routes.startUpViewRoute:
      if (hasInvalidArgs<StartUpViewArguments>(args)) {
        return misTypedArgsRoute<StartUpViewArguments>(args);
      }
      final StartUpViewArguments typedArgs =
          args as StartUpViewArguments ?? StartUpViewArguments();
      return MaterialPageRoute<StartUpView>(
        builder: (BuildContext context) => StartUpView(key: typedArgs.key),
        settings: settings,
      );
    case Routes.homeViewRoute:
      if (hasInvalidArgs<HomeViewArguments>(args)) {
        return misTypedArgsRoute<HomeViewArguments>(args);
      }
      final HomeViewArguments typedArgs =
          args as HomeViewArguments ?? HomeViewArguments();
      return MaterialPageRoute<HomeView>(
        builder: (BuildContext context) => HomeView(key: typedArgs.key),
        settings: settings,
      );
    default:
      return unknownRoutePage(settings.name);
  }
}

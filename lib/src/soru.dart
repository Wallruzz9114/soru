import 'package:flutter/material.dart';
import 'package:soru/src/app/locator.dart';
import 'package:soru/src/app/router.dart';
import 'package:soru/src/models/routes/routes.dart';
import 'package:stacked_services/stacked_services.dart';

class Soru extends StatelessWidget {
  @override
  MaterialApp build(BuildContext context) => MaterialApp(
        title: 'Soru',
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.startUpViewRoute,
        theme: ThemeData(
          primaryColor: const Color.fromARGB(255, 9, 202, 172),
          backgroundColor: const Color.fromARGB(255, 26, 27, 30),
          textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Open Sans'),
        ),
        onGenerateRoute: onGenerateRoute,
        navigatorKey: locator<NavigationService>().navigatorKey
            as GlobalKey<NavigatorState>,
      );
}

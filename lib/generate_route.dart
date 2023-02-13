import 'package:flutter/material.dart';

import 'homepage.dart';
import 'second_route.dart';

// This class is responsible for generate route according to RouteSettings
class GenerateRoute {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (context) => const HomeRoute(),
        );
      case "/second":
        return MaterialPageRoute(
          builder: (context) => const SecondRoute(),
          settings: settings,
        );

      default:
        return MaterialPageRoute(builder: (context) {
          return Scaffold(
            body: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.amber,
              child: const Text("Route Not Found 404 Error"),
            ),
          );
        });
    }
  }
}

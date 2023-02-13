import 'package:flutter/material.dart';

import 'generate_route.dart';

void main() {
  runApp(const MyApp());
}

// Class which define the initialRoute and
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: "/",
      onGenerateRoute: GenerateRoute.onGenerateRoute,
    );
  }
}

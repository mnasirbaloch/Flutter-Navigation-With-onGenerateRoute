import 'package:flutter/material.dart';

import 'second_arguments.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeRoute"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.red,
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(
              "/second",
              arguments: SecondArguments(name: "Muhammad Nasir", age: "23"),
            );
          },
          child: const Text("Go to Second Route"),
        ),
      ),
    );
  }
}

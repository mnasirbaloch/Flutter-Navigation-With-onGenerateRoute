import 'package:flutter/material.dart';

import 'second_arguments.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as SecondArguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text("SecondRoute"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Name: ${args.name}',
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              'Age: ${args.age}',
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Container(
              color: Colors.red,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Go to Home Route"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

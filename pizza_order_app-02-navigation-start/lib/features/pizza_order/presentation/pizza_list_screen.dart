import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PizzaListScreen extends StatelessWidget {
  const PizzaListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Placeholder(),
      body: Center(
        child: ElevatedButton(onPressed: () {
          // Navigator.of(context).pop();
          context.go("/");
        }, child: Text("Back")),
      ),
    );
  }
}

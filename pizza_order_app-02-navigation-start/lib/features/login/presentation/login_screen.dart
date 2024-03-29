import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pizza_order_app/features/login/presentation/email_text_field.dart';
import 'package:pizza_order_app/features/login/presentation/password_text_field.dart';
import 'package:pizza_order_app/features/pizza_order/presentation/pizza_list_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pizza Order'),
      ),
      body: Column(
        children: [
          const Icon(
            Icons.local_pizza_outlined,
            size: 128,
          ),
          const Text('Welcome!'),
          const EmailTextField(),
          const PasswordTextField(),
          ElevatedButton(
            onPressed: () {
              context.go("/pizzas");
            },
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}

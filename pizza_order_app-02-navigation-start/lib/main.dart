import 'package:flutter/material.dart';
import 'package:pizza_order_app/features/login/presentation/login_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:pizza_order_app/features/pizza_order/presentation/pizza_list_screen.dart';

void main() {
  runApp(const MainApp());
}


// GoRouter configuration
final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/pizzas',
      builder: (context, state) => PizzaListScreen(),
    ),
  ],
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}

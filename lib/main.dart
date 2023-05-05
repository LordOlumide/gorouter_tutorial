import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter_tutorial/app/screens/home_screen.dart';
import 'package:gorouter_tutorial/app/screens/profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Go Router Demo',
      routerConfig: _router,
    );
  }

  final GoRouter _router = GoRouter(
    // initialLocation: '/profile',
    routes: [
      GoRoute(path: '/', builder: ((context, state) => const HomeScreen())),
      GoRoute(
          path: '/profile',
          builder: ((context, state) => const ProfileScreen())),
    ],
  );
}

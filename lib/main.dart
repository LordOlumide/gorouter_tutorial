import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter_tutorial/app/core/route_names.dart';
import 'package:gorouter_tutorial/app/screens/error_screen.dart';
import 'package:gorouter_tutorial/app/screens/home_screen.dart';
import 'package:gorouter_tutorial/app/screens/login_screen.dart';
import 'package:gorouter_tutorial/app/screens/profile_screen.dart';

void main() {
  runApp(MyApp());
}

class LoginState {
  static bool isLoggedIn = false;
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
    // This redirect function is checked for every GoRouter navigation
    // call throughout the app
    redirect: (context, state) {
      if (LoginState.isLoggedIn) {
        return '/';
      } else {
        return '/logn';
      }
    },
    errorBuilder: ((context, state) => const ErrorScreen()),
    // initialLocation: '/profile',
    routes: [
      // // path parameters
      // GoRoute(
      //   name: RouteNames.homeScreen,
      //   path: '/',
      //   builder: ((context, state) => HomeScreen()),
      // ),
      // GoRoute(
      //   name: RouteNames.profileScreen,
      //   path: '/profile/:firstName',
      //   builder: ((context, state) => ProfileScreen(
      //         firstName: state.pathParameters['firstName']!,
      //       )),
      // ),

      // query parameters
      GoRoute(
        name: RouteNames.loginScreen,
        path: '/login',
        builder: ((context, state) => LoginScreen(
              onPressed: () {
                LoginState.isLoggedIn = !LoginState.isLoggedIn;
              },
            )),
      ),
      GoRoute(
        name: RouteNames.homeScreen,
        path: '/',
        builder: ((context, state) => HomeScreen()),
        routes: [
          GoRoute(
            name: RouteNames.profileScreen,
            path: 'profile',
            builder: ((context, state) => ProfileScreen(
                  firstName: state.queryParameters['name']!,
                )),
          ),
        ],
      ),
    ],
  );
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter_tutorial/app/core/route_names.dart';

class ProfileScreen extends StatelessWidget {
  final String firstName;

  const ProfileScreen({Key? key, required this.firstName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Welcome, $firstName',
                style: const TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
              child: const Text('Home screen'),
              onPressed: () {
                // GoRouter.of(context).go('/');
                context.goNamed(RouteNames.homeScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}

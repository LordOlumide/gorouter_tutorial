import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  final VoidCallback onPressed;

  const LoginScreen({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'This is Login screen',
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () {
                onPressed();
                context.go('/');
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

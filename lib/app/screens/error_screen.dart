import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Error!!!',
              style: TextStyle(
                color: Colors.red,
                fontSize: 34,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(''),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter_tutorial/app/core/route_names.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: _controller,
              ),
            ),
            ElevatedButton(
              child: const Text('Go to profile screen'),
              onPressed: () {
                // GoRouter.of(context).go('/profile');
                // context.goNamed(
                //   RouteNames.profileScreen,
                //   pathParameters: {'firstName': _controller.text},
                // );
                context.goNamed(
                  RouteNames.profileScreen,
                  queryParameters: {'name': _controller.text},
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

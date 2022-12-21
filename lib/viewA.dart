import 'package:flutter/material.dart';

class ViewA extends StatelessWidget {
  const ViewA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(
          child: const Text('Push To B'),
          onPressed: () => Navigator.pushNamed(context, '/view_b', arguments: {
            'message': 'Hello User 😄',
          }),
        )
      ]),
    ));
  }
}

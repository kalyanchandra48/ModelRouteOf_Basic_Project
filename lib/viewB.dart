import 'package:flutter/material.dart';

class ViewB extends StatelessWidget {
  final String? message;

  const ViewB({Key? key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map? args = ModalRoute.of(context)!.settings.arguments as Map?;
    return Scaffold(
      appBar: AppBar(
        title: const Text('View B'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '${args!['message']}',
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text(
                'Return to View A',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

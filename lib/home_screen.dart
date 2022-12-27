import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          TextButton(
            onPressed: () {
              print('Hello World!');
            },
            child: const Text(
              'Edit',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment
                .spaceEvenly, // main axis alignment is the primary axis (vertically in case of columns and horiz.ly in case of rows)
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.ac_unit),
                  Text(
                    'Hello!',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
              Text('Hello!', style: TextStyle(fontSize: 30)),
              Text('Hello!', style: TextStyle(fontSize: 30)),
              Text('Hello!', style: TextStyle(fontSize: 30)),
            ]),
      ),
    );
  }
}

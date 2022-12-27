import 'package:flutter/material.dart';

void main() {
  runApp(
    App(),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  // similar to render method in RN
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Test App')),
        body: Container(
          child: const Center(
            child: Directionality(
              textDirection: TextDirection.ltr,
              child: Text('Hello World'),
            ),
          ),
        ),
      ),
    );
  }
}

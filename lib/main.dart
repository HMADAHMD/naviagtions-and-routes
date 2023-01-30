import 'package:flutter/material.dart';
import 'SecondScreen.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const SecondScreen();
          }));
        },
        child: Text("Go to Screen two"),
      )),
    );
  }
}

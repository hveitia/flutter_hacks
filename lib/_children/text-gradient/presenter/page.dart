
import 'package:flutter/material.dart';

class GradientTextPage extends StatelessWidget {
   GradientTextPage ({Key? key}) : super(key: key);

  final Shader linearGradient = const LinearGradient(
    colors: <Color>[Colors.red, Colors.blue],
  ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 80.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gradient Text')),
      body:  Center(
        child: Text(
          'GRADIENT TEXT',
          style: TextStyle(
            fontSize: 48.0,
            fontWeight: FontWeight.w600,
            foreground: Paint()..shader = linearGradient,
          )
        ),
      ),
    );
  }
}

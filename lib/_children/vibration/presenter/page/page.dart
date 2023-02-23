import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VibrationPage extends StatelessWidget {
  const VibrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vibration'),
      ),
      body:  Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
            onPressed:(){
              HapticFeedback.vibrate();
            },
            child: const Text( 'Vibrate'),
          ),
        ],
      ),
    ),
    );
  }
}

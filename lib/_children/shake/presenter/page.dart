import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:shake/shake.dart';

class ShakePage extends StatelessWidget {
   ShakePage({Key? key}) : super(key: key);

   final ShakeDetector detector = ShakeDetector.waitForStart(
      onPhoneShake: () {
        var logger = Logger();
        logger.i('Phone is shaking!');
      }
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shake'),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                detector.startListening();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: const Text( 'Listen Shake'),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                detector.stopListening();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: const Text( 'Remove listen to Shake'),
            ),
          ],
        ),
      ),
    );
  }
}

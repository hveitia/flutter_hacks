import 'package:flutter/material.dart';
import 'package:torch_light/torch_light.dart';

class FlashLightPage extends StatelessWidget {
  const FlashLightPage({Key? key}) : super(key: key);

  void turnOnFlashLight() async {
    final isTorchAvailable = await TorchLight.isTorchAvailable();
    if (isTorchAvailable) {
      TorchLight.enableTorch();
    }
  }

  void turnOffFlashLight() async {
    final isTorchAvailable = await TorchLight.isTorchAvailable();
    if (isTorchAvailable) {
      TorchLight.disableTorch();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flash Light'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () async {
                turnOnFlashLight();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: const Text('Turn On'),
            ),
            const SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () async {
                turnOffFlashLight();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: const Text('Turn Off'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key,});

  @override
  State<MenuPage> createState() => MenuPageState();
}

class MenuPageState extends State<MenuPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Hacks!!!'),
      ),
      body: Center(
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Copy to Clipboard'),
              trailing: const Icon(CupertinoIcons.chevron_forward),
              onTap: () {
                Modular.to.pushNamed('/clipboard-module/');
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Vibration'),
              trailing: const Icon(CupertinoIcons.chevron_forward),
              onTap: () {
                Modular.to.pushNamed('/vibration-module/');
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Shake'),
              trailing: const Icon(CupertinoIcons.chevron_forward),
              onTap: () {
                Modular.to.pushNamed('/shake-module/');
              },
            ),
            ListTile(
              leading: const Icon(Icons.text_fields),
              title: const Text('Text Gradient'),
              trailing: const Icon(CupertinoIcons.chevron_forward),
              onTap: () {
                Modular.to.pushNamed('/text-gradient-module/');
              },
            ),
            ListTile(
              leading: const Icon(Icons.flashlight_on),
              title: const Text('Flash Light'),
              trailing: const Icon(CupertinoIcons.chevron_forward),
              onTap: () {
                Modular.to.pushNamed('/flash-light-module/');
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: _incrementCounter,
        onPressed: (){},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
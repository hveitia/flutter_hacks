import 'package:clipboard/clipboard.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ClipboardPage extends StatefulWidget {
  const ClipboardPage({Key? key}) : super(key: key);

  @override
  State<ClipboardPage> createState() => _ClipboardPageState();
}

class _ClipboardPageState extends State<ClipboardPage> {

  final TextEditingController _controller = TextEditingController();
  late String pasteValue = '';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Clipboard'),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
             Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.copy),
                  labelText:'Clipboard',
                  hintText: 'Text to copy',
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: (){
                FlutterClipboard.copy(_controller.text).then(( value ) {
                    if (kDebugMode) {
                      print('Text copied!!!');
                    }
                  }
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: const Text('Copy to Clipboard'),
            ),
            const SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: (){
                FlutterClipboard.paste().then((value) {
                  setState(() {
                    pasteValue = value;
                  });
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: const Text('Paste from Clipboard'),
            ),
            const SizedBox(height: 20.0),
            Text(pasteValue),
          ],
        )
      ),
    );
  }
}

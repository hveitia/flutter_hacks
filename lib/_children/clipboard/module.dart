import 'package:flutter_modular/flutter_modular.dart';
import 'package:hacks/_children/clipboard/presenter/page/page.dart';

class ClipboardModule extends Module {

  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (context, args) => const ClipboardPage()),
  ];
}
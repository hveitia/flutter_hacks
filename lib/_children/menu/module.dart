import 'package:flutter_modular/flutter_modular.dart';
import 'package:hacks/_children/clipboard/module.dart';
import 'package:hacks/_children/menu/presenter/page/page.dart';
import 'package:hacks/_children/shake/module.dart';
import 'package:hacks/_children/vibration/module.dart';

class MenuModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const MenuPage()),
    ModuleRoute('/vibration-module', module: VibrationModule()),
    ModuleRoute('/clipboard-module', module: ClipboardModule()),
    ModuleRoute('/shake-module', module: ShakeModule()),
  ];
}
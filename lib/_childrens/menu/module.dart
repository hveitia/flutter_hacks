import 'package:flutter_modular/flutter_modular.dart';
import 'package:hacks/_childrens/menu/presenter/page/page.dart';
import 'package:hacks/_childrens/vibration/module.dart';

class MenuModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const MenuPage()),
    ModuleRoute('/vibration-module', module: VibrationModule()),
  ];
}
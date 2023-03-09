
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hacks/_children/shake/presenter/page.dart';

class ShakeModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => ShakePage()),
  ];
}

import 'package:flutter_modular/flutter_modular.dart';
import 'package:hacks/_children/flash-light/presenter/page.dart';

class FlashLightModule extends Module{
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const FlashLightPage()),
  ];
}
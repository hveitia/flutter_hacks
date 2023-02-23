import 'package:flutter_modular/flutter_modular.dart';
import 'package:hacks/_children/vibration/presenter/page/page.dart';

class VibrationModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const VibrationPage()),
  ];
}
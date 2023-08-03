
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hacks/_children/text-gradient/presenter/page.dart';

class TextGradientModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => GradientTextPage()),
  ];
}
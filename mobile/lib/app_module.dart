import 'package:flutter_modular/flutter_modular.dart';
import 'package:hackathon_satshack/module/chat/chat_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
  ];

  @override
  List<ModularRoute> get routes => [
    ModuleRoute("/", module: ChatModule()),
  ];
}
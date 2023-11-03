import 'package:flutter_modular/flutter_modular.dart';
import 'package:hackathon_satshack/module/chat/presenter/view/chat_screen.dart';
import 'package:hackathon_satshack/module/chat/presenter/view/flowchart_screen.dart';

class ChatModule extends Module {
  @override
  List<Bind> get binds => [
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const ChatScreen()),
    ChildRoute('/flowchart', child: (context, args) => const FlowChartScreen())
  ];
}
import 'package:hackathon_satshack/module/chat/infra/entity/chat_entity.dart';
import 'package:hackathon_satshack/module/chat/infra/interface/interface_request.dart';

class ChatService implements IRequest<ChatEntity>{
  @override
  Future delete({required ChatEntity type}) {
    throw UnimplementedError();
  }

  @override
  Future get({required ChatEntity type}) {
    throw UnimplementedError();
  }

  @override
  Future post({required ChatEntity type}) {
    throw UnimplementedError();
  }

  @override
  Future update({required ChatEntity type}) {
    throw UnimplementedError();
  }
}
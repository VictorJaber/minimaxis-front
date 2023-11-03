class ChatEntity {
  String data;

  ChatEntity({required this.data});

  Map<String, String>toMap(){
    return {
      'data': data
    };
  }
}
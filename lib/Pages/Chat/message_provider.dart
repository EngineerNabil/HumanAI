import 'package:flutter/cupertino.dart';
import 'package:humanai_v2/Pages/Chat/message.dart';

class MessageProvider extends ChangeNotifier{

  List<Message>messages = [
    Message(
      text: "Ask me anything and i will answer it!",
      date: DateTime.now().subtract(const Duration(minutes: 1)),
      isSendByMe: false,
    ),
    Message(
      text: "Hello, Can I help you?",
      date: DateTime.now().subtract(const Duration(minutes: 1)),
      isSendByMe: false,
    ),
  ].reversed.toList();

  void addMessage({required String text_message , required bool isSendByMe}){
    final message = Message(
        text: text_message,
        date: DateTime.now(),
        isSendByMe: isSendByMe,
    );
    messages.add(message);
    notifyListeners();
  }
}
import 'package:flutter/material.dart';
import 'package:yes_no_maybe_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: "Hola", fromWho: FromWho.me),
    Message(text: "Ya regresaste del trabajo?", fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String messageText) async {
    final newMessage = Message(text: messageText, fromWho: FromWho.me);
    messageList.add(newMessage);

    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:yes_no_maybe_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();

  List<Message> messageList = [
    Message(text: "Hola", fromWho: FromWho.me),
    Message(text: "Ya regresaste del trabajo?", fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String messageText) async {
    if (messageText.isEmpty) return;
    final newMessage = Message(text: messageText, fromWho: FromWho.me);
    messageList.add(newMessage);

    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(
      const Duration(milliseconds: 150),
    );
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}

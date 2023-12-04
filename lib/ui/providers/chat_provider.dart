import 'package:flutter/material.dart';
import 'package:yes_no_maybe_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_maybe_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

  List<Message> messageList = [];

  Future<void> sendMessage(String messageText) async {
    if (messageText.isEmpty) return;
    final newMessage = Message(text: messageText, fromWho: FromWho.me);
    messageList.add(newMessage);

    if (messageText.endsWith("?")) {
      await herReply();
    }

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

  Future<void> herReply() async {
    final herMessage = await getYesNoAnswer.getAnswer();
    messageList.add(herMessage);
    notifyListeners();

    moveScrollToBottom();
  }
}

import 'package:flutter/material.dart';
import 'package:yes_no_maybe_app/ui/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://e00-elmundo.uecdn.es/assets/multimedia/imagenes/2023/09/18/16950390968958.jpg",
            ),
          ),
        ),
        title: const Text("Olivia"),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return const MyMessageBubble();
                },
                itemCount: 100,
              ),
            ),
            Text("Mundo"),
          ],
        ),
      ),
    );
  }
}
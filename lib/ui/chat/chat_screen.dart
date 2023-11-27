import 'package:flutter/material.dart';

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
    );
  }
}

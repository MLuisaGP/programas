import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_buble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_buble.dart';

import '../../widgets/shared/message_filde_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: _HeaderChat(),
        title: const Text("Gaservicio🩸"),
      ),
      body: _ChartView(),
    );
  }
}

class _HeaderChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundImage: NetworkImage(
            'https://www.gaservicio.com/2016/img/desktopinstitucional.png'),
      ),
    );
  }
}

class _ChartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            //listas
            Expanded(
              child: ListView.builder(
                controller: chatProvider.chatScrollController ,
                itemCount: chatProvider.messagesList.length,
                itemBuilder: (BuildContext context, int index) {
                  final message = chatProvider.messagesList[index];
                  return (message.fromWho == FromWho.hers)
                      ? HerMessageBuble (message: message,)
                      : MyMessageBuble(message: message);
                },
              ),
            ),
            //Caja de Textos
           //MessageFieldBox(onValue: (value) => chatProvider.sendMessage(value),)
            MessageFieldBox(onValue:chatProvider.sendMessage)
          ],
        ),
      ),
    );
  }
}

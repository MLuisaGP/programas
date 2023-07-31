import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class MyMessageBuble extends StatelessWidget {
  final Message message;
  const MyMessageBuble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(boxShadow: const [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10.0,
                  spreadRadius: 1.0,
                  offset: Offset(-5.0, 5.0))
            ], color: color.primary, borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                message.text,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 3,
        )
      ],
    );
  }
}

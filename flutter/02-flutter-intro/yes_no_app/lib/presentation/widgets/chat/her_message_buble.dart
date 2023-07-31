import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class HerMessageBuble extends StatelessWidget {
  final Message message;
  const HerMessageBuble({super.key, required this.message});

  
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: color.secondary,
                  blurRadius: 8.0,
                  spreadRadius: 1.0,
                  offset: const Offset(5.0, 5.0))
            ], color: color.secondary, borderRadius: BorderRadius.circular(20)),
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
          height: 5,
        ),
        _ImageBubble(message: message),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  final Message message;
  const _ImageBubble({required this.message});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          message.imageUrl!,
          width: size.width * 0.7,
          height: 150,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child; //el child es la imagen.
            return Container(
                width: size.width * 0.7,
                height: 150,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: const Text('Se esta adjuntando una imagen'));
          },
        ));
  }
}

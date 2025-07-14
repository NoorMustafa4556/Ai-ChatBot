import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isUserMessage;
  final DateTime timestamp;

  const ChatBubble({
    super.key,
    required this.text,
    required this.isUserMessage,
    required this.timestamp,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isUserMessage ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.75,
        ),
        margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 14.0),
        decoration: BoxDecoration(
          // Consider making these colors semi-transparent if you want the
          // background image to show through the bubbles more.
          // Example: .withOpacity(0.7)
          color: isUserMessage
              ? Theme.of(context).primaryColor.withOpacity(0.85) // e.g. withOpacity(0.85)
              : Theme.of(context).colorScheme.surfaceVariant.withOpacity(0.85), // e.g. withOpacity(0.85)
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(18.0),
            topRight: const Radius.circular(18.0),
            bottomLeft: Radius.circular(isUserMessage ? 18.0 : 4.0),
            bottomRight: Radius.circular(isUserMessage ? 4.0 : 18.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.07),
              spreadRadius: 1,
              blurRadius: 3,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: isUserMessage ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                color: isUserMessage
                    ? Colors.white
                    : Theme.of(context).colorScheme.onSurfaceVariant,
                fontSize: 15.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
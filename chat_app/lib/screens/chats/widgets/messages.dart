import 'package:flutter/material.dart';

import '../../../models/message_model.dart';

Widget buildMessage({
  required Message message,
  required bool isMe,
  required BuildContext context,
}) {
  final Container msg = Container(
    width: MediaQuery.of(context).size.width * 0.75,
    margin: isMe
        ? const EdgeInsets.only(
            top: 8,
            bottom: 8,
            left: 80,
          )
        : const EdgeInsets.only(
            top: 8,
            bottom: 8,
          ),
    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
    decoration: BoxDecoration(
      color: isMe ? Colors.blue.withOpacity(0.2) : Colors.blue.withOpacity(0.4),
      borderRadius: isMe
          ? const BorderRadius.only(
              topLeft: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            )
          : const BorderRadius.only(
              topRight: Radius.circular(30),
            ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          message.time,
          style: const TextStyle(
            color: Colors.blueGrey,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          message.text,
          style: TextStyle(
            color: Colors.black87.withOpacity(0.7),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
  if (isMe) {
    return msg;
  }
  return Row(
    children: [
      msg,
      isMe
          ? const SizedBox.shrink()
          : IconButton(
              onPressed: () {},
              icon: message.isLiked
                  ? const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  : const Icon(
                      Icons.favorite_outline,
                    ),
            ),
    ],
  );
}

import 'package:flutter/material.dart';

import '../../../models/user_model.dart';

class SendMessage extends StatelessWidget {
  final User user;
  const SendMessage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "New Message",
                  style: TextStyle(color: Colors.blue),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const Divider(
              height: 2,
              color: Colors.black38,
            ),
          ],
        ),
      ),
      content: SizedBox(
        height: 300,
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(user.imageUrl),
                  radius: 30,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  user.name,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                maxLines: 10,
                decoration: const InputDecoration(
                  hintText: "Your message...",
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 35),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              "Send",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}

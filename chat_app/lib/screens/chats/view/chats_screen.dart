import 'package:auto_route/auto_route.dart';
import 'package:chat_app/models/message_model.dart';
import 'package:chat_app/models/user_model.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter/material.dart';

import '../widgets/messages.dart';

@RoutePage()
class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key, required this.user});
  final User user;

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  final TextEditingController _controller = TextEditingController();
  bool emojiShowing = false;

  final _emojiConfig = Config(
    columns: 7,
    emojiSizeMax: 32 *
        (foundation.defaultTargetPlatform == TargetPlatform.iOS ? 1.30 : 1.0),
    verticalSpacing: 0,
    horizontalSpacing: 0,
    gridPadding: EdgeInsets.zero,
    initCategory: Category.RECENT,
    bgColor: const Color(0xFFF2F2F2),
    indicatorColor: Colors.blue,
    iconColor: Colors.grey,
    iconColorSelected: Colors.blue,
    backspaceColor: Colors.blue,
    skinToneDialogBgColor: Colors.white,
    skinToneIndicatorColor: Colors.grey,
    enableSkinTones: true,
    recentTabBehavior: RecentTabBehavior.RECENT,
    recentsLimit: 28,
    replaceEmojiOnLimitExceed: false,
    noRecents: const Text(
      'No Recents',
      style: TextStyle(fontSize: 20, color: Colors.black26),
      textAlign: TextAlign.center,
    ),
    loadingIndicator: const SizedBox.shrink(),
    tabIndicatorAnimDuration: kTabScrollDuration,
    categoryIcons: const CategoryIcons(),
    buttonMode: ButtonMode.MATERIAL,
    checkPlatformCompatibility: true,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.user.name,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
              size: 30,
            ),
          ),
        ],
        elevation: 0,
      ),
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 15),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                child: ListView.builder(
                  reverse: true,
                  padding: const EdgeInsets.only(top: 20),
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    final Message message = messages[index];
                    final bool isMe = message.sender.id == currentUser.id;
                    return buildMessage(
                      message: message,
                      isMe: isMe,
                      context: context,
                    );
                  },
                ),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            height: 80,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            emojiShowing = !emojiShowing;
                          });
                        },
                        icon: const Icon(
                          Icons.emoji_emotions_outlined,
                          size: 30,
                          color: Colors.black45,
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: _controller,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Type your message...",
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.send,
                          color: Colors.black54,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Offstage(
            offstage: !emojiShowing,
            child: SizedBox(
              height: 250,
              child: EmojiPicker(
                textEditingController: _controller,
                config: _emojiConfig,
              ),
            ),
          ),
          Container(
            height: 20,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

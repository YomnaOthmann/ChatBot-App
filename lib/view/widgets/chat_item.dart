import 'package:chatbot/constants/colors.dart';
import 'package:chatbot/services/assets_manager.dart';
import 'package:chatbot/view/widgets/custom_text.dart';
import 'package:flutter/material.dart ';

class Chatitem extends StatelessWidget {
  const Chatitem({super.key, required this.msg, required this.msgIndex});

  final String msg;
  final int msgIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: msgIndex == 0 ? scaffoldBackgroundColor : cardColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  msgIndex == 0 ? AssetManager.userImg : AssetManager.chatLogo,
                  height: 30,
                  width: 30,
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: CustomText(
                    text: msg,
                  ),
                ),
                msgIndex == 0
                    ? const SizedBox.shrink()
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(
                            Icons.thumb_up_alt_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.thumb_down_alt_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

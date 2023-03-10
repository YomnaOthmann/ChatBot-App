import 'package:chatbot/constants/colors.dart';
import 'package:chatbot/services/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final bool isTyping = true;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(AssetManager.openAiLogo)),
        ),
        title: const Text(
          "ChatGPT",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Text("hello");
                },
              ),
            ),
            if (isTyping) ...[
              const SpinKitThreeBounce(
                color: Colors.white,
                size: 18,
              ),
              SizedBox(height: 10),
              Container(
                color: cardColor,
                padding: EdgeInsetsDirectional.symmetric(horizontal: 16),
                child: TextField(
                  controller: controller,
                  onSubmitted: (data) {
                    //TODO
                  },
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.send,
                            color: textFieldColor,
                          )),
                      hintText: "How can i help you",
                      hintStyle: TextStyle(
                        color: textFieldColor,
                        fontSize: 14,
                      )),
                ),
              )
            ]
          ],
        ),
      ),
    );
  }
}

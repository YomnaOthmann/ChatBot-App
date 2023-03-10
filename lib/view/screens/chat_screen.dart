import 'package:chatbot/view/widgets/chat_item.dart';
import 'package:chatbot/view/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../../constants/constants.dart';
import '../widgets/custom_appbar.dart';

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
      appBar: const PreferredSize(
        preferredSize: Size(double.maxFinite, 70),
        child: CustomAppBar(),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Chatitem(
                      msg: chatMessages[index]['msg'].toString(),
                      msgIndex: int.parse(
                          chatMessages[index]['chatIndex'].toString()));
                },
              ),
            ),
            if (isTyping) ...[
              const SpinKitThreeBounce(
                color: Colors.white,
                size: 18,
              ),
              const SizedBox(height: 10),
              CustomTextField(controller: controller),
            ]
          ],
        ),
      ),
    );
  }
}

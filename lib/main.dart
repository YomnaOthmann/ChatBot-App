import 'package:chatbot/constants/colors.dart';
import 'package:chatbot/view/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const ChatGPT());
}

class ChatGPT extends StatelessWidget {
  const ChatGPT({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "Poppins",
          scaffoldBackgroundColor: scaffoldBackgroundColor,
          appBarTheme: const AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: cardColor),
            color: cardColor,
            elevation: 2,
          )),
      home: const ChatScreen(),
    );
  }
}

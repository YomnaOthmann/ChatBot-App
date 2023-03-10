import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: cardColor,
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
      child: TextField(
        controller: controller,
        onSubmitted: (data) {
          //TODO
        },
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
        decoration: InputDecoration(
            suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.send,
                  color: textFieldColor,
                )),
            hintText: "How can i help you",
            hintStyle: const TextStyle(
              color: textFieldColor,
              fontSize: 14,
            )),
      ),
    );
  }
}

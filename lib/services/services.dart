import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../view/widgets/custom_text.dart';

class Services {
  static Future<void> showModalSheet(BuildContext context) async {
    showModalBottomSheet(
        backgroundColor: scaffoldBackgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.only(
            topStart: Radius.circular(20),
            topEnd: Radius.circular(20),
          ),
        ),
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomText(
                  text: "Chosen Model:",
                ),
                DropdownButton(
                  style: const TextStyle(color: Colors.white),
                  items: [],
                  onChanged: (value) {},
                ),
              ],
            ),
          );
        });
  }
}

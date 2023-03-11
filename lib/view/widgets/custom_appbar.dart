import 'package:flutter/material.dart';

import '../../services/assets_manager.dart';
import '../../services/services.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
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
          onPressed: () async {
            await Services.showModalSheet(context);
          },
          icon: const Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}

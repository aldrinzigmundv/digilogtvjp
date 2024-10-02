import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Digilog TV - 日本版'),
      titleTextStyle:
          const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      centerTitle: true,
      backgroundColor: const Color(0xFFDC143C),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

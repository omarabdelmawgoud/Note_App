import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text, required this.icon});
  final String text;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Row(
        children: [
          Text("Notes", style: TextStyle(color: Colors.white, fontSize: 32)),
          Spacer(),
          icon,
        ],
      ),
    );
  }
}

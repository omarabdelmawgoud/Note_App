import 'package:flutter/material.dart';
import 'package:note_app/views/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: const Row(
        children: [
          Text("Notes", style: TextStyle(color: Colors.white, fontSize: 32)),
          Spacer(),
          CustomSearchIcon(),
        ],
      ),
    );
  }
}


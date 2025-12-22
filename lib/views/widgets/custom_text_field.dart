import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kcolor,
      decoration: InputDecoration(
        hintText: "Title",
        hintStyle: TextStyle(fontSize: 24, color: kcolor),
        enabledBorder: buildBoarder(Colors.white),
        border: buildBoarder(Colors.white),
        focusedBorder: buildBoarder(),
      ),
    );
  }

  OutlineInputBorder buildBoarder([Color? color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? kcolor),
      borderRadius: BorderRadius.circular(16),
    );
  }
}

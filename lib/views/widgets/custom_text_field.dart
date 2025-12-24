import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.maxlines = 1,
    required this.hint,
    this.onsaved,
  });
  final Function(String?)? onsaved;
  final int maxlines;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "this field is required.";
        } else {
          return null;
        }
      },
      onSaved: onsaved,
      cursorColor: kcolor,
      maxLines: maxlines,
      decoration: InputDecoration(
        hintText: hint,
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

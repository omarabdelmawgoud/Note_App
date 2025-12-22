import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class NoteBottomSheet extends StatelessWidget {
  const NoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 24),
              Text("New Note", style: TextStyle(color: kcolor, fontSize: 24)),
              SizedBox(height: 24),
              CustomTextField(hint: "Title"),
              SizedBox(height: 16),
              CustomTextField(hint: "Content", maxlines: 5),
              SizedBox(height: 32),
              CustomButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: kcolor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          "Add",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

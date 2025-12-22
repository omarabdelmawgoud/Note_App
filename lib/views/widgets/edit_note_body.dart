import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: const [
              SizedBox(height: 40),
              CustomAppBar(text: "Edit Note", icon: Icons.check),
              SizedBox(height: 50),
              CustomTextField(hint: "Title"),
              SizedBox(height: 16),
              CustomTextField(hint: "Content", maxlines: 5),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_search_icon.dart';
class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [   
      CustomAppBar(text: "Edit Note", icon: CustomSearchIcon())
        ],
      ));
  }
}
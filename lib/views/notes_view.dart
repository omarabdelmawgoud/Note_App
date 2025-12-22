import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/views/widgets/note_bottom_sheet.dart';
import 'package:note_app/views/widgets/notes_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: NotesViewBody(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              backgroundColor: const Color.fromARGB(255, 56, 53, 53),
              context: context,
              builder: (context) {
                return NoteBottomSheet();
              },
            );
          },
          shape: CircleBorder(),
          backgroundColor: kcolor,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

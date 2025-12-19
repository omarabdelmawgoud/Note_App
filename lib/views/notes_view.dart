import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/notes_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        backgroundColor: Colors.blue.shade300,
        child: Icon(Icons.add),
      ),
    );
  }
}

class NoteBottomSheet extends StatelessWidget {
  const NoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

import 'package:flutter/material.dart';

import '../widgets/add_note_bottom_sheet.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/note_item.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return const AddNoteBottomSheet();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 50),
            const CustomAppBar(title: 'Notes', icon: Icons.search),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return const NoteItem();
                  },
                  itemCount: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

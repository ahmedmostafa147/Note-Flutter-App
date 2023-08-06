
import 'package:flutter/material.dart';

import 'package:note_app/widget/notes_items_bode.dart';

class List_View_widget extends StatelessWidget {
  const List_View_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: NotesItemsBody(),
        
      );
    });
  }
}

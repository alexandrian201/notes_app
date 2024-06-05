import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/CustomAppBar.dart';

class editNoteViewBody extends StatelessWidget {
  const editNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(height: 60,),
          CustomAppBar(title: "Edit Note",icon: Icons.check_rounded,)
        ]
      ),
    );
  }
}
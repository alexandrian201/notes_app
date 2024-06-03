import 'editNoteViewBody.dart';
import 'package:flutter/material.dart';


class editNoteView extends StatelessWidget {
  static String id = "editNoteView";
  const editNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: editNoteViewBody(),
    );
  }
}
import 'Widgets/notes_view_body.dart';
import 'package:flutter/material.dart';
import 'Widgets/AddNoteBottomSheet.dart';


class NotesView extends StatelessWidget {
  const NotesView({super.key});

  static String id = "NotesView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: const NotesViewBody(),
            floatingActionButton:FloatingActionButton(
      onPressed: (){
        showModalBottomSheet(
          backgroundColor: Color.fromARGB(255, 41, 27, 22),
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          context: context,
            builder: (context){
          return const AddNoteBottomSheet();
        });
      },
      shape: const CircleBorder(),
      backgroundColor: const Color.fromARGB(255, 2, 253, 198),
      hoverColor: Colors.amber,
      child:const Icon(color: Colors.black,size:50,Icons.add),) ,
    );
  }
}





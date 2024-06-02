import 'Widgets/notes_view_body.dart';
import 'package:flutter/material.dart';
import 'Widgets/AddNoteBottomSheet.dart';


class NotesView extends StatelessWidget {
  static String id = "NotesView";
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:FloatingActionButton(
      onPressed: (){
        showModalBottomSheet(context: context, builder: (context){
          return const AddNoteBottomSheet();
        });
      },
      shape: const CircleBorder(),
      backgroundColor: const Color.fromARGB(255, 2, 253, 198),
      hoverColor: Colors.amber,
      child:const Icon(color: Colors.black,size:50,Icons.add),) ,
      body: const NotesViewBody(),
    );
  }
}





import 'CustomAppBar.dart';
import 'NotesListView.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';




class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children:[
          SizedBox(height: 60),
        CustomAppBar(title: "Notes",icon: Icons.search,),
        Expanded(
          child: NotesListView(),
        )
        ]
      ),
    );
  }
}



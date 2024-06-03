import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'editNoteView');
      },
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Container(
            padding: const EdgeInsets.only(top: 24,bottom: 24,left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color.fromARGB(255, 254, 203, 74),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title: const Text('Flutter Tips',style: TextStyle(
                    fontSize:24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
                  trailing: Padding(
                    padding: const EdgeInsets.only(bottom:50.0),
                    child: IconButton(
                      onPressed: (){},
                      icon: const Icon(
                        FontAwesomeIcons.trash,color: Colors.black,size: 24,)
                        ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Text('build your carrier with Thrwat samy',style: TextStyle(
                      fontSize:16,
                      color: Colors.black.withOpacity(.6),
                    ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:24.0),
                  child: Text(
                    "May21 ,2024",
                    style: TextStyle(
                      fontSize:14,
                      color: Colors.black.withOpacity(.6),
                    ),),
                ),
              ],
          )
          ),
        ),
    )
    ;
  }
}
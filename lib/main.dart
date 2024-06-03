import 'Views/notes_view.dart';
import 'package:flutter/material.dart';
import 'Views/Widgets/editNoteView.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(brightness: Brightness.dark,
            fontFamily: "Poppins"
            ),
            routes: {
              NotesView.id: (context) => const NotesView(),
              editNoteView.id: (context) => const editNoteView(),
      },
      initialRoute: NotesView.id,
    );
  }
}

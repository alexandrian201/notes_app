import '../Reuseable/constants.dart';
import '../Reuseable/reuseable.dart';
import 'package:flutter/material.dart';


class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          customTextField(
            fillColor: Colors.transparent,
            borderColor: Color.fromARGB(255, 255, 255, 255),
            focusedColor: kPrimaryColor,
            crusorColor: kTextColor,
            boxHeight: 150,
            hint: "Title",
            hintColor:kPrimaryColor.withOpacity(.7),
          ),
        ],
      ),
    );
  }
}

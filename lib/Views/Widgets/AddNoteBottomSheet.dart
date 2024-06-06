import 'package:flutter/material.dart';
import '../../Reuseable/constants.dart';
import '../../Reuseable/reuseable.dart';


class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 24,top: 24,left: 24.0),
      child: SingleChildScrollView(/* Widget for Scroll any widget */
        physics: const BouncingScrollPhysics(),
        child: Column(
              children: [
                customTextField(
                  fillColor: Colors.transparent,
                  borderColor: const Color.fromARGB(255, 255, 255, 255),
                  focusedColor: kPrimaryColor,
                  crusorColor: kTextColor,
                  boxHeight: MediaQuery.of(context).size.height*.07,
                  hint: "Title",
                  hintColor:kPrimaryColor.withOpacity(.5),
                ),
                Padding(
                  padding:  EdgeInsets.only(bottom:  MediaQuery.of(context).size.height*.07,top:  MediaQuery.of(context).size.height*.03),
                  child: customTextField(
                    fillColor: Colors.transparent,
                    borderColor: const Color.fromARGB(255, 255, 255, 255),
                    focusedColor: kPrimaryColor,
                    crusorColor: kTextColor,
                    boxHeight:MediaQuery.of(context).size.height*.2,
                    hint: "Content",
                    hintColor:kPrimaryColor.withOpacity(.5),
                    maxLines: 5
                  ),
                ),
                // const Spacer(),
                caps("Add",
                textColor: Colors.black,
                color: kPrimaryColor)
              ],
            ),
      )
      ,
    );
  }
}

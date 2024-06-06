import 'CustomTextFormField.dart';
import 'package:flutter/material.dart';
import '../../Reuseable/constants.dart';
import '../../Reuseable/reuseable.dart';


class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        right: 24,top: 24,left: 24.0),
      child: SingleChildScrollView(/* Widget for Scroll any widget */
        physics: BouncingScrollPhysics(),
        child: AddNoteForm(),
      )
      ,
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState>formKey=GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title,subTitle; 
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
              children: [
                customTextFormField(
                  onSaved: (value) {
                    title = value;
                  },
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
                  child: customTextFormField(
                    onSaved: (value) {
                    subTitle = value;
                  },
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
                ontap: (){
                  if(formKey.currentState!.validate()){
                    formKey.currentState!.save();
                    // Navigator.of(context).pop([title,subTitle]);
                  }else{
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {
                      
                    });
                  }
                },
                textColor: Colors.black,
                color: kPrimaryColor)
              ],
            ),
    )
    ;
  }
}

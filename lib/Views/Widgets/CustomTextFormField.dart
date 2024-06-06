import 'package:flutter/material.dart';

Widget customTextFormField({BuildContext?context,
TextEditingController ? controller,
IconButton? suffixIcon,
Icon? prefixIcon,
final String? hint,
final double radius=8,
final double hintSize=16,
final dynamic kind=TextInputType.name,
final dynamic fillColor,
final dynamic crusorColor,
final dynamic focusedColor,
final dynamic borderColor,
final dynamic hintColor,
final String? label,
final int maxLines=1,
final double boxHeight=70,
bool obsecure=false,
// required String? Function(String?)? validator,
Function(String)? onChanged,
final void Function(String?)? onSaved,
// Function(String)? onsubmitted
}) {
    return
              Padding(
                padding: const EdgeInsets.symmetric(vertical:5),
                child:
                  SizedBox(
                  // width: 370,
                  height: boxHeight,
                  child: TextFormField(
                    onSaved: onSaved,
                    textDirection:TextDirection.ltr,
                    // maxLength: ,
                    maxLines:maxLines,
                    // bool obscure Text=false,
                    cursorColor:crusorColor ??const Color(0xff4fc3f7),
                    keyboardType: kind,
                    // style: Theme.of(context!).textTheme.headlineMedium,
                    onChanged: onChanged,
                    // onFieldSubmitted: onsubmitted,
                    obscureText: obsecure,
                    controller: controller,
                    textAlign : TextAlign.start,
                    validator:(value){
                      if(value?.isEmpty ?? true){
                        return"Field is required";
                      }else{
                        return null;
                      }
                    } ,
                    // autovalidateMode:  AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      filled : true,
                      fillColor:fillColor?? Colors.white,
                      // icon: const Icon(Icons.account_circle),
                      hintText: hint,
                      hintStyle:
                      TextStyle(color: hintColor??Color.fromARGB(255, 10, 210, 163), 
                      fontSize:hintSize),
                      labelText:label,
                      labelStyle: const TextStyle(fontFamily: 'Pacifico',
                      decorationColor: Color.fromARGB(255, 0, 188, 228),
                      overflow:
                      TextOverflow.ellipsis,color: Color.fromARGB(255, 0, 124, 133),fontSize: 22.0,
                      ),
                      // errorText: _stringInputIsValid ? null : 'Please enter an integer!',
                        focusedBorder:  OutlineInputBorder(
                        borderSide: BorderSide(width: 2,color:focusedColor?? Color(0xff007C85)),
                        borderRadius: BorderRadius.all(Radius.circular(radius)),
                        ),
                        enabledBorder:  OutlineInputBorder(
                        borderSide: BorderSide(width: 2,color:borderColor??Color.fromARGB(255, 0, 188, 228)),
                        borderRadius: BorderRadius.all(Radius.circular(radius)),
                        ),
                      prefixIcon: prefixIcon,
                      suffixIcon:suffixIcon
                    ),
                  ),
                ),
              );
  }

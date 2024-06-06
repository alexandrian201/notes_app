import 'constants.dart';
import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';






// caps()
//button()
//showSnackBar
//AwesomeDialog()
//navTo
//customTextformfield()
//customTextfield()
//Avatar()
//signInWithGoogle()
//signInWithEmailAndPassword()
//ChatBuble
//ChatBubleForFriend




caps(text,{font,color,textColor,radius,width,ontap}){
return GestureDetector(
  onTap:ontap,
  child: Container(
                  height:60,
                  width:width,
                  decoration: BoxDecoration(
                  color:color??Colors.blue
                  ,borderRadius: BorderRadius.circular(radius??8)),
                  child: Center(
                    child: Text(text,style: TextStyle(
                      color:textColor??Colors.white,fontSize: font??20,fontWeight: FontWeight.bold),)),
                ),
)
;}


class button extends StatelessWidget {
  button({super.key,
  required this.text,
  this.backgroundColor,
  this.height=60,
  this.width,
  this.size=30,
  this.insetHoriznt=70,
  required this.ontap,
  });
  dynamic backgroundColor;
  String text;
  double height;
  double? width;
  double size;
  double insetHoriznt;
  VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return  Padding(
                padding:  EdgeInsets.symmetric(vertical:10,horizontal: insetHoriznt),
                child: SizedBox(
                    // ignore: prefer_if_null_operators
                    // height:height,width:width==null?double.maxFinite:width,
                   child: ElevatedButton(  //لعمل زرار
                    //  style: ButtonStyle(),
                          style: ElevatedButton.styleFrom(
                        backgroundColor:backgroundColor ==null?
                        backgroundColor:const Color.fromARGB(255, 255, 255, 255)),
                      onPressed: ontap,
                      child:  Text( text,
                        style: TextStyle(fontSize:size,
                                          fontFamily: 'Pacifico',
                        color: kTextColor,
                      ),
                                          ),
                ),
    ),
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////

void showSnackBar(BuildContext context,String message,{
dynamic action,dynamic color,
duration=const Duration(seconds: 3)}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
    backgroundColor:color?? Color.fromARGB(255, 43, 147, 232),
    action: action,
    duration: duration,
  )
  );
}

// customAwesomeDialog( BuildContext? context,{int? time=4,String? title,String? message,dynamic type=DialogType.error}) {
//     AwesomeDialog(
//       context: context!,
//       dialogType:type,
//       autoHide: Duration(seconds: time!),
//       animType: AnimType.rightSlide,
//       title: title!,
//       desc: message!
//       ).show();
// }

////////////////////////////////////////////////////////////////////////////////

 //للتغيير من صفحة لصفحة نستدعى هذه الميسود
//طريقة الاستدعاء                 navTo(context,FamilyMembers());
navTo(context,dynamic s) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) {
      return s;
    }),
  );
}

///////////////////////////////////////////////////////////////////////////////

Widget customTextformfield({BuildContext?context,
TextEditingController ? controller,
IconButton? suffixIcon,
dynamic prefixIcon,
String? hint,
dynamic kind=TextInputType.name,
// required String label,
double height=65,
int length=2,
bool obsecure=false,
// required String? Function(String?)? validator,
Function(String)? onChanged,
Function(String)? onsubmitted
}) {
    return
              Padding(
                padding: const EdgeInsets.symmetric(vertical:10),
                child:
                  SizedBox(
                  // width: 370,
                  height: height,
                  child: TextFormField(
                      // validator:(val)=> val!.isEmpty ? "can't be empty"
                    // bool obscure Text=false,
                    cursorColor: const Color(0xff4fc3f7),
                    keyboardType: kind,
                    // style: Theme.of(context!).textTheme.headlineMedium,
                    onChanged: onChanged,
                    obscureText: obsecure,
                    controller: controller,
                    textAlign : TextAlign.start,
                    validator: (val){
                          if(val==""){return "Can't be empty";}
                          else if(val!.length<length){return "at least $length characters";}
                          },
                    // autovalidateMode:  AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      filled : true,
                      fillColor: Colors.white,
                      // icon: const Icon(Icons.account_circle),
                      // labelText:label,
                      hintText: hint,
                      labelStyle: const TextStyle(fontFamily: 'Pacifico',
                      decorationColor: Color.fromARGB(255, 0, 188, 228),
                      overflow:
                      TextOverflow.ellipsis,color: Color.fromARGB(255, 0, 124, 133), fontSize: 18.0),
                      // errorText: _stringInputIsValid ? null : 'Please enter an integer!',
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(width: 5,color:Color.fromARGB(255, 0, 188, 228)),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 2,color:Color.fromARGB(255, 0, 188, 228)),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                      prefixIcon: prefixIcon,
                      suffixIcon:suffixIcon
                    ),
                  ),
                ),
              );
  }

/////////////////////////////////////////////////////////////////////////////////////////

Widget customTextField({BuildContext?context,
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
                    // validator:validator ,
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

/////////////////////////////////////////////////////////////////////////////////////////////////

// class customGrid extends StatelessWidget {
//   const customGrid({
//     super.key,
//     required this.products,
//   });

//   final List<ProductModel> products;

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       itemCount:  products.length,
//     clipBehavior: Clip.none,
//     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//     crossAxisCount: 2,
//     childAspectRatio: 1.3,
//     mainAxisSpacing:82,
//     crossAxisSpacing: 2.5),
//     itemBuilder: (context,index){
//     return CustomCard(product: products[index]);
//       });
//   }
// }

/////////////////////////////////////////////////////////////////////////////////////////////////
 // class CustomCard extends StatelessWidget {
//   CustomCard({
//     required this.product,
//     Key? key, }) : super(key: key);
//   ProductModel product;
//   @override
//   Widget build(BuildContext context) {
//     return  MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body:GestureDetector(
//       onTap: () {
//         Navigator.pushNamed(context,UpdateProduct.id,
//           arguments: product,
//         );
//             // navTo(context, updateProduct());
//         },
//       child: Stack(
//         clipBehavior: Clip.none,
//         children: [
//           Container(
//           decoration: BoxDecoration(
//             boxShadow:[
//               BoxShadow(
//               blurRadius:200,
//               color: Colors.grey.withOpacity(.3),
//               spreadRadius: 0,
//               offset: const Offset(2, 2))
//             ]
//           ),
//           child: Card(
//             color: Colors.white,
//             elevation: 10,
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children:[Text(product.title.substring(0,8),
//                 style:const TextStyle(color: Colors.grey,fontSize: 16),
//                 ),
//                 const Gap(2),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(r"$""${product.price.toString()}"),
//                     const Icon(FontAwesomeIcons.solidHeart,
//                     color: Colors.red)
//                   ],
//                 ),
//               ]),
//             ),
//           ),
//         ),
//         Positioned(
//           bottom:90,
//           left: 40,
//           child: Image.network(product.image??"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjYD76OBCndQ8bCTvRfgILZOSls9lxwogNLw&usqp=CAU"
//           ,height: 120,width: 100,)
//         )]),
//         )) );
//   }
// }
/////////////////////////////////////////////////////////////////////////////////////////////////
class Avatar extends StatelessWidget {
Avatar({super.key,
  this.height=130,
  this.width=130,
  this.imagePath='assets/Screenshot_18.png'});
  double height;
  double width;
  String imagePath;
  @override
  Widget build(BuildContext context) {
    
    return Container(
                margin: const EdgeInsets.all(5), //لعمل حدود للصورة
                height: height,
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(999),
                    border: Border.all(
                        width: 1.5,
                        color: const Color.fromARGB(255, 93, 211, 247))),
                // (لاضافة صورة فى شكل دائرى
                // alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(imagePath),
                ),
              );
  }
}
///////////////////////////////////////////////////////////////////////////////////////

// Future signInWithGoogle(context,navPage) async {
//     // FirebaseUser user;
//     var errorMessage;
//     // dynamic context;

//     try {
//       final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
//       if(googleUser == null) {return;}

//       GoogleSignInAuthentication googleAuth = await  googleUser.authentication;

//       AuthCredential credential = GoogleAuthProvider.credential(
//         idToken: googleAuth.idToken,
//         accessToken: googleAuth.accessToken,
//       );
//       await FirebaseAuth.instance.signInWithCredential(credential);
//     }
//     catch(error) {
//       switch (error.toString()) {
//           case "ERROR_ACCOUNT_EXISTS_WITH_DIFFERENT_CREDENTIAL":
//             errorMessage = "Account already exists with a different credential.";
//             break;
//           case "ERROR_INVALID_CREDENTIAL":
//             errorMessage = "Invalid credential.";
//             break;
//           case "ERROR_INVALID_EMAIL":
//             errorMessage = "Your email address appears to be malformed.";
//             break;
//           case "ERROR_WRONG_PASSWORD":
//             errorMessage = "Your password is wrong.";
//             break;
//           case "ERROR_USER_NOT_FOUND":
//             errorMessage = "User with this email doesn't exist.";
//             break;
//           case "ERROR_USER_DISABLED":
//             errorMessage = "User with this email has been disabled.";
//             break;
//           case "ERROR_TOO_MANY_REQUESTS":
//             errorMessage = "Too many requests. Try again later.";
//             break;
//           case "ERROR_OPERATION_NOT_ALLOWED":
//             errorMessage = "Signing in with Email and Password is not enabled.";
//             break;
//           default:
//             errorMessage = "An undefined Error happened. ";
//         }
//     }
//     if (errorMessage != null) {
//       return Future.error(errorMessage);
//     }
//     return Navigator.pushReplacement(
//       context,MaterialPageRoute(builder: (context)=> navPage));
//     // return Navigator.pushReplacement(
//     //   context,MaterialPageRoute(builder: (context)=> navPage));
//   }
  ////////////////////////////////////////////////////////////


// Future signInWithEmailAndPassword(context,formState,navigPage,emailAddress,password,isloading,setState) async {
//             //  GlobalKey<FormState> formState =GlobalKey<FormState>();
//           if (formState.currentState!.validate()) {
//                           try {
//         final credential =
//             await FirebaseAuth.instance.signInWithEmailAndPassword(
//               email: emailAddress.text,
//               password: password.text,);
//               credential.user!.emailVerified ?
//               {Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> navigPage,/*arguments:credential*/))}:
//                 customAwesomeDialog(
//                                   context,
//                                   time:4,
//                                   title: 'Warning',
//                                   message: "Please,Verified your Email"
//                                   );FirebaseAuth.instance.currentUser!.sendEmailVerification();
//                           }  on FirebaseAuthException catch (e) {
//         if (e.code == 'email-already-in-use') {
//                                                 setState(() {isloading =false;});
//                                                 print('The account already exists for that email.');
//                                                 // showSnackBar(context,'The account already exists for that email.', )
//                                                 customAwesomeDialog(
//                                                                       context,
//                                                                       time:4,
//                                                                       title: 'Warning',
//                                                                       message: "The account already exists for that email"
//                                                                     );
//                                             }
//         else if (e.code == 'user-not-found') {
//                                                 setState(() {isloading =false;});
//                                                 print('No user found for that email.');
//                                                 // showSnackBar(context,'No user found for that email.', )
//                                                 customAwesomeDialog(
//                                                                       context,
//                                                                       time:4,
//                                                                       title: 'Warning',
//                                                                       message: "No user found for that email"
//                                                                     );
//                                               }
//         else if (e.code == 'wrong-password') {
//                                                 setState(() {isloading =false;});
//                                                 print('Wrong password provided for that user.');
//                                                 // showSnackBar(context,'Wrong password provided for that user.', )
//                                                 customAwesomeDialog(
//                                                                     context,
//                                                                     time:4,
//                                                                     title: 'Warning',
//                                                                     message: "Wrong password provided for that user"
//                                                                   );
//                                               }
//         else{
//               print("Some thing is wrong");
//               setState(() {isloading =false;});
//               // showSnackBar(context,'Some thing is wrong')
//               customAwesomeDialog(
//                                       context,
//                                       time:4,
//                                       title: 'Warning',
//                                       message: "Some thing is wrong"
//                                       );
//             }
//       }
//               catch(ex){
//                 print("$ex.code");
//               setState(() {isloading =false;});
//               customAwesomeDialog(
//                                     type:DialogType.info,
//                                     context,time:8,
//                                     title: 'Warning',
//                                     message: '$ex.code');
//                                     }
//                                   }
//                                 }

// class ChatBuble extends StatelessWidget {
//   ChatBuble({super.key,required this.message,
//   required this.messageOwner});
//   Message message;
//   dynamic messageOwner;
//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.centerLeft,
//       child: Container(
//       padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
//       margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
//         // height: 50,
//         decoration: const BoxDecoration(color: Color.fromARGB(255, 24, 117, 123),
//         borderRadius: BorderRadius.only(
//         topLeft: Radius.circular(20),
//         topRight: Radius.circular(20),
//         bottomRight: Radius.circular(20)
//         )),
//         child: Column(
//           children: [
//             Text(message.name,style: const TextStyle(
//               fontSize: 18,
//               color: Color.fromARGB(255, 147, 248, 234),
//               fontWeight: FontWeight.w500
//               )),
//             Text(message.message,style: const TextStyle(
//               fontSize: 20,
//               color: Color.fromARGB(255, 255, 255, 255))),
//           ],
//         ),
//       ),
//     );
//   }
// }
// class ChatBubleForFriend extends StatelessWidget {
//   ChatBubleForFriend({super.key,required this.message,required this.messageOwners});
//   Message message;
//   dynamic messageOwners;
//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.centerRight,
//       child: Container(
//       padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
//       margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 6),
//         // height: 50,
//         decoration: const BoxDecoration(color: Color.fromARGB(255, 5, 166, 202),
//         borderRadius: BorderRadius.only(
//         topLeft: Radius.circular(20),
//         topRight: Radius.circular(20),
//         bottomLeft: Radius.circular(20)
//         )),
//         child: Column(
//           children: [
//             Text(message.name,style: const TextStyle(
//               fontSize: 18,
//               color: Color.fromARGB(255, 1, 255, 1),
//               fontWeight: FontWeight.w500
//               )),
//             Text(message.message,style: const TextStyle(
//               fontSize: 20,
//               color: Color.fromARGB(255, 255, 255, 255)),),
//           ],
//         ),
//       ),
//     );
//   }
// }

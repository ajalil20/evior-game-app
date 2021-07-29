import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:eivor/sharedwidget/button.dart';
import 'package:eivor/sharedwidget/inputfield.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController username = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController gamerid = new TextEditingController();
  TextEditingController platform = new TextEditingController();
  TextEditingController contactno = new TextEditingController();
  late File _pic;
  final picker = ImagePicker();
  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      _pic = File(pickedFile!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/background.jpg",
                    ),
                    fit: BoxFit.cover)),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Container(
                        //   color: kPrimaryLightColor,
                        child: Stack(
                          children: [
                            //Image
                            CircleAvatar(
                              radius: 70,
                              backgroundColor: Colors.black,
                              child: CircleAvatar(
                                  radius: 69,
                                  backgroundImage:
                                      //     _pic == null
                                      //         ?
                                      AssetImage("assets/background2.jpg")
                                  //         :
                                  //     FileImage(_pic),
                                  ),
                            ),
                            Positioned(
                              bottom: 5,
                              right: 15,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        //firstname = widget.user_fullname;
                                        getImage();
                                      });
                                    },
                                    child: Icon(Icons.camera_alt)),
                                radius: 20,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: InputFieldArea(
                        hint: "Username",
                        obscure: false,
                        icon: Icons.person_outline,
                        controllerval: username),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: InputFieldArea(
                      hint: "Email",
                      obscure: false,
                      icon: Icons.email,
                      controllerval: email,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: InputFieldArea(
                      hint: "Password",
                      obscure: true,
                      icon: Icons.lock_outline,
                      controllerval: password,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: InputFieldArea(
                      hint: "Gamer ID",
                      obscure: false,
                      icon: Icons.perm_identity_sharp,
                      controllerval: gamerid,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: InputFieldArea(
                      hint: "Platform",
                      obscure: false,
                      icon: Icons.meeting_room,
                      controllerval: platform,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: InputFieldArea(
                      hint: "Contact no",
                      obscure: false,
                      icon: Icons.flag,
                      controllerval: contactno,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Custombutton(
                        buttontext: "SIGN UP",
                        buttonbgcolor: Colors.yellow,
                        buttonheight: 0.05,
                        buttontxtcolor: Colors.black,
                        buttonwidth: 0.45),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

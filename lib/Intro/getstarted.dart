import 'package:eivor/Signin/Signup/signin.dart';
import 'package:eivor/Signin/Signup/signup.dart';
import 'package:eivor/sharedwidget/button.dart';
import 'package:eivor/sharedwidget/colors.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.black,
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/background.jpg",
              ),
              fit: BoxFit.cover)),
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SignIn()));
          },
          child: Custombutton(
            buttontext: "Continue",
            buttonbgcolor: Colors.grey,
            buttonheight: 0.06,
            buttonwidth: 0.45,
            buttontxtcolor: black,
          ),
        ),
      ),
    ));
  }
}

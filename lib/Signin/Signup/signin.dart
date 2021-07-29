import 'package:eivor/Bottomnav/tabspage.dart';
import 'package:eivor/Home/home.dart';
import 'package:eivor/sharedwidget/button.dart';
import 'package:eivor/sharedwidget/inputfield.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();

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
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: InputFieldArea(
                        hint: "username",
                        obscure: false,
                        icon: Icons.person_outline,
                        controllerval: username),
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
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TabsPage()));
                      },
                      child: Custombutton(
                          buttontext: "LOGIN",
                          buttonbgcolor: Colors.green,
                          buttonheight: 0.05,
                          buttontxtcolor: Colors.black,
                          buttonwidth: 0.45),
                    ),
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

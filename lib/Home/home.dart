import 'package:eivor/sharedwidget/button.dart';
import 'package:eivor/sharedwidget/inputfield.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        actions: <Widget>[
          Stack(children: [
            IconButton(
              icon: Icon(
                Icons.casino_rounded,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                // do something
              },
            ),
            Positioned(
              bottom: 3,
              right: 0,
              child: CircleAvatar(
                backgroundColor: Colors.green,
                child: GestureDetector(
                    onTap: () {
                      setState(() {});
                    },
                    child: Text("9")),
                radius: 10,
              ),
            )
          ])
        ],
        leading: Icon(
          Icons.question_answer_rounded,
          size: 30,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              // image: DecorationImage(
              //     image: AssetImage(
              //       "assets/background.jpg",
              //     ),),
              color: Colors.black,
            ),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

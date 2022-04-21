import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pfe_islem/SignIn/testWidget.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  BottomNavigationBar bottomnavbar() {
    return BottomNavigationBar(
      currentIndex: currentItem,
      onTap: (index) {
        setState(() {
          currentItem = index;
        });
      },
      items: items,
    );
  }

  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
      label: "Home",
      icon: Icon(Icons.home),
    ),
    BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Clients"),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
  ];
  List pages = [testWidget(), Text("Clients"), Text("Settingd")];
  int currentItem = 0;

  Widget positiveCall() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blueAccent, borderRadius: BorderRadius.circular(20)),
      child: TextButton(
          onPressed: () {
            exit(0);
          },
          child: Text(
            "oui",
            style: TextStyle(color: Colors.white),
          )),
    );
  }

  Widget negativeCall() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.blueAccent),
      ),
      child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            "non",
            style: TextStyle(color: Colors.blueAccent),
          )),
    );
  }

  Future<bool> avoidReturnButton() async {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Column(
              children: [
                Lottie.asset("assets/images/error.json", height: 50),
                Text("Vous etez sur de sortir ?"),
              ],
            ),
            actions: [positiveCall(), negativeCall()],
          );
        });
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: avoidReturnButton,
      child: SafeArea(
        child: Scaffold(
          body: Center(
            child: pages[currentItem],
          ),
          bottomNavigationBar: bottomnavbar(),
        ),
      ),
    );
  }
}

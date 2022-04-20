import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: pages[currentItem],
        ),
        bottomNavigationBar: bottomnavbar(),
      ),
    );
  }
}

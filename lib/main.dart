import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ss',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: stful(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  String test = "test123";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("bonjour"),
        ),
        drawer: Drawer(),
        body: Column(
          children: [
            Text(
              "$test",
              style: TextStyle(
                  color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
                onPressed: () {
                  test = "hello world";
                  print(test);
                },
                child: Text("click"))
          ],
        ),
      ),
    );
  }
}

/*
*
* stles widget => pas de modification au niveau de ui
* stful => modification au niveau de ui
* */

class stful extends StatefulWidget {
  const stful({Key? key}) : super(key: key);

  @override
  _stfulState createState() => _stfulState();
}

class _stfulState extends State<stful> {
  @override
  String test = "test123";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("bnj");
  } // 1er fonction au niveau de stful widget

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("bonjour"),
        ),
        drawer: Drawer(),
        body: Column(
          children: [
            Text(
              "$test",
              style: TextStyle(
                  color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    test = "hello world"; // refrech pour la methode build
                  });
                },
                child: Text("click"))
          ],
        ),
      ),
    );
  }
}

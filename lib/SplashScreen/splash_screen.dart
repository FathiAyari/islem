import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool test = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var seen = GetStorage().read("seen");
    Timer(Duration(seconds: 3), () {
      Get.toNamed(seen == 1 ? "/sign_in" : "/onboarding");
      /*Navigator.pushNamed(context, "");*/
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.1,
            ),
            Transform.translate(
              offset: Offset(-20, 0),
              child: Image.asset(
                "assets/images/donator.png",
                height: size.height * 0.27,
              ),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            Text(
              "App Name",
              style: TextStyle(
                  color: Colors.blueAccent, fontSize: size.height * 0.03),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            Lottie.asset("assets/images/loading.json",
                height: size.height * 0.2),
          ],
        ),
      ),
    ));
  }
}

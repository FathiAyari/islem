import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pfe_islem/SignIn/sign_in.dart';
import 'package:pfe_islem/SplashScreen/splash_screen.dart';
import 'package:pfe_islem/onboardingPage/Onboarding.dart';

main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter ss',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      getPages: [
        GetPage(name: '/', page: () => SplashScreen()),
        GetPage(name: '/sign_in', page: () => SignIn()),
        GetPage(name: '/onboarding', page: () => Onboarding()),
      ],
    );
  }
}

/*class api extends StatefulWidget {
  const api({Key? key}) : super(key: key);

  @override
  _apiState createState() => _apiState();
}

class _apiState extends State<api> {
  Future api() async {
    var url = "192.168.1.21:9000/test";
    var response = await http.get(Uri.parse(url));
    var mybody = jsonDecode(response.body);
    print(mybody);
    return mybody;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: api(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(child: Text("${snapshot.data}"));
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}*/

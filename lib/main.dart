import 'package:demos/page/home/home_page.dart';
import 'package:demos/page/login/login_register_page.dart';
import 'package:demos/page/login/material_login.dart';
import 'package:demos/page/welcome/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

main() {
  runApp(MyApp());
  SystemUiOverlayStyle systemUiOverlay =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  SystemChrome.setSystemUIOverlayStyle(systemUiOverlay);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
      routes: <String, WidgetBuilder>{
        'welcome': (BuildContext context) => HomePage(),
        'login': (BuildContext context) => LoginAndRegisterPage(),
        'materialLogin': (BuildContext context) => MaterialLogin()
        
      },
    );
  }
}

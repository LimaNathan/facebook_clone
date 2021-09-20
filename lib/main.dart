import 'package:facebook_clone/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Color(0xff000080), // cor da barra superior
      statusBarIconBrightness: Brightness.dark, // ícones da barra superior
      systemNavigationBarColor: Colors.white, // cor da barra inferior
      systemNavigationBarIconBrightness:
          Brightness.dark, // ícones da barra inferior
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF4267B2),
      ),
      home: LoginPage(),
    );
  }
}

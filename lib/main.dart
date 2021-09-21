import 'package:facebook_clone/db/database.dart';
import 'package:facebook_clone/pages/login_page.dart';
import 'package:facebook_clone/pages/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Color(0xff000080), // cor da barra superior
      statusBarIconBrightness: Brightness.dark, // ícones da barra superior
      systemNavigationBarColor: Colors.white, // cor da barra inferior
      systemNavigationBarIconBrightness:
          Brightness.dark, // ícones da barra inferior
    ),
  );
  runApp(MyApp(
    db: await $FloorAppDatabase.databaseBuilder('app_database.db').build(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, this.db}) : super(key: key);
  final AppDatabase? db;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF4267B2),
      ),
      title: 'Facebook Clone',
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(db: db),
        '/signupPage': (context) => SignUpPage(db: db),
      },
    );
  }
}

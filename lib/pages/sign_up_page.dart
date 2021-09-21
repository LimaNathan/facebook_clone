import 'dart:ui';

import 'package:facebook_clone/db/database.dart';
import 'package:facebook_clone/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  final AppDatabase? db;

  SignUpPage({Key? key, this.db}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'Cadastre-se',
              style: TextStyle(letterSpacing: 1.7),
            ),
            Spacer(),
          ],
        ),
      ),
      body: Container(
        child: TextFieldWidget(db: widget.db),
      ),
    );
  }
}

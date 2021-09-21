import 'dart:ui';

import 'package:facebook_clone/db/database.dart';
import 'package:facebook_clone/entitys/entity_base.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final AppDatabase? db;

  const TextFieldWidget({Key? key, this.db}) : super(key: key);

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool isVisible = true;
  bool isVisible2 = true;
  final _userEmailController = TextEditingController(text: '');
  final _userNameController = TextEditingController(text: '');
  final _userPasswordController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 135, right: 135),
            child: Image.asset(
              'assets/images/facebook_logo.png',
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
            width: width * .8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            child: TextFormField(
              controller: _userNameController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(hintText: 'Nome'),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
            width: width * .8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            child: TextFormField(
              controller: _userEmailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(hintText: 'Email ou telefone'),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.white),
            width: width * .8,
            child: Row(
              children: [
                Expanded(
                  flex: 7,
                  child: TextFormField(
                    controller: _userPasswordController,
                    decoration: InputDecoration(hintText: 'Senha'),
                    enableInteractiveSelection: false,
                    enableSuggestions: false,
                    obscureText: isVisible ? true : false,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    splashColor: Colors.transparent,
                    disabledColor: Colors.transparent,
                    onPressed: () => setState(
                      () => isVisible = !isVisible,
                    ),
                    icon: Icon(
                      isVisible == true
                          ? Icons.remove_red_eye
                          : Icons.remove_red_eye_outlined,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: width * .7,
            child: ElevatedButton(
              onPressed: () {
                if (_userEmailController.text.isNotEmpty &&
                    _userPasswordController.text.isNotEmpty &&
                    _userNameController.text.isNotEmpty) {
                  widget.db!.facebookRepositoryDao.insertItem(EntityBase(
                    name: _userNameController.text,
                    email: _userEmailController.text,
                    password: _userPasswordController.text,
                  ));
                }
                Navigator.pop(context);
              },
              child: Text('Cadastrar-se'),
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

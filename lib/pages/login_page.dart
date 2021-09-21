import 'dart:ui';

import 'package:facebook_clone/widgets/lannguage_modal.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          child: Container(
            child: Image.asset(
              'assets/images/facebook_banner.jpg',
              fit: BoxFit.cover,
            ),
            color: Colors.blue,
          ),
          preferredSize: Size.fromHeight(150),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: width,
            child: Column(
              children: [
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 120,
                      child: Text(
                        'Português - Inglês - Francês',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      child: TextButton(
                        onPressed: () => showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return LanguageModal();
                          },
                        ),
                        child: Text(
                          'Mais',
                          style: TextStyle(
                            color: Color(0xFF191970),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(left: 135, right: 135),
                  child: Image.asset(
                    'assets/images/facebook_logo.png',
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  width: width * .7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: 'Email ou telefone'),
                  ),
                ),
                Container(
                  width: width * .6,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 7,
                        child: TextFormField(
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
                    onPressed: () {},
                    child: Text('Entrar'),
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Theme.of(context).primaryColor,
                    ),
                    onPressed: () {},
                    child: Text('Esqueceu sua senha?'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.grey,
                        height: 1,
                        width: width * .35,
                      ),
                      Text(
                        ' Ou ',
                        textAlign: TextAlign.justify,
                      ),
                      Container(
                        color: Colors.grey,
                        height: 1,
                        width: width * .35,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  width: width * .7,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xFF008000),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Cadastre-se',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

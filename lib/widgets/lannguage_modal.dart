import 'package:flutter/material.dart';

class LanguageModal extends StatefulWidget {
  const LanguageModal({Key? key}) : super(key: key);

  @override
  _LanguageModalState createState() => _LanguageModalState();
}

class _LanguageModalState extends State<LanguageModal> {
  int selectedIndex = 0;
  List<String> languages = [
    'Português',
    'Inglês',
    'Chinês',
    'Espanhol',
    'Francês',
    'Russo',
    'Alemão',
    'Japonês',
    'Turco',
    'Coreano'
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: ListView.separated(
                itemBuilder: (_, index) => GestureDetector(
                  onTap: () {
                    setState(() => selectedIndex = index);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Text(
                            languages[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1.9,
                                color: index == selectedIndex
                                    ? Colors.black
                                    : Colors.blueGrey),
                          ),
                        ),
                        Expanded(
                          flex: 0,
                          child: index == selectedIndex
                              ? Container(
                                  width: 5,
                                  height: 5,
                                  child: Icon(
                                    Icons.check_outlined,
                                    color: Color(0xff00FF7F),
                                  ),
                                )
                              : Container(),
                        ),
                      ],
                    ),
                  ),
                ),
                itemCount: languages.length,
                separatorBuilder: (_, index) => Divider(),
              ),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {},
                child: Text('Confirmar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:cv/homepage/recup_data_home/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../contact/contact.dart';
import '../switchbutton.dart';
import 'customwidget/circulareffect/circularanimationtext.dart';
import 'customwidget/cvquichange.dart';
import 'customwidget/gestureAndClick.dart';
import 'customwidget/menuphonetype.dart';
import 'customwidget/profil.dart';
import 'package:cv/layoutwidget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late ScrollController _controller;

  double rotate = 0;
  bool check = false;

  retardateur() async {
    Future.delayed(const Duration(milliseconds: 400));
    if (check == false) {
      if (_controller.hasClients) {
        Provider.of<RecupDataHomeProvider>(context, listen: false)
            .methode(_controller.position.userScrollDirection);
        check = true;
      }
    } else {
      await Future.delayed(const Duration(milliseconds: 800));
      check = false;
    }
  }

  /// verifier pourquoi le context ne fonctionne pas , du au fait qu'on est dans un stateless

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    _controller.addListener(() {
      retardateur();
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> listitem = [
      const SizedBox(
        height: 3000,
      ),
    ];

    return Scaffold(
      backgroundColor: const Color(0xffefedea),
      body: layout(
        Widget1: Stack(
          children: [
            const profilcircle(),
            const cvtitle(),
            circularanim(
              variable: rotate,
            ),
            ListView.builder(
                itemCount: listitem.length,
                controller: _controller,
                itemBuilder: (context, index) {
                  return listitem.elementAt(index);
                }),
            gesClick(
              context: context,
            ),
            const contact(),
            const switchbutton(),
          ],
        ),
        Widget2: Stack(
          children:  [
            menuphone(),
            Align(),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                  height: 150,
                  width: 150,
                  color: const Color(0xffefedea),

                  child: profilcircle()),
            ),
          ],
        ),

      ),
    );
  }
}

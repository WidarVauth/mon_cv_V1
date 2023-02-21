import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

import 'homepage/recup_data_home/provider.dart';
class switchbutton extends StatefulWidget {
  const switchbutton({Key? key}) : super(key: key);

  @override
  State<switchbutton> createState() => _switchbuttonState();
}

class _switchbuttonState extends State<switchbutton> {
  double size = 1;
  double sizebottom = 1;
  @override
  Widget build(BuildContext context) {
    return windows();
  }
  Widget windows() => Consumer<RecupDataHomeProvider>(
  builder: (context, provider, child) {
  return AnimatedOpacity(
    duration: const Duration(milliseconds: 400),
    opacity: provider.ckicler ==1 ? 0 : 1,
    child: Padding(
      padding: const EdgeInsets.only(left: 900),
      child: Center(
        child: SizedBox(
          width: 40,
          height: 200,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MouseRegion(
              onEnter: (event) {
                setState(() {
                  size = 0.5;
                });
              },
              onExit: (event) {
                setState(() {
                  size = 1;
                });
              },
              child: IconButton(
                iconSize: 30*size,
                color: Colors.black54,
                icon: Icon(Icons.keyboard_arrow_up_rounded),
                onPressed: () {
                  Provider.of<RecupDataHomeProvider>(context, listen: false).methode(ScrollDirection.reverse);
                },
              ),
            ),
            MouseRegion(
              onEnter: (event) {
                setState(() {
                  sizebottom = 0.5;
                });
              },
              onExit: (event) {
                setState(() {
                  sizebottom = 1;
                });
              },
              child: IconButton(
                iconSize: 30*sizebottom,
                icon: Icon(Icons.keyboard_arrow_down_rounded),
                color: Colors.black54,
                onPressed: () {
                  Provider.of<RecupDataHomeProvider>(context, listen: false).methode(ScrollDirection.forward);

                },
              ),
            )
          ],
        )),
      ),
    ),
  );
  },
);

}

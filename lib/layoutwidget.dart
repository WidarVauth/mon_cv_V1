import 'package:flutter/material.dart';

class layout extends StatelessWidget {

  final Widget Widget1;
  final  Widget Widget2;




  const layout({Key? key, required this.Widget1, required this.Widget2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return layoutbuild(context);
  }
  Widget layoutbuild (BuildContext context) => LayoutBuilder(
      builder: (BuildContext Context, BoxConstraints constraints){
        if (constraints.maxWidth > 1100){
          return Widget1;
        }
        else {
          return Widget2;
        }
      }
  );
}
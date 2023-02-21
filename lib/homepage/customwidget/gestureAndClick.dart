import 'package:cv/homepage/recup_data_home/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';

class gesClick extends StatefulWidget {
  final dynamic context;

  const gesClick({Key? key, required this.context}) : super(key: key);

  @override
  State<gesClick> createState() => _gesClickState();
}

class _gesClickState extends State<gesClick> {
  methode(x) async {
    await Future.delayed(const Duration(milliseconds: 400));
    GoRouter.of(widget.context).go(x);
    Provider.of<RecupDataHomeProvider>(widget.context, listen: false).ckicler =0;


  }

  @override
  Widget build(BuildContext context) {
    return phone();
  }

  Widget phone() =>
      Padding(
        padding: const EdgeInsets.only(left: 580),
        child: Center(
          child: MouseRegion(
            onEnter: (event) {
              Provider.of<RecupDataHomeProvider>(widget.context, listen: false).resize(
                  100);
            },
            onExit: (event) {
              Provider.of<RecupDataHomeProvider>(widget.context, listen: false).resize(
                  0);
            },
            child: Consumer<RecupDataHomeProvider>(
              builder: (context, provider, child) {
                return GestureDetector(
                  onTap: () {
                    Provider.of<RecupDataHomeProvider>(context, listen: false)
                        .clicker(1);
                    if (provider.rotate == 0) {methode('/formation');}
                    else if (provider.rotate == 1) {methode('/experience');}
                    else if(provider.rotate == 2) {methode('/historique');}
                    else if(provider.rotate == 3) {methode('/contact');}
                  },
                  child: Container(
                    height: 80,
                    width: 200,
                    color: Colors.transparent,
                  ),
                );
              },
            ),
          ),
        ),
      );
}

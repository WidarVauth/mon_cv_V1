import 'package:cv/homepage/recup_data_home/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../TextSpec.dart';

class containercircular extends StatefulWidget {
  final String Ttile;
  final String subtitle;

  const containercircular(
      {Key? key, required this.Ttile, required this.subtitle})
      : super(key: key);

  @override
  State<containercircular> createState() => _containercircularState();
}

class _containercircularState extends State<containercircular> {



  @override
  Widget build(BuildContext context) {
    return phone();
  }

  Widget phone() => Consumer<RecupDataHomeProvider>(
        builder: (context, provider, child) {
          return AnimatedAlign(
            curve: Curves.easeInOutCubic,
            duration: Duration(milliseconds: 400),
            alignment: Alignment(-provider.ckicler, 0),
            child: AnimatedPadding(
              curve: Curves.easeInOutCubic,
              duration: Duration(milliseconds: 400),
              padding:  EdgeInsets.only(left: (430*(1-provider.ckicler)+180)),
              child: AnimatedContainer(
                curve: Curves.easeInOutCirc,
                  duration: Duration(milliseconds: 400),
                  height: 100,
                  width: 250 + (provider.size/2),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 250,
                      child: Stack(
                        children: [
                          TextSpec(
                            Title: widget.Ttile,
                            Description: widget.subtitle,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: AnimatedContainer(
                              duration: Duration(
                                milliseconds: 200,
                              ),
                              height: 2,
                              color: Colors.black,
                              width: provider.size,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
          );
        },
      );
}

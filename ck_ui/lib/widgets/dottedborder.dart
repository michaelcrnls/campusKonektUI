import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class Dotted_Border extends StatelessWidget {
  const Dotted_Border({Key? key, required this.dottedBorder}) : super(key: key);
  final String dottedBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: DottedBorder(
          dashPattern: [15,6,15,6,15,6],
            borderType: BorderType.Circle,
              color: Colors.black38,
              child:
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(dottedBorder, style: 
                  TextStyle(
                  color: Colors.black38,
                  fontSize: 25),),
              )),
      ),
      
    );
  }
}

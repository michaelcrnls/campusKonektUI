import 'package:ck_ui/widgets/flatbutton.dart';
import 'package:flutter/material.dart';

class WelcomePage
 extends StatelessWidget {
  const WelcomePage
  ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //this will provide us with the total height/width of our screen
    return Scaffold(
      body: Container(
        width: size.width,
        height: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
          Image.asset("assets/without.png",
          width: size.width * 0.3,
          ),
          Positioned(
            bottom: 100,
            child: Text("Campuskonekt", style: TextStyle(
              color: Colors.red,
              fontSize: 20,
            ),))
        ],),
      ),
    );
  }
}

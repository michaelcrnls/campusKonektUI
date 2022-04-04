

import 'package:ck_ui/screens/accounts.dart';
import 'package:ck_ui/widgets/flatbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        //width: size.width,
        // height: double.infinity,
        child: Stack(children: [
          Positioned(
            left: 100,
            top: 100,
            child: Container(
              // width: 300,
              // height: 300,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.redAccent,
              ),
              child: Image.asset("assets/without.png", height:200, width:200))
          ),
          Positioned(
            bottom: 300,
            left: 50,
            child: Text("Discover, Konekt & Learn", style: TextStyle(
              color: Colors.red.shade900,
              fontSize: 35,
              fontWeight: FontWeight.bold
            ),)),
            Positioned(
            bottom: 200,
            left: 60,
            child: Text("Discover other students, course \n materials and stay updated \n withh your campus news",
              textAlign: TextAlign.center,
             style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.normal,
            ),)),
            Positioned(
              bottom: 80,
              left: 105,
              child: CustomFlatButton(buttonName: "Continue", height: 40, width: 200, 
              onPress: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AccountsReg()));},),
              )
        ],),

      ),
    );
  }
}
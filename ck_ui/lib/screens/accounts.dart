import 'package:ck_ui/screens/displayname.dart';
import 'package:ck_ui/widgets/accountwidget.dart';
import 'package:ck_ui/widgets/flatbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AccountsReg extends StatelessWidget {
  const AccountsReg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned(
                left: 60,
                top: 40,
                child: Text(
                  "Tailor your konekt experience",
                  style: TextStyle(
                      color: Colors.grey.shade800,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )),
            Positioned(
                top: 110,
                left: 150,
                child: Container(
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                      color: Colors.red.shade100, shape: BoxShape.circle),
                  child: AccountWidget(imageUrl: "assets/graduation.png"),
                )),
            Positioned(
                top: 250,
                left: 115,
                child: Text("Personal account",
                    style: TextStyle(
                      fontSize: 30,
                    ))),
            Positioned(
                top: 290,
                left: 90,
                child: Text("Made exactly how students want it",
                    style: TextStyle(
                      fontSize: 20,
                    ))),
            Positioned(
                top: 350,
                left: 105,
                child: CustomFlatButton(
                    buttonName: "Continue",
                    height: 40,
                    width: 200,
                    onPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DisplayName()));
                    })),

            //second section of account **business account

            Positioned(
                top: 470,
                left: 150,
                child: Container(
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                      color: Colors.red.shade100, shape: BoxShape.circle),
                  child: AccountWidget(imageUrl: "assets/home1.png"),
                )),
            Positioned(
                top: 600,
                left: 115,
                child: Text("Business account",
                    style: TextStyle(
                      fontSize: 30,
                    ))),
            Positioned(
                top: 650,
                left: 90,
                child: Text(
                    "Suitable for brands, public figures \n and organisations",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ))),
            Positioned(
                top: 730,
                left: 105,
                child: CustomFlatButton(
                  buttonName: "Continue",
                  height: 40,
                  width: 200, onPress: (){},
                ))
          ],
        ),
      ),
    );
  }
}

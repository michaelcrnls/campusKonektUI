import 'package:ck_ui/screens/landingpage.dart';
import 'package:ck_ui/widgets/dottedborder.dart';
import 'package:ck_ui/widgets/flatbutton.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class GenderName extends StatelessWidget {
  const GenderName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.only(
              top: 50.0,
              left: 20,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_back),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        "Help students find you",
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Dotted_Border(dottedBorder: '1'),
                      // Padding(
                      //   padding: const EdgeInsets.only(top: 50.0),
                      //   child: DottedBorder(
                      //     dashPattern: [15,6,15,6,15,6],
                      //     borderType: BorderType.Circle,
                      //     color: Colors.black38,
                      //     child:
                      //    Padding(
                      //      padding: const EdgeInsets.all(15.0),
                      //      child: Text("1", style:
                      //      TextStyle(
                      //        color: Colors.black38,
                      //        fontSize: 25),),
                      //    )),
                      // ),
                      //2nd circle

                      Dotted_Border(dottedBorder: '2'),
                      // Padding(
                      //   padding: const EdgeInsets.only(top: 50.0),
                      //   child: DottedBorder(
                      //     dashPattern: [15,6,15,6,15,6],
                      //     borderType: BorderType.Circle,
                      //     color: Colors.black38,
                      //     child:
                      //    Padding(
                      //      padding: const EdgeInsets.all(15.0),
                      //      child: Text("2", style: TextStyle(
                      //        color: Colors.black38,
                      //        fontSize: 25),),
                      //    )),
                      // ),
                      //3RD circle
                      Padding(
                        padding: const EdgeInsets.only(top: 50.0),
                        child: DottedBorder(
                            dashPattern: [15, 6, 15, 6, 15, 6],
                            borderType: BorderType.Circle,
                            color: Colors.red.shade900,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                "3",
                                style: TextStyle(
                                    color: Colors.red.shade900, fontSize: 25),
                              ),
                            )),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, left: 25, bottom: 10.0),
                        child: Text(
                          "Gender",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 25.0, left: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red.shade900),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.red.shade900),
                                borderRadius: BorderRadius.circular(50)),
                            hintText: ("choose your gender"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 10.0),
                        child: Text(
                          "We use this to improve your visibility on CK",
                          style: TextStyle(color: Colors.black38),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 450),
                  Container(
                    child: Positioned(
                        child: CustomFlatButton(
                            buttonName: "Finish",
                            height: 40,
                            width: 250,
                            onPress: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LandingPage()));
                            })),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Text(
                        "Not now",
                        style:
                            TextStyle(color: Colors.red.shade900, fontSize: 15),
                      ))
                ],
              ),
            )));
  }
}

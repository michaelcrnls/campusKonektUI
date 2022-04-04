import 'package:ck_ui/screens/campusname.dart';
import 'package:ck_ui/widgets/dottedborder.dart';
import 'package:ck_ui/widgets/flatbutton.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class DisplayName extends StatelessWidget {
  const DisplayName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.only(
              top: 50.0,
              left: 20,
            ),
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
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: DottedBorder(
                          dashPattern: [20, 6, 20, 6, 20, 6],
                          borderType: BorderType.Circle,
                          color: Colors.red.shade900,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              "1",
                              style: TextStyle(
                                  color: Colors.red.shade900, fontSize: 25),
                            ),
                          )),
                    ),

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

                    Dotted_Border(dottedBorder: '3')
                    // Padding(
                    //   padding: const EdgeInsets.only(top: 50.0),
                    //   child: DottedBorder(
                    //     dashPattern: [15,6,15,6,15,6],
                    //     borderType: BorderType.Circle,
                    //     color: Colors.black38,
                    //     child:
                    //    Padding(
                    //      padding: const EdgeInsets.all(15.0),
                    //      child: Text("3", style: TextStyle(
                    //        color: Colors.black38,
                    //        fontSize: 25),),
                    //    )),
                    // )
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
                        "Display name",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 25.0, left: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                          hintText: ("Choose a display name"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 10.0),
                      child: Text(
                        "This will be shown to other users",
                        style: TextStyle(color: Colors.black38),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 450),
                Container(
                  child: Positioned(
                      child: CustomFlatButton(
                          buttonName: "Continue",
                          height: 40,
                          width: 250,
                          onPress: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CampusName()));
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
            )));
  }
}

import 'package:flutter/material.dart';

class LandingPageWidget extends StatelessWidget {
  const LandingPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child:GridView.count(
            crossAxisCount: 2,
            //crossAxisSpacing: 1.0,
            mainAxisSpacing: 60.0,
            children: List.generate(
                4,
                (index) =>
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
              height: 260,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Container(
                child: Column(
                  children: [
                    Image.asset("assets/without.png"),
                    
                    Padding(
                      padding: const EdgeInsets.only(top: 10,right: 110.0),
                      child: Text("Emeka", style:TextStyle(
                        fontSize: 25,
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, right: 70.0),
                      child: Text("University of Nigeria", style: TextStyle(color: Colors.black54))
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.only(top: 5, right: 80, bottom: 5),
                      child: Text("10 mutual friends"),
                    ),
                   
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      
                      children: [
                        Text("nearby"),
                        Text('122km')],
                    )
                  ],
                  
                    // Title(color: Colors.red, child: Text("Emeka")),
                    // Text("University of Nigeria"),
                    // Text("nearby"),
                    
                  
                  
                ),
              ),
                    ))))));
  }
}

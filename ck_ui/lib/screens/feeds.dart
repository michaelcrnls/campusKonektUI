import 'package:ck_ui/widgets/cards.dart';
import 'package:ck_ui/widgets/feedscard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FeedsPage extends StatelessWidget {
  const FeedsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          title: Icon(Icons.arrow_back),
          actions: [Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.red.shade900,
              child: IconButton(onPressed: () {}, icon: Icon(Icons.search, color: Colors.white, size: 30,),
              ),
            ),
          )
            
          ],
          backgroundColor: Colors.blueGrey.shade100,
        ),
        
        

        bottomNavigationBar: BottomNavigationBar(
          iconSize: 25,
          currentIndex: 0,
          items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.blueGrey.shade400,),
          label: ''),
        BottomNavigationBarItem(
          icon: Icon(Icons.auto_awesome_mosaic, color: Colors.blueGrey.shade400,),
          label: ''),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat, color: Colors.blueGrey.shade400,),
          label: ''),
        BottomNavigationBarItem(
          icon: Icon(Icons.store, color: Colors.blueGrey.shade400,),
          label: ''),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle, color: Colors.blueGrey.shade400,),
          label: ''),
          ]),

        body: Container(
          child: Cards(),
        ),




        // body: SingleChildScrollView(
        //   child: Column(
        //     children: [
        //       Container(
        //         height: 80,
        //         width: 410,
        //         color: Colors.grey.shade300,
        
        //         child: Row(
        //           children: [
        //             Expanded(
        //               child: Padding(
        //                 padding: const EdgeInsets.only(top: 8.0, right: 30, left: 20),
        //                 child: TextField(
        //                   decoration: InputDecoration(
        //                     prefixIcon: Padding(
        //                       padding: const EdgeInsets.only(left: 10.0),
        //                       child: Image.asset("assets/without.png", width: 15, height: 15, ),
        //                     ),
        //                     hintText: 'Make a post',
        //                     enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey),
        //                     borderRadius: BorderRadius.circular(50)
                    
        //                   ),
        //                 ),
        //               ),
                                
        //               ),
        //             ),
        //             Padding(
        //               padding: const EdgeInsets.only(right: 8.0),
        //               child: CircleAvatar(
        //                 radius: 30,
        //                 backgroundColor: Colors.white,
        //                 child: IconButton(onPressed: (){}, icon: Icon(Icons.filter_alt_rounded,size: 30,)),
        //               ),
        //             )
        //           ],
        //         )),
        //       Padding(
        //         padding: const EdgeInsets.all(10.0),
        //           child: Container(
        //   height: 155,
        //   width: 420,
        //   decoration: BoxDecoration(
        //     color: Colors.white,
        //     borderRadius:BorderRadius.circular(10),
        //   ),
        //   child: Column(
        //     children: [ListTile(
        //         leading: CircleAvatar(
                  
        //           backgroundImage: AssetImage("assets/without.png"),
        //         ),
        //         title: Container(
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               Text('Ebuka okoro', style: TextStyle(fontSize: 20),),
        //               Padding(
        //                 padding: const EdgeInsets.only(left: 125.0),
        //                 child: Icon(Icons.access_time),
        //               ),
        //               Text('Jan 10')
        //             ],
        //           ),
        //         ),
                
                
        //         subtitle: Container(
        //           child: Row(
        //             textDirection: TextDirection.ltr,
        //             children: [
        //               Icon(Icons.person_search),
        //               Text('Study buddies'),
        //               SizedBox(width: 25),
        //               Icon(Icons.location_on),
        //               Text('University of Nigeria Nsukka')
        //             ],
        //           ),
        //         ),
                
                
                
                
                
        //     ),
        //     Padding(
        //         padding: const EdgeInsets.only(left: 55.0),
        //         child: Container(
        //           width: 290,
        //           child: Column(
        //           children: [
                    
        //             Padding(
        //               padding: const EdgeInsets.only(right: 35.0),
        //               child: Text('welcome to the future where everything invented \n is part of our world of equality', style: 
        //               TextStyle(fontSize: 15),),
        //             ),
        //             SizedBox(height: 10),
        //             Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //               children: [
        //                 Icon(Icons.pan_tool_outlined),
        //                 Icon(Icons.keyboard_control)
        //               ],
        //             )
        //           ],
                  
        //         ),
                
                
                  

        //         ),)]
        //         ),)),
              
        //     ],
        //   ),
        // ),
      
      );
  }
}
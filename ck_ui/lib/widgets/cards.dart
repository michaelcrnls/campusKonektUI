import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 50,
            pinned: true,
            backgroundColor: Colors.white, 
            title: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Image.asset("assets/without.png", width: 25, height: 25, ),
                              ),
                              hintText: 'Make a post',
                              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(50)
                      
                            ),focusedBorder: OutlineInputBorder(borderSide:  BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(50))
                          ),
              ),
            ),
            ),
          SliverList(
            // listDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            //     maxCrossAxisExtent: 100.0, 
            //     mainAxisSpacing: 20.0),
            delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
          height: 155,
          width: 420,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius:BorderRadius.circular(10),
          ),
          child: Column(
            children: [ListTile(
                leading: CircleAvatar(
                  
                  backgroundImage: AssetImage("assets/without.png"),
                ),
                title: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Ebuka okoro', style: TextStyle(fontSize: 20),),
                      Padding(
                        padding: const EdgeInsets.only(left: 125.0),
                        child: Icon(Icons.access_time),
                      ),
                      Text('Jan 10')
                    ],
                  ),
                ),
                
                
                subtitle: Container(
                  child: Row(
                    textDirection: TextDirection.ltr,
                    children: [
                      Icon(Icons.person_search),
                      Text('Study buddies'),
                      SizedBox(width: 25),
                      Icon(Icons.location_on),
                      Text('University of Nigeria Nsukka')
                    ],
                  ),
                ),
                
                
                
                
                
            ),
            Padding(
                padding: const EdgeInsets.only(left: 55.0),
                child: Container(
                  width: 290,
                  child: Column(
                  children: [
                    
                    Padding(
                      padding: const EdgeInsets.only(right: 35.0),
                      child: Text('welcome to the future where everything invented \n is part of our world of equality', style: 
                      TextStyle(fontSize: 15),),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.pan_tool_outlined),
                        Icon(Icons.keyboard_control)
                      ],
                    )
                  ],
                  
                ),
                
                
                  

                ),
            )
            ]),
          
          
        ),
              );
            },
            childCount: 6),
          )
        ],
      ),
    );
  }
}

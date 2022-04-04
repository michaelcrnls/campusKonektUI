import 'package:ck_ui/screens/feeds.dart';
import 'package:ck_ui/widgets/custompagecard.dart';
import 'package:ck_ui/widgets/landingpagewidget.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          title: Image.asset(
            "assets/without.png",
            height: 40,
            width: 40,
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.mail)),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.account_circle),
            )
          ],
          backgroundColor: Colors.blueGrey.shade400,
        ),

        //BOTTOM NAVIGATION
        bottomNavigationBar: BottomNavigationBar(
            //backgroundColor: Colors.red,
            iconSize: 25,
            currentIndex: 0,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.blueGrey.shade400,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.auto_awesome_mosaic,
                    color: Colors.blueGrey.shade400,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.chat,
                    color: Colors.blueGrey.shade400,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.store,
                    color: Colors.blueGrey.shade400,
                  ),
                  label: ''),
            ]),

        //body of page
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'campuskonekt',
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 25),
                child: TextField(
                    decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade800),
                      borderRadius: BorderRadius.circular(50)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade800),
                      borderRadius: BorderRadius.circular(50)),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade800,
                    size: 35,
                  ),
                  hintText: 'Search or filter students...',
                  suffixIcon: Icon(Icons.filter_alt_rounded,
                      color: Colors.grey.shade800),
                )),
              ),
              CustomPageCard(
                landing_page: 'Looking For',
                landing: 'Find your specs for just about anything...',
                outlineColor: Colors.red.shade50,
                fillColor: Colors.red.shade50,
                iconColor: Colors.red.shade900,
                onTap: () {
                  print(FeedsPage());
                },
              ),
              SizedBox(height: 10),
              CustomPageCard(
                landing_page: 'Campus Trends',
                landing: 'Find what people are talking about in your campus',
                outlineColor: Colors.white,
                fillColor: Colors.white,
                iconColor: Colors.green,
                onTap: () {
                  print(FeedsPage());
                },
              ),
              SizedBox(height: 10),
              CustomPageCard(
                landing_page: 'Highlights',
                landing: 'Students related news and articles',
                outlineColor: Colors.white,
                fillColor: Colors.white,
                iconColor: Colors.orange,
                onTap: () {
                  print(FeedsPage());
                },
               ),
              SizedBox(height: 10),
              CustomPageCard(
                landing_page: 'Archives',
                landing: 'Study/research materials from you and others',
                outlineColor: Colors.white,
                fillColor: Colors.white,
                iconColor: Colors.blue,
                onTap: () {
                  print(FeedsPage());
                },
              ),
              // Container(
              //   height: 120,
              //   width: 400,

              //   child: Card(child: ListTile(
              //     leading: Padding(
              //       padding: const EdgeInsets.only(top:20.0, left: 5),
              //       child: Icon(Icons.search, color: Colors.red.shade900, size: 30,),
              //     ),
              //     title: Container(
              //       margin: EdgeInsets.only(top: 25, bottom: 5),
              //       child: Text('Looking For', style:TextStyle(fontSize: 25))),
              //     subtitle: Text('find your specs for just about anything'),
              //     ),
              //     shape: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
              //     borderSide: BorderSide(color: Colors.red.shade50)),
              //     elevation: 10,
              //     color: Colors.red.shade50,),
              // )
              SizedBox(height: 15),

              Padding(
                padding: const EdgeInsets.only(top: 10, right: 200, bottom: 10),
                child: Text(
                  'Follow Suggested Users',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // Container(
              //   child: LandingPageWidget(),
              // )

              // Container(
              //   height: 260,
              //   width: 200,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //     color: Colors.white,
              //   ),
              //   child: Container(
              //     child: Column(
              //       children: [
              //         Image.asset("assets/without.png"),

              //         Padding(
              //           padding: const EdgeInsets.only(top: 10,right: 130.0),
              //           child: Text("Emeka", style:TextStyle(
              //             fontSize: 25,
              //           )),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.only(top: 5, right: 100.0),
              //           child: Text("University of Nigeria", style: TextStyle(color: Colors.black54))
              //         ),

              //         Padding(
              //           padding: const EdgeInsets.only(top: 5, right: 110, bottom: 5),
              //           child: Text("10 mutual friends"),
              //         ),

              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,

              //           children: [
              //             Text("nearby"),
              //             Text('122km')],
              //         )
              //       ],

              //         // Title(color: Colors.red, child: Text("Emeka")),
              //         // Text("University of Nigeria"),
              //         // Text("nearby"),

              //     ),
              //   ),
              // )
            ],
          ),
        ));
  }
}

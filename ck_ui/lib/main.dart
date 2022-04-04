import 'package:ck_ui/screens/accounts.dart';
import 'package:ck_ui/screens/campusname.dart';
import 'package:ck_ui/screens/displayname.dart';
import 'package:ck_ui/screens/feeds.dart';
import 'package:ck_ui/screens/gendername.dart';
import 'package:ck_ui/screens/landingpage.dart';
import 'package:ck_ui/screens/onboarding.dart';
import 'package:ck_ui/screens/welcomepage.dart';
import 'package:ck_ui/widgets/cards.dart';
import 'package:ck_ui/widgets/feedscard.dart';
import 'package:ck_ui/widgets/flatbutton.dart';
import 'package:ck_ui/widgets/landingpagewidget.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      home: OnboardingPage(),
    );
  }
}

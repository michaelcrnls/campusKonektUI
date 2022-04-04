import 'package:flutter/material.dart';

class AccountWidget extends StatelessWidget {
  const AccountWidget({Key? key,required this.imageUrl}) : super(key: key);
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 110,
      decoration:
          BoxDecoration(color: Colors.red.shade100, shape: BoxShape.circle),
      child: Image.asset(
        imageUrl,
        width: 300,
        height: 300,
        color: Colors.red.shade900,
      ),
    );
  }
}

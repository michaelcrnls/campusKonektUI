import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  const CustomFlatButton(
      {Key? key,
      required this.buttonName,
      required this.height,
      required this.width,required this.onPress,})
      : super(key: key);
  final String buttonName;
  final double height;
  final double width;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          primary: Colors.red.shade900,
        ),
        child: Text(buttonName),
      ),
    );
  }
}

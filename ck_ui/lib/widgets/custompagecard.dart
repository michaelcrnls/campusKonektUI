import 'package:flutter/material.dart';

class CustomPageCard extends StatelessWidget {
  CustomPageCard(
      {Key? key,
      required this.landing_page,
      required this.landing,
      this.outlineColor,
      this.fillColor,
      this.iconColor,required this.onTap})
      : super(key: key);
  final String landing_page;
  final String landing;
  final outlineColor;
  final fillColor;
  final iconColor;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: InkWell(
        child: Container(
          height: 130,
          width: 400,
          child: Card(
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 5),
                child: Icon(
                  Icons.search,
                  color: iconColor,
                  size: 35,
                ),
              ),
              title: Container(
                  margin: EdgeInsets.only(top: 25, bottom: 5),
                  child: Text(landing_page, style: TextStyle(fontSize: 26))),
              subtitle: Text(landing),
            ),
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: outlineColor)),
            elevation: 10,
            color: fillColor,
          ),
        ),
      ),
    );
  }
}

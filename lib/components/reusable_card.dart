import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Widget cardChild;
  final Function onpress;
  final AssetImage image;
  ReusableCard({this.image, this.cardChild, this.onpress});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0,
      width: 360.0,
      child: cardChild,
      margin: EdgeInsets.only(left: 5.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: image,
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15.0),
        // boxShadow: [BoxShadow(
        //   color: Colors.black87,
        //   offset: Offset(0.0, 10.0),
        //   blurRadius: 10.0,
        //   spreadRadius: 0.0,
      
        // )],
      ),
    );
  }
}

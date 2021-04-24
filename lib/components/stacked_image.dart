
import 'package:ethipian_odyssey/components/reusable_card.dart';
import 'package:ethipian_odyssey/utilities/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StackedImage extends StatelessWidget {
  
  StackedImage({@required this.image, @required this.title,});
  final AssetImage image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 0.0),
      width: 361.0,
      height: 230.0,
      child: Stack(
        textDirection: TextDirection.ltr,
        children: <Widget>[
          ReusableCard(
            image: image, 
          ), 
          Align(
            alignment: Alignment.topRight,
            child: Container(
              child: IconButton(
                icon: Icon(FontAwesomeIcons.bookmark),
                color: Colors.white, //Color.fromRGBO(229, 13, 118, 0.9),
                iconSize: 25.0,
                onPressed: (){},
              ),
            ),
          ),
          Positioned(
            top: 135.0,
            left: 25.0,
            child: Text(
              title,
              style: TextStyle(
                fontFamily: 'Source Sans Pro', fontSize: 32, color: Colors.white,
              ),
            ),
          ),

        ],
      ),
    );
  }
}

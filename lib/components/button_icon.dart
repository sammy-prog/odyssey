import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget {
  
  ButtonIcon({@required this.iconName});

  final Icon iconName;

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.only(left: 30.0),
      child: Material(
        color: Color.fromRGBO(0, 0, 0, 0.0),
        child: Ink(
          decoration: ShapeDecoration(
            color: Color.fromRGBO(240, 240, 240, 0.8),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0),),
          ),
          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: IconButton(
              icon: iconName,
              onPressed: () {
                //Navigator.pushNamed(context, NowPlaying.id);
              },
            ),
          ),
        ),
      ),
    );
  }
}
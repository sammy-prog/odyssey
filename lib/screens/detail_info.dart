import 'package:ethipian_odyssey/components/info_continer.dart';
import 'package:ethipian_odyssey/utilities/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailInfo extends StatefulWidget {
  static const String id = 'detail_screen';
  @override
  _DetailInfoState createState() => _DetailInfoState();
}

class _DetailInfoState extends State<DetailInfo> {
  
  @override
  Widget build(BuildContext context) {
    final InfoContainer args = ModalRoute.of(context).settings.arguments;
    double widthWindow = MediaQuery.of(context).size.width;
    double heightWindow = MediaQuery.of(context).size.height;
    List<String> nameArray  = args.name.split(" ");
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  child: Stack(
                    textDirection: TextDirection.ltr,
                    children: <Widget>[
                      Container(
                        height: heightWindow/1.8,
                        margin: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: args.bigImage,
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(25.0),
                          boxShadow: [BoxShadow(
                            color: Colors.black26, 
                            offset: Offset(0.0, 10.0),
                            blurRadius: 40.0,
                            spreadRadius: 0.0,
                          )],
                        ),
                      ),
                      Positioned(
                        top: heightWindow/28,
                        left: widthWindow/1.3,
                        child: RawMaterialButton(
                          child: Ink(
                            decoration: ShapeDecoration(
                              color: Color.fromRGBO(10, 10, 10, 0.2),
                              shape: CircleBorder(),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: IconButton(
                                icon: Icon(FontAwesomeIcons.times, size : 30.0, color: Color.fromRGBO(230, 230, 230, 0.8),),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ), onPressed: () {},
                        ),
                      ),
                      Positioned(
                        top: heightWindow/4.5,
                        left: widthWindow/17,
                        child: Text(nameArray[0], style: TextStyle(fontFamily: 'Livic', fontSize: 52, color: Color.fromRGBO(255, 255, 255, 0.95),),),
                      ),
                      Positioned(
                        top: heightWindow/3.1,
                        left: widthWindow/17.0,
                        child: Text(nameArray[1], style: TextStyle(fontFamily: 'Livic', fontSize: 52, color: Color.fromRGBO(255, 255, 255, 0.95),),),
                      ),
                      Positioned(
                        top: heightWindow/2.2,
                        left: widthWindow/17.0,
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Text(args.price, style: TextStyle(fontFamily: 'Livic Regular', fontSize: 42, color: Color.fromRGBO(255, 255, 255, 0.95),),),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text('Per \nPerson', style: TextStyle(fontFamily: 'Livic Regular', fontSize: 15, color: Color.fromRGBO(255, 255, 255, 0.9),),),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: heightWindow/120,left: widthWindow/5),
                              child: Row(
                                children: <Widget>[
                                  Container(margin: EdgeInsets.only(left: 9.0),child: Icon(FontAwesomeIcons.solidStar, size: 13.0, color: Color(0xFFd5cc24))),
                                  Container(margin: EdgeInsets.only(left: 9.0),child: Icon(FontAwesomeIcons.solidStar, size: 13.0, color: Color(0xFFd5cc24))),
                                  Container(margin: EdgeInsets.only(left: 9.0),child: Icon(FontAwesomeIcons.solidStar, size: 13.0, color: Color(0xFFd5cc24))),
                                  Container(margin: EdgeInsets.only(left: 9.0),child: Icon(FontAwesomeIcons.solidStar, size: 13.0, color: Color(0xFFd5cc24))),
                                  Container(margin: EdgeInsets.only(left: 9.0),child: Icon(FontAwesomeIcons.star, size: 13.0, color: Color(0xFFd5cc24))),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 17.0,),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 27.0),
                      child: Text('Introduce' , style: KFrontTextSmall,),
                    ),
                  ],
                ),
                Container(
                  height: heightWindow/5,
                  child: ListView(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          margin:  EdgeInsets.only(left: 20.0, right: 15.0),
                          child: Text(args.description,textAlign: TextAlign.justify, style: TextStyle(
                            color: Color(0xAA00376f),
                            fontFamily: 'Livic Regular', fontSize: 14.5,
                          ),),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15.0,),
                Row(
                  children: <Widget>[
                   Container(
                    margin: EdgeInsets.only(left: 35.0, bottom: 20.0),
                      child: Material(
                        color: Color.fromRGBO(0, 0, 0, 0.0),
                        child: Ink(
                          decoration: ShapeDecoration(
                            color: Color(0x95f9c1e9),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0),),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: IconButton(
                              icon: Icon(FontAwesomeIcons.heart ,size: 30.0, color: Colors.redAccent,),
                              onPressed: () {
                                //Navigator.pushNamed(context, NowPlaying.id);
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20.0, bottom: 20.0),
                        child: Material(
                          color: Color.fromRGBO(0, 0, 0, 0.0),
                          child: Ink(
                            decoration: ShapeDecoration(
                              color: Color.fromRGBO(210, 210, 210, 0.8),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0),),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: IconButton(
                                icon: Icon(FontAwesomeIcons.locationArrow ,size: 30.0, color: Color(0xFF020648),),
                                onPressed: () {
                                  //Navigator.pushNamed(context, NowPlaying.id);
                                },
                              ),
                            ),
                          ),
                        ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20.0, bottom: 20.0),
                        child: GestureDetector(
                          onTap: (){

                          },
                          child: Material(
                            color: Color.fromRGBO(0, 0, 0, 0.0),
                            child: Ink(
                              decoration: ShapeDecoration(
                                color: Color(0xFF020648),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0),),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 45.0,vertical: 13.0),
                                child: Text(
                                  'BOOK',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 31.0,
                                    fontFamily: 'Levic Regular'
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                    ),
                    // SizedBox(height: 15.0,),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


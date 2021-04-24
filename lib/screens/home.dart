import 'package:ethipian_odyssey/components/button_icon.dart';
import 'package:ethipian_odyssey/screens/full_list.dart';
import 'package:ethipian_odyssey/utilities/constant.dart';
import 'package:ethipian_odyssey/utilities/hotel_list.dart';
import 'package:ethipian_odyssey/utilities/infolist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double widthWindow = MediaQuery.of(context).size.width;
    double heightWindow = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
           Column(
            children: <Widget>[
              SizedBox(height: 35.0,),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 30.0),
                    child: Text('What would you\nlike to find?' , style: KFrontText,),
                  ),
                ],
              ),
              SizedBox(height: 27.0,),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ButtonIcon(iconName: Icon(FontAwesomeIcons.plane ,size: 27.0, color: Color(0xFFb771c2),)),
                    ButtonIcon(iconName: Icon(FontAwesomeIcons.hotel ,size: 27.0, color: Color(0xFFf6bc4b),)),
                    ButtonIcon(iconName: Icon(FontAwesomeIcons.train ,size: 27.0, color: Color(0xFF19d3f4),)),
                    ButtonIcon(iconName: Icon(FontAwesomeIcons.car ,size: 27.0, color: Color(0xFF3da3ff),)),
                  ],
                ),
              ),
              SizedBox(height: 30.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 30.0),
                    child: Text('Top Destinations' , style: KFrontTextSmall,),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 25.0,bottom: 2.0),
                    child: GestureDetector(child: Text('See All' , style: KSeeAll),onTap: (){Navigator.pushNamed(context, FullList.id);},),
                  ),
               ],
              ),
              SizedBox(height: 17.0,),
              Row(
                children: <Widget>[
                  Container(
                      width: widthWindow,
                      height: 270.0,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          //shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (context, index){
                            return Column(
                              children: <Widget>[
                                infocontainerscroll[index],
                              ],
                            ); 
                          },
                      ),
                    ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 30.0),
                    child: Text('Popular Places' , style: KFrontTextSmall,),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 25.0,bottom: 2.0),
                    child: Text('See All' , style: KSeeAll),
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: widthWindow,
                    height: 221.0,
                      child: ListView.builder(
                       // scrollDirection: Axis.horizontal,
                        //shrinkWrap: true,
                        itemCount: stackimagescrolls.length,
                        itemBuilder: (context, index){
                          return Column(
                            children: <Widget>[
                              stackimagescrolls[index],
                            ],
                          ); 
                        },
                    ),
                  ),

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

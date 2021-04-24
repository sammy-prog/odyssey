import 'package:ethipian_odyssey/screens/detail_info.dart';
import 'package:ethipian_odyssey/screens/full_list.dart';
import 'package:ethipian_odyssey/screens/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id : (context) => HomeScreen(),
        DetailInfo.id : (context) => DetailInfo(),
        FullList.id : (context) => FullList(),
      },
    );
  }
}

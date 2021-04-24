import 'package:flutter/cupertino.dart';

class FullList extends StatefulWidget {
  static const String id = 'full_list_screen';
  @override
  _FullListState createState() => _FullListState();
}

class _FullListState extends State<FullList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        child: Text('List'),
        onTap: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}
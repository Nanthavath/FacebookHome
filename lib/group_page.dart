import 'package:flutter/material.dart';

class GroupPage extends StatefulWidget {
  @override
  _GroupPageState createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  Widget showSearch() {
    return Container(
      
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Center(
        child: IconButton(
          icon: Icon(
            Icons.search,
            size: 35,
          ),
          onPressed: null,
          color: Colors.grey,
        ),
      ),
    );
  }

  Widget ShowName() {
    return Container(
      child: Text(
        'Groups',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget showNamePage() {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ShowName(),
          showSearch(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          showNamePage(),
        ],
      ),
    );
  }
}

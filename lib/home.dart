import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget showPhoto() {
    return Container(
      child: Image.asset('images/playgirl.jpg'),
    );
  }

  Widget showCaption() {
    return Center(
      child: Container(
        margin: EdgeInsets.only(left: 15),
        alignment: Alignment(-1, 0),
        child: Text('Hello world'),
      ),
    );
  }

  Widget profileName() {
    return Container(
        margin: EdgeInsets.only(
          left: 10,
          top: 8,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Numfon Souliya',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            Text(
              '10 mins ',
              style: TextStyle(
                color: Colors.grey,
              ),
            )
          ],
        ));
  }

  Widget profilePostPicture() {
    return Container(
      margin: EdgeInsets.only(left: 15),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('images/playgirl.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

//PostProfile
  Widget postProfile() {
    return Container(
      height: 60,
      child: Row(
        children: <Widget>[
          profilePostPicture(),
          profileName(),
        ],
      ),
    );
  }

  //PostDetail
  Widget postDetail() {
    return Container(
      child: Column(
        children: <Widget>[
          postProfile(),
          showCaption(),
          SizedBox(
            height: 10,
          ),
          showPhoto(),
        ],
      ),
    );
  }

  Widget storyfirst() {
    return Container(
      margin: EdgeInsets.all(10),
      height: 180,
      width: 100,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        image: DecorationImage(
          image: AssetImage('images/playgirl.jpg'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
    );
  }

  Widget storysecond() {
    return Container(
      margin: EdgeInsets.all(10),
      height: 180,
      width: 100,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        image: DecorationImage(
          image: AssetImage('images/leejieun.webp'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
    );
  }

  Widget storytird() {
    return Container(
      margin: EdgeInsets.all(10),
      height: 180,
      width: 100,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        image: DecorationImage(
          image: AssetImage('images/lana.jpg'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
    );
  }

  Widget storyfourth() {
    return Container(
      margin: EdgeInsets.all(10),
      height: 180,
      width: 100,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        image: DecorationImage(
          image: AssetImage('images/mctt.jfif'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
    );
  }

  Widget storyfifth() {
    return Container(
      margin: EdgeInsets.all(10),
      height: 180,
      width: 100,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        image: DecorationImage(
          image: AssetImage('images/unvvar.jfif'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
    );
  }

  //ShowStory
  Widget showStory() {
    return Container(
      height: 200,
      color: Colors.white,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          storyfirst(),
          storysecond(),
          storytird(),
          storyfourth(),
          storyfifth(),
        ],
      ),
    );
  }

  Widget showCheckin() {
    return Container(
      child: FlatButton.icon(
        onPressed: null,
        icon: Icon(
          Icons.place,
          color: Colors.red,
          size: 20,
        ),
        label: Text('Check In'),
      ),
    );
  }

  Widget showAddPhoto() {
    return Container(
      child: FlatButton.icon(
        onPressed: null,
        icon: Icon(
          Icons.filter,
          color: Colors.green,
          size: 20,
        ),
        label: Text('Photo'),
      ),
    );
  }

  Widget showButtonLive() {
    return Container(
      child: FlatButton.icon(
        onPressed: null,
        icon: Icon(
          Icons.video_call,
          color: Colors.red,
          size: 20,
        ),
        label: Text('Live'),
      ),
    );
  }

  Widget showButtonList() {
    return Container(
      height: 38,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          showButtonLive(),
          showAddPhoto(),
          showCheckin(),
        ],
      ),
    );
  }

  Widget showHeadButton() {
    return SizedBox(
      width: 270,
      child: OutlineGradientButton(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: Text('What is on your mind ?'),
        strokeWidth: 1,
        gradient: LinearGradient(colors: [Colors.grey, Colors.grey]),
        radius: Radius.circular(18),
      ),
    );
  }

  Widget showProfile() {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('images/playgirl.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget showHeadProfile() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 0.25,
          ),
        ),
      ),
      height: 65,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 10,
          ),
          showProfile(),
          SizedBox(
            width: 10,
            height: 10,
          ),
          showHeadButton(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            showHeadProfile(),
            showButtonList(),
            SizedBox(
              height: 10,
            ),
            showStory(),
            postDetail(),
          ],
        ),
      ),
    );
  }
}

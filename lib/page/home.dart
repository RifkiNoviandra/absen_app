import 'package:absen_app/page/absen.dart';
import 'package:absen_app/page/ijin.dart';
import 'package:absen_app/page/profile.dart';
import 'package:absen_app/page/riwayat.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _children = [
      HomePage(),
      RiwayatPage(),
      ProfilePage(),
    ];
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.teal.shade600,
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home_outlined, size: 33),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.folder_open_outlined, size: 33),
            title: new Text('Riwayat'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.account_circle_outlined, size: 33),
            title: new Text('Profile'),
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.teal.shade600,
      body: Center(
        child: Column(
          children: <Widget>[
            Absen(
              imgSrc: "assets/icons/home.png",
            ),
            Expanded(
              child: BodyAbsen(),
            ),
          ],
        ),
      ),
    );
  }
}

class BodyAbsen extends StatelessWidget {
  const BodyAbsen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 10.0),
            child: Text(
              "Hai, Database",
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            "Absen atau izin hari ini?",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            child: SizedBox(
              width: 370.0,
              height: 50.0,
              child: RaisedButton(
                child: Text(
                  "Absen",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
                color: Colors.teal.shade600,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AbsenPage(),
                  ));
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            child: SizedBox(
              width: 370.0,
              height: 50.0,
              child: RaisedButton(
                child: Text(
                  "Izin",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
                color: Colors.white,
                textColor: Colors.black,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => IzinPage(),
                  ));
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  side: BorderSide(color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Absen extends StatelessWidget {
  final String imgSrc;
  const Absen({
    Key key,
    this.imgSrc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Image.asset(
      imgSrc,
      height: size.height * 0.39,
      width: size.width * 0.80,
      fit: BoxFit.fill,
    );
  }
}

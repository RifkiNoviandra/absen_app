import 'package:absen_app/page/home.dart';
import 'package:absen_app/page/profile.dart';
import 'package:absen_app/page/riwayat.dart';
import 'package:flutter/material.dart';

class AbsenPage extends StatefulWidget {
  @override
  _AbsenPageState createState() => _AbsenPageState();
}

class _AbsenPageState extends State<AbsenPage> {
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
      extendBodyBehindAppBar: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: Padding(
          padding: EdgeInsets.fromLTRB(15.0, 15.0, 20.0, 0.0),
          child: AppBar(
            centerTitle: true,
            automaticallyImplyLeading: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () => Navigator.pop(context, false),
              color: Colors.white,
            ),
            title: Text(
              "Absen",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            elevation: 0,
            backgroundColor: Colors.teal.shade600,
          ),
        ),
      ),
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
            Expanded(
              child: BodyFormAbsen(),
            ),
          ],
        ),
      ),
    );
  }
}

class BodyFormAbsen extends StatelessWidget {
  const BodyFormAbsen({
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
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 40.0,
              child: Image.asset('assets/images/userpic.png'),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 0.0),
              child: Text(
                "Bernadeth Alvira",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 30.0),
              child: Text(
                "bernadeth01@gmail.com",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
              child: Text(
                "08.45 WIB",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
              child: Text(
                "13-04-2021",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 10.0),
              child: SizedBox(
                width: 370.0,
                height: 50.0,
                child: RaisedButton(
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                  color: Colors.teal.shade600,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ));
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ),
          ],
        ),
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

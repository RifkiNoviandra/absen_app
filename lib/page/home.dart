import 'package:absen_app/page/absen.dart';
import 'package:absen_app/page/ijin.dart';
import 'package:absen_app/page/profilelist.dart';
import 'package:absen_app/page/riwayat.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List<Widget> _list = <Widget>[
    BodyAbsen(),
    RiwayatPage(),
    ProfileList(),
  ];

  void _onTap(int index) {
    print(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: _list.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.teal.shade600,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, size: 33),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder_open_outlined, size: 33),
            title: Text('Riwayat'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined, size: 33),
            title: Text('Profile'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onTap,
        elevation: 0,
        backgroundColor: Colors.white,
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
    return SingleChildScrollView(
      child: Container(
        color: Colors.teal.shade600,
        child: Column(
          children: [
            Absen(
              imgSrc: "assets/icons/home.png",
            ),
            Container(
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
                      "Hai, Bernadeth Alvira",
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
                          // onTap
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

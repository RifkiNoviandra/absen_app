import 'package:flutter/material.dart';

class RiwayatPage extends StatefulWidget {
  @override
  _RiwayatPageState createState() => _RiwayatPageState();
}

class _RiwayatPageState extends State<RiwayatPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context, false),
          color: Colors.white,
        ),
        elevation: 0,
        backgroundColor: Colors.teal.shade600,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width / 2.5,
                  color: Colors.teal.shade600,
                ),
                Container(
                  color: Colors.teal.shade600,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 30.0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: 300.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsets.fromLTRB(30.0, 10.0, 0.0, 10.0),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.transparent,
                                      radius: 40.0,
                                      backgroundImage: AssetImage(
                                          'assets/images/userpic.png'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          20.0, 20.0, 0.0, 0.0),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0.0, 0.0, 44.0, 0.0),
                                            child: Text(
                                              "Bernadeth Alvira",
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0.0, 0.0, 20.0, 0.0),
                                            child: Text(
                                              "Riwayat absen anda.",
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: BodyRiwayat(),
            ),
          ],
        ),
      ),
    );
  }
}

class BodyRiwayat extends StatelessWidget {
  const BodyRiwayat({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.fromLTRB(10.0, 30.0, 00.0, 0.0),
      children: <Widget>[
        Container(
          child: Center(
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 30.0,
              backgroundImage: AssetImage('assets/images/userpic.png'),
            ),
          ),
        ),
      ],
    );
  }
}

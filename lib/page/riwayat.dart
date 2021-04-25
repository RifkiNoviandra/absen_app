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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.0),
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
            elevation: 0,
            backgroundColor: Colors.teal.shade600,
          ),
        ),
      ),
      backgroundColor: Colors.teal.shade600,
      body: Center(
        child: Column(
          children: <Widget>[
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
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[],
        ),
      ),
    );
  }
}

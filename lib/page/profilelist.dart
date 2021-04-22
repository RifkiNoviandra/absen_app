import 'package:absen_app/page/profile.dart';
import 'package:flutter/material.dart';

class ProfileList extends StatefulWidget {
  @override
  _ProfileListState createState() => _ProfileListState();
}

class _ProfileListState extends State<ProfileList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context, false),
          color: Colors.teal.shade600,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(30.0, 30.0, 0.0, 50.0),
                    child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 45.0,
                        child: Image.asset('assets/images/userpic.png')),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 40.0, 30.0),
                    child: Text(
                      "Bernadeth Alvira",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 8.0),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(Icons.phone_outlined),
                          ),
                          TextSpan(
                            text: "   0896-8358-6173",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 8.0),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(Icons.mail_outline),
                          ),
                          TextSpan(
                            text: "   bernadeth01@gmail.com",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 8.0),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(Icons.home_outlined),
                          ),
                          TextSpan(
                            text: "   Jl.Kauman,Malang",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 130.0),
              child: SizedBox(
                width: 370.0,
                height: 50.0,
                child: RaisedButton(
                  child: Text(
                    "Edit",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                  color: Colors.teal.shade600,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProfilePage(),
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

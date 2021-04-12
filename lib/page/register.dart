import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 80.0,
            ),
            CircleAvatar(
              backgroundColor: Colors.teal.shade600,
              radius: 50.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              child: Divider(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: 'Name',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.teal.shade600,
                    ),
                  ),
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  labelText: 'Email',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.teal.shade600,
                    ),
                  ),
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.home),
                  labelText: 'Asal Sekolah',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.teal.shade600,
                    ),
                  ),
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.vpn_key),
                  labelText: 'Password',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.teal.shade600,
                    ),
                  ),
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.admin_panel_settings_rounded),
                  labelText: 'Confirm Password',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.teal.shade600,
                    ),
                  ),
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: MaterialButton(
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.teal.shade600,
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}

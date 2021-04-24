import 'package:absen_app/page/login.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context, false),
          color: Colors.teal.shade600,
        ),
        title: Text(
          'Register',
          style: TextStyle(
              color: Colors.teal.shade600,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 65.0,
                child: Image.asset('assets/icons/user.png'),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: 'Name',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(12.0),
                      ),
                      borderSide: BorderSide(
                        color: Colors.teal.shade600,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(12.0),
                      ),
                    ),
                  ),
                  onChanged: (value) {},
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    labelText: 'Email',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(12.0),
                      ),
                      borderSide: BorderSide(
                        color: Colors.teal.shade600,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(12.0),
                      ),
                    ),
                  ),
                  onChanged: (value) {},
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.teal.shade600, width: 1),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    hint: Text('Asal Sekolah'),
                    dropdownColor: Colors.white,
                    isExpanded: true,
                    underline: SizedBox(),
                    icon: Icon(Icons.arrow_downward),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: <String>['One', 'Two', 'Three', 'Four']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.vpn_key),
                    labelText: 'Password',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(12.0),
                      ),
                      borderSide: BorderSide(
                        color: Colors.teal.shade600,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(12.0),
                      ),
                    ),
                  ),
                  onChanged: (value) {},
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.admin_panel_settings_rounded),
                    labelText: 'Confirm Password',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(12.0),
                      ),
                      borderSide: BorderSide(
                        color: Colors.teal.shade600,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(12.0),
                      ),
                    ),
                  ),
                  onChanged: (value) {},
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                child: SizedBox(
                  width: 370.0,
                  height: 50.0,
                  child: MaterialButton(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                    color: Colors.teal.shade600,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ));
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

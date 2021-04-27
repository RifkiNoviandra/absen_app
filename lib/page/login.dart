import 'package:absen_app/API_code/loginAPI.dart';
import 'package:absen_app/page/home.dart';
import 'package:absen_app/page/register.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

Future<UserLogin> userLogin(String email, String password) async {
  final String apiUrl = "http://localhost:8080/user/login";
  var response = await http
      .post(Uri.parse(apiUrl), body: {"email": email, "password": password});

  if (response.statusCode == 200) {
    final String responseString = response.body;

    return userLoginFromJson(responseString);
  } else {
    return null;
  }
}

class _LoginPageState extends State<LoginPage> {
  UserLogin _user;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 10.0),
                child: Image.asset('assets/icons/school.png'),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                child: Text(
                  "Absence-App",
                  style: TextStyle(
                      color: Colors.teal.shade600,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      fontFamily: 'Poppins'),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                child: TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    hintText: 'Email',
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
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 30.0),
                child: TextField(
                  controller: passwordController,
                  obscureText: !this._showPassword,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.vpn_key),
                    hintText: 'Password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        this._showPassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(
                            () => this._showPassword = !this._showPassword);
                      },
                    ),
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
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                child: SizedBox(
                  width: 370.0,
                  height: 50.0,
                  child: RaisedButton(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                    color: Colors.white,
                    textColor: Colors.black,
                    onPressed: () async {
                      final String email = emailController.text;
                      final String password = passwordController.text;

                      final UserLogin user = await userLogin(email, password);

                      setState(() {
                        _user = user;
                      });

                      if ("fetch message from API" ==
                          "Your Email Isn't Registered") {}
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ));
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      side: BorderSide(color: Colors.black),
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
                      "Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                    color: Colors.teal.shade600,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Register(),
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
      ),
    );
  }
}

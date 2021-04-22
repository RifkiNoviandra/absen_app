import 'package:absen_app/page/home.dart';
import 'package:flutter/material.dart';

class IzinPage extends StatefulWidget {
  @override
  _IzinPageState createState() => _IzinPageState();
}

class _IzinPageState extends State<IzinPage> {
  @override
  Widget build(BuildContext context) {
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
              'Kenapa izin hari ini?',
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
      backgroundColor: Colors.teal.shade600,
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: BodyIzin(),
            ),
          ],
        ),
      ),
    );
  }
}

class BodyIzin extends StatelessWidget {
  const BodyIzin({
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
              padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
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
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 250.0, 0.0),
              child: Text(
                "Alasan",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 10.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Alasan',
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
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 225.0, 0.0),
              child: Text(
                "Upload File",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 10.0),
              child: TextField(
                showCursor: true,
                readOnly: true,
                decoration: InputDecoration(
                  labelText: 'unggah file disini',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.cloud_upload_sharp),
                    onPressed: () {
                      _bottomSheet(context);
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
              padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
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

_bottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 500,
          decoration: BoxDecoration(
              color: Colors.teal.shade600,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 23.0, 0.0, 10.0),
                      child: Text(
                        "",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
                      child: SizedBox(
                        width: 100.0,
                        height: 80.0,
                        child: RaisedButton(
                          color: Colors.white,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 10.0),
                            child: Column(
                              children: <Widget>[
                                Icon(Icons.file_copy_outlined, size: 50),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                      child: Text(
                        "File",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                      child: SizedBox(
                        width: 100.0,
                        height: 80.0,
                        child: RaisedButton(
                          color: Colors.white,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 10.0),
                            child: Column(
                              children: <Widget>[
                                Icon(Icons.photo_outlined, size: 50),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                      child: Text(
                        "Foto",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 23.0, 0.0, 10.0),
                      child: Text(
                        "Upload New",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
                      child: SizedBox(
                        width: 100.0,
                        height: 80.0,
                        child: RaisedButton(
                          color: Colors.white,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 10.0),
                            child: Column(
                              children: <Widget>[
                                Icon(Icons.camera_alt_outlined, size: 50),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                      child: Text(
                        "Camera",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                      child: SizedBox(
                        width: 100.0,
                        height: 80.0,
                        child: RaisedButton(
                          color: Colors.white,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 10.0),
                            child: Column(
                              children: <Widget>[
                                Icon(Icons.file_present, size: 50),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                      child: Text(
                        "Dokumen",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 23.0, 0.0, 10.0),
                      child: Text(
                        "",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
                      child: SizedBox(
                        width: 100.0,
                        height: 80.0,
                        child: RaisedButton(
                          color: Colors.white,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 10.0),
                            child: Column(
                              children: <Widget>[
                                Icon(Icons.video_call_outlined, size: 50),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                      child: Text(
                        "Video",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                      child: SizedBox(
                        width: 100.0,
                        height: 80.0,
                        child: RaisedButton(
                          color: Colors.white,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 10.0),
                            child: Column(
                              children: <Widget>[
                                Icon(Icons.drive_folder_upload, size: 50),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                      child: Text(
                        "Drive",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      });
}

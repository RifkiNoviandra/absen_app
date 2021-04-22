import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        overflow: Overflow.visible,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/userpic.png"),
          ),
          Positioned(
            right: 3,
            bottom: -5,
            child: SizedBox(
              height: 46,
              width: 46,
              child: FlatButton(
                color: Colors.transparent,
                onPressed: () {},
                child: Icon(
                  Icons.add_a_photo_outlined,
                  color: Colors.tealAccent.shade700,
                  size: 30,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MailPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.contact_mail,size: 100),
            Text("Mail Page"),
          ],
        ),
      ),
    );
  }

}
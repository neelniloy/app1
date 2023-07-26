import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.mark_unread_chat_alt,size: 100),
            Text("Chat Page"),
          ],
        ),
      ),
    );
  }

}
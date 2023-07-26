import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarPage extends StatelessWidget{

  customSnackbar(context,message){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab View"),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(icon: Icon(Icons.home),text: "Home"),
              Tab(icon: Icon(Icons.shopping_cart),text: "Cart"),
              Tab(icon: Icon(Icons.contact_mail),text: "Mail"),
              Tab(icon: Icon(Icons.mark_unread_chat_alt),text: "Chat"),
              Tab(icon: Icon(Icons.camera_alt),text: "Camera"),
              Tab(icon: Icon(Icons.photo),text: "Gallery"),
              Tab(icon: Icon(Icons.account_circle),text: "Profile"),
            ],
          ),
        ),
      ),
    );
  }
}
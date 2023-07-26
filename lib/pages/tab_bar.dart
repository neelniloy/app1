import 'package:app1/pages/tab/camera_page.dart';
import 'package:app1/pages/tab/cart_page.dart';
import 'package:app1/pages/tab/chat_page.dart';
import 'package:app1/pages/tab/gallery_page.dart';
import 'package:app1/pages/tab/home_page.dart';
import 'package:app1/pages/tab/mail_page.dart';
import 'package:app1/pages/tab/profile_page.dart';
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
        body: TabBarView(
          children: [
            HomePage(),
            CartPage(),
            MailPage(),
            ChatPage(),
            CameraPage(),
            GalleryPage(),
            ProfilePage()
          ],
        ),
      ),
    );
  }
}
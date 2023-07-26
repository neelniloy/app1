import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.photo,size: 100),
            Text("Gallery Page"),
          ],
        ),
      ),
    );
  }

}
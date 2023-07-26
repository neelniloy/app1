
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CameraPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Container(
     child:Column(
       mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Icon(Icons.camera_alt,size: 100,),
           Text("Camera Page"),
         ],
     ),
   );
  }
  
}
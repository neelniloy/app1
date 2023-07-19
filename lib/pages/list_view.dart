
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoList extends StatelessWidget{

  var MyList = [
    {"title": "First","img":"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh3_qyn3NE6qP9Ub5bwnOJ-g9t60GQk3A0FtZy6JMkAJFpMwzxfn5fNuHqzOLI75G4F-ev1Xo44pQN3FH9qymXgunGSCE_EhqKcUyHbrWv-rpVk9WFqxHCQVPaxChTX8a_EfPVKRC5QCorlBQ6wqw_Z4EEcHbeXmsfaNlO9JPCGpY5mL1Y1VfZ-urm0/s1600/Top%205%20Money%20Earning%20Resource.png"},
    {"title": "First","img":"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh3_qyn3NE6qP9Ub5bwnOJ-g9t60GQk3A0FtZy6JMkAJFpMwzxfn5fNuHqzOLI75G4F-ev1Xo44pQN3FH9qymXgunGSCE_EhqKcUyHbrWv-rpVk9WFqxHCQVPaxChTX8a_EfPVKRC5QCorlBQ6wqw_Z4EEcHbeXmsfaNlO9JPCGpY5mL1Y1VfZ-urm0/s1600/Top%205%20Money%20Earning%20Resource.png"},
    {"title": "First","img":"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh3_qyn3NE6qP9Ub5bwnOJ-g9t60GQk3A0FtZy6JMkAJFpMwzxfn5fNuHqzOLI75G4F-ev1Xo44pQN3FH9qymXgunGSCE_EhqKcUyHbrWv-rpVk9WFqxHCQVPaxChTX8a_EfPVKRC5QCorlBQ6wqw_Z4EEcHbeXmsfaNlO9JPCGpY5mL1Y1VfZ-urm0/s1600/Top%205%20Money%20Earning%20Resource.png"},
    {"title": "First","img":"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh3_qyn3NE6qP9Ub5bwnOJ-g9t60GQk3A0FtZy6JMkAJFpMwzxfn5fNuHqzOLI75G4F-ev1Xo44pQN3FH9qymXgunGSCE_EhqKcUyHbrWv-rpVk9WFqxHCQVPaxChTX8a_EfPVKRC5QCorlBQ6wqw_Z4EEcHbeXmsfaNlO9JPCGpY5mL1Y1VfZ-urm0/s1600/Top%205%20Money%20Earning%20Resource.png"},
    {"title": "First","img":"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh3_qyn3NE6qP9Ub5bwnOJ-g9t60GQk3A0FtZy6JMkAJFpMwzxfn5fNuHqzOLI75G4F-ev1Xo44pQN3FH9qymXgunGSCE_EhqKcUyHbrWv-rpVk9WFqxHCQVPaxChTX8a_EfPVKRC5QCorlBQ6wqw_Z4EEcHbeXmsfaNlO9JPCGpY5mL1Y1VfZ-urm0/s1600/Top%205%20Money%20Earning%20Resource.png"}
  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: ListView.builder(
        itemCount: MyList.length,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){},
            child: Container(
              margin: EdgeInsets.all(12),
              width: double.infinity,
              height: 200,
              child: Image.network(MyList[index]["img"]!),
            ),
          );
        }
      ),
    );

  }

}
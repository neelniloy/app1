
import 'package:app1/pages/tab_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoList extends StatelessWidget{

  customSnackbar(context,message){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }

  var MyList = [
    {"title": "First","img":"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh3_qyn3NE6qP9Ub5bwnOJ-g9t60GQk3A0FtZy6JMkAJFpMwzxfn5fNuHqzOLI75G4F-ev1Xo44pQN3FH9qymXgunGSCE_EhqKcUyHbrWv-rpVk9WFqxHCQVPaxChTX8a_EfPVKRC5QCorlBQ6wqw_Z4EEcHbeXmsfaNlO9JPCGpY5mL1Y1VfZ-urm0/s1600/Top%205%20Money%20Earning%20Resource.png"},
    {"title": "Second","img":"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh3_qyn3NE6qP9Ub5bwnOJ-g9t60GQk3A0FtZy6JMkAJFpMwzxfn5fNuHqzOLI75G4F-ev1Xo44pQN3FH9qymXgunGSCE_EhqKcUyHbrWv-rpVk9WFqxHCQVPaxChTX8a_EfPVKRC5QCorlBQ6wqw_Z4EEcHbeXmsfaNlO9JPCGpY5mL1Y1VfZ-urm0/s1600/Top%205%20Money%20Earning%20Resource.png"},
    {"title": "Third","img":"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh3_qyn3NE6qP9Ub5bwnOJ-g9t60GQk3A0FtZy6JMkAJFpMwzxfn5fNuHqzOLI75G4F-ev1Xo44pQN3FH9qymXgunGSCE_EhqKcUyHbrWv-rpVk9WFqxHCQVPaxChTX8a_EfPVKRC5QCorlBQ6wqw_Z4EEcHbeXmsfaNlO9JPCGpY5mL1Y1VfZ-urm0/s1600/Top%205%20Money%20Earning%20Resource.png"},
    {"title": "Forth","img":"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh3_qyn3NE6qP9Ub5bwnOJ-g9t60GQk3A0FtZy6JMkAJFpMwzxfn5fNuHqzOLI75G4F-ev1Xo44pQN3FH9qymXgunGSCE_EhqKcUyHbrWv-rpVk9WFqxHCQVPaxChTX8a_EfPVKRC5QCorlBQ6wqw_Z4EEcHbeXmsfaNlO9JPCGpY5mL1Y1VfZ-urm0/s1600/Top%205%20Money%20Earning%20Resource.png"},
    {"title": "Fifth","img":"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh3_qyn3NE6qP9Ub5bwnOJ-g9t60GQk3A0FtZy6JMkAJFpMwzxfn5fNuHqzOLI75G4F-ev1Xo44pQN3FH9qymXgunGSCE_EhqKcUyHbrWv-rpVk9WFqxHCQVPaxChTX8a_EfPVKRC5QCorlBQ6wqw_Z4EEcHbeXmsfaNlO9JPCGpY5mL1Y1VfZ-urm0/s1600/Top%205%20Money%20Earning%20Resource.png"}
  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("List/Grid View"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (){customSnackbar(context, MyList[index]["title"]);},
                  child: Container(
                    margin: EdgeInsets.all(12),
                    height: 200,
                    child: Image.network(MyList[index]["img"]!),
                  ),
                );
              },
              itemCount: MyList.length,
            ),
            GridView.builder(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: (3 / 2),
                ),
                itemCount: MyList.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: (){customSnackbar(context, MyList[index]["title"]);},
                    child: Container(
                      margin: EdgeInsets.all(12),
                      height: 200,
                      child: Image.network(MyList[index]["img"]!),
                    ),
                  );
                }),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                    TabBarPage()
                )
                );
              }, child: Text("Go to Tab Page")),
            ),
          ],
        ),
      ),
    );

  }

}
import 'package:flutter/material.dart';

main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.teal),
        darkTheme: ThemeData(primarySwatch: Colors.blueGrey),
        debugShowCheckedModeBanner: false,
        home: HomeActivity()
    );
  }
}

class HomeActivity extends StatelessWidget{
   HomeActivity({super.key});

  customSnackbar(context,message){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }
  
  customAlertDialog(context){
    return showDialog(
        context: context,
        builder: (BuildContext context){
          return Expanded(
              child: AlertDialog(
            title: Text("Alert!"),
                content: Text("Are you sure want to be a billionaire?"),
                actions: [
                  ElevatedButton(onPressed: (){
                    customSnackbar(context, "Congratulation! You are a billionaire now");
                    Navigator.of(context).pop();
                  }, child: Text("Yes")),
                  ElevatedButton(onPressed: (){
                    customSnackbar(context, "You poor people");
                    Navigator.of(context).pop();
                    }, child: Text("No"))
                ],
          )
          );
    }
    );
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  FocusNode nameFocus = FocusNode();
  FocusNode phoneFocus = FocusNode();

  bool isValidate(){
    if(nameController.text.isEmpty){
      nameFocus.requestFocus();
      return false;
    }
    if(phoneController.text.isEmpty){
      phoneFocus.requestFocus();
      return false;
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {

    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25))
      )
    );

    ButtonStyle submitBtnStyle = ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 40),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))
        )
    );


    return Scaffold(
      appBar: AppBar(
        title: Text("Nilofinity"),
        //titleSpacing: 0,
        //centerTitle: true,
        //toolbarHeight: 56,
        toolbarOpacity: 1,
        elevation: 0,
        backgroundColor: Colors.teal,
        actions: [
          IconButton(onPressed: (){customSnackbar(context, "Nothing on your cart");}, icon: Icon(Icons.shopping_cart)),
          IconButton(onPressed: (){customSnackbar(context, "Search performed");}, icon: Icon(Icons.search)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 5,
        child: Icon(Icons.chat_outlined),
        onPressed: () { customSnackbar(context, "Write your query"); },

      ),
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message),label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile")
        ],
        onTap: (int index){
          if(index == 0){
            customSnackbar(context, "This is Home");
          }
          if(index == 1){
            customSnackbar(context, "This is Message");
          }
          if(index == 2){
            customSnackbar(context, "This is Profile");
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountName: Text("Niloy Sarker"),
                  accountEmail: Text("niloy@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage("https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEicmDwWEVxxSLJ4mfvsN6SpMpvnCX-oa7Yw0mjX6iRYij2sAfEavyxiMpbnnxHy2hihlU5JyKdMg4loYKjjcGPO67NIqQ_RUL3t8EODP5W56ZRmMYGyDo-O7iFfhs-_oMMcFApSzh9Ib7JvnJXzEypzL5tO4UUpKvAq75TtzNi2lc_l/w70/PicsArt_01-23-01.27.36.jpg"),
                  ),
                )
            ),
            ListTile(
              leading:Icon(Icons.home),
              title: Text("Home"),
              onTap: (){
                customSnackbar(context, "Home Clicked");
                },
            ),
            ListTile(
              leading:Icon(Icons.perm_contact_cal),
              title: Text("Contact"),
              onTap: (){
                customSnackbar(context, "Contact Clicked");
                },
            ),
            ListTile(
              leading:Icon(Icons.support_agent),
              title: Text("Support"),
              onTap: (){
                customSnackbar(context, "Support Clicked");
                },
            ),
            ListTile(leading:Icon(Icons.settings),
              title: Text("Setting"),
              onTap: (){customSnackbar(context, "Setting Clicked");
              },
            ),
            ListTile(leading:Icon(Icons.logout),
              title: Text("Logout"),onTap: (){
              customSnackbar(context, "Logout Clicked");
              },
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountName: Text("Niloy Sarker"),
                  accountEmail: Text("niloy@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage("https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEicmDwWEVxxSLJ4mfvsN6SpMpvnCX-oa7Yw0mjX6iRYij2sAfEavyxiMpbnnxHy2hihlU5JyKdMg4loYKjjcGPO67NIqQ_RUL3t8EODP5W56ZRmMYGyDo-O7iFfhs-_oMMcFApSzh9Ib7JvnJXzEypzL5tO4UUpKvAq75TtzNi2lc_l/w70/PicsArt_01-23-01.27.36.jpg"),
                  ),
                )
            ),
            ListTile(
              leading:Icon(Icons.home),
              title: Text("Home"),
              onTap: (){
                customSnackbar(context, "Home Clicked");
              },
            ),
            ListTile(
              leading:Icon(Icons.perm_contact_cal),
              title: Text("Contact"),
              onTap: (){
                customSnackbar(context, "Contact Clicked");
              },
            ),
            ListTile(
              leading:Icon(Icons.support_agent),
              title: Text("Support"),
              onTap: (){
                customSnackbar(context, "Support Clicked");
              },
            ),
            ListTile(leading:Icon(Icons.settings),
              title: Text("Setting"),
              onTap: (){customSnackbar(context, "Setting Clicked");
              },
            ),
            ListTile(leading:const Icon(Icons.logout),
              title: const Text("Logout"),onTap: (){
                customSnackbar(context, "Logout Clicked");
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEicmDwWEVxxSLJ4mfvsN6SpMpvnCX-oa7Yw0mjX6iRYij2sAfEavyxiMpbnnxHy2hihlU5JyKdMg4loYKjjcGPO67NIqQ_RUL3t8EODP5W56ZRmMYGyDo-O7iFfhs-_oMMcFApSzh9Ib7JvnJXzEypzL5tO4UUpKvAq75TtzNi2lc_l/w70/PicsArt_01-23-01.27.36.jpg"),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEicmDwWEVxxSLJ4mfvsN6SpMpvnCX-oa7Yw0mjX6iRYij2sAfEavyxiMpbnnxHy2hihlU5JyKdMg4loYKjjcGPO67NIqQ_RUL3t8EODP5W56ZRmMYGyDo-O7iFfhs-_oMMcFApSzh9Ib7JvnJXzEypzL5tO4UUpKvAq75TtzNi2lc_l/w70/PicsArt_01-23-01.27.36.jpg"),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEicmDwWEVxxSLJ4mfvsN6SpMpvnCX-oa7Yw0mjX6iRYij2sAfEavyxiMpbnnxHy2hihlU5JyKdMg4loYKjjcGPO67NIqQ_RUL3t8EODP5W56ZRmMYGyDo-O7iFfhs-_oMMcFApSzh9Ib7JvnJXzEypzL5tO4UUpKvAq75TtzNi2lc_l/w70/PicsArt_01-23-01.27.36.jpg"),
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(onPressed: (){customSnackbar(context, "This is text button");}, child: Text("Text Button")),
                ElevatedButton(onPressed: (){customSnackbar(context, "This is elevated button");}, child: Text("Elevated Button"), style: buttonStyle,),
                OutlinedButton(onPressed: (){customSnackbar(context, "This is outline button");}, child: Text("Outline Button")),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){customAlertDialog(context);}, child: Text("Open Alert Dialog")),
              ],
            ),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.fromLTRB(16,10,16,0),
              child: TextField(
                controller: nameController,
                focusNode: nameFocus,
                decoration: InputDecoration(border: OutlineInputBorder(),
                    label: Text("Enter Name"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16,10,16,0),
              child: TextField(
                controller: phoneController,
                focusNode: phoneFocus,
                decoration: InputDecoration(border: OutlineInputBorder(),
                  label: Text("Enter Phone"),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16,16,16,0),
              child: ElevatedButton(
                  onPressed: (){
                    if(!isValidate()){
                      customSnackbar(context,"Field Value Missing");
                    }else{
                      customSnackbar(context,"You Name: ${nameController.text}\nPhone: ${phoneController.text}");
                      nameController.clear();
                      phoneController.clear();
                      nameFocus.unfocus();
                      phoneFocus.unfocus();
                    }
                    },
                  child: Text(
                      "Submit",
                          style: TextStyle(
                            fontSize: 16.0, // insert your font size here
                          ),
                  ),
                style: submitBtnStyle,
              ),
            ),
          ],
        ),
      )
    );
  }

}
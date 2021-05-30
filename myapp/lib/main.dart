import 'package:flutter/material.dart';
// import 'package:circular_profile_avatar/circular_profile_avatar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Log In Page"),
          ),
          leading: Icon(Icons.menu_open),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30,),
              Container(
                child:CircleAvatar(
                  backgroundImage:AssetImage('asset/images/login.jpg'),
                  radius: 100,
                  ),
              ),
              // CircularProfileAvatar('',
              //  child: Icon(Icons.person),
              // borderColor: Colors.purple,
              // borderWidth: 5,
              // elevation: 2,
              // radius: 50,),
              Center(    
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "User Name",
                    icon: Icon(Icons.account_box_rounded),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Center(
                child: TextField(
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      labelText: "Password",
                      icon: Icon(Icons.password),
                      border: OutlineInputBorder(),
                    )),
              ),
              SizedBox(height: 30,),
              Center(
                child: ElevatedButton(
                  onPressed: () {}, 
                  child: Text("Log In"),
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

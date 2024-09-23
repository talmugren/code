import 'package:banking/pages/login.dart';
import 'package:banking/pages/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => __page1State();
}

class __page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.fromLTRB(30, 500, 30, 0),
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage("https://i.pinimg.com/736x/63/45/da/6345dab70df432b20e82435a2a812cd8.jpg"
          ),
          fit: BoxFit.cover,
        
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 15,
            ),
            ElevatedButton(onPressed: () {
              Navigator.push(
                context,
                 MaterialPageRoute(
                  builder: (context)=>login()
                  ),
                 );
            }, 
            child: 
            Text("      Log in      ",
            style: 
            TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 98, 64, 161)
            ),
            ),
            ),
            SizedBox(
              width: 5,
            ),
            ElevatedButton(onPressed: () {
              Navigator.push(
                context,
                 MaterialPageRoute(
                  builder: (context)=>sign_Up()
                  ),
                 );
            }, 
            child: 
            Text("     Sign up     ",
            style: 
            TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 98, 64, 161)
            ),
            ),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      )
    );
  }
}
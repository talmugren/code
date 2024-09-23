import 'package:banking/models/users.dart';
import 'package:banking/pages/home_page.dart';
import 'package:banking/pages/login.dart';
import 'package:banking/services/database.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter/material.dart';


class sign_Up extends StatefulWidget {
  const sign_Up({super.key});

  @override
  State<sign_Up> createState() => _sign_UpState();
}

class _sign_UpState extends State<sign_Up> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

Future<void> signUp() async{
  Users u1= Users(username: usernameController.text,email: emailController.text,password: passwordController.text);
   await Database().insertUser(u1);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: ListView(
      children: [
        Column(
          children: [
           Image.network("https://i.pinimg.com/564x/5d/46/78/5d4678b5732f798569a27eacb40b1c00.jpg"
           ),
           
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("ــــــــــــــــــــــــــ",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey
                  ),
                  ),
                  Text("  Sign up  ",
                  style: TextStyle(
                    fontSize: 30,
                    color:  Color.fromARGB(255, 98, 64, 161)
                  ),
                  ),
                  Text("ــــــــــــــــــــــــــ",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey
                  ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: 
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  icon: Icon(Icons.person,color:Color.fromARGB(255, 98, 64, 161),),
                  labelText: "Full name",
                  labelStyle: TextStyle(color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color:Color.fromARGB(255, 121, 99, 162)),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 173, 173, 173)),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: 
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  icon: Icon(Icons.info_rounded,color: Color.fromARGB(255, 98, 64, 161),),
                  labelText: "ID",
                  labelStyle: TextStyle(color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 121, 99, 162)),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 173, 173, 173)),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
              ),
               Container(
                margin: EdgeInsets.all(10),
                child: 
              TextField(
                controller: emailController,
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  icon: Icon(Icons.date_range,color: Color.fromARGB(255, 98, 64, 161),),
                  labelText: "Date of birth",
                  labelStyle: TextStyle(color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 121, 99, 162)),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 173, 173, 173)),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: 
              TextField(
                controller: emailController,
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  icon: Icon(Icons.business_center_rounded,color: Color.fromARGB(255, 98, 64, 161),),
                  labelText: "Personal / Business account",
                  labelStyle: TextStyle(color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color:Color.fromARGB(255, 121, 99, 162)),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 173, 173, 173)),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
              ),
               Container(
                margin: EdgeInsets.all(10),
                child: 
              TextField(
                controller: passwordController,
                keyboardType: TextInputType.number,
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock, color:Color.fromARGB(255, 98, 64, 161),),
                  labelText: "password",
                  labelStyle: TextStyle(color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color:Color.fromARGB(255, 121, 99, 162)),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 173, 173, 173)),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("have an account?"),
                  TextButton(onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context, 
                      MaterialPageRoute(
                        builder: 
                        (context)=>login()),
                         (route) => false);
                  },
                   child: Text("Log in",
                  style:TextStyle(
                    fontWeight: FontWeight.bold,
                    color:  const Color.fromARGB(255, 98, 64, 161),
                  ),
                  ),
                  ),
                ],
              ),
             
               MaterialButton(
              onPressed: () async {
                Users u1 = Users(
                   username: usernameController.text,email: emailController.text,password: passwordController.text);
                await Database().insertUser(u1);
                Navigator.pushAndRemoveUntil(
                 context, 
                 MaterialPageRoute(
                 builder: 
                 (context)=>home_page()),
                 (route) => false);
                },
             
              color: Color.fromARGB(255, 185, 155, 240),
              child: const Text("sign up"),
            ),
            SizedBox(
              height: 20,
            )
          ],
        )
      ],
     ),
    );
  }
}

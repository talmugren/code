import 'package:banking/pages/home_page.dart';
import 'package:banking/pages/sign_up.dart';
import 'package:banking/services/database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
   TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Image.network("https://i.pinimg.com/564x/2d/1d/0e/2d1d0e397db78a164b8f93d7e8681113.jpg"),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("ــــــــــــــــــــــــــ",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey
                  ),
                  ),
                  Text("  Log in  ",
                  style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 98, 64, 161)
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
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: 
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.credit_card,color: Color.fromARGB(255, 98, 64, 161),),
                  labelText: "credit number",
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
              SizedBox(
                height: 20,
              ),
               Container(
                margin: EdgeInsets.all(10),
                child: 
              TextField(
                keyboardType: TextInputType.number,
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock, color: Color.fromARGB(255, 98, 64, 161),),
                  labelText: "password",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("don't have an account?"),
                  TextButton(onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context, 
                      MaterialPageRoute(
                        builder: 
                        (context)=>sign_Up()),
                         (route) => false);
                  },
                   child: Text("Sign up",
                  style:TextStyle(
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 98, 64, 161)
                  ),
                  ),
                  ),
                ],
              ),
               MaterialButton(
              onPressed: () async {
                var result = await Database().getSpecificUser(
                    username: usernameController.text,password: passwordController.text);
                if (result.isNotEmpty) {
                   Navigator.pushAndRemoveUntil(
                 context, 
                 MaterialPageRoute(
                 builder: 
                 (context)=>home_page()),
                 (route) => false);
                }
              },
              color:Color.fromARGB(255, 185, 155, 240),
              child: const Text("log in"),
            )
            ],
          ),
        ],
      ),
    );
  }
}
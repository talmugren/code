import 'dart:convert';
class Users{
  String ?username;
  String ?email;
  String ?password;
  Users({this.username,this.email,this.password});
  Users.fromJson(Map json){
    username=json["username"];
    email=json["email"];
    password=json["password"];
  }
Map<String,dynamic> toJson(){
  return{
    "username": username,
    "email": email,
    "password": password,
  };
}
}# code
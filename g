import 'dart:convert';
import 'package:banking/models/users.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Database{
  final supabase= Supabase.instance.client;

  Future<List<Users>> getAllUsers() async{
    final data= await supabase.from("users").select();
    List<Users> allUser =[];
    for(var e in data){
      allUser.add((Users.fromJson(e)));
    }
    return allUser;
  }

  Future<List> getSpecificUser({required String username,required String password})async{
    final data= await supabase.from("users").select().match(
      {"username": username,
      "password": password
      });
      return data;
  }
   
   insertUser(Users user) async{
    await supabase.from("users").insert(user.toJson());
   }
}
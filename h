import 'package:banking/pages/page1.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://kozbklfxzbhyszmhskdd.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImtvemJrbGZ4emJoeXN6bWhza2RkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTQ2NTEwNDIsImV4cCI6MjAzMDIyNzA0Mn0.rTeSVpdYuEOLjv6_y2idJ1-QwTpumZvzqMLzpyvav2Q'
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: page1(),
        );
  }
}

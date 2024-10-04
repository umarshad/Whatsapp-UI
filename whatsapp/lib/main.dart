import 'package:flutter/material.dart';
import 'package:whatsapp/ui/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(primarySwatch: Colors.teal,),
      home: const HomeScreen()
    );
  }
}

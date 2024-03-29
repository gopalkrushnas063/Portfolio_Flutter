import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/Pages/MainPage/main_page.dart';
import 'package:portfolio/Pages/NavBar/navbar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          fontFamily: 'Montserrat'),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.pink,
              Colors.deepPurpleAccent,
            ],
          ),
        ),
        child: const SingleChildScrollView(
          child: Column(
            children: [ 
              Navbar(),
              MainPage(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'appBar.dart';
import 'drawer.dart';
import 'body.dart';
import 'app_navbar.dart';
import 'route.dart'; // اضافه شده برای تعریف مسیرها

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom App Bar Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      onGenerateRoute: generateRoute, // این خط مسیردهی رو فعال می‌کنه
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 219, 255, 255),
      appBar: const CustomAppBar(),
      drawer: drawerApp(),
      body: const BodyApp(),
      bottomNavigationBar: const AppNavbar(),
    );
  }
}

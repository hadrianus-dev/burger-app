import 'package:burgerapp/components/header.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Humburger App',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.teal, 
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          actionsIconTheme: IconThemeData(color: Colors.white)
        ),
      ),
      home: const Hamburger(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Hamburger extends StatefulWidget {
  const Hamburger({super.key});

  @override
  State<Hamburger> createState() => _HamburgerState();
}

class _HamburgerState extends State<Hamburger> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text('Hamburger'),
            leading: IconButton(onPressed: null, icon: Icon(Icons.menu),),
            actions: <Widget>[
              IconButton(onPressed: null, icon: Icon(Icons.shopping_cart),)
            ],
          ),
          Header(),
        ],
      ),
    );
  }
}

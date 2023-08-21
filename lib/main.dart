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
              actionsIconTheme: IconThemeData(color: Colors.white)),
          bottomAppBarTheme: const BottomAppBarTheme(color: Colors.teal),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: Colors.teal)),
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
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            title: Text('Hamburger'),
            leading: IconButton(
              onPressed: null,
              icon: Icon(Icons.menu),
              color: Colors.white,
            ),
            actions: <Widget>[
              IconButton(
                onPressed: null,
                icon: Icon(Icons.shopping_cart),
                color: Colors.white,
              )
            ],
          ),
          const Header(),
          SliverList(
            delegate: SliverChildListDelegate([
              const Text(
                'Hamburger',
                style: TextStyle(
                  fontSize: 300,
                ),
              )
            ]),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.home),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(45)),
        child: Container(
          color: Colors.black38,
          child: const BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Row(
              children: [
                Spacer(),
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.add_alert),
                  color: Colors.white,
                ),
                Spacer(),
                Spacer(),
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.turned_in),
                  color: Colors.white,
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

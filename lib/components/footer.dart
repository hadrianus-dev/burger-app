import 'package:flutter/material.dart';

class CustomFooter extends StatefulWidget {
  const CustomFooter({super.key});

  @override
  State<CustomFooter> createState() => _CustomFooterState();
}

class _CustomFooterState extends State<CustomFooter> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
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
    );
  }
}

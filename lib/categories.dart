import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int currentSelectedItem = 0;
  @override
  Widget build(BuildContext context) {
    int items = 10;
    return SliverToBoxAdapter(
      child: Container(
        height: 100,
        margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items,
            itemBuilder: (context, index) => Stack(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 90,
                          width: 90,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                currentSelectedItem = index;
                              });
                            },
                            child: Card(
                              elevation: 3,
                              color: index == currentSelectedItem
                                  ? Colors.black.withOpacity(0.7)
                                  : Colors.white,
                              margin: const EdgeInsets.all(10),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              child: Icon(
                                Icons.fastfood,
                                color: index == currentSelectedItem
                                    ? Colors.white
                                    : const Color.fromARGB(146, 0, 0, 0),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        margin: EdgeInsets.only(
                            left: index == 0 ? 20 : 0, right: 20),
                        width: 90,
                        child: const Row(
                          children: [Spacer(), Text('Burger'), Spacer()],
                        ),
                      ),
                    ),
                  ],
                )),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HumburgerList extends StatefulWidget {
  const HumburgerList({super.key});

  @override
  State<HumburgerList> createState() => _HumburgerListState();
}

class _HumburgerListState extends State<HumburgerList> {
  @override
  Widget build(BuildContext context) {
    int items = 10;

    Widget burgerImage = Container(
      height: 160,
      child: Image.asset('assets/images/image2.png'),
    );

    Widget baconImage = Container(
      height: 160,
      child: Image.asset('assets/images/image4.png'),
    );

    return SliverToBoxAdapter(
        child: Container(
      height: 240,
      margin: const EdgeInsets.only(top: 10),
      child: ListView.builder(
          itemCount: items,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            bool reverse = index.isEven;
            return Stack(
              children: [
                Container(
                  height: 240,
                  width: 200,
                  margin:
                      EdgeInsets.only(left: 20, right: index == items ? 20 : 0),
                  child: GestureDetector(
                    onTap: null,
                    child: Card(
                      color: Theme.of(context).primaryColor,
                      elevation: 3,
                      margin: const EdgeInsets.all(10),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(45),
                              bottomRight: Radius.circular(15),
                              topLeft: Radius.circular(45),
                              topRight: Radius.circular(45))),
                      child: Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            const Text(
                              'Burger',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                const Spacer(),
                                const Text(
                                  '15,95 \Kz AOA',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Spacer(),
                                Container(
                                  width: 50,
                                  height: 50,
                                  child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Icon(Icons.add)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: reverse ? 50 : 50,
                    child: GestureDetector(
                      onTap: null,
                      child: reverse ? burgerImage : baconImage,
                    ))
              ],
            );
          }),
    ));
  }
}

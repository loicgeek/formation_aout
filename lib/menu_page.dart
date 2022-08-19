import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(.2),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Card(
                elevation: 8,
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/image1.png"),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Olice SONA"),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 6),
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.blueGrey.withOpacity(.1),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.refresh,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 6),
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.blueGrey.withOpacity(.1),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.download,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

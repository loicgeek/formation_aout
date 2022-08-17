import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formation Aout',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 25,
            ),
          ),
          centerTitle: false,
          elevation: 0,
          actions: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 6),
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.add,
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
                Icons.search,
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
                Icons.message,
                color: Colors.black,
              ),
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.black,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.group_outlined,
                  color: Colors.black,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.store_outlined,
                  color: Colors.black,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.card_giftcard,
                  color: Colors.black,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.notifications_outlined,
                  color: Colors.black,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.menu_outlined,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            UserFeeds(),
            UserFeeds(),
            UserFeeds(),
            UserFeeds(),
            UserFeeds(),
            UserFeeds(),
          ],
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   items: const [
        //     BottomNavigationBarItem(
        //       label: "Home",
        //       icon: Icon(Icons.home),
        //     ),
        //     BottomNavigationBarItem(
        //       label: "Settings",
        //       icon: Icon(Icons.settings),
        //     ),
        //   ],
        // ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   child: const Icon(Icons.add),
        // ),
      ),
    );
  }
}

class UserFeeds extends StatefulWidget {
  const UserFeeds({
    Key? key,
  }) : super(key: key);

  @override
  State<UserFeeds> createState() => _UserFeedsState();
}

class _UserFeedsState extends State<UserFeeds> {
  late TextEditingController _postController;
  @override
  void initState() {
    _postController = TextEditingController();
    super.initState();
  }

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
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 0.0, left: 4),
                      child: TextFormField(
                        autofocus: false,
                        controller: _postController,
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          hintText: "What's on your mind?",
                          hintStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.photo,
                      color: Colors.green,
                    ),
                  )
                ],
              ),
            ),
            Divider(thickness: .1),
            Container(
              height: MediaQuery.of(context).size.height * .32,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    TabBar(
                      labelColor: Colors.black,
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      tabs: [
                        Tab(
                          text: "Stories",
                        ),
                        Tab(
                          text: "Reels",
                        ),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: TabBarView(
                          children: [
                            ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                for (int i = 0; i < 5; i++)
                                  Container(
                                    margin: EdgeInsets.only(right: 5),
                                    decoration: BoxDecoration(
                                        color: Colors.primaries[i],
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    width: (MediaQuery.of(context).size.width /
                                            3.3 -
                                        5 -
                                        10),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              CircleAvatar(
                                                backgroundColor: Colors
                                                    .primaries.reversed
                                                    .elementAt(i),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "Lucas Filario",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                            ListView(
                              scrollDirection: Axis.horizontal,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Divider(),
            FacebookCard(),
            Divider(),
            FacebookCard(),
            Divider(),
            FacebookCard(),
          ],
        ),
      ),
    );
  }
}

class FacebookCard extends StatelessWidget {
  const FacebookCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/images/image1.png"),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(
                          color: Colors.white,
                          width: 3,
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Youthinside Kls"),
                        Row(
                          children: [
                            Text("2h"),
                            SizedBox(width: 5),
                            Icon(Icons.wordpress_outlined),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  children: const [
                    Icon(Icons.more_horiz),
                    Icon(Icons.close),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Tay-C exagere aussi avec les filles sur scene hein. Meme les filles la Yeuch",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [Icon(Icons.thumb_up), Icon(Icons.face), Text("2")],
                ),
                Text("2 comments"),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(Icons.thumb_up),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Like"),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.comment_outlined),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Like"),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.share),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Share"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Item extends StatelessWidget {
  const Item({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.bottomCenter,
          colors: [
            Colors.blueAccent,
            Colors.yellow,
            Colors.green,
            Colors.red,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.5),
            spreadRadius: 1,
            blurRadius: 20,
            offset: const Offset(0, 2),
          ),
        ],
        border: Border.all(
          color: Colors.blueAccent,
          width: 2,
        ),
        // color: Colors.red,
        //  borderRadius: BorderRadius.circular(20),
        // shape: BoxShape.circle,
        image: const DecorationImage(
          image: NetworkImage(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Kribi.jpg/300px-Kribi.jpg"),
          fit: BoxFit.contain,
        ),
      ),
      child: const Center(
          child: Text(
        "Kribi",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      )),
    );
  }
}

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

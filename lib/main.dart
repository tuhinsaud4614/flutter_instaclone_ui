import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './add_your_content/add_your_content_home.dart';
import './favorite/favorite_home.dart';
import './instargam_home/instagram_home.dart';
import './search/search_home.dart';
import './user_account/user_account_home.dart';

void main() {
  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(InstagramClone());
}

class InstagramClone extends StatelessWidget {
  final allRoutes = {
    "/": "home",
    "/account": "userAccount",
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
      theme: ThemeData(primarySwatch: Colors.grey, primaryColor: Colors.white),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          InstagramHome(),
          Search(),
          AddYourContent(),
          Favorite(),
          UserAccount(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 16,
        child: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.home,
                size: 30.0,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.search,
                size: 30.0,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.add_box,
                size: 30.0,
              ),
            ),
            Tab(
              icon: Icon(
                _tabController.index == 3
                    ? Icons.favorite
                    : Icons.favorite_border,
                size: 30.0,
              ),
            ),
            Tab(
              icon: Icon(
                _tabController.index == 4 ? Icons.person : Icons.person_outline,
                size: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

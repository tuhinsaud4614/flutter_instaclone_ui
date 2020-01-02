import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../ui/story_higlights.dart';

class UserAccount extends StatefulWidget {
  @override
  _UserAccountState createState() => _UserAccountState();
}

class _UserAccountState extends State<UserAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // forceElevated: true,
        title: FlatButton(
          padding: EdgeInsets.all(0.0),
          onPressed: () => {},
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "taylorswift",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Icon(
                Icons.arrow_drop_down,
                size: 20.0,
              ),
            ],
          ),
        ),
        actions: <Widget>[
          IconButton(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            icon: Icon(
              Icons.history,
              size: 30.0,
            ),
            onPressed: () {
              print("history pressed");
            },
          ),
          IconButton(
            icon: Icon(
              Icons.menu,
              size: 30.0,
            ),
            onPressed: () {
              print("menu pressed");
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        // physics: NeverScrollableScrollPhysics(),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            //User details
            Container(
              padding: const EdgeInsets.all(12.0),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  //profile pic and counting
                  Row(
                    children: <Widget>[
                      //user image
                      Expanded(
                        flex: 2,
                        child: Stack(
                          children: [
                            InkWell(
                              onTap: () => {},
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              child: Container(
                                width: MediaQuery.of(context).size.width / 4.5,
                                height: MediaQuery.of(context).size.width / 4.5,
                                decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: new DecorationImage(
                                    fit: BoxFit.cover,
                                    image: ExactAssetImage("images/taylor.jpg"),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0.0,
                              right: 0.0,
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Icon(
                                  Icons.add_circle,
                                  color: Colors.blue,
                                  textDirection: TextDirection.ltr,
                                  size:
                                      MediaQuery.of(context).size.width / 17.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: SizedBox(),
                      ),
                      // user total story like post fllowers following etc
                      Expanded(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                //total Posts
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "18",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0),
                                    ),
                                    Text(
                                      "posts",
                                      style: TextStyle(
                                          color: Colors.grey[400],
                                          fontSize: 13.0),
                                    )
                                  ],
                                ),
                                //total followers
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "112",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0),
                                    ),
                                    Text(
                                      "followers",
                                      style: TextStyle(
                                          color: Colors.grey[400],
                                          fontSize: 13.0),
                                    )
                                  ],
                                ),
                                //total folowing
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "384",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0),
                                    ),
                                    Text(
                                      "following",
                                      style: TextStyle(
                                          color: Colors.grey[400],
                                          fontSize: 13.0),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            //edit profile Button
                            OutlineButton(
                              color: Colors.grey,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0.0, horizontal: 60.0),
                              borderSide:
                                  BorderSide(width: 0.5, color: Colors.grey),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Text("Edit Profile"),
                              onPressed: () => {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Taylor Swift",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "This is the bio of taylor swift",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            StoryHiglights(),
            OwnImages(),
          ],
        ),
      ),
    );
  }
}

class OwnImages extends StatefulWidget {
  const OwnImages({Key key}) : super(key: key);

  @override
  _OwnImagesState createState() => _OwnImagesState();
}

class _OwnImagesState extends State<OwnImages>
    with SingleTickerProviderStateMixin {
  TabController _userImageTabController;

  @override
  void initState() {
    super.initState();
    _userImageTabController =
        TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    _userImageTabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 700.0,
      child: Column(
        children: <Widget>[
          Divider(
            height: 0,
          ),
          Container(
            height: 60.0,
            child: TabBar(
              controller: _userImageTabController,
              indicatorColor: Colors.black,
              indicatorWeight: 4.0,
              tabs: <Widget>[
                Tab(
                  icon: Icon(
                    Icons.grid_on,
                    size: 30.0,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.assignment_ind,
                    size: 30.0,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 0,
          ),
          Container(
            height: 640.0,
            child: TabBarView(
              controller: _userImageTabController,
              children: <Widget>[
                GridView.count(
                  crossAxisSpacing: 3.0,
                  mainAxisSpacing: 3.0,
                  crossAxisCount: 3,
                  children: <Widget>[
                    Image.asset(
                      "images/taylor.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "images/taylor.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "images/taylor.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "images/taylor.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "images/taylor.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "images/taylor.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "images/taylor.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "images/taylor.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "images/taylor.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "images/taylor.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "images/taylor.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "images/taylor.jpg",
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                GridView.count(
                  crossAxisSpacing: 3.0,
                  mainAxisSpacing: 3.0,
                  crossAxisCount: 3,
                  children: <Widget>[
                    Image.asset(
                      "images/emma_watson.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "images/emma_watson.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "images/emma_watson.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "images/emma_watson.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "images/emma_watson.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "images/emma_watson.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "images/emma_watson.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "images/emma_watson.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "images/emma_watson.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "images/emma_watson.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "images/emma_watson.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "images/emma_watson.jpg",
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

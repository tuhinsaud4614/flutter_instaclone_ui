import 'package:flutter/material.dart';
import '../instargam_home/add_a_day.dart';
import '../instargam_home/news_feed_content.dart';

class InstagramHome extends StatefulWidget {
  @override
  _InstagramHomeState createState() => _InstagramHomeState();
}

class _InstagramHomeState extends State<InstagramHome> {
  bool _isCommentNeed = false;
  void openCommentBox() {
    setState(() {
      _isCommentNeed = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        leading: IconButton(
          icon: Icon(Icons.camera_alt),
          onPressed: () => {},
          padding: const EdgeInsets.all(0.0),
          iconSize: 30.0,
        ),
        title: InkWell(
          child: Image.asset(
            "images/insta_logo.png",
            height: 33.0,
            fit: BoxFit.cover,
          ),
          onTap: () => {},
        ),
        titleSpacing: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.personal_video),
            onPressed: () => {},
            padding: const EdgeInsets.all(0.0),
            iconSize: 30.0,
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () => {},
            padding: const EdgeInsets.all(0.0),
            iconSize: 30.0,
          ),
        ],
      ),
      // body: Stack(
      // fit: StackFit.loose,
      // children: <Widget>[
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          if (index == 0) {
            return AddADay();
          } else {
            return NewsFeedContent(openCommentBox: openCommentBox);
          }
        },
      ),
      //   Positioned(
      //     bottom: _isCommentNeed ? 0 : -100,
      //     right: 0,
      //     left: 0,
      //     child: Container(
      //       width: double.infinity,
      //       color: Colors.white,
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.start,
      //         children: <Widget>[
      //           Container(
      //             margin: const EdgeInsets.all(
      //               8.0
      //             ),
      //             width: 34.0,
      //             height: 34.0,
      //             decoration: new BoxDecoration(
      //               shape: BoxShape.circle,
      //               image: new DecorationImage(
      //                 fit: BoxFit.cover,
      //                 image: ExactAssetImage("images/emma_watson.jpg"),
      //               ),
      //             ),
      //           ),
      //           Expanded(
      //             child: TextField(
      //               style: TextStyle(
      //                 color: Colors.black,
      //               ),
      //               decoration: InputDecoration(
      //                 border: InputBorder.none,
      //                 hintText: "Add a comment",
      //                 contentPadding: const EdgeInsets.all(0.0),
      //                 hintStyle: TextStyle(
      //                   color: Colors.grey[500],
      //                 ),
      //               ),
      //               autofocus: true,
      //               // controller: _commentCtrl,
      //               keyboardType: TextInputType.text,
      //             ),
      //           ),
      //           FlatButton(
      //             onPressed: () {},
      //             // _commentCtrl.text.length >= 1 ? () => {} : null,
      //             child: Text(
      //               "Post",
      //               style: TextStyle(
      //                 color: Colors.blue,
      //                 fontWeight: FontWeight.bold,
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ],
      // ),
    );
  }
}

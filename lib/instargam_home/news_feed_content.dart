import 'package:flutter/material.dart';

class NewsFeedContent extends StatefulWidget {
  final Function openCommentBox;
  NewsFeedContent({this.openCommentBox});
  @override
  _NewsFeedContentState createState() => _NewsFeedContentState();
}

class _NewsFeedContentState extends State<NewsFeedContent> {
  @override
  Widget build(BuildContext context) {
    //footer content2
    Widget _footerContent2 = Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          //likes
          Text(
            "119,594 likes",
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          // caption with user name
          Text(
            "emma_watson hi",
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
            softWrap: true,
          ),
          // tags
          Text(
            "@taylor @justein",
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey,
            ),
            softWrap: true,
          ),
          // view all comments
          InkWell(
            child: Text(
              "View all 1000 comments",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey[500],
              ),
              softWrap: true,
            ),
            onTap: () {
              print("comment press");
            },
          ),
          // comment option
          // InkWell(
          //   onTap: widget.openCommentBox,
          //   highlightColor: Colors.transparent,
          //   splashColor: Colors.transparent,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     children: <Widget>[
          //       Container(
          //         margin:
          //             const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0),
          //         width: 34.0,
          //         height: 34.0,
          //         decoration: new BoxDecoration(
          //           shape: BoxShape.circle,
          //           image: new DecorationImage(
          //             fit: BoxFit.cover,
          //             image: ExactAssetImage("images/emma_watson.jpg"),
          //           ),
          //         ),
          //       ),
          //       Text(
          //         "Add a comment...",
          //         style: TextStyle(
          //           fontSize: 15.0,
          //           fontWeight: FontWeight.bold,
          //           color: Colors.grey[500],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // update time
          Text(
            "13 HOURS AGO",
            style: TextStyle(
              fontSize: 10.0,
              color: Colors.grey[500],
            ),
            softWrap: true,
          ),
        ],
      ),
    );
    //footer content1
    Widget _footerContent1 = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  size: 30.0,
                ),
                onPressed: () => {},
              ),
              IconButton(
                icon: Icon(
                  Icons.comment,
                  size: 30.0,
                ),
                onPressed: () => {},
              ),
              IconButton(
                icon: Icon(
                  Icons.send,
                  size: 30.0,
                ),
                onPressed: () => {},
              ),
            ],
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.bookmark_border,
            size: 30.0,
          ),
          onPressed: () => {},
        ),
      ],
    );

    // footer
    Widget _footer = Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _footerContent1,
          _footerContent2,
        ],
      ),
    );
    // main Content like image
    Widget _mainContent = Container(
      width: double.infinity,
      height: (MediaQuery.of(context).size.height / 100.0) * 70.0,
      child: Image.asset(
        "images/emma_watson.jpg",
        fit: BoxFit.cover,
      ),
    );

    // header
    Widget _contentHeader = Container(
      padding: const EdgeInsets.all(8.0),
      height: 50.0,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 34.0,
                  height: 34.0,
                  decoration: new BoxDecoration(
                    border: Border.all(width: 1.5, color: Colors.pink),
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                      fit: BoxFit.cover,
                      image: ExactAssetImage("images/emma_watson.jpg"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  "Emma Watson",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.grey,
            ),
            onPressed: () => {},
          ),
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        border: BorderDirectional(
          top: BorderSide(
            width: 0.25,
            color: Colors.grey[400],
          ),
        ),
      ),
      child: Column(
        children: <Widget>[
          _contentHeader,
          _mainContent,
          _footer,
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class StoryHiglights extends StatefulWidget {
  @override
  _StoryHiglightsState createState() => _StoryHiglightsState();
}

class _StoryHiglightsState extends State<StoryHiglights> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      
      title: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Story Highlights"),
          Text("Keep your favorite stories on your profile"),
        ],
      ),
      children: <Widget>[
        SingleChildScrollView(
          // padding: const EdgeInsets.all(15.0),
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width / 5.0,
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          size: 40,
                        ),
                      ),
                      height: 60.0,
                      width: 60.0,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "New",
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 5.0,
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 30.0,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 5.0,
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 30.0,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 5.0,
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 30.0,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 5.0,
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 30.0,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 5.0,
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 30.0,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 5.0,
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 30.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
    // return SwitchListTile(
    //   onChanged: (bool isSwitch){
    //     setState(() {
    //       _isSwitch = isSwitch;
    //     });
    //   },
    //   value: _isSwitch,
    //   title: Text("Story Highlights"),
    // );
  }
}

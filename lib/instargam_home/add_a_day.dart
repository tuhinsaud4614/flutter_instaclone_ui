import 'package:flutter/material.dart';

class AddADay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //see others story
    Widget _seeOtherDay = Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          width: 50.0,
          height: 50.0,
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            image: new DecorationImage(
              fit: BoxFit.cover,
              image: ExactAssetImage("images/emma_watson.jpg"),
            ),
          ),
        ),
        Text(
          "others Story",
          style: TextStyle(
            fontSize: 12.0,
          ),
        ),
      ],
    );

    //add your story
    Widget _ownDayAdd = Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Stack(
          children: [
            InkWell(
              onTap: () => {},
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Container(
                width: 50.0,
                height: 50.0,
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
                  size: 18.0,
                ),
              ),
            ),
          ],
        ),
        Text(
          "Your Story",
          style: TextStyle(
            fontSize: 12.0,
          ),
        ),
      ],
    );
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
      height: 80.0,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (contex, index) {
          return SizedBox(
            width: 8.0,
          );
        },
        itemCount: 50,
        itemBuilder: (context, index) {
          if (index == 0) {
            return _ownDayAdd;
          } else {
            return _seeOtherDay;
          }
        },
      ),
    );
  }
}

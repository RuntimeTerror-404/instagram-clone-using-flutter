import 'dart:ui';

import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {
  final topText = new Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Stories",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Text("keep hustling...", style: TextStyle(fontWeight: FontWeight.bold),),
      Row(
        children: [
          Icon(Icons.play_arrow),
          Text(
            "Watch All",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      )
    ],
  );

  final stories = Expanded(
    child: Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: new ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => (Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1515984977862-1c7201ef324d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80"))),
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
            ),
            index == 0
                ? Positioned(
                    right: 10,
                    child: CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      radius: 10,
                      child: Icon(
                        Icons.add,
                        size: 14,
                        color: Colors.white,
                      ),
                    ))
                : Container()
          ],
        )),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [topText, stories],
      ),
    );
  }
}

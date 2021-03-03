// import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/insta_stories.dart';
// import 'package:instagram/insta_stories.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return new ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => index == 0
            ? SizedBox(
                child: new InstaStories(),
                height: deviceSize.height * 0.17,
                // width: deviceSize.width * 0.1,
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 8, 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: <Widget>[
                            new Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: new NetworkImage(
                                        "https://images.unsplash.com/photo-1614710937240-94e98c728347?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80")),
                              ),
                            ),
                            new SizedBox(
                              width: 10.0,
                            ),
                            new Text(
                              "Mohit Parashar",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        IconButton(icon: Icon(Icons.more_vert), onPressed: null)
                      ],
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: Image.network(
                      "https://images.unsplash.com/photo-1593642634315-48f5414c3ad9?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(FontAwesomeIcons.heart),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(FontAwesomeIcons.comment),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(FontAwesomeIcons.paperPlane),
                          ],
                        ),
                        Icon(FontAwesomeIcons.bookmark)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Liked by happy coding"),
                  ),
                  // Expanded(
                  //   child: TextField(
                  //     decoration: InputDecoration(
                  //       border: InputBorder.none,
                  //       hintText: "add comment here..."
                  //     ),
                  //   ),
                  // )
                ],
              ));
  }
}

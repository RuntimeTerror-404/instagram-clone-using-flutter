import 'package:flutter/material.dart';
import 'package:instagram/insta_list.dart';
// import 'package:instagram/insta_list.dart';

class InstaBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(child: InstaList()),
      ],
    );
  }
}

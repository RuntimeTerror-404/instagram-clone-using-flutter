import 'package:flutter/material.dart';
import 'package:instagram/insta_body.dart';

class InstaHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 35,
          child: Image.asset("assets/images/insta_logo.png"),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.send),
          ),
        ],
        // title: Text(
        //   "Welcome",
        //   style: TextStyle(color: Colors.black87),
        // ),
        centerTitle: true,
        leading: Icon(Icons.camera_alt),
        backgroundColor: Colors.blueGrey[100],
        elevation: 5.5,
        shadowColor: Colors.orangeAccent,
      ),
      body: InstaBody(),
      bottomNavigationBar: new Container(
        height: 50,
        color: Colors.green[200],
        child: new BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              new IconButton(icon: Icon(Icons.home), onPressed: () {}),
              new IconButton(icon: Icon(Icons.search), onPressed: () {}),
              new IconButton(icon: Icon(Icons.add_box), onPressed: () {}),
              new IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
              new IconButton(icon: Icon(Icons.person), onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}

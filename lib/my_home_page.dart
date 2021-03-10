import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  int _pictureNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Flutter Series: Part 2"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //aligns the children of the column to the center, vertically
          children: [
            Container(
              width: double.infinity,
              height: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image:
                        AssetImage("assets/images/image$_pictureNumber.jpg")),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: ElevatedButton(
                      child: Text("Previous"),
                      onPressed: () {
                        setState(() {
                          _pictureNumber--;
                        });
                      }),
                  margin: EdgeInsets.only(right: 8, top: 8),
                ),
                Container(
                  child: ElevatedButton(
                      child: Text("Next"),
                      onPressed: () {
                        setState(() {
                          _pictureNumber++;
                        });
                      }),
                  margin: EdgeInsets.only(left: 8, top: 8),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

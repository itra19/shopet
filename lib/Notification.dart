import 'package:flutter/material.dart';

class Notifikasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "notifikasi",
        theme: ThemeData(
          primaryColor: Colors.white,
          accentColor: Colors.white,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          body: SafeArea(
              child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.pink,
                            size: 35,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.pink,
                        size: 35,
                      ),
                    ),
                    Text(
                      "Notifikasi",
                      style: TextStyle(
                          color: Colors.pink,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 300,
                      child: Text(
                        "Kamu tidak memiliki notifikasi",
                        style: TextStyle(
                            fontStyle: FontStyle.italic, color: Colors.pink),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
        ));
  }
}

import 'package:flutter/material.dart';

import 'Newpages.dart';
import 'Newpages2.dart';
import 'Newpages3.dart';
import 'Newpages4.dart';
import 'Newpages5.dart';
import 'Newpages6.dart';
import 'SearchPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SHOP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Pet Shop'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Pet Shop'), actions: [
          // Navigate to the Search Screen
          IconButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => SearchPage())),
              icon: Icon(Icons.search))
        ]),
        backgroundColor: Colors.cyanAccent[700],
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, left: 15),
              child: Text(
                "Terlaku",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.purple[900],
                  fontSize: 30.0,
                  fontFamily: 'AkayaTelivigala',
                ),
              ),
            ),
            SingleChildScrollView(
              //untuk merubah arah scroll menjadi ke kanan
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 15),
                    child: Container(
                      width: 200,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2014/10/25/07/52/kingsnake-502263_960_720.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 15),
                    child: Container(
                      width: 200,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2016/01/25/10/46/dog-1160443_960_720.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 15),
                    child: Container(
                      width: 200,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2016/01/20/13/05/cat-1151519_960_720.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 15),
                    child: Container(
                      width: 200,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2018/01/01/08/04/fox-3053706_960_720.jpg"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 15, left: 15),
                child: Text("NEW ARRIVAL",
                    style: TextStyle(
                      color: Colors.white,
                    ))),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ListTile(
                    leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://www.iheartbrazil.com/wp-content/uploads/2021/03/Rainbow-boa-Epicrates-cenchria-1024x684.jpg"),
                                fit: BoxFit.cover))),
                    title: Text("Rainbow Boa Snake",
                        style: TextStyle(
                          color: Colors.white,
                        )),
                    subtitle:
                        Text("Sehat wal'afiat,mantap josss,warna merah hitam",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                    trailing: Icon(Icons.shopping_cart),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Newpages()));
                    }),
                ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://cdn.idntimes.com/content-images/post/20200303/1-17b763f032b2396d91d33582a4707d79.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    title: Text("Kucing kaki Pendek",
                        style: TextStyle(
                          color: Colors.white,
                        )),
                    subtitle: Text(
                        "Import dari Turkey,Sehat wal'afiat,mantap josss,warna putih ke emas-emasan",
                        style: TextStyle(
                          color: Colors.white,
                        )),
                    trailing: Icon(Icons.shopping_cart),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Newpages2()));
                    }),
                ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/Taka_Shiba.jpg/220px-Taka_Shiba.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  title: Text("Shibu Inu",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  subtitle: Text(
                      "Import dari jepang langsung,warna putih keemasan,melambangkan kejayaan,sehat wal'afiat",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  trailing: Icon(Icons.shopping_cart),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Newpages3()));
                  },
                ),
                ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://th.bing.com/th/id/R.5b76b73aad5d93f23d6d8b256fff7dbd?rik=5GSmZRH9LHK4oA&riu=http%3a%2f%2fwww.americancurls.com%2flelaurier%2fimages%2fLG4.jpg&ehk=YNHSMeJqpaVq2gEOyFQoKwLzk%2bmGwcicUfucXt1tQeM%3d&risl=&pid=ImgRaw&r=0"),
                            fit: BoxFit.cover)),
                  ),
                  title: Text("Bristh Shorthair",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  subtitle: Text(
                      "Import dari Thailand langsung,warna abu,melambangkan kemantapan,sehat wal'afiat",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  trailing: Icon(Icons.shopping_cart),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Newpages4()));
                  },
                ),
                ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://th.bing.com/th/id/OIP.2QH8Xxs9-jL1guBuZa0JNQHaFm?w=238&h=180&c=7&r=0&o=5&dpr=1.1&pid=1.7"),
                              fit: BoxFit.cover)),
                    ),
                    title: Text("Anjing Maltase",
                        style: TextStyle(
                          color: Colors.white,
                        )),
                    subtitle: Text(
                        "Import dari Singapore langsung,warna Putih,melambangkan keuwuan,sehat wal'afiat",
                        style: TextStyle(
                          color: Colors.white,
                        )),
                    trailing: Icon(Icons.shopping_cart),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Newpages5()));
                    }),
                ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://th.bing.com/th/id/OIP.iovAzcQNjyVODXZu3xWG-AHaEc?w=309&h=185&c=7&r=0&o=5&dpr=1.1&pid=1.7"),
                              fit: BoxFit.cover)),
                    ),
                    title: Text("Kecoa Bukan Sembarang Kecoa",
                        style: TextStyle(
                          color: Colors.white,
                        )),
                    subtitle: Text(
                        "Import dari Zimbabwe langsung,warna Hitam kecoklatan,melambangkan kesangaran,sehat wal'afiat",
                        style: TextStyle(
                          color: Colors.white,
                        )),
                    trailing: Icon(Icons.shopping_cart),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Newpages6()));
                    })
              ],
            ),
          ],
        ));
  }
}

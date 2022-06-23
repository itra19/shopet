import 'package:flutter/material.dart';

class Newpages4 extends StatefulWidget {
  @override
  _NewpagesState createState() => _NewpagesState();
}

class _NewpagesState extends State<Newpages4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent[700],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('images/brits.jpg'),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                ' Kucing British Short Hair',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontFamily: 'AkayaTelivigala',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.location_city),
                      SizedBox(height: 8.0),
                      Text(
                        'Kota Padangsidimpuan',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.shopping_cart),
                      SizedBox(height: 8.0),
                      Text(
                        'Rp 1.500.000',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Mantap coyyyyy,baru tiba tadi sore,untuk saat ini kita tidak melayani online dulu ya,apps ini masih dalam tahap pengembangan,untuk transaksi bisa langsung datang ke toko Pet Shop kita yang berada di Kota Padangsidimpuan.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontFamily: 'Oxygen',
                ),
              ),
            ),
            Container(
              width: 200,
              height: 45,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xffF18265),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "kembali",
                  style: TextStyle(
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

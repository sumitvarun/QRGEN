import 'package:flutter/material.dart';
import 'package:qr_code_generator_sumitvarun/screens/qr_generate_page.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Materia',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent[400],
          title: Text(
            "QR CODE GENERATOR",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          leading: Icon(Icons.arrow_back),
          actions: [Icon(Icons.search)],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(200),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50.0, bottom: 40.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Generate your QR CODE HERE",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 16),
                      ),
                      CircleAvatar(
                        radius: 50.0,
                        backgroundImage:
                            AssetImage("lib/asset/sumitvarunpngcartoon.png"),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(2000),
                  bottomRight: Radius.circular(1000))),
        ),
        body: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                TextButton(
                  // Within the `FirstRoute` widget
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => QrGenerater()),
                    );
                  },
                  child: Text("SCAN QR CODE"),
                ),
                //scan qr code button start here
                TextButton(
                  // Within the `FirstRoute` widget
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => QrGenerater()),
                    );
                  },
                  child: Text("SCAN QR CODE"),
                ),
                //scan qr code button end here
              ],
            ),
          ),
        ),
      ),
    );
  }
}

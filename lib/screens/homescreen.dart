import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_code_generator_sumitvarun/screens/qr_generate_page.dart';
import 'package:qr_code_generator_sumitvarun/screens/scanpage.dart';

class HomeScreen extends StatelessWidget {
  var size, height, width, orientation;

  @override
  Widget build(BuildContext context) {
    // getting the orientation of the app
    orientation = MediaQuery.of(context).orientation;

    // getting the size of the window
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return MaterialApp(
      title: 'QRGEN',
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.grey[350],
          shadowColor: Colors.black,

          title: Text(
            "QRGEN",
            style: GoogleFonts.exo2(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 48,
            ),
          ),
          centerTitle: true,
          //leading: Icon(Icons.arrow_back),
          //leading: IconButton(
          //   icon: Icon(Icons.arrow_back),
          //   onPressed: () => Navigator.of(context).pop()),
          //actions: [Icon(Icons.search)],
          // leading: IconButton(
          //   icon: Icon(Icons.arrow_back),
          //   onPressed: () => Navigator.of(context).pop()),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30.0, bottom: 40.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Scan & Generate Your QR CODE Here",
                        style: GoogleFonts.exo2(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      //CircleAvatar(
                      //  radius: 50.0,
                      //  backgroundImage:
                      //      AssetImage("lib/asset/sumitvarunpngcartoon.png"),
                      // ),
                      Image(
                        image: AssetImage(
                            'lib/asset/QR GEN-logos/QR GEN-logos.jpeg'),
                        width: 60.0,
                        height: 60.0,
                      ),
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
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                Image(
                  image: AssetImage(
                      'lib/asset/vecteezy_hands-and-qr-code-inside-smartphone-vector-design_-removebg-preview.png'),
                  height: 200.0,
                  width: MediaQuery.of(context).size.width,
                  //   height: MediaQuery.of(context).size.height,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: 180.0,
                      height: 110.0,
                      padding: EdgeInsets.only(top: 10.0, left: 10.0),
                      child: TextButton.icon(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.orange),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          //  RoundedRectangleBorder(
                          //      borderRadius: BorderRadius.circular(5.0),
                          //      side: BorderSide(color: Colors.blue[50])),
                          //  ),
                          overlayColor: MaterialStateProperty.all<Color>(
                              Colors.pink[700]),
                        ),
                        // Within the `FirstRoute` widget
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => QRViewExample()),
                          );
                        },
                        icon: Icon(
                          Icons.qr_code_scanner,
                          size: 70.0,
                        ),
                        label: Text('Scan QR'),
                        // child: Text("Scan QR Code"),
                      ),
                    ),
                    //scan qr code button start here
                    Container(
                      width: 180.0,
                      height: 110.0,
                      padding: EdgeInsets.only(top: 10.0, left: 20.0),
                      child: TextButton.icon(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.redAccent[400]),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          //  RoundedRectangleBorder(
                          //      borderRadius: BorderRadius.circular(18.0),
                          //      side: BorderSide(color: Colors.black)),
                          // ),
                          overlayColor: MaterialStateProperty.all<Color>(
                              Colors.blueAccent[400]),
                        ),
                        // Within the `FirstRoute` widget
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => QrGenerater()),
                          );
                        },
                        icon: Icon(
                          Icons.qr_code_outlined,
                          size: 70.0,
                        ),
                        label: Text('Generate QR'),
                        //child: Text("Generate QR Code "),
                      ),
                    ),
                    //scan qr code button end here
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height,
                  height: 180.0,
                  child: Image(
                    image:
                        AssetImage('lib/asset/banner/GENERATE QR CODE (1).png'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

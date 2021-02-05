import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:qr_mobile_vision/qr_camera.dart';

class HomePage extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return
      new MaterialApp(home: new MyAppa());
  }
}

class MyAppa extends StatefulWidget {
  @override
  _MyAppaState createState() => new _MyAppaState();
}

class _MyAppaState extends State<MyAppa> {
  String qr;
  bool camState = true;
  bool _isDialogShowing = false;


  @override
  initState() {
    super.initState();
  }

  _qrCallback(String code) {
    debugPrint("bura girdi");
    setState(() {
      _showDialog();
      camState = false;
    });

  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Plugin example app'),
      ),
      body:  new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Expanded(
              child: camState
                  ? new Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                  child: new SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 300.0,
                    child: new QrCamera(
                      onError: (context, error) => Text(
                        error.toString(),
                        style: TextStyle(color: Colors.red),
                      ),
                      qrCodeCallback: (code) {
                        setState(() {
                          _qrCallback(code);
                          qr = code;

                        });
                      },
                    ),
                  ),
                ),
              )
                  : new Center(child:
              RaisedButton(
                child: Text("restart"),
                onPressed: ( ){
                  print("girdi");
                  setState(() {
                    camState = true;
                  });
                },)

              )
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 200),
            child: Text("Scan the QR-code transport. \n"
                "\nTge Ticket Price will changed automatically",textAlign: TextAlign.center,),
          ),

        ],
      ),

    );
  }
  void _showDialog() {
    _isDialogShowing = true; // set it `true` since dialog is being displayed
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("$qr"),
          actions: <Widget>[
            FlatButton(
              child: Text("CANCEL"),
              onPressed: () {

                _isDialogShowing = false; // set it `false` since dialog
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }
}
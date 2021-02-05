import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task_app/main.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _value = 42;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.6), BlendMode.hardLight),
            child: Image.asset(
              "assets/backtask.jpg",
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/logo.svg',
                        width: 70,
                        height: 60,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Text(
                      "Transportpay",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
                    child: Theme(
                      data: Theme.of(context).copyWith(
                        canvasColor: Colors.black,
                      ),
                      child: new DropdownButton(
                        style: TextStyle(color: Colors.white, fontSize: 16),
                        value: _value,
                        iconEnabledColor: Colors.white,
                        icon: Icon(Icons.arrow_drop_down),
                        underline: Container(
                          height: 0,
                        ),
                        items: <DropdownMenuItem<int>>[
                          new DropdownMenuItem(
                            child: new Text('Belarus'),
                            value: 0,
                          ),
                          new DropdownMenuItem(
                            child: new Text('Azerbaijan'),
                            value: 42,
                          ),
                        ],
                        onChanged: (int value) {
                          setState(() {
                            _value = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Text(
                            "+375",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          height: 50,
                          child: TextFormField(
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(10),
                            ],
                            style: TextStyle(color: Colors.white),
                            keyboardType: TextInputType.number,
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.white),
                              border: InputBorder.none,
                              hintText: 'Enter your phone number',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: Container(
                      height: 55,
                      width: MediaQuery.of(context).size.width/1.5,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage()));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)),
                        padding: const EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: <Color>[
                                Color(0xFF0D47A1),
                                Color(0xFF342D7E),
                              ],
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(80.0)),
                          ),
                          child: Container(
                            constraints:
                                const BoxConstraints(minWidth: 88.0, minHeight: 36.0),
                            // min sizes for Material buttons
                            alignment: Alignment.center,
                            child: const Text(
                              'Sign Up',style: TextStyle(color: Colors.white,fontSize: 18),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white,fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 260, 0, 0),
                    child: Text(
                      "How It Works",
                      style: TextStyle(color: Colors.deepPurple,fontSize: 20),
                    ),
                  ),
                  Icon(Icons.arrow_drop_down,color: Colors.deepPurple,size: 35,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

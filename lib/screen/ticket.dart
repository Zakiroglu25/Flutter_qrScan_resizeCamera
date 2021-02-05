import 'package:flutter/material.dart';

class TicketPAge extends StatefulWidget {
  @override
  _TicketPAgeState createState() => _TicketPAgeState();
}

class _TicketPAgeState extends State<TicketPAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE5E4E2),
        elevation: 0,
      ),
      backgroundColor: Color(0xFFE5E4E2),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                height: 250,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 8,
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            gradient: LinearGradient(colors: [
                              const Color(0xFF3366FF),
                              const Color(0xFF00CCFF),
                            ])),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16, 14, 0, 6),
                              child: Text(
                                "Bus79",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 16),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 14, 0, 6),
                            child: Text(
                              "12/03/2021",
                              style: TextStyle(color: Colors.deepPurple),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Text(
                              r"$0.30",
                              style: TextStyle(color: Colors.deepPurple),
                            ),
                          ),
                        ],
                      ),
                      Divider(),

                      SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 70,
                          child: Image.asset("assets/barkod.png")),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,30,0,0),
                        child: Text("Ticket will expire at 12:41"),
                      )
                    ],
                  ),
                ),
              ),
            ),
            card(),
            card(),
            card(),
            card(),
          ],
        ),
      ),
    );
  }

  Widget card() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16,8,8,0),
          child: Container(
            height: 120,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 14, 0, 6),
                        child: Text(
                          "Bus79",
                          style:
                          TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 14, 0, 6),
                        child: Text(
                          "12/03/2021         14:33",
                          style: TextStyle(color: Colors.deepPurple),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Text(
                          r"$0.30",
                          style: TextStyle(color: Colors.deepPurple),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

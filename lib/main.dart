import 'package:flutter/material.dart';
import 'package:flutter_task_app/screen/loginPage.dart';
import 'package:flutter_task_app/screen/profilepage.dart';
import 'package:flutter_task_app/screen/qrcodePage.dart';
import 'package:flutter_task_app/screen/ticket.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List<Widget> allPages;
  MyAppa qrCodeScan;
  TicketPAge ticketPAge;
  ProfilPage profilPage;

  @override
  void initState() {
    super.initState();
    qrCodeScan = MyAppa();
    ticketPAge = TicketPAge();
    profilPage = ProfilPage();
    allPages = [qrCodeScan, ticketPAge, profilPage];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: allPages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepPurple,
        currentIndex: currentIndex,
        onTap: changePage,
        backgroundColor: Colors.white,
        // borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        elevation: 8,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.qr_code,
              color: Colors.deepPurple,
            ),
            backgroundColor: Colors.black,
            title: new Text('Transportpay'),
            icon: Icon(
              Icons.qr_code,
              color: Colors.black54,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            title: new Text('Tickets'),
            activeIcon: Icon(
              Icons.contact_page_outlined,
              color: Colors.deepPurple,
            ),
            icon: Icon(
              Icons.contact_page_outlined,
              color: Colors.black54,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            title: new Text('Profile'),
            activeIcon: Icon(
              Icons.person,
              color: Colors.deepPurple,
            ),
            icon: Icon(
              Icons.person,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}

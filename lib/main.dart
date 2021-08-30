import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:clik/page/qr_scan_page.dart';
import 'package:clik/widget/button_widget.dart';
import 'package:fluttertoast/fluttertoast.dart';

var global = new Map<String, dynamic>(); // for all global vars

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'ЦЛИК (v1.1.2)';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Color(0x000000),
      ),
      home: MainPage(title: title),
    );
  }
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    @required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    // Navigator.of(context).push(MaterialPageRoute(
    //   builder: (BuildContext context) => QRScanPage(),
    // ));
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        toolbarHeight: 48,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonWidget(
              text: 'Начать',
              onClicked: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => QRScanPage(),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

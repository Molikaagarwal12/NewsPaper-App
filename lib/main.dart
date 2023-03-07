import 'package:flutter/material.dart';
import 'package:newspaper_app/view/homescreen.dart';
import 'view/splash.dart';
void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool ShowingSplash=true;
  LoadHome(){
    Future.delayed(Duration(seconds: 5),(){
      setState(() {
        ShowingSplash=false;
      });
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>HomeScreen()));
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    LoadHome();
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Snacky News',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ShowingSplash?SplashScreen():HomeScreen(),
    );
  }
}


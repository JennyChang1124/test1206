import 'package:flutter/material.dart';
import 'A.dart';
import 'B.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '首頁'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(40, 90, 30, 50),
                padding: new EdgeInsets.only(top: 50.0),
                child: Text(
                  "復健APP",
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
      Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => BPage())
              );
            },
          style: ButtonStyle(
            shape:MaterialStateProperty.all(StadiumBorder()),
            backgroundColor: MaterialStateProperty.all(
                Colors.cyan[900]),
            foregroundColor: MaterialStateProperty.all(
                Colors.white),),
          child: const Text('用戶登入',style: TextStyle(fontSize: 25),),),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => BPage())
                );
              },
              style: ButtonStyle(
                shape:MaterialStateProperty.all(StadiumBorder()),
                backgroundColor: MaterialStateProperty.all(
                    Colors.cyan[900]),
                foregroundColor: MaterialStateProperty.all(
                    Colors.white),),
           //   padding:EdgeInsets.symmetric(vertical: 10,horizontal: 20),
           //   shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
              child: const Text('復健師登入',style: TextStyle(fontSize: 25),),),

    ]
    )
        ]
     )])));
    }
}

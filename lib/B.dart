import 'package:flutter/material.dart';
import 'package:test1206/D.dart';
import 'package:test1206/main.dart';
import 'A.dart';
import 'C.dart';

void main() {
  runApp(const BPage());
}

class  BPage extends StatelessWidget {
  const  BPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '清單'),
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
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context, MaterialPageRoute(builder: (context) => APage())
                                    );
                                  },
                                  style: ButtonStyle(
                                    shape:MaterialStateProperty.all(StadiumBorder()),
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.purple),
                                    foregroundColor: MaterialStateProperty.all(
                                        Colors.white),),
                                  child: const Text('圖像辨識',style: TextStyle(fontSize: 25),)),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context, MaterialPageRoute(builder: (context) => DPage())
                                          );
                                        },
                                        style: ButtonStyle(
                                          shape:MaterialStateProperty.all(StadiumBorder()),
                                          backgroundColor: MaterialStateProperty.all(
                                              Colors.purple),
                                          foregroundColor: MaterialStateProperty.all(
                                              Colors.white),),
                                        child: const Text('語句辨識',style: TextStyle(fontSize: 25),)),]
                              )
                            ]
                        )
                  ));
        }
}

import 'package:flutter/material.dart';
import 'package:test1206/main.dart';

void main() {
  runApp(DPage());
}

class DPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('語句辨識'),
          ),
          body: HomePage()),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(40, 70, 20, 50),
            padding: new EdgeInsets.only(top: 50.0),
            color: Colors.amber,
            child: Text('你早餐要吃甚麼?',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
          ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          FloatingActionButton(
            onPressed: (){},
            child:const Icon(Icons.multitrack_audio_sharp),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(
                  context, MaterialPageRoute(builder: (context) =>MyApp())
              );
            },
            style: ButtonStyle(
              //  padding: EdgeInsets.all(30),
              backgroundColor: MaterialStateProperty.all(
                  Colors.blueGrey),
              foregroundColor: MaterialStateProperty.all(
                  Colors.white),),
            child: const Text('返回',style: TextStyle(fontSize: 15),),),

        ],
      ),
]
      ) );
  }
}
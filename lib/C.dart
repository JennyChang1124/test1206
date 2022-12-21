import 'package:flutter/material.dart';

void main() {
  runApp(CPage());
}


class CPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body: HomePage(),
      ),
    );
  }
}
class HomePage extends StatelessWidget {
  final TextEditingController myController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          TextField(
            controller: myController,
            decoration: InputDecoration(hintText: '請輸入...',icon:Icon(Icons.photo),labelText: '圖片名字',labelStyle: TextStyle(color: Colors.blueGrey,fontSize: 15)),
            maxLength: 10,
          ),
          ElevatedButton(
            child: Text('送出',style: TextStyle(fontSize: 15),),
            onPressed: btnEvent,
          ),
        ],
      ),
    );
  }
  void btnEvent() {
    print(myController.text);
  }
}
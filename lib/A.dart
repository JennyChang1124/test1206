import 'package:flutter/material.dart';
import 'package:test1206/B.dart';
import 'package:test1206/C.dart';
import 'package:test1206/main.dart';

void main() {
  runApp(const APage());
}

class  APage extends StatelessWidget {
  const  APage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const  ImageBrowse(title: '圖片辨識'),
    );
  }
}

class ImageBrowse extends StatefulWidget {
  const ImageBrowse({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<ImageBrowse> createState() => _ImageBrowseState();
}

class _ImageBrowseState extends State<ImageBrowse> {
  var images=['assets/5.jpg','assets/56.jpg','assets/11.jpg','assets/6.webp'];
  int imageindex=1;
  String defult_image="assets/5.jpg";

  void previous (){
    if(imageindex<=0){imageindex=4;}
    defult_image = images[imageindex-1];
    imageindex--;
  }
  void next (){
    if(imageindex>=3){imageindex=-1;}
    defult_image = images[imageindex+1];
    imageindex++;
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController myController = new TextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.pop(
                          context, MaterialPageRoute(builder: (context) =>BPage())
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Colors.blueGrey),
                      foregroundColor: MaterialStateProperty.all(
                          Colors.white),),
                    child: const Text('返回',style: TextStyle(fontSize: 15),),),
                  const SizedBox(height: 40,),
                  GestureDetector(
                    onTap:(){
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => CPage())
                      );
                    },
                    child: SizedBox(
                      height: 300,
                      width: 300,
                      child: Image.asset(defult_image),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton(
                          onPressed: (){
                            setState(() {
                              previous();
                            });
                          },
                          child:const Icon(Icons.keyboard_arrow_left)
                      ),
                      const SizedBox(width: 100,),
                      FloatingActionButton(
                          onPressed: (){
                            setState(() {
                              next();
                            });
                          },
                          child: const Icon(Icons.keyboard_arrow_right)
                      ),
                    ],
                  )
                ],
            )),
  );
        }

}

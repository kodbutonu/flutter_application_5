import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Row dartRowunuOlustur() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.center,
          width: 75,
          height: 75,
          color: Colors.orange,
          child: Text(
            "D",
            style: TextStyle(fontSize: 40),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 75,
          height: 75,
          color: Colors.orange,
          child: Text(
            "A",
            style: TextStyle(fontSize: 40),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 75,
          height: 75,
          color: Colors.orange,
          child: Text(
            "R",
            style: TextStyle(fontSize: 40),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 75,
          height: 75,
          color: Colors.orange,
          child: Text(
            "T",
            style: TextStyle(fontSize: 40),
          ),
        ),
      ],
    );
  }

  columnDersleriniOlustur() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
          height:75, 
          width:75,
                    color:Colors.orange,

            child: Text("D"),
          ),
        ),
        Expanded(
          child: Container(
          height:75, 
          width:75,
                    color:Colors.orange,

            child: Text("E"),
          ),
        ),
        Expanded(
          child: Container(
          height:75, 
          width:75,
        color:Colors.orange,

            child: Text("R"),
          ),
        ),
        Expanded(
          child: Container(
          height:75, 
          width:75,
          color:Colors.orange,
            child: Text("S"),
          ),
        ),
       
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Image.asset(
            "assets/ımages/ımage.jpeg",
            width: 120,
            height: 400,
          ),
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              dartRowunuOlustur(),
              Container(height:400,child:columnDersleriniOlustur(),)
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('Tıklandı');
          },
          backgroundColor: Colors.red,
          child: Icon(Icons.account_tree),
        ),
      ),
    );
  }
}

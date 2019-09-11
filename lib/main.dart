import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    title: "FLAMES",
    home: Scaffold(
      appBar: AppBar(title: Text("FLAMES"),backgroundColor: Colors.pinkAccent,),
      body: Material(
        color: Colors.white,
        child:  Center(
            child:Text(
              'FLAMES',
              textDirection: TextDirection.ltr,
              style: TextStyle(color: Colors.purple,fontSize: 31.0,fontStyle: FontStyle.italic),
            )
        ),
      ),
    )
  )
);

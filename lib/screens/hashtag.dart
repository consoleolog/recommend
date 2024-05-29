import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recommend/screens/result.dart';
import 'package:recommend/widgets/navbar.dart';

class Hashtag extends StatelessWidget {
  const Hashtag({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("gpt's hastag recommend"),
        ),
        body: Container(
          child: Column(
            children: [
              SizedBox(
                child: Text("Hash tag"),
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context,
                  CupertinoPageRoute(builder: (context)=>Result())
                );
                }, child: Text("Next")),
            ],
          ),
        ),
      ),
    );
  }
}

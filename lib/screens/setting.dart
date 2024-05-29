import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:recommend/screens/hashtag.dart';
class Setting extends StatefulWidget {
  Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  var username;
  var followerCount;
  var followingCount;
  setUsername(text){
    setState(() {
      username=text;
    });
  }
  setFollower(text){
    setState(() {
      followerCount=text;
    });
  }
  setFollowing(text){
    setState(() {
      followingCount=text;
    });
  }
  sendData() async {
    try{
      var response = await http.post(Uri.parse(""),
          headers: {},
          body:jsonEncode({
            'username':username,
            'following':followingCount,
            'follower':followerCount
          })
      );
      if (response.statusCode!=200){
        print("실패");
      } else if (response.statusCode==200){
        print("전송 성공");
      }
    }catch(error){
      print("데이터 전송 실패");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
       child: Column(
         children: [
           TextField(
             onChanged: (c)=>setUsername(c),
             decoration: InputDecoration(
               hintText: 'username',
               icon: FaIcon(FontAwesomeIcons.circleUser),
               enabledBorder: OutlineInputBorder(
                 borderSide: BorderSide(
                   color: Colors.green,
                   width: 1.0,
                 )
               )
             ),
           ),
           TextField(
             onChanged: (c)=>setFollowing(c),
             decoration: InputDecoration(
               hintText: 'following',
               icon: FaIcon(FontAwesomeIcons.userPlus)
             ),
           ),
           TextField(
             onChanged: (c)=>setFollower(c),
             decoration: InputDecoration(
               hintText: 'follower',
               icon: FaIcon(FontAwesomeIcons.userGroup)
             ),
           ),
           ElevatedButton(onPressed: (){
             sendData();
             Navigator.push(context,
               CupertinoPageRoute(builder: (context)=>Hashtag())
             );
            }, child: Text("submit"),)
         ],
       ),
    );
  }
}

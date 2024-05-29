import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Setting extends StatefulWidget {
  Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  var username;
  var followerCount;
  var followingCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
       child: Column(
         children: [
           TextField(
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
             decoration: InputDecoration(
               hintText: 'following',
               icon: FaIcon(FontAwesomeIcons.userPlus)
             ),
           ),
           TextField(
             decoration: InputDecoration(
               hintText: 'follower',
               icon: FaIcon(FontAwesomeIcons.userGroup)
             ),
           ),
           ElevatedButton(onPressed: (){}, child: Text("submit"),)
         ],
       ),
    );
  }
}

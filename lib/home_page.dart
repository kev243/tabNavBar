import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:15.0,vertical: 23),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.blue.shade800,
           padding: EdgeInsets.all(16), 
         
          
            gap: 8,
            tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.favorite_border,
              iconActiveColor:Colors.white ,
              text: 'Likes',
            ),
            GButton(
              icon: Icons.share,
              text: 'Search',
            ),
            GButton(
              icon: Icons.settings,
              text: 'Settings',
            ),
          ]),
        ),
      ),
    );
  }
}

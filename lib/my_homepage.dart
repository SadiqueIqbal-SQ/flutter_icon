
import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';


class MyHomePage extends StatefulWidget{
  const MyHomePage({Key?key, required String title}):super(key:key);
  @override
  State<MyHomePage> createState()=>_MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0,
          pinned: true,
          centerTitle: false,
          expandedHeight: 300.0,
          stretch: true,
          flexibleSpace: const FlexibleSpaceBar(
            stretchModes: [
              StretchMode.blurBackground
            ],
            background: Image(image: AssetImage(
              'assets/logo-SQ.png',
            ),
            fit: BoxFit.cover,
            ),
          ),
        ),

        SliverList(delegate:
        SliverChildBuilderDelegate(
          (BuildContext context, int index){
               return Padding(
                padding:
               EdgeInsets.only(left:10,bottom: 20,right: 10),
               child: Container(
                decoration: BoxDecoration(
                  borderRadius:null,
                  color: Colors.grey.shade900

                ),
                height: 200,
                width: MediaQuery.of(context).size.width,
               ),

               );
        },
        childCount: 20,
        )
        )
      ],
    ),
   /* bottomNavigationBar: Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:15.0,vertical: 20),
        child: GNav(
          backgroundColor: Colors.black,
          color: Colors.white,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.grey.shade800,
          padding: EdgeInsets.all(16),
          gap: 8,
          onTabChange: (index){
            switch(index){
              case 0:_svg();
              case 1:_png();
              case 2:_jpg();
            }
          },
          tabs: const[
            
           GButton(
           icon:Icons.home,
           text: "SVG",),
           GButton(icon:Icons.favorite_border,
           text: "PNG",),
           GButton(icon:Icons.savings,
           text:"JPG")
      
          ]
      
          ),
      ),
    ),*/

    bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {

          switch(index){
            case 0:_logo();
            case 1:_jpg();
            case 2:_png();
            case 3:_svg();
          }
          setState(() {
            
            
          });
        },


        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/logo-SQ.png',
              width: 40,
              height: 40,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/png.png',
              width: 40,
              height: 40,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/svg.png',
              width: 40,
              height: 40,
            ),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/JPGIcon.jpg',
              width: 40,
              height: 40,
            ),
            label: 'Profile',
          ),
          
        ],
      ),
    );
  }
  
  void _svg() {
    
    print("print('Hii, i am svg");
    
  }
  
  void _png() {
    print('Hii, i am logo png');
  }
  
  void _jpg() {
    print('Hii, i am jpg');
  }
  
  void _logo() {

  print('Hii, i am logo icon');
  }
}
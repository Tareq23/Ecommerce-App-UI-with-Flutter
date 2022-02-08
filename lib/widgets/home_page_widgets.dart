import 'package:ecommerce/controllers/category_controller.dart';
import 'package:ecommerce/model/category_item.dart';
import 'package:flutter/material.dart';
import 'dart:core';
import 'package:carousel_slider/carousel_slider.dart';

class HomePageDrawer extends StatelessWidget {
  const HomePageDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var drawerWidth = size.width / 1.7 ;
    return SafeArea(
        child: SizedBox(
      height: size.height - size.height * 0.05,
      width: drawerWidth,
      child: Drawer(
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              height: drawerWidth,
              decoration: BoxDecoration(
                color: Colors.red.shade900
              ),
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(0.5*(drawerWidth/2)),
                    child: SizedBox(
                      height: drawerWidth/2,
                      width: drawerWidth/2,
                      child: Image.network("https://cdn.pixabay.com/photo/2022/01/18/07/38/cat-6946505__340.jpg",fit: BoxFit.cover,),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  const Text('Alex',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18,color: Colors.white),),
                  const Text('alex@example.com',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18,color: Colors.white),),
                ],
              ),
            ),
            InkWell(
              onTap: (){},
              child: const ListTile(
                title: Text('Home',style: TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.w500),),
                leading: Icon(Icons.home,color: Colors.red,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: const ListTile(
                title: Text('My Account',style: TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.w500),),
                leading: Icon(Icons.person,color: Colors.red,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: const ListTile(
                title: Text('Orders',style: TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.w500),),
                leading: Icon(Icons.shopping_bag_sharp,color: Colors.red,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: const ListTile(
                title: Text('Categories',style: TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.w500),),
                leading: Icon(Icons.dashboard_outlined,color: Colors.red,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: const ListTile(
                title: Text('Favourites',style: TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.w500),),
                leading: Icon(Icons.favorite,color: Colors.red,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: const ListTile(
                title: Text('Settings',style: TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.w500),),
                leading: Icon(Icons.settings,color: Colors.red,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: const ListTile(
                title: Text('About',style: TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.w500),),
                leading: Icon(Icons.live_help_sharp,color: Colors.red,),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}




class HomePageCarouselWidget extends StatefulWidget {
  const HomePageCarouselWidget({Key? key}) : super(key: key);

  @override
  _HomePageCarouselWidgetState createState() => _HomePageCarouselWidgetState();
}

class _HomePageCarouselWidgetState extends State<HomePageCarouselWidget> {
  List<String> imgList = [
    "images/c1.jpg",
    "images/m1.jpeg",
    "images/w3.jpeg",
  ];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: screenSize.height * 0.3,
      width: screenSize.width,
      child: CarouselSlider(
        items: imgList.map((e) => Stack(
          children: [
            Image(image: AssetImage(e.toString()),width: screenSize.width,height: screenSize.height * 0.3,fit: BoxFit.cover,),
          ],
        )).toList(),
        options: CarouselOptions(
            autoPlay: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 400),
            height: double.infinity,
            viewportFraction: 1,
        ),
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  final _height;
  CategoryWidget(this._height);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10,),
          height: _height * 0.2,
          child: const Text('Categories',style: TextStyle(color: Colors.black87,fontSize: 18,fontWeight: FontWeight.w500),),
        ),
        SizedBox(
          height: _height * 0.8,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: CategoryController().catList.map((e) => InkWell(
              onTap: (){},
              child: Column(
                children: [
                  Expanded(
                      flex: 4,
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        child: Image(
                          image: AssetImage(e.imgUrl.toString()),
                          fit: BoxFit.cover,
                        ),
                      )
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(e.name.toString(),style: const TextStyle(color: Colors.black87,fontWeight: FontWeight.w400,fontSize: 18),),
                  )
                ],
              ),
            )).toList(),
          ),
        ),
      ],
    );
  }
}



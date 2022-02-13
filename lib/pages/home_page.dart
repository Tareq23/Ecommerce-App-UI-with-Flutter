import 'package:ecommerce/controllers/category_controller.dart';
import 'package:ecommerce/model/category_item.dart';
import 'package:ecommerce/pages/cart_page.dart';
import 'package:ecommerce/widgets/home_page_widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {

    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      drawer: const HomePageDrawer(),
      appBar: AppBar(
        backgroundColor: const Color(0xff123456),
        leading: _builder(context),
        title: const Text(
          'FashionApp',
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_rounded,
                size: 30,
                color: Colors.white,
              )),
          const SizedBox(
            width: 10,
          ),
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage()));
              },
              icon: const Icon(
                Icons.shopping_cart,
                size: 30,
                color: Colors.white,
              )),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            const HomePageCarouselWidget(),
            const SizedBox(height: 10,),
            SizedBox(
              height: screenSize.height * 0.18,
              width: screenSize.width,
              child: CategoryWidget(screenSize.height*0.18)
            ),

            // Recent Product's List
            SizedBox(
              width: screenSize.width,
              height: screenSize.height - (screenSize.height*0.18 + screenSize.height * 0.25+90),
              child: RecentProducts(screenSize.height - (screenSize.height*0.18 + screenSize.height * 0.25+90)),
            )
          ],
        ),
      ),
    );
  }

  Builder _builder(BuildContext context) {
    return Builder(
      builder: (context) {
        return IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: const Icon(
            Icons.menu_rounded,
            size: 36,
            color: Colors.white,
          ),
        );
      },
    );
  }
}

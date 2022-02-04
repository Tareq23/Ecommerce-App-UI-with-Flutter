import 'package:flutter/material.dart';

class HomePageAppBarWidget extends StatelessWidget {
  const HomePageAppBarWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: screenSize.height * 0.08,
      decoration: const BoxDecoration(
        color: Color(0xff123456),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(0),
            margin: const EdgeInsets.all(0),
            width: screenSize.width/2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.menu,size: 40,color: Colors.white,)),
                const Text('FashionApp',style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700,color: Colors.white),)
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(0),
            margin: const EdgeInsets.all(0),
            width: screenSize.width/2,
            alignment: Alignment.centerRight,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.search_rounded,size: 30,color: Colors.white,)),
                const SizedBox(width: 10,),
                IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart,size: 30,color: Colors.white,)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

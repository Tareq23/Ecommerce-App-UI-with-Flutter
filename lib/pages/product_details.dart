import 'package:ecommerce/controllers/product_controller.dart';
import 'package:ecommerce/pages/cart_page.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  int productIndex;
  ProductDetails(this.productIndex, {Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var _product = ProductController().getSingleProduct(productIndex);
    var screenSize = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:  AppBar(
          backgroundColor: const Color(0xff123456),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios,size: 30,color: Colors.white70,),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>  CartPage()));
                },
                icon: const Icon(
                  Icons.shopping_cart,
                  size: 30,
                  color: Colors.white,
                )),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: screenSize.width,
                constraints: BoxConstraints(
                  maxHeight: screenSize.height * 0.65,
                ),
                child:Image(
                  image: AssetImage(_product.imgUrl.toString()),
                  // height: double.infinity,
                  // width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: screenSize.height * 0.05,
                width: screenSize.width,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(_product.name.toString(),style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black),),
                    Container(constraints: const BoxConstraints(maxHeight: 60,minHeight: 40),),
                    Text(
                      "\$${_product.prevPrice}",
                      style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black87,decoration: TextDecoration.lineThrough),),
                    Text("\$${_product.currentPrice}",style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.red),),
                  ],
                ),
              ),
              Container(
                height: screenSize.height * 0.05,
                width: screenSize.width,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Expanded(child: Text('Size',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black87),)),
                          Expanded(
                              child: IconButton(
                              onPressed: (){}, icon: Icon(Icons.arrow_drop_down,size: 35,color: Colors.grey.shade600,))),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          const Expanded(child: Text('Color',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black87),)),
                          Expanded(
                              child: IconButton(
                              onPressed: (){}, icon: Icon(Icons.arrow_drop_down,size: 35,color: Colors.grey.shade600,))),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          const Expanded(child: Text('Quantity',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black87),)),
                          Expanded(
                              child: IconButton(
                              onPressed: (){}, icon: Icon(Icons.arrow_drop_down,size: 35,color: Colors.grey.shade600,))),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              /* =========================  Buy button and Shopping Cart, Favourite Icon       ============================= */


              Container(
                margin: const EdgeInsets.only(top: 20),
                width: screenSize.width,
                height: screenSize.height * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: screenSize.width * 0.65,
                      child: ElevatedButton(
                          onPressed: (){},
                          child: const Padding(
                            padding:  EdgeInsets.all(12.0),
                            child: Text('Buy',style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.w600),),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red
                          ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(width: 20,),
                        IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart,size: 32,)),
                        const SizedBox(width: 20,),
                        IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border,size: 32,)),
                        const SizedBox(width: 20,),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20,bottom: 20,left:10),
                padding: const EdgeInsets.all(10),
                color: Colors.blue.shade900,
                // alignment: Alignment.centerLeft,
                child: const Text('Product Details',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 26,color: Colors.white),),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                child: Text(_product.details.toString(),style: const TextStyle(color: Colors.black87,fontSize: 18,fontWeight: FontWeight.w500),),
              ),
              Divider(height: 10,thickness: 5,color: Colors.grey.shade700,),
              Container(
                padding: const EdgeInsets.only(left: 10,bottom: 10),
                child: Row(
                  children: [
                    const Text('Product-Name : ',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.black87),),
                    Text("${_product.name}",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.black87),),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10,bottom: 10),
                child: Row(
                  children: [
                    const Text('Brand-Name : ',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.black87),),
                    Text("${_product.name} BrandX",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.black87),),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10,bottom: 10),
                child: Row(
                  children: [
                    const Text('Product-Condition : ',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.black87),),
                    Text("${_product.name}'s Y-condition",style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.black87),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


import 'package:ecommerce/controllers/product_controller.dart';
import 'package:ecommerce/model/product_item.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  double totalPrice = 0.0;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var listProducts = ProductController().getCartProduct();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff123456),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios,size: 30,color: Colors.white,),),
        title: const Text(
          'FashionApp',
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        centerTitle: true,
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
        ],
      ),
      body: SizedBox(
        width: screenSize.width,
        height: screenSize.height,
        child: ListView.builder(
          itemCount: listProducts!.length,
          itemBuilder: (context,index){
            // setState(){
            //   totalPrice += listProducts[index].currentPrice!.toDouble();
            // }
            // print(listProducts[index].currentPrice);
            // print(totalPrice);
            return ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Card(
                elevation: 7,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Image(
                          image: AssetImage(listProducts[index].imgUrl.toString()),
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 30,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(listProducts[index].name.toString(),style: const TextStyle(color: Colors.black87,fontWeight: FontWeight.w500,fontSize: 22),),
                            Text("Size : ${listProducts[index].size}",style: const TextStyle(color: Colors.black87,fontWeight: FontWeight.w500,fontSize: 22),),
                            Text(listProducts[index].currentPrice.toString(),style: const TextStyle(color: Colors.red,fontWeight: FontWeight.w500,fontSize: 22),),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Expanded(
                        child: Text(listProducts[index].color.toString(),style: const TextStyle(color: Colors.black87,fontWeight: FontWeight.w500,fontSize: 22),),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            color: Colors.white
        ),
        child: Row(
          children: [
            Expanded(
              child: ListTile(
                title: const Text('Total',style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w500),),
                subtitle: Text("\$"+ totalPrice.toString(),style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w500),),
              ),
            ),
            Expanded(
                child: ElevatedButton(
                  onPressed: (){},
                  child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: const Text('Check Out',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),)
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red.shade700,
                  ),
                )
            ),
            const SizedBox(width: 10,)
          ],
        ),
      ),
    );
  }
}


// class CartPage extends StatelessWidget {
//   CartPage({Key? key}) : super(key: key);
//   double totalPrice = 0.0;
//   @override
//   Widget build(BuildContext context) {
//     var screenSize = MediaQuery.of(context).size;
//     var listProducts = ProductController().getCartProduct();
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color(0xff123456),
//         leading: IconButton(
//           onPressed: (){
//             Navigator.pop(context);
//           },
//           icon: const Icon(Icons.arrow_back_ios,size: 30,color: Colors.white,),),
//         title: const Text(
//           'FashionApp',
//           style: TextStyle(
//               fontSize: 28, fontWeight: FontWeight.w700, color: Colors.white),
//         ),
//         centerTitle: true,
//         actions: [
//           IconButton(
//               onPressed: () {},
//               icon: const Icon(
//                 Icons.search_rounded,
//                 size: 30,
//                 color: Colors.white,
//               )),
//           const SizedBox(
//             width: 10,
//           ),
//         ],
//       ),
//       body: SizedBox(
//         width: screenSize.width,
//         height: screenSize.height,
//         child: ListView.builder(
//           itemCount: listProducts!.length,
//           itemBuilder: (context,index){
//             setState(){
//               totalPrice += listProducts[index].currentPrice!.toDouble();
//             }
//             print(listProducts[index].currentPrice);
//             print(totalPrice);
//             return ClipRRect(
//               borderRadius: BorderRadius.circular(10),
//               child: Card(
//                 elevation: 7,
//                 child: Container(
//                   decoration: const BoxDecoration(
//                     color: Colors.grey,
//                   ),
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       Expanded(
//                         child: Image(
//                           image: AssetImage(listProducts[index].imgUrl.toString()),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       const SizedBox(width: 30,),
//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(listProducts[index].name.toString(),style: const TextStyle(color: Colors.black87,fontWeight: FontWeight.w500,fontSize: 22),),
//                             Text(listProducts[index].size.toString(),style: const TextStyle(color: Colors.black87,fontWeight: FontWeight.w500,fontSize: 22),),
//                             Text(listProducts[index].currentPrice.toString(),style: const TextStyle(color: Colors.red,fontWeight: FontWeight.w500,fontSize: 22),),
//                           ],
//                         ),
//                       ),
//                       const SizedBox(width: 20,),
//                       Expanded(
//                         child: Text(listProducts[index].color.toString(),style: const TextStyle(color: Colors.black87,fontWeight: FontWeight.w500,fontSize: 22),),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//       bottomNavigationBar: Container(
//         decoration: const BoxDecoration(
//           color: Colors.white
//         ),
//         child: Row(
//           children: [
//             Expanded(
//               child: ListTile(
//                 title: const Text('Total',style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w500),),
//                 subtitle: Text("\$"+ totalPrice.toString(),style: TextStyle(color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w500),),
//               ),
//             ),
//             Expanded(
//               child: ElevatedButton(
//                 onPressed: (){},
//                 child: Container(
//                   padding: const EdgeInsets.symmetric(vertical: 20),
//                     child: const Text('Check Out',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),)
//                 ),
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.red.shade700,
//                 ),
//               )
//             ),
//             const SizedBox(width: 10,)
//           ],
//         ),
//       ),
//     );
//   }
// }

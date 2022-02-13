

import 'package:ecommerce/model/product_item.dart';

class ProductController
{
  String productDetailsText = "In publishing and graphic design, Lorem ipsum is a placeholder text commonly "
      "used to demonstrate the visual form of a document or a typeface without "
      "relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is "
      "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the "
      "visual form of a document or a typeface without relying on meaningful content."
      " Lorem ipsum may be used as a placeholder before the final copy is";

  List<ProductModel> productList = [
    ProductModel("Blazer", 150 , 85, "images/products/blazer1.jpeg","In publishing and graphic design, Lorem ipsum is a placeholder text commonly "
        "used to demonstrate the visual form of a document or a typeface without "
        "relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is "
        "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the "
        "visual form of a document or a typeface without relying on meaningful content."
        " Lorem ipsum may be used as a placeholder before the final copy is","M","Black"),
    ProductModel("Black Dress", 80 , 35, "images/products/dress2.jpeg","In publishing and graphic design, Lorem ipsum is a placeholder text commonly "
        "used to demonstrate the visual form of a document or a typeface without "
        "relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is "
        "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the "
        "visual form of a document or a typeface without relying on meaningful content."
        " Lorem ipsum may be used as a placeholder before the final copy is","M","Black"),
    ProductModel("Red Hill", 70 , 56, "images/products/hills2.jpeg","In publishing and graphic design, Lorem ipsum is a placeholder text commonly "
        "used to demonstrate the visual form of a document or a typeface without "
        "relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is "
        "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the "
        "visual form of a document or a typeface without relying on meaningful content."
        " Lorem ipsum may be used as a placeholder before the final copy is","M","Black"),
    ProductModel("Pant", 25 , 17, "images/products/pants1.jpg","In publishing and graphic design, Lorem ipsum is a placeholder text commonly "
        "used to demonstrate the visual form of a document or a typeface without "
        "relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is "
        "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the "
        "visual form of a document or a typeface without relying on meaningful content."
        " Lorem ipsum may be used as a placeholder before the final copy is","M","Black"),
    ProductModel("Shoe", 43 , 35, "images/products/shoe1.jpg","In publishing and graphic design, Lorem ipsum is a placeholder text commonly "
        "used to demonstrate the visual form of a document or a typeface without "
        "relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is "
        "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the "
        "visual form of a document or a typeface without relying on meaningful content."
        " Lorem ipsum may be used as a placeholder before the final copy is","M","Black"),
    ProductModel("Skt", 150 , 95, "images/products/skt1.jpeg","In publishing and graphic design, Lorem ipsum is a placeholder text commonly "
        "used to demonstrate the visual form of a document or a typeface without "
        "relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is "
        "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the "
        "visual form of a document or a typeface without relying on meaningful content."
        " Lorem ipsum may be used as a placeholder before the final copy is","M","Black"),
  ];

  ProductModel getSingleProduct(int index)
  {
    return productList[index];
  }

  List<ProductModel>? getCartProduct()
  {
    return productList.getRange(0, 4).toList();
  }
}
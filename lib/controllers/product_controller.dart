

import 'package:ecommerce/model/product_item.dart';

class ProductController
{
  String productDetailsText = "In publishing and graphic design, Lorem ipsum is a placeholder text commonly "
      "used to demonstrate the visual form of a document or a typeface without "
      "relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is "
      "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the "
      "visual form of a document or a typeface without relying on meaningful content."
      " Lorem ipsum may be used as a placeholder before the final copy is";

  List<ProductMode> productList = [
    ProductMode("Blazer", 150 , 85, "images/products/blazer1.jpeg","In publishing and graphic design, Lorem ipsum is a placeholder text commonly "
        "used to demonstrate the visual form of a document or a typeface without "
        "relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is "
        "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the "
        "visual form of a document or a typeface without relying on meaningful content."
        " Lorem ipsum may be used as a placeholder before the final copy is"),
    ProductMode("Black Dress", 80 , 35, "images/products/dress2.jpeg","In publishing and graphic design, Lorem ipsum is a placeholder text commonly "
        "used to demonstrate the visual form of a document or a typeface without "
        "relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is "
        "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the "
        "visual form of a document or a typeface without relying on meaningful content."
        " Lorem ipsum may be used as a placeholder before the final copy is"),
    ProductMode("Red Hill", 70 , 56, "images/products/hills2.jpeg","In publishing and graphic design, Lorem ipsum is a placeholder text commonly "
        "used to demonstrate the visual form of a document or a typeface without "
        "relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is "
        "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the "
        "visual form of a document or a typeface without relying on meaningful content."
        " Lorem ipsum may be used as a placeholder before the final copy is"),
    ProductMode("Pant", 25 , 17, "images/products/pants1.jpg","In publishing and graphic design, Lorem ipsum is a placeholder text commonly "
        "used to demonstrate the visual form of a document or a typeface without "
        "relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is "
        "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the "
        "visual form of a document or a typeface without relying on meaningful content."
        " Lorem ipsum may be used as a placeholder before the final copy is"),
    ProductMode("Shoe", 43 , 35, "images/products/shoe1.jpg","In publishing and graphic design, Lorem ipsum is a placeholder text commonly "
        "used to demonstrate the visual form of a document or a typeface without "
        "relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is "
        "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the "
        "visual form of a document or a typeface without relying on meaningful content."
        " Lorem ipsum may be used as a placeholder before the final copy is"),
    ProductMode("Skt", 150 , 95, "images/products/skt1.jpeg","In publishing and graphic design, Lorem ipsum is a placeholder text commonly "
        "used to demonstrate the visual form of a document or a typeface without "
        "relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is "
        "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the "
        "visual form of a document or a typeface without relying on meaningful content."
        " Lorem ipsum may be used as a placeholder before the final copy is"),
  ];

  ProductMode getSingleProduct(int index)
  {
    return productList[index];
  }
}
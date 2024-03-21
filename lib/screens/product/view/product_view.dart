import 'package:darshit_iih_practical/constants/colors.dart';
import 'package:darshit_iih_practical/constants/common_text.dart';
import 'package:darshit_iih_practical/constants/height_width.dart';
import 'package:darshit_iih_practical/screens/product/controller/product_controller.dart';
import 'package:darshit_iih_practical/screens/product_detail/controller/product_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductScreen extends StatelessWidget {
   ProductScreen({super.key});
var controller = Get.put(ProductController());
var detailcontroller = Get.put(ProductDetailController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  toolbarHeight: 80,
  title: CommonText(
    text: "Products",
    fontSize: 25,
    textColor: blackcolor,
  ),
  centerTitle: true,
),
      body: Column(
        children: [
         Obx(
           () =>  controller.isLoading.value == false?Expanded(child: Center(child: CircularProgressIndicator())):
           Expanded(
             child: ListView.builder(
               itemCount: controller.productList.value.length,
               itemBuilder: (context, index) =>
                GestureDetector(
                  onTap: () {
                    detailcontroller.getProductDetail(id:controller.productList.value[index].id );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 5,
                      child: Container(
                        height: Get.height/5,
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: indigocolor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(image: NetworkImage(
                                    controller.productList.value[index].image.toString()
                                ),fit: BoxFit.cover)
                              ),
                                width: Get.width/4,
                                height: Get.height,
                                ),
                            width10,
                            Container(
                              child: Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CommonText(
                                      text: controller.productList.value[index].title.toString(),
                                      fontSize: 20,
                                      textColor: blackcolor,
                                      maxLine: 2,
                                      textOverflow: TextOverflow.ellipsis,
                                    ),
                                    height10,
                                    CommonText(
                                      text: "Category : ${controller.productList.value[index].category.toString()}",
                                      fontSize: 16,
                                      textColor: browncolor,
                                      maxLine: 1,
                                      textOverflow: TextOverflow.ellipsis,
                                    ),
                                    height5,
                                    CommonText(
                                      text: "Ratting : ${controller.productList.value[index].rating!.rate.toString()}",
                                      fontSize: 16,
                                      textColor: Colors.orange,
                                      maxLine: 1,
                                      textOverflow: TextOverflow.ellipsis,
                                    ),
                                    height10,
                                    CommonText(
                                      text: "₹${controller.productList.value[index].price.toString()}",
                                      fontSize: 24,
                                      textColor: blackcolor,
                                      maxLine: 1,
                                      textOverflow: TextOverflow.ellipsis,
                                    ),

                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
             ),
           ),
         )
        ],
      ),
    );
  }
}

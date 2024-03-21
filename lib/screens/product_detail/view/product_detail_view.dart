import 'package:darshit_iih_practical/constants/height_width.dart';
import 'package:darshit_iih_practical/screens/product_detail/controller/product_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../../../constants/common_text.dart';

class ProductDetailScreen extends StatelessWidget {
   ProductDetailScreen({super.key});
var controller = Get.put(ProductDetailController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: CommonText(
          text: "Products Detail",
          fontSize: 25,
          textColor: blackcolor,
        ),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,size: 20,),onPressed: () {
          Get.back();
        },),
        centerTitle: true,
      ),
      body: Obx(
        () =>  controller.isLoading.value == false? Expanded(child: Center(child: CircularProgressIndicator())):
        Container(
          decoration: BoxDecoration(
            color: indigocolor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: Get.height/3,
                width: Get.width,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: indigocolor,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(image: NetworkImage(
                    controller.productDetail.value.image.toString()
                  ),fit: BoxFit.cover)
                ),
              ),
              height20,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: CommonText(
                  text: controller.productDetail.value.title.toString(),
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  textColor: blackcolor,
                  maxLine: 2,
                  textOverflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10 ),
                child: CommonText(
                  text: "Description :",
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  textColor: blackcolor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: CommonText(
                  text: controller.productDetail.value.description.toString(),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  textColor: blackcolor,
                  textOverflow: TextOverflow.ellipsis,
                  maxLine: 4,
                ),
              ),
              height10,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15 ),
                        child: CommonText(
                          text: "Category :",
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          textColor: blackcolor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                        child: CommonText(
                          text: controller.productDetail.value.category.toString(),
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          textColor: blackcolor,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40 ),
                        child: CommonText(
                          text: "Rating :",
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          textColor: blackcolor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 5),
                        child: CommonText(
                          text: controller.productDetail.value.rating!.rate.toString(),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          textColor: blackcolor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15 ),
                    child: CommonText(
                      text: "₹ ${controller.productDetail.value.price.toString()}",
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      textColor: blackcolor,
                    ),
                  ),
Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10 ),
                    child: Container(
                      height: Get.height/12,
                      width: Get.width/2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: blackcolor
                      ),
                      child: Center(
                        child: CommonText(
                          text: "Add To Cart",
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          textColor: whitecolor,
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              height20,
            ],
          ),
        ),
      ),
    );
  }
}

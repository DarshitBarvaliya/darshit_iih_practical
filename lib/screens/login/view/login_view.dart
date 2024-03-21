import 'package:darshit_iih_practical/constants/common_text.dart';
import 'package:darshit_iih_practical/constants/height_width.dart';
import 'package:darshit_iih_practical/screens/login/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../../../constants/strings.dart';
import '../../product/view/product_view.dart';


class LoginView extends StatelessWidget {
   LoginView({super.key});
var controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            height100,
            Center(
              child: CommonText(
                text: "ShoppingApp",
                textColor: indigoshadecolor,
                fontSize: 25,
              ),
            ),
            height50,
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: CommonText(
                text: "Email",
                textColor: indigoshadecolor,
                fontSize: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: TextFormField(
                controller: controller.loginController,
                decoration: const InputDecoration(
                    hintText: "Enter Email",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
              ),
            ),
            height20,
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: CommonText(
                text: "Password",
                textColor: indigoshadecolor,
                fontSize: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: TextFormField(
                controller: controller.passwordController,
                decoration: const InputDecoration(
                    hintText: "Enter Password",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
              ),
            ),
            height100,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: GestureDetector(
                onTap: () {
                  controller.UserLogin();
                },
                child: Container(
                  height: 40,
                  width: Get.width,
                  decoration: BoxDecoration(
                      color: indigoshadecolor,
                      borderRadius: BorderRadius.circular(10)),
                  child:  Center(
                    child: CommonText(
                      text: "Login",
                      textColor: whitecolor,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

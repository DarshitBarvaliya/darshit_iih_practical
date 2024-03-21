import 'dart:convert';

import 'package:darshit_iih_practical/constants/strings.dart';
import 'package:darshit_iih_practical/screens/product/view/product_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../routes/app_pages.dart';

class LoginController extends GetxController{
  var loginController = TextEditingController();
  var passwordController = TextEditingController();

  Future <void> UserLogin()async {
    final response = await http.post(Uri.parse("${url}auth/login"),body: {
      "username": loginController.text,
      "password": passwordController.text
    });

    try{
      if(response.statusCode == 200){
        var data = json.decode(response.body);
        print("success :: ${data["token"]}");
        Get.offAllNamed(Routes.PRODUCT);
      }else{
        print("error");
      }
    }catch(e){
      print("error :: ${e}");
    }

  }

}
import 'package:darshit_iih_practical/screens/product_detail/view/product_detail_view.dart';
import 'package:get/get.dart';

import '../../../Model/product_detail_model.dart';
import 'package:http/http.dart' as http;

import '../../../routes/app_pages.dart';

class ProductDetailController extends GetxController{
  @override
  void onInit() {
    super.onInit();
  }

  var productDetail = ProductDetail().obs;
  var isLoading = false.obs;

  Future <void> getProductDetail({int? id})async {
    final response = await http.get(Uri.parse("https://fakestoreapi.com/products/$id"));

    try{
      if(response.statusCode == 200){
        var data = productDetailFromJson(response.body);
        productDetail.value = data;
        isLoading.value = true;
        print("Success");
        Get.toNamed(Routes.PRODUCTDETAIL);
      }else{
        print("error");
      }
    }catch(e){
      print("error :: ${e}");
    }

  }

}
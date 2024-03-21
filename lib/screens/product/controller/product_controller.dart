import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../Model/product_model.dart';

class ProductController extends GetxController{

  @override
  void onInit() {
    getProduct();
    super.onInit();
  }

  var productList = <Product>[].obs;
  var isLoading = false.obs;

  Future <void> getProduct()async {
    final response = await http.get(Uri.parse("https://fakestoreapi.com/products"));

    try{
      if(response.statusCode == 200){
        var data = productFromJson(response.body);
        productList.value = data;
        isLoading.value = true;
        print("Success");
      }else{
        print("error");
      }
    }catch(e){
      print("error :: ${e}");
    }

  }

}
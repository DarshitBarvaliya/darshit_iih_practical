
import 'package:darshit_iih_practical/screens/product_detail/controller/product_detail_controller.dart';
import 'package:get/get.dart';




class ProductDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductDetailController>(() => ProductDetailController());
  }
}


import 'package:darshit_iih_practical/screens/login/bindings/login_binding.dart';
import 'package:darshit_iih_practical/screens/login/view/login_view.dart';
import 'package:darshit_iih_practical/screens/product/bindings/product_bindings.dart';
import 'package:darshit_iih_practical/screens/product/view/product_view.dart';
import 'package:darshit_iih_practical/screens/product_detail/bindings/product_detail_binding.dart';
import 'package:darshit_iih_practical/screens/product_detail/view/product_detail_view.dart';
import 'package:get/get.dart';


part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT,
      page: () => ProductScreen(),
      binding: ProductBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCTDETAIL,
      page: () => ProductDetailScreen(),
      binding: ProductDetailBinding(),
    ),
  ];
}


part of 'app_pages.dart';

abstract class Routes {
  /*============================ | Phase1 Pages | =========================*/

  static const LOGIN = _Paths.LOGIN;
  static const PRODUCT = _Paths.PRODUCT;
  static const PRODUCTDETAIL = _Paths.PRODUCTDETAIL;
}

abstract class _Paths {
  /*============================ | Phase1 Pages | =========================*/

  static const LOGIN = '/login';
  static const PRODUCT = '/product';
  static const PRODUCTDETAIL = '/productdetail';
}
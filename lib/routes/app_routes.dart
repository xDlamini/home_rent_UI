import 'package:flutter/material.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/detail_produk_screen/detail_produk_screen.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/menu_tab_container_screen/menu_tab_container_screen.dart'; // ignore_for_file: must_be_immutable

class AppRoutes {
  static const String menuPage = '/menu_page';

  static const String menuTabContainerScreen = '/menu_tab_container_screen';

  static const String homeScreen = '/home_screen';

  static const String detailProdukScreen = '/detail_produk_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    menuTabContainerScreen: (context) => MenuTabContainerScreen(),
    homeScreen: (context) => HomeScreen(),
    detailProdukScreen: (context) => DetailProdukScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => HomeScreen()
  };
}

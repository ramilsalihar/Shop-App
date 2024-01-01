import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/cart.dart';
import 'package:shop_app/providers/orders.dart';
import 'package:shop_app/providers/products.dart';
import 'package:shop_app/routes/app_router.dart';
import 'package:shop_app/screens/cart_screen.dart';
import 'package:shop_app/screens/edit_product_screen.dart';
import 'package:shop_app/screens/orders_screen.dart';
import 'package:shop_app/screens/user_products_screen.dart';

import '../presentation/core/theme/app_theme.dart';
import '../providers/auth.dart';
import '../screens/product_detail_screen.dart';
import '../screens/products_overview_screen.dart';
import '../screens/splash_screen.dart';

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppRouter appRouter = AppRouter();
    return MultiBlocProvider(
      providers: [
        // ChangeNotifierProvider(
        //   create: (_) => Auth(),
        // ),
        // ChangeNotifierProxyProvider<Auth, Products>(
        //   create: (_) => Products('', '', []),
        //   update: (ctx, auth, previousProducts) => Products(
        //     auth.token,
        //     auth.userId,
        //     previousProducts == null ? [] : previousProducts.items,
        //   ),
        // ),
        // ChangeNotifierProvider(
        //   create: (_) => Cart(),
        // ),
        // ChangeNotifierProxyProvider<Auth, Orders>(
        //   create: (_) => Orders('', '', []),
        //   update: (ctx, auth, previousOrders) => Orders(
        //     auth.token,
        //     auth.userId,
        //     previousOrders == null ? [] : previousOrders.orders,
        //   ),
        // ),
      ],
      child: MaterialApp.router(
        title: 'MyShop',
        theme: AppTheme.lightThemeData,
        // routerConfig: appRouter.config(),
        // builder: EasyLoading.init(),
      ),
    );
  }
}

/*
* MaterialApp(
          title: 'MyShop',
          theme: AppTheme.lightThemeData,
          home: auth.isAuth
              ? ProductsOverviewScreen()
              : FutureBuilder(
            future: auth.tryAutoLogin(),
            builder: (ctx, authResultSnapshot) =>
            authResultSnapshot.connectionState ==
                ConnectionState.waiting
                ? SplashScreen()
                : AuthScreen(),
          ),
          // List of routes that this app have
          routes: {
            ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
            CartScreen.routeName: (ctx) => CartScreen(),
            OrdersScreen.routeName: (ctx) => OrdersScreen(),
            UserProductsScreen.routeName: (ctx) => UserProductsScreen(),
            EditProductScreen.routeName: (ctx) => EditProductScreen(),
          },
        )
* */
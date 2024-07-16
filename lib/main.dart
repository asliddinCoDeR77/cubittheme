import 'package:cubittheme/cubit/cart_cubit.dart';
import 'package:cubittheme/cubit/order_cubit.dart';
import 'package:cubittheme/cubit/product_cubit.dart';
import 'package:cubittheme/cubit/theme_cubit.dart';
import 'package:cubittheme/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ProductCubit()),
        BlocProvider(create: (_) => ThemeCubit()),
        BlocProvider(create: (_) => CartCubit()),
        BlocProvider(create: (_) => OrderCubit()),
      ],
      child: BlocBuilder<ThemeCubit, bool>(
        builder: (context, isDarkMode) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
            home: HomePage(),
          );
        },
      ),
    );
  }
}

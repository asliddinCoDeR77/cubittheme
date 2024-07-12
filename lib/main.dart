import 'package:cubittheme/cubit/cubit_theme.dart';
import 'package:cubittheme/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => AppModeCubit(),
      child: const MyApp(),
    ),
  );
}

enum AppMode { day, night }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppModeCubit, AppMode>(
      builder: (context, mode) {
        return MaterialApp(
          theme: mode == AppMode.day ? ThemeData.light() : ThemeData.dark(),
          home: HomePage(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}

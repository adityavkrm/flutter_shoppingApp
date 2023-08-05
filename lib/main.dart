import 'package:cart_app/HomePage.dart';
import 'package:cart_app/cart_provider.dart';
import 'package:cart_app/global_variables.dart';
import 'package:cart_app/product_details_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final product = products[0];
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(), 
      child: MaterialApp(
          title: 'Cart App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            useMaterial3: true,
            fontFamily: GoogleFonts.lato().fontFamily,
            appBarTheme: const AppBarTheme(
                titleTextStyle: TextStyle(fontSize: 20, color: Colors.black)),
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromRGBO(254, 206, 1, 1),
              primary: const Color.fromRGBO(254, 206, 1, 1),
            ),
            inputDecorationTheme: const InputDecorationTheme(
                hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                prefixIconColor: Color.fromRGBO(119, 119, 119, 1)),
            textTheme: const TextTheme(
                titleMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                bodySmall: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 32)),
          ),
          home: HomeScreen()),
    );
  }
}

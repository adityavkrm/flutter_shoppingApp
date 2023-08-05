import 'package:cart_app/cart_page.dart';
import 'package:cart_app/product_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 1;

  List<Widget> pages = const [ProductList(), CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            selectedFontSize: 0,
            unselectedFontSize: 0,
            iconSize: 30,
            onTap: (value) {
              setState(() {
                currentPage = value;
              });
            },
            currentIndex: currentPage,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart), label: '')
            ]),
        body: IndexedStack(
          index: currentPage,
          children: pages,
        ));
  }
}

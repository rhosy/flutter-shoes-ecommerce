import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:shoes_ecommerce/utils/svg_icon.dart';
import 'package:shoes_ecommerce/utils/theme.dart';
import 'package:shoes_ecommerce/widgets/product_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List products = [];
  @override
  void initState() {
    fetchProducts();
    super.initState();
  }

  Future<void> fetchProducts() async {
    final String response =
        await rootBundle.loadString('assets/json/products.json');
    final data = await jsonDecode(response);
    setState(() {
      products = data['products'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          buildHeader(context),
          const SizedBox(
            height: 32,
          ),
          buildSearch(context),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Recomended for You",
              style: blackTextStyle.copyWith(
                fontWeight: extraBold,
                fontSize: 20,
              ),
            ),
          ),
          buildProduct(context, products),
        ],
      ),
    );
  }
}

Widget buildHeader(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: whiteColor,
          ),
          child: IconButton(
            onPressed: () {},
            icon: const SvgIcon(
              'Category',
              color: accentColor,
            ),
          ),
        ),
        Expanded(
          child: Text(
            "Home",
            textAlign: TextAlign.center,
            style: blackTextStyle.copyWith(
              fontWeight: extraBold,
              fontSize: 18,
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: whiteColor,
          ),
          child: IconButton(
            onPressed: () {},
            icon: const SvgIcon(
              'Bag',
              color: accentColor,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        const CircleAvatar(
          foregroundColor: accentColor,
          backgroundImage: NetworkImage(
              "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2670&q=80"),
        )
      ],
    ),
  );
}

Widget buildSearch(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Row(
      children: [
        Flexible(
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: whiteColor,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: greyTextStyle,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              )),
        ),
        const SizedBox(
          width: 16.0,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: accentColor,
          ),
          child: IconButton(
              onPressed: () {},
              icon: const SvgIcon(
                'Filter',
                color: whiteColor,
              )),
        )
      ],
    ),
  );
}

Widget buildProduct(BuildContext context, List products) {
  return ResponsiveGridList(
      desiredItemWidth: 150,
      shrinkWrap: true,
      minSpacing: 16,
      scroll: false,
      children: products
          .map((e) => ProductItem(
              imageUrl: e["image"], name: e["name"], price: e["price"]))
          .toList());
}

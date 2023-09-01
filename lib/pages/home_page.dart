import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:shoes_ecommerce/utils/svg_icon.dart';
import 'package:shoes_ecommerce/utils/theme.dart';
import 'package:shoes_ecommerce/widgets/product_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          buildProduct(context),
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

Widget buildProduct(BuildContext context) {
  return const ResponsiveGridList(
    desiredItemWidth: 150,
    shrinkWrap: true,
    minSpacing: 16,
    scroll: false,
    children: [
      ProductItem(
          imageUrl:
              "https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8c2hvZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60",
          name: "Product Name",
          price: "\$12.00"),
      ProductItem(
          imageUrl:
              "https://images.unsplash.com/photo-1595341888016-a392ef81b7de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHNob2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60",
          name: "Product Name",
          price: "\$17.00"),
      ProductItem(
          imageUrl:
              "https://images.unsplash.com/photo-1549298916-b41d501d3772?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8c2hvZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60",
          name: "Product Name",
          price: "\$100.00"),
      ProductItem(
          imageUrl:
              "https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8c2hvZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60",
          name: "Product Name",
          price: "\$20.00"),
      ProductItem(
          imageUrl:
              "https://images.unsplash.com/photo-1603808033192-082d6919d3e1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHNob2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60",
          name: "Product Name",
          price: "\$25.00"),
      ProductItem(
          imageUrl:
              "https://images.unsplash.com/photo-1605408499391-6368c628ef42?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjd8fHNob2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60",
          name: "Product Name",
          price: "\$18.00"),
      ProductItem(
          imageUrl:
              "https://images.unsplash.com/photo-1628253747716-0c4f5c90fdda?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTh8fHNob2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60",
          name: "Product Name",
          price: "\$12.00"),
      ProductItem(
          imageUrl:
              "https://images.unsplash.com/photo-1556048219-bb6978360b84?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTE5fHxzaG9lc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60",
          name: "Product Name",
          price: "\$12.00"),
    ],
  );
}

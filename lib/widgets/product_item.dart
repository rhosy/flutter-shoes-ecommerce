import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoes_ecommerce/widgets/svg_icon.dart';
import 'package:shoes_ecommerce/utils/theme.dart';

class ProductItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String price;
  final bool isFavourite;
  const ProductItem({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.price,
    this.isFavourite = false,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
          color: whiteColor, borderRadius: BorderRadius.circular(10.0)),
      child: InkWell(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                      child: CachedNetworkImage(
                        height: 150,
                        imageUrl: imageUrl,
                        fit: BoxFit.cover,
                        placeholder: (context, url) => const Center(
                          child: Padding(
                            padding: EdgeInsets.all(32.0),
                            child: CupertinoActivityIndicator(),
                          ),
                        ),
                        errorWidget: (context, url, error) =>
                            const Icon(Iconsax.gallery_remove5),
                      )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8, left: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          overflow: TextOverflow.ellipsis,
                          style: blackTextStyle.copyWith(fontWeight: medium),
                        ),
                        Text(
                          price,
                          style: redTextStyle.copyWith(
                            fontWeight: semiBold,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: SvgIcon(
                        "Heart",
                        color: isFavourite ? Colors.red : greyColor,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

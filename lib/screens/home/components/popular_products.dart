import 'package:flutter/material.dart';
import 'package:pororo/models/Product.dart';
import 'package:pororo/screens/home/components/product_card.dart';
import 'package:pororo/screens/home/components/section_title.dart';

import '../../../size_config.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
            text: "Popular Product",
            press: () {
              // goooooo here
            }),
        SizedBox(height: getProportionateScreenWidth(10)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProductCard(
                  product: demoProducts[index],
                ),
              ),
              SizedBox(height: getProportionateScreenWidth(30)),
            ],
          ),
        ),
      ],
    );
  }
}

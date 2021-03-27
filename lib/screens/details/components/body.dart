import 'package:flutter/material.dart';
import 'package:pororo/components/default_button.dart';

import 'package:pororo/models/Product.dart';
import 'package:pororo/screens/details/components/product_description.dart';
import 'package:pororo/screens/details/components/product_images.dart';
import 'package:pororo/screens/details/components/top_rounded_btn.dart';
import 'package:pororo/size_config.dart';

import '../../../constants.dart';
import 'color_dots.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, @required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  pressOnSeeMore: () {
                    // PRESS here
                  },
                ),
                TopRoundedContainer(
                  color: Color(0xFFF6F7F9),
                  child: Column(
                    children: [
                      ColorDots(
                        product: product,
                      ),
                      TopRoundedContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth * 0.1,
                            right: SizeConfig.screenWidth * 0.1,
                            top: 20,
                            bottom: 20,
                          ),
                          child: DefaultButton(
                            text: "Add to Card",
                            press: () {
                              // gooooooo
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

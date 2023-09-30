import 'package:flutter/material.dart';

import '../../../../size_config.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_product.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              HomeHeader(),
              DiscountBanner(),
              SizedBox(height: 10),
              Categories(),
              SizedBox(height: 10),
              SpecialOffers(),
              SizedBox(height: 15),
              PopularProducts(),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

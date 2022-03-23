import 'package:flutter/material.dart';
import 'package:food_ui/constants.dart';
import 'package:food_ui/screens/home/components/image_carousel.dart';

class HomeS extends StatelessWidget {
  const HomeS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Column(
              children: [
                Text(
                  'delivery to'.toUpperCase(),
                  style: Theme.of(context).textTheme.caption!.copyWith(color: kActiveColor),
                ),
                const Text(
                  'San Francisco',
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {},
                child: const Text('Filter', style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(
              horizontal: defaultPadding,
            ),
            sliver: SliverToBoxAdapter(
              child: ImageCarousel(),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: SectionTitle(title: 'Featured Partners', press: () {}),
            ),
          ),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  const SectionTitle({Key? key, required this.title, required this.press}) : super(key: key);

  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(title, style: Theme.of(context).textTheme.headline5),
        TextButton(
          style: TextButton.styleFrom(),
          child: const Text('Sell All'),
          onPressed: press,
        )
      ],
    );
  }
}

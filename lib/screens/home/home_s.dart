import 'package:flutter/material.dart';
import 'package:food_ui/constants.dart';
import 'package:food_ui/demo_data.dart';

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
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: kActiveColor),
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
                child:
                    const Text('Filter', style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: AspectRatio(
              aspectRatio: 1.81,
              child: PageView.builder(
                itemCount: demoBigImages.length,
                itemBuilder: (_, index) => Image.asset(demoBigImages[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

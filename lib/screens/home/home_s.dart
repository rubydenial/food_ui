import 'package:flutter/material.dart';
import 'package:food_ui/constants.dart';
import 'package:food_ui/demo_data.dart';
import 'package:food_ui/screens/home/components/image_carousel.dart';
import 'package:food_ui/screens/home/components/section_title_w.dart';

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
              child: SectionTitleW(title: 'Featured Partners', press: () {}),
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              children: [
                InkWell(
                  onTap: () {},
//                  borderRadius: BorderRadius.all(Radius.circular(36)),
                  borderRadius: BorderRadius.circular(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 200,
                        child: AspectRatio(
                          aspectRatio: 1.25,
                          child: Image.asset("assets/images/medium_1.png"),
                        ),
                      ),
                      const SizedBox(height: defaultPadding / 2),
                      Text(
                        demoMediumCardData[0]['name'],
                        style: Theme.of(context).textTheme.headline6,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
                        child: Text(
                          demoMediumCardData[0]['location'],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(color: kBodyTextColor),
                        ),
                      ),
                      DefaultTextStyle(
                        style: const TextStyle(color: Colors.black, fontSize: 12),
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: defaultPadding / 2,
                                vertical: defaultPadding / 8,
                              ),
                              decoration: const BoxDecoration(
                                color: kActiveColor,
                                borderRadius: BorderRadius.all(Radius.circular(6)),
                              ),
                              child: const Text('4.6', style: TextStyle(color: Colors.white)),
                            ),
                            const SizedBox(width: 8),
                            const Text('25 min'),
                            const SizedBox(width: 8),
                            const CircleAvatar(
                              radius: 2,
                              backgroundColor: kBodyTextColor,
                            ),
                            const SizedBox(width: 8),
                            const Text('Free Delivery'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

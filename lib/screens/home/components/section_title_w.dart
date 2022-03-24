import 'package:flutter/material.dart';
import 'package:food_ui/constants.dart';

class SectionTitleW extends StatelessWidget {
  const SectionTitleW({Key? key, required this.title, required this.press}) : super(key: key);

  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(title, style: Theme.of(context).textTheme.headline5),
        TextButton(
          style: TextButton.styleFrom(primary: kActiveColor),
          child: const Text('Sell All'),
          onPressed: press,
        )
      ],
    );
  }
}

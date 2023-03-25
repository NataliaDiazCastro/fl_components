import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: const [
            // Tarjetas
            CustomCardType1(),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
              imageUrl:
                  'https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg',
            ),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
              imageUrl:
                  'https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg',
            ),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
              imageUrl:
                  'https://iso.500px.com/wp-content/uploads/2014/06/W4A2827-1-3000x2000.jpg',
            ),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
              imageUrl:
                  'https://photographylife.com/wp-content/uploads/2016/06/Mass.jpg',
              name: 'Un hermoso paisaje',
            ),
            SizedBox(
              height: 20,
            )
          ],
        ));
  }
}

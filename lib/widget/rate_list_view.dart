import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_rating/flutter_rating.dart';

class RateListView extends StatelessWidget {
  const RateListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List comm = [
      const RateCard(comm: 'ممتاز جدا', name: "محمد"),
      const RateCard(comm: "انصح به", name: "ناصر"),
      const RateCard(comm: "منتج رائع", name: "احمد"),
      const RateCard(comm: "انصح به", name: "ناصر"),
    ];
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SizedBox(
        height: 370,
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 3,
          itemBuilder: (context, index) {
            return comm[index];
          },
        ),
      ),
    );
  }
}

class RateCard extends StatelessWidget {
  final String name;
  final String comm;
  const RateCard({
    super.key,
    required this.name,
    required this.comm,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 35),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(child: Image.asset('assets/Ellipse 10.png')),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                  ),
                  StarRating(
                    rating: 4,
                    allowHalfRating: false,
                    onRatingChanged: (v) {},
                  ),
                ],
              ),
              const Spacer(),
              const Text(
                '1 شهر',
              ),
            ],
          ),
          const SizedBox(height: 15),
          Text(comm),
        ],
      ),
    );
  }
}

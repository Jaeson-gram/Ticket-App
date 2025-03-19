import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class SearchScreenPromotion extends StatelessWidget {
  const SearchScreenPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
        // SOMETHING'S WRONG HERE. FIX IT. THE WIDTH OVERFLOWS. WHY? I USED THE DEVTOOLS AND REALISED IT WAS AN OVERFLOW. IT WAS `size.width * 44` instead of `size.width * 0.44`
        width: size.width *
            .44, //42 percenet of the screen. the other container will take 42, and the edges will have a 16' padding
        height: 435,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),

        decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade300, blurRadius: 1, spreadRadius: 2)
            ]),

        child: Column(
          children: [
            Container(
              height: 190,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(AppMedia.planeSit))),
            ),
            const SizedBox(height: 15),
            Text(
              '20% discount on every early bird. Make sure you don\'t miss it.',
              style: AppStyles.headlineStyle2,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
      Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: size.width * .44,
                height: 210,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: const Color(0xff3ab8b8)),
                child: Column(
                  children: [
                    Text('Discount on survey',
                        style: AppStyles.headlineStyle2.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start),
                    const SizedBox(height: 10),
                    Text('Take a survey today and get discounts',
                        style: AppStyles.headlineStyle2.copyWith(
                            fontWeight: FontWeight.w500, color: Colors.white),
                        textAlign: TextAlign.start)
                  ],
                ),
              ),
              Positioned(
                right: -40,
                top: -40,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          width: 18, color: const Color(0xff189999))),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            width: size.width * .44,
            height: 210,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: const Color(0xffec6545)),
            child: Column(
              children: [
                Text('with love',
                    style: AppStyles.headlineStyle2.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start),
                const SizedBox(height: 10),
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(text: '😘', style: TextStyle(fontSize: 36)),
                  TextSpan(text: '🥰', style: TextStyle(fontSize: 45)),
                  TextSpan(text: '😘', style: TextStyle(fontSize: 36)),
                ]))
              ],
            ),
          ),
        ],
      )
    ]);
  }
}

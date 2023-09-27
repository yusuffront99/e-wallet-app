import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_wallet_app/shared/theme.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  CarouselController carouselController = CarouselController();

  List<String> titles = [
    'Grow your\n Financial Today',
    'Build From\n Zero to Freedom',
    'Start Together',
  ];

  List<String> subtitles = [
    'Our system is helping you to\n achive a better goal',
    'We provide tips for you so that\n you can adapt easier',
    'We will guide you to where\n you wanted it too',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              items: [
                Image.asset(
                  'assets/img_onboarding1.png',
                  height: 331,
                ),
                Image.asset(
                  'assets/img_onboarding2.png',
                  height: 331,
                ),
                Image.asset(
                  'assets/img_onboarding3.png',
                  height: 331,
                ),
              ],
              options: CarouselOptions(
                  height: 331,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  viewportFraction: 1, //== agar gambar full disatu halaman
                  enableInfiniteScroll:
                      false //== menampilkan gambar slider agar tidak infinity (1-3)
                  ),
              carouselController: carouselController,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 24),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(
                    titles[currentIndex],
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Text(
                    subtitles[currentIndex],
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 12,
                        height: 12,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          // == dot indication ==
                          shape: BoxShape.circle,
                          color: currentIndex == 0
                              ? blueColor
                              : lightBackgroundColor,
                        ),
                      ),
                      Container(
                        width: 12,
                        height: 12,
                        margin: const EdgeInsets.only(right: 10),
                        // == dot indication ==
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentIndex == 1
                              ? blueColor
                              : lightBackgroundColor,
                        ),
                      ),
                      Container(
                        width: 12,
                        height: 12,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          // == dot indication ==
                          shape: BoxShape.circle,
                          color: currentIndex == 2
                              ? blueColor
                              : lightBackgroundColor,
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 150,
                        height: 50,
                        child: TextButton(
                          onPressed: () {
                            carouselController.nextPage();
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: purpleColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(56),
                            ),
                          ),
                          child: Text(
                            'Continue',
                            style: whiteTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:plants/utils/app_color.dart';
import 'package:plants/gen/assets.gen.dart';
import 'package:plants/gen/fonts.gen.dart';
import 'package:plants/screen/home_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  List images = [
    Assets.img.snakePlants.path,
    Assets.img.luckyJadePlants.path,
    Assets.img.peperomiaPlant.path
  ];

  int currentIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: kcontentColor,
      appBar: PreferredSize(
        preferredSize: Size(size.width, size.height / 13),
        child: Container(
          color: kcontentColor,
          child: Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 12, right: 5),
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
                child: const Text(
                  'skip',
                  style: TextStyle(
                      fontFamily: FontFamily.poppins,
                      fontWeight: FontWeight.w400,
                      fontSize: 20),
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 350,
              child: PageView.builder(
                controller: pageController,
                itemCount: images.length,
                onPageChanged: (value) => setState(() => currentIndex = value),
                itemBuilder: (context, index) => Image.asset(
                  images[index],
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SmoothPageIndicator(
              controller: pageController,
              count: images.length,
              effect: const ExpandingDotsEffect(
                dotHeight: 10,
                dotWidth: 10,
                activeDotColor: kprimaryColor,
                dotColor: ksecondryColor,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Enjoy Your \nLife with',
                    style: TextStyle(
                        fontFamily: FontFamily.poppins,
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.w200),
                  ),
                  TextSpan(
                    text: ' Plants',
                    style: TextStyle(
                        fontFamily: FontFamily.poppins,
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                height: 70,
                width: 70,
                child: CircleAvatar(
                  backgroundColor: kprimaryColor,
                  child: IconButton(
                    onPressed: () {
                      if (currentIndex == images.length - 1) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                      } else {
                        pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut);
                      }
                    },
                    icon: const Icon(
                      CupertinoIcons.arrow_right,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

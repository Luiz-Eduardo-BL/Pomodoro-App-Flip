import 'package:flutter/material.dart';
import '../components/size_config.dart';
import '../components/onboarding_contents.dart';
import 'login_screen.dart';

class Onboardingscreen extends StatefulWidget {
  const Onboardingscreen({Key? key}) : super(key: key);

  @override
  State<Onboardingscreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<Onboardingscreen> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  int _currentPage = 0;

  List collors = [
    Color(0xffDAD3C8),
    Color(0xffFFE5DE),
    Color(0xffDCF6E6),
  ];

  AnimatedContainer _buildDots({
    int? index,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        color: Color(0xFF000000),
      ),
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      curve: Curves.easeIn,
      width: _currentPage == index ? 20 : 10,
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenWidth!;
    double height = SizeConfig.screenHeight!;

    return Scaffold(
      backgroundColor: collors[_currentPage],
      body: SafeArea(
        child: Column(children: [
          Expanded(
              flex: 3,
              child: PageView.builder(
                  physics: const BouncingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (value) =>
                      setState(() => _currentPage = value),
                  itemCount: contest.length,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Column(
                        children: [
                          Image.asset(
                            contest[i].image,
                            height: SizeConfig.blockSizeVertical! * 35,
                          ),
                          SizedBox(
                            height: (height >= 840) ? 60 : 30,
                          ),
                          Text(
                            contest[i].title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Mulish",
                              fontWeight: FontWeight.w500,
                              fontSize: (width <= 550) ? 30 : 35,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            contest[i].desc,
                            style: TextStyle(
                              fontFamily: "Mulish",
                              fontWeight: FontWeight.w400,
                              fontSize: (width <= 550) ? 15 : 20,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    );
                  })),
          Expanded(
            flex: 1,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      contest.length,
                      (int index) => _buildDots(
                        index: index,
                      ),
                    ),
                  ),
                  _currentPage + 1 == contest.length
                      ? Padding(
                          padding: const EdgeInsets.all(30),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              padding: (width <= 550)
                                  ? const EdgeInsets.symmetric(
                                      horizontal: 100, vertical: 20)
                                  : EdgeInsets.symmetric(
                                      horizontal: width * 0.2, vertical: 20),
                              textStyle:
                                  TextStyle(fontSize: (width <= 550) ? 13 : 17),
                            ),
                            child: const Text("Começar"),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  _pageController.jumpToPage(2);
                                },
                                style: TextButton.styleFrom(
                                  elevation: 0,
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: (width <= 550) ? 13 : 17,
                                  ),
                                ),
                                child: const Text(
                                  "Pular",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  _pageController.nextPage(
                                    duration: const Duration(milliseconds: 200),
                                    curve: Curves.easeIn,
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  elevation: 0,
                                  padding: (width <= 550)
                                      ? const EdgeInsets.symmetric(
                                          horizontal: 30, vertical: 20)
                                      : const EdgeInsets.symmetric(
                                          horizontal: 30, vertical: 25),
                                  textStyle: TextStyle(
                                      fontSize: (width <= 550) ? 13 : 17),
                                ),
                                child: const Text("Próximo"),
                              ),
                            ],
                          ),
                        )
                ]),
          ),
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_sec_6/models/onBoradingModel.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({super.key});

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  PageController pageController = PageController();
  List<OnBoadingModel> onBoardingList = [
    OnBoadingModel(image: 'assets/images/download.jpg', title: 'Bike'),
    OnBoadingModel(image: 'assets/images/download.jpg', title: 'Cars'),
    OnBoadingModel(image: 'assets/images/download.jpg', title: 'Bicycle'),
    OnBoadingModel(image: 'assets/images/download.jpg', title: 'Bus'),
    OnBoadingModel(image: 'assets/images/download.jpg', title: 'Truck'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page View Demo"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: PageView.builder(
        controller: pageController,
              itemCount: onBoardingList.length,
              itemBuilder: (context, i){
            return Column(
              children: [
                Expanded(
                  child: Column(children: [
                    Image.asset(onBoardingList[i].image.toString(),height: 400,),
                    Text(onBoardingList[i].title.toString(),style: TextStyle(fontSize: 30),),

                  ],),
                ),
                SmoothPageIndicator(
                    controller: pageController,  // PageController
                    count:  onBoardingList.length,
                    effect:  ExpandingDotsEffect(),  // your preferred effect
                    onDotClicked: (index){
                    }
                ),
                Text("Skip"),
              ],
            );

          }),


    );
  }
}

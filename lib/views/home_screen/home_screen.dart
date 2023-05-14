import 'package:emart_new/consts/colors.dart';
import 'package:emart_new/consts/consts.dart';
import 'package:emart_new/consts/lists.dart';
import 'package:flutter/material.dart';

import '../../widgets_common/home_button.dart';
import 'componants/feartue_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
          child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,
            color: lightGrey,
            child: TextFormField(
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: searchanything,
                  hintStyle: TextStyle(color: textfieldGrey)),
            ),
          ),
          10.heightBox,
          //the design of the main screen
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 150,
                      enlargeCenterPage: true,
                      itemCount: silderList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          silderList[index],
                          fit: BoxFit.fill,
                        ).box.rounded.clip(Clip.antiAlias).make();
                      }),
                  10.heightBox,
                  //start Home Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        2,
                        (index) => homeButtons(
                              width: context.screenWidth * 0.33,
                              height: context.screenHeight / 6,
                              icon: index == 0 ? icTodaysDeal : icFlashDeal,
                              title: index == 0 ? todayDeal : flashsale,
                            )),
                  ),
                  //end Home Buttons
                  //start Second Silder
                  10.heightBox,
                  VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 150,
                      enlargeCenterPage: true,
                      itemCount: scondsilderList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          scondsilderList[index],
                          fit: BoxFit.fill,
                        ).box.rounded.clip(Clip.antiAlias).make();
                      }),
                  //end second silder
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        3,
                        (index) => homeButtons(
                              height: context.screenHeight * 0.15,
                              width: context.safePercentWidth / 0.039,
                              icon: index == 0
                                  ? icTopCategories
                                  : index == 1
                                      ? icBrands
                                      : icTopSeller,
                              title: index == 0
                                  ? topCategories
                                  : index == 1
                                      ? brand
                                      : topSellers,
                            )),
                  ),
                  //Start feature cateogeries
                  20.heightBox,
                  Align(
                      alignment: Alignment.centerLeft,
                      child: featuredCategories.text
                          .color(darkFontGrey)
                          .size(18)
                          .fontFamily(semibold)
                          .make()),
                  20.heightBox,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          3,
                          (index) => Column(
                                children: [
                                  featuredButton(
                                      icon: featuredImages1[index],
                                      title: featuredTitles1[index]),
                                  10.heightBox,
                                  featuredButton(
                                      icon: featuredImages2[index],
                                      title: featuredTitles2[index])
                                ],
                              )),
                    ),
                  ),
                  //End feature cateogeries
                  //Start Feature Products Silder
                  Container(
                    padding: const EdgeInsets.all(12),
                    width: double.infinity,
                    decoration: const BoxDecoration(color: redColor),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        featureProduct.text.white
                            .fontFamily(semibold)
                            .size(18)
                            .make(),
                        10.heightBox,
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                              children: List.generate(
                                  6,
                                  (index) => Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(imgP1,
                                              width: 150, fit: BoxFit.cover),
                                          10.heightBox,
                                          "Laptop 4GB/63GB"
                                              .text
                                              .fontFamily(semibold)
                                              .color(darkFontGrey)
                                              .make(),
                                          10.heightBox,
                                          "\$100"
                                              .text
                                              .color(redColor)
                                              .fontFamily(bold)
                                              .size(17)
                                              .make()
                                        ],
                                      )
                                          .box
                                          .white
                                          .rounded
                                          .margin(const EdgeInsets.symmetric(
                                              horizontal: 4))
                                          .padding(const EdgeInsets.all(8))
                                          .make())),
                        )
                      ],
                    ),
                  ),
                  //End Feature Products Silder
                  //Start of threed Silder
                  VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 150,
                      enlargeCenterPage: true,
                      itemCount: scondsilderList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          scondsilderList[index],
                          fit: BoxFit.fill,
                        ).box.rounded.clip(Clip.antiAlias).make();
                      }),
                  //End of threed Silder
                  //Start All Product GridView
                  20.heightBox,
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 6,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8,
                            mainAxisExtent: 300),
                    itemBuilder: ((context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(imgP5,
                              width: 200, height: 200, fit: BoxFit.cover),
                          const Spacer(),
                          "Laptop 4GB/63GB"
                              .text
                              .fontFamily(semibold)
                              .color(darkFontGrey)
                              .make(),
                          10.heightBox,
                          "\$100"
                              .text
                              .color(redColor)
                              .fontFamily(bold)
                              .size(17)
                              .make()
                        ],
                      )
                          .box
                          .white
                          .rounded
                          .margin(const EdgeInsets.symmetric(horizontal: 4))
                          .padding(const EdgeInsets.all(8))
                          .make();
                    }),
                  ),

                  //End All Product GridView
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}




//  Row(
//           children: List.generate(2, (index) => homeButtons(
//             width:context.screenWidth*0.2, height:context.screenHeight/2.5,
//            icon:index==0?icTodaysDeal:icFlashDeal,
//             title:index==0?todayDeal:flashsale,
//              onPress(){})),
import 'package:emart_new/consts/consts.dart';
import 'package:emart_new/views/category_screen/items_detiles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets_common/bg_widget.dart';

class CategoryDetails extends StatelessWidget {
  const CategoryDetails({super.key, required this.title});
  final String? title;

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: title!.text.fontFamily(bold).white.make(),
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                    children: List.generate(
                        6,
                        (index) => "Baby Clothes"
                            .text
                            .size(12)
                            .fontFamily(semibold)
                            .color(darkFontGrey)
                            .makeCentered()
                            .box
                            .white
                            .rounded
                            .size(120, 60)
                            .margin(const EdgeInsets.symmetric(horizontal: 4))
                            .make())),
              ),
              //Start Items Container
              20.heightBox,
              Expanded(
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 250,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8),
                  itemBuilder: ((context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(imgP5,
                            width: 200, height: 150, fit: BoxFit.cover),
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
                        .outerShadowSm
                        .margin(const EdgeInsets.symmetric(horizontal: 4))
                        .padding(const EdgeInsets.all(8))
                        .make()
                        .onTap(() {
                      Get.to(() => const ItemDetails(title: 'Dummy Item'));
                    });
                  }),
                ),
              )
//End Items Container
            ],
          ),
        ),
      ),
    );
  }
}



/**Expanded(
              child: Container(
                color: lightGrey,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: ((context, index) {
                    return Container();
                  }),
                ),
              ),
            ) */
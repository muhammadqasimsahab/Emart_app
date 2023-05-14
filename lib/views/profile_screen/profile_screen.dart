import 'package:emart_new/consts/consts.dart';
import 'package:emart_new/controller/auth_controller.dart';
import 'package:emart_new/views/auth_screen/login_screen.dart';
import 'package:emart_new/views/profile_screen/edit_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../consts/lists.dart';
import '../../widgets_common/bg_widget.dart';
import 'components/detils_cart.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //edit prifile Button strat
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.edit,
                    color: whiteColor,
                  )).onTap(() {
                Get.to(() => const EditProfileScreen());
              }),
            ),
            //edit profile  button end
            Row(
              children: [
                Image.asset(imgProfile2, width: 100, fit: BoxFit.cover)
                    .box
                    .roundedFull
                    .clip(Clip.antiAlias)
                    .make(),
                10.widthBox,
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "Dummy User".text.fontFamily(semibold).white.make(),
                    "customer@example.com".text.white.make(),
                  ],
                )),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.white)),
                    onPressed: () async {
                      await Get.put(AuthController()).signoutMethod(context);
                      Get.offAll(() => const LoginScreen());
                    },
                    child: logout.text.fontFamily(semibold).white.make())
              ],
            ),
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                detilasCard(
                    count: "00",
                    title: "in your cart",
                    width: context.screenWidth / 3.4),
                detilasCard(
                    count: "32",
                    title: "in your wishList",
                    width: context.screenWidth / 3.4),
                detilasCard(
                    count: "675",
                    title: "in your orders",
                    width: context.screenWidth / 3.4)
              ],
            ),

            //buttons scetion
            ListView.separated(
              shrinkWrap: true,
              itemCount: profileButtonsList.length,
              separatorBuilder: (context, index) {
                return const Divider(color: lightGrey);
              },
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Image.asset(
                    profileButtonIcon[index],
                    width: 22,
                  ),
                  title: profileButtonsList[index]
                      .text
                      .fontFamily(semibold)
                      .color(darkFontGrey)
                      .make(),
                );
              },
            )
                .box
                .white
                .rounded
                .margin(const EdgeInsets.all(12))
                .padding(const EdgeInsets.symmetric(horizontal: 16))
                .shadowSm
                .make()
                .box
                .color(redColor)
                .make(),
          ],
        ),
      ),
    ));
  }
}

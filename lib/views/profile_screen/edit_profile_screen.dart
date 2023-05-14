import 'package:emart_new/consts/consts.dart';
import 'package:emart_new/controller/profile_controller.dart';
import 'package:emart_new/widgets_common/bg_widget.dart';
import 'package:emart_new/widgets_common/custom_textfiled.dart';
import 'package:emart_new/widgets_common/our_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ProfileController());
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(imgProfile2, width: 100, fit: BoxFit.cover)
              .box
              .roundedFull
              .clip(Clip.antiAlias)
              .make(),
          10.heightBox,
          ourButton(
              color: redColor,
              onPress: () {
                Get.find<ProfileController>().changeImage(context);
              },
              textcolor: whiteColor,
              title: "Change"),
          Divider(),
          20.heightBox,
          customTextField(hint: nameHint, title: name, isPass: false),
          customTextField(hint: passwordhint, title: password, isPass: true),
          20.heightBox,
          SizedBox(
            width: context.screenWidth - 60,
            child: ourButton(
                color: redColor,
                onPress: () {},
                textcolor: whiteColor,
                title: "Save"),
          )
        ],
      )
          .box
          .white
          .shadowSm
          .padding(const EdgeInsets.all(16))
          .margin(const EdgeInsets.all(50))
          .rounded
          .make(),
    ));
  }
}

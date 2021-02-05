import 'package:flutter/material.dart';
import 'package:responsive_login/shared_value.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:delayed_display/delayed_display.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.background,
      body: VxBox(
              child: VStack(
        [
          DelayedDisplay(
            delay: Duration(milliseconds: 300),
            child: Image.asset(
              'assets/images/logo.png',
              scale: 1.4,
            ).pOnly(top: 74, bottom: 14),
          ),
          'Admin Login'.text.xl.medium.textStyle(textStyle.primaryText).make(),
          55.heightBox,
          VxBox(
                  child: TextField(
            style: textStyle.primaryText,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'username',
                hintStyle: textStyle.textField),
          ).pSymmetric(h: 20))
              .roundedLg
              .color(color.lightGrey)
              .width(context.percentWidth * ((context.isMobile) ? 60 : 20))
              .make()
              .pSymmetric(h: 40, v: 5),
          VxBox(
                  child: HStack([
            Expanded(
              child: TextField(
                  style: textStyle.primaryText,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'password',
                      hintStyle: textStyle.textField)),
            ),
            Icon(
              Icons.remove_red_eye,
              size: 14,
            )
          ]).pSymmetric(h: 20))
              .roundedLg
              .color(color.lightGrey)
              .width(context.percentWidth * ((context.isMobile) ? 60 : 20))
              .make()
              .pSymmetric(h: 40, v: 5),
          30.heightBox,
          VxBox(
                  child: 'Login'
                      .text
                      .textStyle(textStyle.primaryText
                          .copyWith(color: Vx.white, fontSize: 12))
                      .xs
                      .make()
                      .pSymmetric(v: 12, h: 60))
              .color(color.primary)
              .roundedLg
              .make(),
          Image.asset(
            'assets/images/backgorund.png',
            fit: BoxFit.fitHeight,
            scale: context.percentHeight * .3,
          ).pSymmetric(v: 20)
        ],
        alignment: MainAxisAlignment.center,
        crossAlignment: CrossAxisAlignment.center,
      ).scrollVertical())
          .rounded
          .withShadow([
            BoxShadow(
              blurRadius: 20,
              color: color.grey.withOpacity(.2),
            )
          ])
          .color(Vx.white)
          .makeCentered(),
    );
  }
}

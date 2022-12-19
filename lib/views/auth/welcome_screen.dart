import 'package:get/get.dart';
import 'package:twitter/utility/consts.dart';
import 'package:twitter/views/auth/loginScreen.dart';
import 'package:twitter/views/auth/signup_screen.dart';
import 'package:twitter/widgets/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TwitterColor.white,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Align(
                alignment: Alignment.topCenter,
                child: Image.asset("assets/images/icon-480.png", width: 35)),
            Spacer(),
            "See what's \nhappining in the \nworld right now."
                .text
                .color(TwitterColor.black)
                .fontFamily(font4)
                .size(32)
                .align(TextAlign.start)
                .make(),
            Spacer(),
            GestureDetector(
              onTap: () {
                Get.to(() => SignupScreen());
              },
              child: Container(
                  width: double.infinity,
                  height: 45,
                  decoration: BoxDecoration(
                      color: TwitterColor.black,
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                      child: Text(
                    "Create account",
                    style: TextStyle(
                        color: TwitterColor.white,
                        fontSize: 16,
                        fontFamily: font3),
                  ))),
            ),
            20.heightBox,
            Row(
              children: [
                "By signin up you agree to our"
                    .text
                    .color(TwitterColor.black)
                    .fontFamily(font1)
                    .size(14)
                    .make(),
                " Terms"
                    .text
                    .color(AppColor.primary)
                    .fontFamily(font1)
                    .size(14)
                    .make(),
                ","
                    .text
                    .color(TwitterColor.black)
                    .fontFamily(font1)
                    .size(14)
                    .make(),
                " Privacy"
                    .text
                    .color(AppColor.primary)
                    .fontFamily(font1)
                    .size(14)
                    .make(),
              ],
            ),
            Row(
              children: [
                "Policy,"
                    .text
                    .color(AppColor.primary)
                    .fontFamily(font1)
                    .size(14)
                    .make(),
                " and"
                    .text
                    .color(TwitterColor.black)
                    .fontFamily(font1)
                    .size(14)
                    .make(),
                " Cokkie Use"
                    .text
                    .color(AppColor.primary)
                    .fontFamily(font1)
                    .size(14)
                    .make(),
                "."
                    .text
                    .color(TwitterColor.cerulean)
                    .fontFamily(font1)
                    .size(14)
                    .make(),
              ],
            ),
            40.heightBox,
            Row(
              children: [
                "Have an account already? "
                    .text
                    .color(TwitterColor.black)
                    .fontFamily(font2)
                    .size(14)
                    .make(),
                " Log in"
                    .text
                    .color(AppColor.primary)
                    .fontFamily(font2)
                    .size(14)
                    .make()
                    .onTap(() {
                  Get.to(() => const LoginScreen());
                }),
              ],
            ),
          ],
        )
            .box
            .padding(const EdgeInsets.symmetric(horizontal: 30, vertical: 30))
            .make(),
      ),
    );
  }
}

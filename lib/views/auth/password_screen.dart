import 'package:get/get.dart';
import 'package:twitter/controllers/auth_controller.dart';
import 'package:twitter/utility/consts.dart';
import 'package:twitter/views/home/home_screen.dart';
import 'package:twitter/views/home/landing_screen.dart';
import 'package:twitter/widgets/customTextField.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  var controller = Get.put(AuthController());
  bool? isCheck = false;

  // text controllers
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: TwitterColor.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Image.asset("assets/images/icon-480.png", width: 35),
        backgroundColor: TwitterColor.white,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.close,
              color: TwitterColor.woodsmoke,
            )),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Obx(
          () => Column(
            children: [
              "Enter your password"
                  .text
                  .color(TwitterColor.black)
                  .fontFamily(font3)
                  .size(26)
                  .align(TextAlign.left)
                  .make(),
              10.heightBox,
              customTextField(
                hint: "password",
                isPass: false,
                title: "",
                controller: nameController,
              ),
              10.heightBox,
              Spacer(),
              Divider(),
              5.heightBox,
              controller.isLoading.value
                  ? const CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(AppColor.primary),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                              width: 150,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: TwitterColor.white,
                                  border:
                                      Border.all(color: TwitterColor.woodsmoke),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Center(
                                  child: Text(
                                "Forgot password?",
                                style: TextStyle(
                                    color: TwitterColor.woodsmoke,
                                    fontSize: 16,
                                    fontFamily: font3),
                              ))),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.offAll(() => const LandingScreen());
                          },
                          child: Container(
                              width: 70,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: TwitterColor.black,
                                  borderRadius: BorderRadius.circular(25)),
                              child: Center(
                                  child: Text(
                                "Log in",
                                style: TextStyle(
                                    color: TwitterColor.white,
                                    fontSize: 16,
                                    fontFamily: font3),
                              ))),
                        ),
                      ],
                    ),
            ],
          )
              .box
              .padding(const EdgeInsets.symmetric(horizontal: 20, vertical: 20))
              .margin(const EdgeInsets.all(5))
              .roundedFull
              .make(),
        ),
      ),
    );
  }
}

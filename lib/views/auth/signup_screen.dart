import 'package:get/get.dart';
import 'package:twitter/controllers/auth_controller.dart';
import 'package:twitter/utility/consts.dart';
import 'package:twitter/views/home/home_screen.dart';
import 'package:twitter/views/home/landing_screen.dart';
import 'package:twitter/widgets/customTextField.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
              Icons.arrow_back,
              color: TwitterColor.woodsmoke,
            )),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Obx(
          () => Column(
            children: [
              "Create your account"
                  .text
                  .color(TwitterColor.black)
                  .fontFamily(font3)
                  .size(26)
                  .align(TextAlign.left)
                  .make(),
              Spacer(),
              customTextField(
                hint: "name",
                isPass: false,
                title: "",
                controller: nameController,
              ),
              10.heightBox,
              customTextField(
                hint: "Phone number or email",
                isPass: false,
                title: "",
                controller: emailController,
              ),
              10.heightBox,
              customTextField(
                hint: "Password",
                isPass: true,
                title: "",
                controller: passwordController,
              ),
              Spacer(),
              Divider(),
              5.heightBox,
              controller.isLoading.value
                  ? const CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(AppColor.primary),
                    )
                  : GestureDetector(
                      onTap: ()
                          // async
                          {
                        // controller.isLoading(true);
                        // try {
                        //   await controller
                        //       .signupMethod(
                        //           context: context,
                        //           email: emailController.text,
                        //           password: passwordController.text)
                        //       .then((value) {
                        //     return controller.storeUserData(
                        //         email: emailController.text,
                        //         name: nameController.text,
                        //         password: passwordController.text);
                        //   }).then((value) {
                        //     VxToast.show(context, msg: "SignUp Successfully");
                        //     Get.offAll(() => const HomeScreen());
                        //   });
                        // } catch (e) {
                        //   auth.signOut();
                        //   VxToast.show(context, msg: e.toString());
                        //   controller.isLoading(false);
                        // }
                        Get.offAll(() => const LandingScreen());
                      },
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                            width: 70,
                            height: 40,
                            decoration: BoxDecoration(
                                color: TwitterColor.black,
                                borderRadius: BorderRadius.circular(25)),
                            child: Center(
                                child: Text(
                              "Next",
                              style: TextStyle(
                                  color: TwitterColor.white,
                                  fontSize: 16,
                                  fontFamily: font3),
                            ))),
                      ),
                    ),
            ],
          )
              .box
              .padding(const EdgeInsets.symmetric(horizontal: 40, vertical: 20))
              .margin(const EdgeInsets.all(5))
              .roundedFull
              .make(),
        ),
      ),
    );
  }
}

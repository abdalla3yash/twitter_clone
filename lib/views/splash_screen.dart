import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:twitter/utility/consts.dart';
import 'package:twitter/views/auth/welcome_screen.dart';
import 'package:twitter/views/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      auth.authStateChanges().listen((User? user) {
        if (user == null && mounted) {
          Get.to(() => const WelcomeScreen());
        } else {
          Get.to(() => const HomeScreen());
        }
      });
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TwitterColor.white,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Container(
          height: 150,
          width: 150,
          alignment: Alignment.center,
          child: Container(
            padding: const EdgeInsets.all(50),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                const CircularProgressIndicator(
                  strokeWidth: 2,
                ),
                Image.asset(
                  'assets/images/icon-480.png',
                  height: 35,
                  width: 35,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

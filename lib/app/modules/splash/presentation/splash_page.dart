import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);
  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // Future.delayed(const Duration(seconds: 3)).then((_) async {
    //   Modular.to.pushReplacementNamed('/home');
    // });
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      // backgroundColor: const Color(0xffFFB444),
      body: Container(
        width: width,
        height: height,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(color: Colors.white),
        child: Stack(
          children: [
            Positioned(
              left: width / 8,
              top: 565,
              child: const SizedBox(
                width: 323,
                child: Text(
                  'Plan what you will do to be more organized for today, tomorrow and beyond',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF2C406E),
                    fontSize: 14,
                    fontFamily: 'Hind Siliguri',
                    fontWeight: FontWeight.w400,
                    height: 1.21,
                  ),
                ),
              ),
            ),
            Positioned(
              left: width / 8,
              top: 664,
              child: Container(
                width: 304,
                height: 52,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 304,
                        height: 52,
                        decoration: ShapeDecoration(
                          color: Color(0xFF5B67CA),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0xFFF1F6FF),
                              blurRadius: 13,
                              offset: Offset(-3, 7),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 132,
                      top: 18,
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Hind Siliguri',
                          fontWeight: FontWeight.w600,
                          height: 1.06,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: width / 2.5,
              top: 740,
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  color: Color(0xFF5B67CA),
                  fontSize: 16,
                  fontFamily: 'Hind Siliguri',
                  fontWeight: FontWeight.w600,
                  height: 1.06,
                ),
              ),
            ),
            Positioned(
              left: width / 2.8,
              top: 497,
              child: Container(
                width: 100,
                height: 52,
                padding: const EdgeInsets.only(
                    left: 0.32, right: 0.34, bottom: 0.01),
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/splash/logo_jobin.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: width / 6,
              top: 128,
              child: Container(
                width: 291,
                height: 294,
                padding: const EdgeInsets.only(
                    left: 0.32, right: 0.34, bottom: 0.01),
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/splash/icons_splash_1.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 290.34,
                      height: 293.99,
                      child: Stack(children: []),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

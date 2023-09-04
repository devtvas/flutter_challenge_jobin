import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CommonFormConcluedPage extends StatefulWidget {
  const CommonFormConcluedPage({Key? key}) : super(key: key);
  @override
  CommonFormConcluedPageState createState() => CommonFormConcluedPageState();
}

class CommonFormConcluedPageState extends State<CommonFormConcluedPage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        width: 375,
        height: 812,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: Colors.white),
        child: Stack(
          children: [
            Positioned(
              left: 24,
              top: 717,
              child: Container(
                width: 327,
                height: 56,
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
            Positioned(
              left: 121,
              top: 730,
              child: Text(
                'Voltar para o Inicio',
                style: TextStyle(
                  color: Color(0xFFFEFFFF),
                  fontSize: 18,
                  fontFamily: 'Hind Siliguri',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Positioned(
              left: 108,
              top: 55,
              child: Text(
                'Cadastro Concluido',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF10275A),
                  fontSize: 18,
                  fontFamily: 'Hind Siliguri',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Positioned(
              left: 108,
              top: 188,
              child: Container(
                width: 156.33,
                height: 141.22,
                child: Stack(children: []),
              ),
            ),
            Positioned(
              left: 120.37,
              top: 320.74,
              child: Container(
                width: 136.66,
                height: 12,
                child: Stack(children: []),
              ),
            ),
            Positioned(
              left: 108,
              top: 192.98,
              child: Container(
                width: 143.83,
                height: 101.15,
                child: Stack(children: []),
              ),
            ),
            Positioned(
              left: 156.39,
              top: 205.16,
              child: Container(
                width: 69.29,
                height: 121.04,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 67.16,
                        height: 121.04,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 8.10,
                              top: 45.67,
                              child: Container(
                                width: 59.06,
                                height: 75.37,
                                child: Stack(children: []),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 125.25,
              top: 236.34,
              child: Container(
                width: 44.47,
                height: 93.36,
                child: Stack(children: []),
              ),
            ),
            Positioned(
              left: 89,
              top: 393,
              child: Text(
                'Cadastro Concluido!',
                style: TextStyle(
                  color: Color(0xFF10275A),
                  fontSize: 24,
                  fontFamily: 'Hind Siliguri',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Positioned(
              left: 67,
              top: 432,
              child: Text(
                'Agora voce pode voltar para o inicio.',
                style: TextStyle(
                  color: Color(0xFF8A8AB2),
                  fontSize: 16,
                  fontFamily: 'Hind Siliguri',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

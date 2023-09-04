import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/images/app_images_svg.dart';

class CommonFormPage extends StatefulWidget {
  const CommonFormPage({Key? key}) : super(key: key);
  @override
  CommonFormPageState createState() => CommonFormPageState();
}

class CommonFormPageState extends State<CommonFormPage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () => Modular.to.pop(),
            icon: SvgPicture.asset(
              AppImagesSvg.svgArrowLeft,
            ),
          ),
          title: const Text(
            'Agendar Entrevista',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF10275A),
              fontSize: 18,
              fontFamily: 'Hind Siliguri',
              fontWeight: FontWeight.w600,
            ),
          )),
      body: Column(children: [
        Text(
          'Entrevistador(a)',
          style: TextStyle(
            color: Color(0xFF8A8AB2),
            fontSize: 14,
            fontFamily: 'Hind Siliguri',
            fontWeight: FontWeight.w500,
          ),
        ),
        //
        //
        Text(
          'Data',
          style: TextStyle(
            color: Color(0xFF8A8AB2),
            fontSize: 14,
            fontFamily: 'Hind Siliguri',
            fontWeight: FontWeight.w500,
          ),
        ),
        //
        //
        Text(
          'Hora',
          style: TextStyle(
            color: Color(0xFF8A8AB2),
            fontSize: 14,
            fontFamily: 'Hind Siliguri',
            fontWeight: FontWeight.w500,
          ),
        ), //
        //
        Container(
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
            child: Center(
              child: Text(
                'Proximo',
                style: TextStyle(
                  color: Color(0xFFFEFFFF),
                  fontSize: 18,
                  fontFamily: 'Hind Siliguri',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ))
      ]),
    );
  }
}

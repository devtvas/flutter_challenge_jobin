import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fast_forms/flutter_fast_forms.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobin/app/core/icons/app_icons_svg.dart';

class CommonFormPage extends StatefulWidget {
  const CommonFormPage({Key? key}) : super(key: key);
  @override
  CommonFormPageState createState() => CommonFormPageState();
}

class CommonFormPageState extends State<CommonFormPage> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    TextEditingController controllerEntrevistador = TextEditingController();
    TextEditingController controllerCalendar = TextEditingController();
    TextEditingController controllerTimer1 = TextEditingController();
    TextEditingController controllerTimer2 = TextEditingController();
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () => Modular.to.pop(),
            icon: SvgPicture.asset(
              AppIconsSvg.svgArrowLeft,
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
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
          child: Column(children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 0.0, vertical: 8.0),
              child: Row(
                children: [
                  Text(
                    'Entrevistador(a)',
                    style: TextStyle(
                      color: Color(0xFF8A8AB2),
                      fontSize: 14,
                      fontFamily: 'Hind Siliguri',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            //
            TextFormField(
              controller: controllerEntrevistador,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                // labelText: "Entrevistador(a)",
                labelStyle: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFE8E9F3), width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xFF5B67CA), width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
              ),
              maxLength: 20,
            ),

            //
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 0.0, vertical: 8.0),
              child: Row(
                children: [
                  Text(
                    'Data da Entrevista',
                    style: TextStyle(
                      color: Color(0xFF8A8AB2),
                      fontSize: 14,
                      fontFamily: 'Hind Siliguri',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            //
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    height: 56,
                    // color: Colors.amber,
                    child: Center(
                      child: FastDatePicker(
                        name: 'DatePicker',
                        firstDate: DateTime(1970),
                        lastDate: DateTime(2040),
                        mode: CupertinoDatePickerMode.date,
                        icon: const Icon(
                          Icons.abc,
                          size: 0,
                        ),
                        onChanged: (date) {
                          controllerCalendar.text =
                              '${date!.day}/${date.month}/${date.year}';
                        },
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 56,
                    // color: Colors.green,
                    child: Center(
                      child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          AppIconsSvg.svgCalendar,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //
            SizedBox(height: height * 0.02),
            //
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 0.0, vertical: 8.0),
              child: Row(
                children: [
                  Text(
                    'Hora',
                    style: TextStyle(
                      color: Color(0xFF8A8AB2),
                      fontSize: 14,
                      fontFamily: 'Hind Siliguri',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            //
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 56,
                    // color: Colors.amber,
                    child: Center(
                      child: FastTimePicker(
                        name: 'firstTime',
                           labelText: 'Entrada',
                        icon: const Icon(
                          Icons.abc,
                          size: 0,
                        ),
                        onChanged: (timer) {
                          controllerTimer1.text =
                              TimeOfDay(hour: timer!.hour, minute: timer.minute)
                                  .format(context);
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 56,
                    // color: Colors.red,
                    child: Center(
                      child: FastTimePicker(
                        name: 'secondTime',
                        labelText: 'Saida',
                        icon: const Icon(
                          Icons.abc,
                          size: 0,
                        ),
                        onChanged: (timer) {
                          controllerTimer2.text =
                              TimeOfDay(hour: timer!.hour, minute: timer.minute)
                                  .format(context);
                        },
                      ),
                    ),
                  ),
                ),
                // Expanded(
                //   flex: 1,
                //   child: Container(
                //     height: 56,
                //     color: Colors.green,
                //     child: Center(child: Text('btn ')),
                //   ),
                // ),
              ],
            ),
            Flexible(
              child: Container(
                height: height * 0.4,
                // color: Colors.blue,
                // child: const Center(child: Text('space')),
              ),
            ),
            //
            GestureDetector(
              onTap: () {
                log('${controllerEntrevistador.text}');
                log('${controllerCalendar.text}');
                log('${controllerTimer1.text}');
                log('${controllerTimer2.text}');
              },
              child: Container(
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
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialSearch extends StatefulWidget {
  const SocialSearch({super.key});

  @override
  State<SocialSearch> createState() => _SocialSearchState();
}

class _SocialSearchState extends State<SocialSearch> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text(
              "البحث الاجتماعي",
              style: GoogleFonts.cairo(),
            ),
          ),
          body: Container(
            margin: EdgeInsets.only(top: 50, left: 10, right: 10),
            child: Column(
              children: [
                Text(
                  "الخطوات المتبعة للاستفادة من البحث الاجتماعي :",
                  style: GoogleFonts.tajawal(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '''
يتم الإعلان للطلاب عن بدء التسجيل للبحث الاجتماعي من قبل عمادة شئون الطلبة من خلال لوحة الإعلانات والموقع الإلكتروني الخاص بالجامعة، وعبر الرسائل القصيرة.
يقوم الطالب بتعبئة استمارة البحث الاجتماعي علي الموقع الخاص بجامعة الأقصى www.alaqsa.edu.psعلى صفحة الطالب الالكترونية .
يقوم الطالب بإرفاق الأوراق الثبوتية الأصلية الكترونيا (ملف pdf) على صفحته الالكترونية
يقوم الطالب بعد عملية تعبئة الاستمارة بإحضار جميع الأوراق التي تثبت صحة البيانات المدخلة علي الموقع الإلكتروني.
يقوم الطالب بإحضار الأوراق الثبوتية وتسلميها لموظفي شئون الطلبة , لتدقيقها ومراجعتها واعتماد الطلب من قبل الموظف المختص.
''',
                  style: GoogleFonts.cairo(fontSize: 17),
                )
              ],
            ),
          )),
    );
  }
}

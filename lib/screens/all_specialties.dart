import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_unv/data/data.dart';
import 'package:pro_unv/screens/bachelor_screen.dart';

class AllSpecialties extends StatefulWidget {
  const AllSpecialties({Key? key}) : super(key: key);

  @override
  State<AllSpecialties> createState() => _AllSpecialtiesState();
}

class _AllSpecialtiesState extends State<AllSpecialties> {
  List all_collage = [
    {"specialization": "كلية الحاسبات وتكنولوجيا المعلومات"},
    {"specialization": "كلية التربية"},
    {"specialization": "كلية العلوم التطبيقية"},
    {"specialization": "كلية الاعلام"},
    {"specialization": "كلية الفنون "},
    {"specialization": "كلية الاداب والعلوم الانسانية"},
    {"specialization": "كلية الادارة والتمويل"},
    {"specialization": "كلية العلوم الطبية"},
  ];
  late List data;

  List colorSpe = [
    
  ];
  @override
  void initState() {
    super.initState();
    data = [];
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text(
              "اقسام الكليات",
              style: GoogleFonts.cairo(),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView.builder(
                itemCount: all_collage.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 70,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (data.isEmpty) {
                                  readData(index);
                                } else if (data.isNotEmpty) {
                                  data.clear();
                                  readData(index);
                                }
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            child: Text(
                              "${all_collage[index]['specialization']}",
                              style: GoogleFonts.tajawal(
                                  fontSize: 23, color: Colors.black),
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  );
                }),
          )),
    );
  }

  void readData(int index) {
    for (int element = 0; element < DataSource.data.length; element++) {
      if (DataSource.data[element]['id'] == index) {
        data.add(
          DataSource.data.elementAt(element)['specialization'],
        );
      }
    }
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => BachelorScreen(data: data)));
  }
}

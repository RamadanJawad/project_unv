import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_unv/data/data.dart';
import 'package:pro_unv/screens/diploma_screen.dart';
import 'package:pro_unv/screens/master_screen.dart';

class TabBar2 extends StatefulWidget {
  const TabBar2({Key? key}) : super(key: key);

  @override
  State<TabBar2> createState() => _TabBar2State();
}

class _TabBar2State extends State<TabBar2> {
  late List data1;
  late List data2;
  @override
  void initState() {
    super.initState();
    data1 = [];
    data2 = [];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(top: 20),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 70,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/all_specialties_screen');
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Text(
                    "برامج البكالوريوس",
                    style: GoogleFonts.tajawal(fontSize: 25),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              height: 70,
              child: ElevatedButton(
                  onPressed: () {
                    readDiploma();
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.purple,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Text(
                    "برامج الدبلوم",
                    style: GoogleFonts.tajawal(fontSize: 25),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              height: 70,
              child: ElevatedButton(
                  onPressed: () {
                    readMaster();
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Text(
                    "برامج الماجستير",
                    style: GoogleFonts.tajawal(fontSize: 25),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  void readDiploma() {
    for (int element = 0; element < DataSource.data.length; element++) {
      if (DataSource.data[element]['id'] == 8) {
        data1.add(
          DataSource.data.elementAt(element)['specialization'],
        );
      }
    }
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => DiplomaScreen(data: data1)));
  }

  void readMaster() {
    for (int element = 0; element < DataSource.data2.length; element++) {
      if (DataSource.data2[element]['id'] == 9) {
        data2.add(
          DataSource.data2.elementAt(element)['specialization'],
        );
      }
    }
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => MasterScreen(data: data2)));
  }
}

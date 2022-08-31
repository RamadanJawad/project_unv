import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_unv/data/data.dart';
import 'package:pro_unv/screens/screen2.dart';

class TabBar2 extends StatefulWidget {
  const TabBar2({Key? key}) : super(key: key);

  @override
  State<TabBar2> createState() => _TabBar2State();
}

class _TabBar2State extends State<TabBar2> {
  late List data;
  @override
  void initState() {
    super.initState();
    data = [];
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
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              height: 70,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      readData();
                    });
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
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              height: 70,
              child: ElevatedButton(
                  onPressed: () {},
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

  void readData() {
    for (int element = 0; element < DataSource.data.length; element++) {
      if (DataSource.data[element]['id'] == 8) {
        data.add(
          DataSource.data.elementAt(element)['specialization'],
        );
      }
    }
    print(data);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Screen2(data: data)));
  }
}

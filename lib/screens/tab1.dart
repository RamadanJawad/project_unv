import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_unv/data/data.dart';
import 'package:pro_unv/screens/selected_specialties.dart';

class TabBar1 extends StatefulWidget {
  const TabBar1({Key? key}) : super(key: key);

  @override
  State<TabBar1> createState() => _TabBar1State();
}

class _TabBar1State extends State<TabBar1> {
  TextEditingController _textEditingController = TextEditingController();
  final _branch = ["علمي", "أدبي", "شرعي", "صناعي", "ريادة واعمال"];
  final _gender = ["ذكر", "انثى"];
  String? _selectBranch;
  String? _selectGender;
  List data = [];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        child: Column(
          children: [
            DropdownButtonFormField(
              value: _selectBranch,
              hint: Text(
                "اختر الفرع",
                style: GoogleFonts.tajawal(
                    fontSize: 16, fontWeight: FontWeight.bold),
              ),
              // style: GoogleFonts.tajawal(
              //     fontSize: 16, fontWeight: FontWeight.bold),
              items: _branch
                  .map((e) => DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _selectBranch = value as String;
                });
              },
              icon: Icon(
                Icons.arrow_drop_down_circle,
                color: Colors.green,
              ),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: _textEditingController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 22, horizontal: 10),
                  hintText: "ادخل المعدل",
                  suffixIcon: Icon(
                    Icons.percent,
                    color: Colors.green,
                  ),
                  hintStyle: GoogleFonts.tajawal(
                      fontSize: 16, fontWeight: FontWeight.bold),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 15,
            ),
            DropdownButtonFormField(
              // style: GoogleFonts.tajawal(
              //     fontSize: 16, fontWeight: FontWeight.bold),
              value: _selectGender,
              hint: Text(
                "اختر الجنس",
                style: GoogleFonts.tajawal(
                    fontSize: 16, fontWeight: FontWeight.bold),
              ),
              items: _gender
                  .map((e) => DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _selectGender = value as String;
                });
              },
              icon: Icon(
                Icons.arrow_drop_down_circle,
                color: Colors.green,
              ),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      onPrimary: Colors.white,
                      padding: EdgeInsets.all(10)),
                  onPressed: () {
                    printData();
                  },
                  child: Text(
                    "فحص",
                    style: GoogleFonts.tajawal(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  void printData() {
    int value = int.parse(_textEditingController.text);
    for (int index = 0; index < DataSource.data.length; index++) {
      if (value >= DataSource.data.elementAt(index)['average']['male'] &&
          _selectBranch == DataSource.data.elementAt(index)['type1'] &&
          _selectGender == "ذكر") {

        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) => SelectedSpecialties(
        //               specialization: DataSource.data[index]['specialization'],
        //               average: DataSource.data[index]['average']['male'].toString(),
        //               price: DataSource.data[index]['price'].toString(),
        //             )));
      }
      // else if (value >= DataSource.data.elementAt(index)['average']['male'] &&
      //     _selectBranch == DataSource.data.elementAt(index)['type1'] &&
      //     _selectGender == "male") {
      //   print(DataSource.data[index]['specialization']);
      //   print(DataSource.data[index]['type1']);
      //   print(
      //       "The gender is male=${DataSource.data[index]['average']['male']}");
      //   print(
      //       "===========================================================================");
      // }
    }
  }
}

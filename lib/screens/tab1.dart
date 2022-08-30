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
  late List allData;
  @override
  void initState() {
    super.initState();
    allData = [];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          DropdownButtonFormField(
            value: _selectBranch,
            hint: Text(
              "اختر الفرع",
              style: GoogleFonts.tajawal(
                  fontSize: 16, fontWeight: FontWeight.bold),
            ),
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
            icon: const Icon(
              Icons.arrow_drop_down_circle,
              color: Colors.green,
            ),
            decoration: InputDecoration(
                enabledBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            controller: _textEditingController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 22, horizontal: 10),
                hintText: "ادخل المعدل",
                suffixIcon: const Icon(
                  Icons.percent,
                  color: Colors.green,
                ),
                hintStyle: GoogleFonts.tajawal(
                    fontSize: 16, fontWeight: FontWeight.bold),
                enabledBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          const SizedBox(
            height: 15,
          ),
          DropdownButtonFormField(
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
            icon: const Icon(
              Icons.arrow_drop_down_circle,
              color: Colors.green,
            ),
            decoration: InputDecoration(
                enabledBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    onPrimary: Colors.white,
                    padding: const EdgeInsets.all(10)),
                onPressed: () {
                  setState(() {
                    if (allData.isEmpty) {
                      printData();
                    } else if (allData.isNotEmpty) {
                      allData.clear();
                      printData();
                    }
                  });
                },
                child: Text(
                  "فحص",
                  style: GoogleFonts.tajawal(
                      fontSize: 20, fontWeight: FontWeight.bold),
                )),
          ),
        ],
      ),
    );
  }

  void printData() {
    double value = double.parse(_textEditingController.text);
    
    for (int index = 0; index < DataSource.data.length; index++) {
      if (value >= DataSource.data.elementAt(index)['average']['male'] &&
          _selectGender == "ذكر" &&
          _selectBranch == DataSource.data.elementAt(index)['type1']) {
        allData.addAll([
          {
            "specialization":
                DataSource.data.elementAt(index)['specialization'],
            "average": DataSource.data.elementAt(index)['average']['male'],
            "price": DataSource.data.elementAt(index)['price']
          }
        ]);
      } else if (value >= DataSource.data.elementAt(index)['average']['male'] &&
          _selectGender == "ذكر" &&
          _selectBranch == DataSource.data.elementAt(index)['type2']) {
        allData.addAll([
          {
            "specialization":
                DataSource.data.elementAt(index)['specialization'],
            "average": DataSource.data.elementAt(index)['average']['male'],
            "price": DataSource.data.elementAt(index)['price']
          }
        ]);
      } else if (value >= DataSource.data.elementAt(index)['average']['male'] &&
          _selectGender == "ذكر" &&
          _selectBranch == DataSource.data.elementAt(index)['type3']) {
        allData.addAll([
          {
            "specialization":
                DataSource.data.elementAt(index)['specialization'],
            "average": DataSource.data.elementAt(index)['average']['male'],
            "price": DataSource.data.elementAt(index)['price']
          }
        ]);
      } else if (value >= DataSource.data.elementAt(index)['average']['male'] &&
          _selectGender == "ذكر" &&
          _selectBranch == DataSource.data.elementAt(index)['type4']) {
        allData.addAll([
          {
            "specialization":
                DataSource.data.elementAt(index)['specialization'],
            "average": DataSource.data.elementAt(index)['average']['male'],
            "price": DataSource.data.elementAt(index)['price']
          }
        ]);
      } else if (value >= DataSource.data.elementAt(index)['average']['male'] &&
          _selectGender == "ذكر" &&
          _selectBranch == DataSource.data.elementAt(index)['type5']) {
        allData.addAll([
          {
            "specialization":
                DataSource.data.elementAt(index)['specialization'],
            "average": DataSource.data.elementAt(index)['average']['male'],
            "price": DataSource.data.elementAt(index)['price']
          }
        ]);
      }
      /*******************************female ****************************************/
      else if (value >= DataSource.data.elementAt(index)['average']['female'] &&
          _selectGender == "انثى" &&
          _selectBranch == DataSource.data.elementAt(index)['type1']) {
        allData.addAll([
          {
            "specialization":
                DataSource.data.elementAt(index)['specialization'],
            "average": DataSource.data.elementAt(index)['average']['female'],
            "price": DataSource.data.elementAt(index)['price']
          }
        ]);
      } else if (value >=
              DataSource.data.elementAt(index)['average']['female'] &&
          _selectGender == "انثى" &&
          _selectBranch == DataSource.data.elementAt(index)['type2']) {
        allData.addAll([
          {
            "specialization":
                DataSource.data.elementAt(index)['specialization'],
            "average": DataSource.data.elementAt(index)['average']['female'],
            "price": DataSource.data.elementAt(index)['price']
          }
        ]);
      } else if (value >=
              DataSource.data.elementAt(index)['average']['female'] &&
          _selectGender == "انثى" &&
          _selectBranch == DataSource.data.elementAt(index)['type3']) {
        allData.addAll([
          {
            "specialization":
                DataSource.data.elementAt(index)['specialization'],
            "average": DataSource.data.elementAt(index)['average']['female'],
            "price": DataSource.data.elementAt(index)['price']
          }
        ]);
      } else if (value >=
              DataSource.data.elementAt(index)['average']['female'] &&
          _selectGender == "انثى" &&
          _selectBranch == DataSource.data.elementAt(index)['type4']) {
        allData.addAll([
          {
            "specialization":
                DataSource.data.elementAt(index)['specialization'],
            "average": DataSource.data.elementAt(index)['average']['female'],
            "price": DataSource.data.elementAt(index)['price']
          }
        ]);
      } else if (value >=
              DataSource.data.elementAt(index)['average']['female'] &&
          _selectGender == "انثى" &&
          _selectBranch == DataSource.data.elementAt(index)['type5']) {
        allData.addAll([
          {
            "specialization":
                DataSource.data.elementAt(index)['specialization'],
            "average": DataSource.data.elementAt(index)['average']['female'],
            "price": DataSource.data.elementAt(index)['price']
          }
        ]);
      }
    }
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SelectedSpecialties(data: allData)));
  }
}

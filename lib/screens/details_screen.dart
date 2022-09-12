import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_unv/data/details.dart';
import 'package:pro_unv/screens/screen4.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  late List data;
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
            title: Text(
              "المنح والاعفاءات",
              style: GoogleFonts.cairo(),
            ),
            backgroundColor: Colors.green,
          ),
          body: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                    thickness: 2,
                  ),
              itemCount: DataDetails.data.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      if (data.isEmpty) {
                        readData(index);
                      } else if (data.isNotEmpty) {
                        data.clear();
                        readData(index);
                      }
                    });
                  },
                  child: ListTile(
                    title: Text(
                      " * ${DataDetails.data[index]['name']}",
                      style: GoogleFonts.cairo(fontSize: 20),
                    ),
                    subtitle: Text(
                      "${DataDetails.data[index]['start']}",
                      style: GoogleFonts.cairo(fontSize: 16),
                    ),
                    trailing:
                        Text("${DataDetails.data[index]['exemption rate']}"),
                  ),
                );
              })),
    );
  }

  void readData(int index) {
    for (int element = 0; element < DataDetails.data.length; element++) {
      if (DataDetails.data[element]['id'] == index) {
        data.add(
          DataDetails.data.elementAt(element)['details1'],
        );
        data.add(DataDetails.data.elementAt(element)['details2']);
        data.add(DataDetails.data.elementAt(element)['details3']);
      }
    }
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Screen4(data: data)));
  }
}

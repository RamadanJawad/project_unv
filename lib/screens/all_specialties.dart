import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_unv/data/data.dart';
import 'package:pro_unv/data/dataCollage.dart';

class AllSpecialties extends StatefulWidget {
  const AllSpecialties({Key? key}) : super(key: key);

  @override
  State<AllSpecialties> createState() => _AllSpecialtiesState();
}

class _AllSpecialtiesState extends State<AllSpecialties> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            "كافة التخصصات",
            style: GoogleFonts.cairo(),
          ),
        ),
        
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DiplomaScreen extends StatelessWidget {
  final List data;
  const DiplomaScreen({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            "التخصصات المطروحة",
            style: GoogleFonts.cairo(),
          ),
        ),
        body: ListView.builder(
              itemCount:data.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 80,
                  child: Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.grey,
                    child: Center(
                      child: Text("${data[index]}",
                          style: GoogleFonts.cairo(fontSize: 22)),
                    ),
                  ),
                );
              }),
      ),
    );
  }
}

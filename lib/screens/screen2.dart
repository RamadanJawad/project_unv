import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen2 extends StatefulWidget {
  final List data;
  const Screen2({Key? key, required this.data}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
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
              itemCount: widget.data.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 80,
                  child: Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.grey,
                    child: Text("${widget.data[index]}",
                        style: GoogleFonts.cairo(fontSize: 22)),
                  ),
                );
              }),
      ),
    );
  }
}

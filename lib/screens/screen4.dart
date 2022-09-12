import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen4 extends StatefulWidget {
  final List data;
  const Screen4({super.key, required this.data});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("تفاصيل المنح والاعفاءات", style: GoogleFonts.cairo()),
          backgroundColor: Colors.green,
        ),
        body: ListView.separated(
            separatorBuilder: (context, index) {
              return Divider(
                color: Colors.grey,
                height: 2,
                thickness: 2,
              );
            },
            itemCount: widget.data.length,
            itemBuilder: (context, index) {
              return Text("${widget.data[index]}\n",
                  style: GoogleFonts.cairo(fontSize: 16));
            }),
      ),
    );
  }
}

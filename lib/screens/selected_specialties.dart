import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_unv/data/data.dart';

class SelectedSpecialties extends StatefulWidget {
  final List data;
  const SelectedSpecialties({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  State<SelectedSpecialties> createState() => _SelectedSpecialtiesState();
}

class _SelectedSpecialtiesState extends State<SelectedSpecialties> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(

          title: Text(
            "التخصصات المتاحة",
            style: GoogleFonts.cairo(),
          ),
        ),
        body: ListView.separated(
            separatorBuilder: (context, index) => Divider(),
            itemCount: widget.data.length,
            itemBuilder: (context, index) {
              return ListTile(
                  title: Text(
                    "${widget.data[index]["specialization"]}",
                    style: GoogleFonts.cairo(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                      "معدل القبول:${widget.data[index]['average']}%",
                      style: GoogleFonts.cairo(
                          fontWeight: FontWeight.w600, color: Colors.grey)),
                  trailing: Text(
                    "سعر الساعة:${widget.data[index]['price']}",
                    style: GoogleFonts.cairo(color: Colors.teal),
                  ));
            }),
      ),
    );
  }
}

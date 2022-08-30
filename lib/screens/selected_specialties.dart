import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
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
          backgroundColor: Colors.green,
          title: Text("كافة البيانات"),
        ),
        body: ListView.builder(
            itemCount: widget.data.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("${widget.data[index]["specialization"]}"),
                subtitle: Text("${widget.data[index]['average']}"),
                leading: Text("${widget.data[index]['price']}"),
              );
            }),
      ),
    );
  }
}

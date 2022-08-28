import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pro_unv/data/data.dart';

class SelectedSpecialties extends StatefulWidget {
  final String specialization;
  final String price;
  final String average;
  const SelectedSpecialties({
    Key? key,
    required this.specialization,
    required this.price,
    required this.average,
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
          title: Text("Data"),
        ),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("${widget.specialization}"),
                subtitle: Text("${widget.average}"),
                leading: Text("${widget.price}"),
              );
            }),
      ),
    );
  }
}

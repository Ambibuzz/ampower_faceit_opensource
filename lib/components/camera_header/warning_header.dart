import 'package:attendancemanagement/components/bold_heading/bold_heading.dart';
import 'package:attendancemanagement/components/medium_description/medium_description.dart';
import 'package:flutter/material.dart';

class WarningHeader extends StatelessWidget {
  const WarningHeader(
      {super.key, required this.onBackPressed, required this.checkTime});
  final Function onBackPressed;
  final String checkTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 60),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[Colors.black, Colors.transparent],
        ),
      ),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                padding: const EdgeInsets.all(0),
                constraints: const BoxConstraints(),
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )),
          const SizedBox(
            height: 20,
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Boldheading(
                title: 'Something looks fishy',
                headingColor: Color(0xFFFFC657)),
          ),
          const Align(
              alignment: Alignment.topLeft,
              child: MediumDescription(
                  title: 'We feel you are not in your office premises',
                  headingColor: Colors.white)),
          const SizedBox(
            height: 100,
          ),
          const Icon(
            Icons.error_outline_sharp,
            color: Color(0xFFFFC657),
            size: 250,
          )
        ],
      ),
    );
  }
}

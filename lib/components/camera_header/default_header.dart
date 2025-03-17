import 'package:attendancemanagement/components/bold_heading/bold_heading.dart';
import 'package:attendancemanagement/components/medium_description/medium_description.dart';
// import 'package:attendancemanagement/helpers/colors.dart';
import 'package:flutter/material.dart';

class DefaultHeader extends StatelessWidget {
  const DefaultHeader(
      {super.key, required this.onBackPressed, required this.isLoading});
  final Function onBackPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 60),
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[Colors.black, Colors.transparent],
        ),
      ),
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
          Align(
            alignment: Alignment.topLeft,
            child: Boldheading(
                title: !isLoading ? 'Hold Still' : 'Please wait',
                headingColor: Colors.white,),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: MediumDescription(
                  title: !isLoading
                      ? 'Look directly into the camera'
                      : 'Please wait we are setting up for you',
                  headingColor: Colors.white)),
        ],
      ),
    );
  }
}

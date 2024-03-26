import 'package:flutter/material.dart';
import 'package:good_meal/models/MakeItResponsive.dart';
import '../widgets/TitleText.dart';

class EventSection extends StatelessWidget {
  const EventSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    bool isSmall = (screenSize == ScreenSize.small);
    Size cardSize = isSmall ? size / 2 : size / 4;

    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            children: [
              TitleText(string: "Evénements"),
              Expanded(child: Container())
            ],
          ),
          Row(
            children: [
              Expanded(child: Container())
            ],
          ),
          adaptedToSize(isSmall, cardSize)
        ]

      ),
    );
  }
  Widget  adaptedToSize(bool small, Size size){
    
  }
}

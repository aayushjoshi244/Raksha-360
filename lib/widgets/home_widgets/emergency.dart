import 'package:flutter/material.dart';
import 'package:women_safety_app/widgets/home_widgets/emergencies/alertemergency.dart';
import 'package:women_safety_app/widgets/home_widgets/emergencies/fireemergency.dart';
import 'package:women_safety_app/widgets/home_widgets/emergencies/medicalemergency.dart';
import 'package:women_safety_app/widgets/home_widgets/emergencies/policemergencies.dart';

class Emergency extends StatelessWidget {
  const Emergency({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 180,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          PoliceEmergencies(),
          AmbulanceEmergency(),
          FireBrigadeEmergency(),
          AlertEmergency(),
        ],
      ),
    );
  }
}
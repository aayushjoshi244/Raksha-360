import 'package:flutter/material.dart';

class HospitalCard extends StatelessWidget {
  final Function? onMapFunction;
  const HospitalCard({Key? key, this.onMapFunction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              onMapFunction!('Hospital Near me');
            },
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child:Container(
                height: 60,
                width: 60,
                child: Center(
                  child: Image.asset(
                    'assets/hospital.png',
                    height: 32 ,
                    ),
                ),
              ) ,
            ),
          ),
          Text("Hospital")
        ],
      
      ),
    );
  }
}
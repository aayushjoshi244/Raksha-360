import 'package:flutter/material.dart';

class PharmacyCard extends StatelessWidget {
  final Function? onMapFunction;
  const PharmacyCard({Key? key, this.onMapFunction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              onMapFunction!('Medical Shops Near me');
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
                    'assets/pharmacy.png',
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
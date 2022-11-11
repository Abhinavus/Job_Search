import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class JobCard extends StatelessWidget {
 

final String companyName;
final String jobTitle;
final String logoImagePath;
final  int hourlyRate;

JobCard({
required this.companyName,
required this.jobTitle,
required this.hourlyRate,
required this.logoImagePath
});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:25.0),
      child: ClipRRect( borderRadius: BorderRadius.circular(12),
        child: Container( width: 250,
          padding: EdgeInsets.all(12),
          color: Colors.grey[200],
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [ ClipRRect(borderRadius: BorderRadius.circular(8),
                  child: Container(
                    height: 50, 
                    child: Image.asset(logoImagePath),
                  ),
                ),
                ClipRRect(borderRadius: BorderRadius.circular(12),
                  child: Container( padding: EdgeInsets.all(12),
                    child: Text('Part Time'),
                    color: Colors.grey[500],),
                ),
                  
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top:2.0),
                child: Text(jobTitle,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                ),
              ),
              
              Text(
                '\₹'+ hourlyRate.toString() + '/per month'),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class RecentJobCard extends StatelessWidget {
  
final String companyName;
final String jobTitle;
final String logoImagePath;
final  int hourlyRate;

RecentJobCard({
required this.companyName,
required this.jobTitle,
required this.hourlyRate,
required this.logoImagePath
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:12.0),
      child: Container( 
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(color: Colors.grey[200],
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.white)
      ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              ClipRRect( borderRadius: BorderRadius.circular(100),
              child: Container(height: 50,
              padding: EdgeInsets.all(5),
              color: Colors.grey[200],
              child: Image.asset(logoImagePath),),
            ),
            SizedBox(width: 10),
            Column( crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
              Text(jobTitle,style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),),
              SizedBox(height:5),
              Text(companyName,style: TextStyle(
                color: Colors.grey[600],
              ),)
            ],),
            ],),
           
            Text(
                  '\₹'+ hourlyRate.toString() + '/per month'),
          ],
        ),
      ),
    );
  }
}
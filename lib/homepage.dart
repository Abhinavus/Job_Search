import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:job_search/utili/recent_job_card.dart';

import 'utili/job_card.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List jobsForYou  =[
    ['Flutter','Flutter Developer','lib/icons/flutter.png',25000],
    ['Google','Product Engineer','lib/icons/google.png',35000],
    ['BMW','Production Engineer','lib/icons/bmw.png',65000],
  ];

  final List recentJobs  =[
    ['Uber','UI Designer','lib/icons/5969323.png',45000],
    ['Nike','Graphics Designer','lib/icons/nike.png',80000],
    ['Steam','Game Developer','lib/icons/steam.jpeg',75000],
    ['Amazon','Accoutant','lib/icons/amazon.png',75000],   
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column( crossAxisAlignment: CrossAxisAlignment.start,
        children: [ SizedBox( height: 50),
          
           Padding(
             padding: const EdgeInsets.all(25.0),
             child: Text( 'Discover a New Path', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
             ),),
           ),
           SizedBox( height: 25),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 25.0),
             child: Container( decoration: BoxDecoration(color: Colors.white),
               child: Row(
                 children: [ Container(
                  height: 40, child: Image.asset('lib/icons/index.png'),
                 ),
                   Expanded(
                     child: TextField( decoration: InputDecoration(
                      border: InputBorder.none,hintText: 'Search for a job...'
                     ),),
                   ),
                 ],
               ),
             ),
           ),
          SizedBox(height: 10,) ,
          Padding(
             padding: const EdgeInsets.all(25.0),
             child: Text( 'For You', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
             ),),
           ),
          SizedBox(height: 15),
           Container(
            height: 160, child: ListView.builder(itemCount: jobsForYou.length, 
            scrollDirection: Axis.horizontal,
            itemBuilder: 
            (context ,index) {
              return JobCard(
                companyName: jobsForYou[index][0],
                jobTitle: jobsForYou[index][1],
                logoImagePath: jobsForYou[index][2],
                hourlyRate: jobsForYou[index][3],
              );
            }
            ),
          ),
           SizedBox(height: 35),
           Padding(
             padding: const EdgeInsets.all(25.0),
             child: Text( 'Recently Added', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
             ),),
           ),

           

           Expanded(child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 25.0),
             child: ListView.builder(
              itemCount:recentJobs.length,
              itemBuilder: (context, index) {
               return RecentJobCard(
                companyName: recentJobs[index][0],
                jobTitle:recentJobs[index][1] ,
                logoImagePath: recentJobs[index][2],
                hourlyRate: recentJobs[index][3],
               );
             },),
           ),),

        ],
      ),
    );
  }
}
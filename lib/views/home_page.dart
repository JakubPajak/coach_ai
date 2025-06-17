import 'package:coach_ai/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MainNavigation(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 35, horizontal: 20),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hey Jakub! It looks your recovery is going great!',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: Colors.white),
          ),
              SizedBox(height: 40),
              Text(
                'Last week summary',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Colors.white),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 10),
              Material(
                elevation: 2.0,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Color.fromRGBO(77, 161, 103, 1), borderRadius: BorderRadius.circular(10)),
                  child: 
                    Text('Lorem ipsum', 
                    style: Theme.of(context).textTheme.bodyLarge,),
                ),
              ),
              SizedBox(height: 20,),
        
              Text('Incoming workouts', style: Theme.of(context).textTheme.titleLarge,),
        
              SizedBox(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: 200,
                      margin: EdgeInsets.only(right: 16, top: 15),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(77, 161, 103, 1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Day ${index + 1}",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Spacer(),
                          Text(
                            "🏃 5km\n💤 8h",
                            style: TextStyle(color: Colors.white70),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20,),

              Text(
                'Dietary suggestions',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Colors.white),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 10),
              Material(
                elevation: 2.0,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Color.fromRGBO(77, 161, 103, 1), borderRadius: BorderRadius.circular(10)),
                  child: 
                    Text('Lorem ipsum', 
                    style: Theme.of(context).textTheme.bodyLarge,),
                ),
              ),
              SizedBox(height: 20,),
            ],
          ),
      ),
    );
  }
}

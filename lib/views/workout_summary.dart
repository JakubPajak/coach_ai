import 'package:coach_ai/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class WorkoutSummary extends StatefulWidget {
  const WorkoutSummary({super.key});

  @override
  State<WorkoutSummary> createState() => _WorkoutSummaryState();
}

class _WorkoutSummaryState extends State<WorkoutSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(18, 40, 56, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Workout Summary'),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavBar(),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) { 
           return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                'Interval Training - 6 May 2025',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _statCard('⏱ Time', '45 min'),
                  _statCard('📏 Distance', '12.3 km'),
                  _statCard('🔥 Calories', '430 kcal'),
                ],
              ),
              const SizedBox(height: 20),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _statCard('💓 Avg HR', '153 bpm'),
                  _statCard('🏃 Pace', '4:25/km'),
                  _statCard('⛰ Elevation', '+120m'),
                ],
              ),
              const SizedBox(height: 30),
        
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(16),
                ),
                alignment: Alignment.center,
                child: Text('📊 Chart Placeholder', style: TextStyle(color: Colors.white60)),
              ),
              
              const SizedBox(height: 30),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.psychology, color: Colors.amberAccent),
                        const SizedBox(width: 8),
                        Text(
                          "AI Training Analysis",
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "🚴 Świetna robota! Twój interwałowy trening utrzymał intensywność w zakresie progowym przez 18 minut. "
                      "Wskazuje to na poprawę tolerancji mleczanowej. Zalecamy dzień regeneracji przed kolejną sesją VO₂ max.",
                      style: const TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ],
          ),
          );
        },       
      ),
    );
  }

  Widget _statCard(String label, String value) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 6),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Text(label, style: const TextStyle(color: Colors.white70, fontSize: 12)),
            const SizedBox(height: 4),
            Text(value, style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}

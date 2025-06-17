import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(18, 40, 56, 1),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey,
        backgroundColor: const Color.fromARGB(255, 29, 85, 138),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_rounded),
            label: 'Stats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: 'Profile',
          ),
      ]),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white24,
                child: Icon(Icons.person, size: 50, color: Colors.white),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Jakub Nowak',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Intermediate Cyclist',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Colors.white70),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 30),
                  Text(
                    'Achievements',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.white),
                  ),
                  GridView.count(
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: [
                      _buildBadge(Icons.directions_bike, '100km Ride', Colors.orange),
                      _buildBadge(Icons.local_fire_department, '7-Day Streak', Colors.redAccent),
                      _buildBadge(Icons.star, 'First Race', Colors.amber),
                      _buildBadge(Icons.bolt, 'Fast Climber', Colors.lightGreen),
                      _buildBadge(Icons.favorite, 'Heart Rate Zone', Colors.pinkAccent),
                      _buildBadge(Icons.map, 'Exploration', Colors.blueAccent),
                    ],
                  ),
          const Divider(color: Colors.white24),
          const SizedBox(height: 10,),
          _buildOptionTile(context, Icons.lock_outline, 'Change Password'),
          _buildOptionTile(context, Icons.bar_chart, 'Training Stats'),
          _buildOptionTile(context, Icons.emoji_events_outlined, 'Goals & Achievements'),
          _buildOptionTile(context, Icons.settings, 'App Settings'),
          _buildOptionTile(context, Icons.feedback_outlined, 'Feedback & Support'),
          _buildOptionTile(context, Icons.logout, 'Logout', color: Colors.redAccent),
        ],
      ),
    );
  }

  Widget _buildOptionTile(context, IconData icon, String title, {Color? color}) {
    return ListTile(
      leading: Icon(icon, color: color ?? Colors.white),
      title: Text(
        title,
        style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Colors.white70),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white24, size: 16),
      onTap: () {
      },
    );
  }
}

 Widget _buildBadge(IconData icon, String label, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color.withOpacity(0.15),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.5)),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color, size: 30),
          const SizedBox(height: 10),
          Text(
            label,
            style: const TextStyle(color: Colors.white70, fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
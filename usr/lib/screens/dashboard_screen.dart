import 'package:flutter/material.dart';
import 'package:couldai_user_app/models/feature_item.dart';
import 'package:couldai_user_app/widgets/feature_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<FeatureItem> features = [
      FeatureItem(
        title: 'Emotion Detector',
        icon: Icons.face_retouching_natural,
        routeName: '/emotion_detector',
      ),
      FeatureItem(
        title: 'Mind & Soul',
        icon: Icons.self_improvement,
        routeName: '/mind_and_soul',
      ),
      FeatureItem(
        title: 'Art Therapy',
        icon: Icons.draw,
        routeName: '/art_therapy',
      ),
      FeatureItem(
        title: 'Chat with Abdi Y',
        icon: Icons.chat,
        routeName: '/chatbot',
      ),
      FeatureItem(
        title: 'My Progress',
        icon: Icons.pie_chart,
        routeName: '/progress',
      ),
      FeatureItem(
        title: 'Settings',
        icon: Icons.settings,
        routeName: '/settings',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mindful Companion'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Mindful Companion',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Your guide to emotional wellness',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const ListTile(
              leading: Icon(Icons.developer_mode),
              title: Text('Developer'),
              subtitle: Text('Abdi Dereje Yadeta'),
            ),
            const ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Location'),
              subtitle: Text('Nekemte, Oromia, Ethiopia'),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome Back!',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'How are you feeling today?',
              style: TextStyle(fontSize: 18, color: Colors.white70),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1.1,
                ),
                itemCount: features.length,
                itemBuilder: (context, index) {
                  return FeatureCard(item: features[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

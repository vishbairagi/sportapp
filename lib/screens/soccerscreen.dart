import 'package:flutter/material.dart';

class SoccerScoreScreen extends StatelessWidget {
  const SoccerScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFF1A1A2E),
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'ALL SCORE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: const [
                      Icon(Icons.search, color: Colors.white),
                      SizedBox(width: 16),
                      Icon(Icons.notifications, color: Colors.white),
                    ],
                  ),
                ],
              ),
            ),
            // Score Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  // First Match (1-0)
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          const Text(
                            'EFL',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.circle, color: Colors.green, size: 8),
                              const SizedBox(width: 4),
                              Text(
                                'LIVE',
                                style: TextStyle(color: Colors.green[300], fontSize: 12),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  const Icon(Icons.sports_soccer, color: Colors.white, size: 24), // Placeholder for team logo
                                  SizedBox(
                                    width: 60, // Constrain the width to prevent overflow
                                    child: Text(
                                      'Newcastle United',
                                      style: const TextStyle(color: Colors.white, fontSize: 12),
                                      textAlign: TextAlign.center,
                                      overflow: TextOverflow.ellipsis, // Truncate text if too long
                                      maxLines: 2,
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                '1',
                                style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                '-',
                                style: TextStyle(color: Colors.white, fontSize: 24),
                              ),
                              const Text(
                                '0',
                                style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                              Column(
                                children: [
                                  const Icon(Icons.sports_soccer, color: Colors.white, size: 24), // Placeholder for team logo
                                  SizedBox(
                                    width: 60, // Constrain the width to prevent overflow
                                    child: Text(
                                      'Liverpool',
                                      style: const TextStyle(color: Colors.white, fontSize: 12),
                                      textAlign: TextAlign.center,
                                      overflow: TextOverflow.ellipsis, // Truncate text if too long
                                      maxLines: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  // Second Match (2-3)
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          const Text(
                            '',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.circle, color: Colors.green, size: 8),
                              const SizedBox(width: 4),
                              Text(
                                'LIVE',
                                style: TextStyle(color: Colors.green[300], fontSize: 12),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  const Icon(Icons.sports_soccer, color: Colors.white, size: 24), // Placeholder for team logo
                                  SizedBox(
                                    width: 60, // Constrain the width to prevent overflow
                                    child: Text(
                                      'Newcastle United',
                                      style: const TextStyle(color: Colors.white, fontSize: 12),
                                      textAlign: TextAlign.center,
                                      overflow: TextOverflow.ellipsis, // Truncate text if too long
                                      maxLines: 2,
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                '2',
                                style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                '-',
                                style: TextStyle(color: Colors.white, fontSize: 24),
                              ),
                              const Text(
                                '3',
                                style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                              Column(
                                children: [
                                  const Icon(Icons.sports_soccer, color: Colors.white, size: 24), // Placeholder for team logo
                                  SizedBox(
                                    width: 60, // Constrain the width to prevent overflow
                                    child: Text(
                                      'Liverpool',
                                      style: const TextStyle(color: Colors.white, fontSize: 12),
                                      textAlign: TextAlign.center,
                                      overflow: TextOverflow.ellipsis, // Truncate text if too long
                                      maxLines: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Background Image
            Expanded(
              child: Container(

                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/football4.jpg'), // Replace with your soccer field image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[900],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white10,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor:  Color(0xFF1A1A2E),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_events),
            label: 'Series',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_soccer),
            label: 'Matches',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
      ),
    );
  }
}
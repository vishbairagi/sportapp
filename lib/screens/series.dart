import 'package:flutter/material.dart';

class SeriesScreen extends StatelessWidget {
  const SeriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A2E),
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
                    'Series',
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
            // Date Selection Bar
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  _buildDateChip('10 Nov', false),
                  const SizedBox(width: 8),
                  _buildDateChip('11 Nov', false),
                  const SizedBox(width: 8),
                  _buildDateChip('Today', true),
                  const SizedBox(width: 8),
                  _buildDateChip('13 Nov', false),
                  const SizedBox(width: 8),
                  _buildDateChip('14 Nov', false),
                ],
              ),
            ),
            // Match List
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                children: [
                  // EPL Match 1 (LIVE)
                  _buildMatchCard(
                    league: 'Premier League',
                    round: 'ROUND 53',
                    team1: 'Newcastle United',
                    team1Score: '0',
                    team2: 'Liverpool',
                    team2Score: '1',
                    status: 'LIVE',
                    time: '37:20',
                  ),
                  const SizedBox(height: 8),
                  // EPL Match 2 (FT)
                  _buildMatchCard(
                    league: 'Premier League',
                    round: 'ROUND 54',
                    team1: 'Newcastle United',
                    team1Score: '1',
                    team2: 'Liverpool',
                    team2Score: '0',
                    status: 'FT',
                    time: '+10',
                  ),
                  const SizedBox(height: 8),
                  // LaLiga Match (LIVE)
                  _buildMatchCard(
                    league: 'LaLiga',
                    round: 'ROUND 15',
                    team1: 'Athletic Club',
                    team1Score: '1',
                    team2: 'Villarreal CF',
                    team2Score: '2',
                    status: 'LIVE',
                    time: '37:20',
                  ),
                  const SizedBox(height: 8),
                  // Champions League Match (Scheduled)
                  _buildMatchCard(
                    league: 'Champions League',
                    round: 'QUARTERFINAL',
                    team1: 'Barcelona',
                    team2: 'Paris Saint Germain',
                    status: 'SCHEDULED',
                    time: '12:30 AM',
                  ),
                  const SizedBox(height: 8),
                  // Brasileirão Série A Match (LIVE)
                  _buildMatchCard(
                    league: 'Brasileirão Série A',
                    round: 'ROUND 2',
                    team1: 'Newcastle United',
                    team1Score: '1',
                    team2: 'Liverpool',
                    team2Score: '0',
                    status: 'LIVE',
                    time: '',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF1A1A2E),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white10,
        currentIndex: 1, // Highlight "Series" tab
        onTap: (index) {

        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
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

  // Helper method to build date chips
  Widget _buildDateChip(String label, bool isSelected) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFF6A0DAD) : Colors.grey[900],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.white70,
          fontSize: 14,
        ),
      ),
    );
  }

  // Helper method to build match cards
  Widget _buildMatchCard({
    required String league,
    required String round,
    String? team1,
    String? team1Score,
    String? team2,
    String? team2Score,
    required String status,
    required String time,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // League and Round
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                league,
                style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(
                round,
                style: const TextStyle(color: Colors.white70, fontSize: 12),
              ),
            ],
          ),
          const SizedBox(height: 8),
          // Teams and Scores
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Team 1
              Expanded(
                child: Row(
                  children: [
                    const Icon(Icons.sports_soccer, color: Colors.white, size: 24), // Placeholder for team logo
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        team1 ?? '',
                        style: const TextStyle(color: Colors.white, fontSize: 14),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              // Score or Status
              if (status == 'LIVE' || status == 'FT')
                Text(
                  '$team1Score - $team2Score',
                  style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                ),
              // Time/Status Indicator
              const SizedBox(width: 16),
              status == 'LIVE'
                  ? Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: const Color(0xFF6A0DAD), // Purple background
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.circle, color: Colors.green, size: 8),
                    const SizedBox(width: 4),
                    Text(
                      'LIVE',
                      style: TextStyle(color: Colors.green[300], fontSize: 12),
                    ),
                  ],
                ),
              )
                  : status == 'FT'
                  ? Text(
                'FT $time',
                style: const TextStyle(color: Colors.white70, fontSize: 12),
              )
                  : Text(
                time,
                style: const TextStyle(color: Colors.white70, fontSize: 12),
              ),
            ],
          ),
          const SizedBox(height: 8),
          // Team 2
          Row(
            children: [
              const Icon(Icons.sports_soccer, color: Colors.white, size: 24), // Placeholder for team logo
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  team2 ?? '',
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
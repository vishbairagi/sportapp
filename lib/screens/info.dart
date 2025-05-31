import 'package:flutter/material.dart';

class MatchStatsScreen extends StatefulWidget {
  const MatchStatsScreen({Key? key}) : super(key: key);

  @override
  State<MatchStatsScreen> createState() => _MatchStatsScreenState();
}

class _MatchStatsScreenState extends State<MatchStatsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: const Color(0xFF1A1A2E),
        appBar: AppBar(
          backgroundColor: const Color(0xFF1A1A2E),
          elevation: 0,
          title: Column(
            children: [
              // Match Header inside AppBar
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/liverpool_logo.png',
                            width: 40,
                            height: 40,
                            errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.error, color: Colors.white),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'LIV',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: const [
                          Text(
                            '2 - 1',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'FT',
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/newcastle_logo.png',
                            width: 40,
                            height: 40,
                            errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.error, color: Colors.white),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'NEW',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 3.0,
            tabs: [
              Tab(text: "Info"),
              Tab(text: "Timeline"),
              Tab(text: "Lineups"),
              Tab(text: "Stats"),
              Tab(text: "Standing"),
              Tab(text: "Commentary"),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.info_outline, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
        body: TabBarView(
          children: [
            // Info Tab (without Match Header)
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(color: Colors.grey),

                  // Player Ratings Section
                  const Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: Text(
                      'Player Ratings',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildPlayerRatingRow('Mohamed Salah', 8.5),
                                  _buildPlayerRatingRow('Virgil van Dijk', 7.8),
                                  _buildPlayerRatingRow(
                                      'Trent Alexander-Arnold', 7.2),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildPlayerRatingRow('Alexander Isak', 7.9),
                                  _buildPlayerRatingRow('Bruno Guimarães', 6.8),
                                  _buildPlayerRatingRow('Allan Saint-Maximin', 6.5),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Divider(color: Colors.grey),

                  // Team Stats Section
                  const Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: Text(
                      'Team Stats',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        _buildTeamStatRow('Possession', 52, 48),
                        _buildTeamStatRow('Shots', 14, 10),
                        _buildTeamStatRow('Shots on Target', 5, 4),
                        _buildTeamStatRow('Passes', 557, 677),
                        _buildTeamStatRow('Pass Accuracy', 82, 85),
                      ],
                    ),
                  ),
                  const Divider(color: Colors.grey),

                  // Match Info Section
                  const Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: Text(
                      'Match Info',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Venue: Anfield',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Referee: Michael Oliver',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Attendance: 53,000',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Timeline Tab
            SingleChildScrollView(
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Timeline',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    // List of match events
                    ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: const [
                        MatchEvent(
                          time: '85\'',
                          event: 'Mohamed Salah',
                          subEvent: 'Diogo Jota',
                          icon: Icons.arrow_forward,
                          isHomeTeam: true,
                          iconColor: Colors.green,
                        ),
                        MatchEvent(
                          time: '80\'',
                          event: 'Alexander Isak',
                          subEvent: 'Chris Wood',
                          icon: Icons.arrow_back,
                          isHomeTeam: false,
                          iconColor: Colors.green,
                        ),
                        MatchEvent(
                          time: '78\'',
                          event: 'Bruno Guimarães',
                          icon: Icons.warning,
                          isHomeTeam: false,
                          iconColor: Colors.yellow,
                        ),
                        MatchEvent(
                          time: '68\'',
                          event: 'Trent Alexander-Arnold',
                          subEvent: 'James Milner',
                          icon: Icons.arrow_forward,
                          isHomeTeam: true,
                          iconColor: Colors.green,
                        ),
                        MatchEvent(
                          time: '45\'',
                          event: 'Mohamed Salah',
                          icon: Icons.sports_soccer,
                          isHomeTeam: true,
                          iconColor: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Lineups Tab
            SingleChildScrollView(
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Liverpool Section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Liverpool: 4-3-3',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        Text(
                          'Manager: Jürgen Klopp',
                          style: TextStyle(color: Colors.grey[400], fontSize: 14),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),

                    // Pitch Formation for Liverpool
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                        color: const Color(0xFF2A2F4A),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Stack(
                        children: [
                          // Pitch background
                          Container(
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage('assets/pitch.png'),
                                fit: BoxFit.cover,
                                opacity: 0.3,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          // Players on the pitch (4-3-3 formation)
                          Positioned(
                            left: 50,
                            top: 20,
                            child: _buildPlayerPosition('Alisson Becker', 1),
                          ),
                          // Defenders (4)
                          Positioned(
                            left: 20,
                            top: 80,
                            child: _buildPlayerPosition('Andy Robertson', 3),
                          ),
                          Positioned(
                            left: 60,
                            top: 80,
                            child: _buildPlayerPosition('Virgil van Dijk', 4),
                          ),
                          Positioned(
                            left: 100,
                            top: 80,
                            child: _buildPlayerPosition('Ibrahima Konaté', 5),
                          ),
                          Positioned(
                            left: 140,
                            top: 80,
                            child:
                            _buildPlayerPosition('Trent Alexander-Arnold', 66),
                          ),
                          // Midfielders (3)
                          Positioned(
                            left: 40,
                            top: 140,
                            child: _buildPlayerPosition('Fabinho', 3),
                          ),
                          Positioned(
                            left: 80,
                            top: 140,
                            child: _buildPlayerPosition('Jordan Henderson', 14),
                          ),
                          Positioned(
                            left: 120,
                            top: 140,
                            child: _buildPlayerPosition('Thiago Alcântara', 6),
                          ),
                          // Forwards (3)
                          Positioned(
                            left: 20,
                            top: 200,
                            child: _buildPlayerPosition('Luis Díaz', 23),
                          ),
                          Positioned(
                            left: 80,
                            top: 200,
                            child: _buildPlayerPosition('Diogo Jota', 20),
                          ),
                          Positioned(
                            left: 140,
                            top: 200,
                            child: _buildPlayerPosition('Mohamed Salah', 11),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Substitutes Section for Liverpool
                    const Text(
                      'Substitutes',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    _buildPlayerList([
                      'Caoimhin Kelleher',
                      'Joël Matip',
                      'Joe Gomez',
                      'Naby Keïta',
                      'James Milner',
                      'Alex Oxlade-Chamberlain',
                      'Curtis Jones',
                      'Harvey Elliott',
                      'Darwin Núñez',
                      'Roberto Firmino',
                    ]),
                    const Divider(color: Colors.grey),
                    const SizedBox(height: 16),

                    // Newcastle United Section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Newcastle United: 4-3-3',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        Text(
                          'Manager: Eddie Howe',
                          style: TextStyle(color: Colors.grey[400], fontSize: 14),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),

                    // Pitch Formation for Newcastle
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                        color: const Color(0xFF2A2F4A),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Stack(
                        children: [
                          // Pitch background
                          Container(
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage('assets/pitch.png'),
                                fit: BoxFit.cover,
                                opacity: 0.3,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          // Players on the pitch (4-3-3 formation)
                          Positioned(
                            left: 50,
                            top: 20,
                            child: _buildPlayerPosition('Nick Pope', 22, isAway: true),
                          ),
                          // Defenders (4)
                          Positioned(
                            left: 20,
                            top: 80,
                            child: _buildPlayerPosition('Matt Targett', 13, isAway: true),
                          ),
                          Positioned(
                            left: 60,
                            top: 80,
                            child: _buildPlayerPosition('Fabian Schär', 5, isAway: true),
                          ),
                          Positioned(
                            left: 100,
                            top: 80,
                            child: _buildPlayerPosition('Sven Botman', 4, isAway: true),
                          ),
                          Positioned(
                            left: 140,
                            top: 80,
                            child: _buildPlayerPosition('Kieran Trippier', 2, isAway: true),
                          ),
                          // Midfielders (3)
                          Positioned(
                            left: 40,
                            top: 140,
                            child: _buildPlayerPosition('Bruno Guimarães', 39, isAway: true),
                          ),
                          Positioned(
                            left: 80,
                            top: 140,
                            child: _buildPlayerPosition('Sean Longstaff', 36, isAway: true),
                          ),
                          Positioned(
                            left: 120,
                            top: 140,
                            child: _buildPlayerPosition('Joe Willock', 28, isAway: true),
                          ),
                          // Forwards (3)
                          Positioned(
                            left: 20,
                            top: 200,
                            child: _buildPlayerPosition('Allan Saint-Maximin', 10, isAway: true),
                          ),
                          Positioned(
                            left: 80,
                            top: 200,
                            child: _buildPlayerPosition('Alexander Isak', 14, isAway: true),
                          ),
                          Positioned(
                            left: 140,
                            top: 200,
                            child: _buildPlayerPosition('Miguel Almirón', 24, isAway: true),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Substitutes Section for Newcastle
                    const Text(
                      'Substitutes',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    _buildPlayerList([
                      'Martin Dúbravka',
                      'Jamaal Lascelles',
                      'Valentino Livramento',
                      'Dan Burn',
                      'Joelinton',
                      'Jacob Murphy',
                      'Elliot Anderson',
                      'Ryan Fraser',
                      'Chris Wood',
                      'Callum Wilson',
                    ]),
                  ],
                ),
              ),
            ),

            // Stats Tab
            SingleChildScrollView(
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Tab Bar for Stats (ALL, 1st, 2nd)
                    Row(
                      children: [
                        _buildStatsTabButton(context, 'ALL', true),
                        _buildStatsTabButton(context, '1st', false),
                        _buildStatsTabButton(context, '2nd', false),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Stats List
                    _buildStatRow('Ball possession', 52, 48, isPercentage: true),
                    _buildStatRow('Total shots', 14, 10),
                    _buildStatRow('Shots on target', 5, 4),
                    _buildStatRow('Shots off target', 6, 1),
                    _buildStatRow('Blocked shots', 3, 5),
                    _buildStatRow('Corner kicks', 3, 5),
                    _buildStatRow('Offsides', 0, 2),
                    _buildStatRow('Fouls', 11, 10),
                    _buildStatRow('Yellow cards', 2, 3),
                    _buildStatRow('Free kicks', 10, 11),
                    _buildStatRow('Throw-ins', 8, 13),
                    _buildStatRow('Goal kicks', 2, 8),
                    _buildStatRow('Big chances', 2, 3),
                    _buildStatRow('Big chances missed', 2, 1),
                    _buildStatRow('Counter attacks', 2, 1),
                    _buildStatRow('Shots inside box', 11, 8),
                    _buildStatRow('Goalkeeper saves', 2, 3),
                    _buildStatRow('Goal prevention', -0.25, -0.32),
                    _buildStatRow('Passes', 557, 677),
                    _buildStatRow('Accurate passes', 520, 466, homePercentage: 82, awayPercentage: 85),
                    _buildStatRow('Long balls', 37, 44, homePercentage: 62, awayPercentage: 73),
                    _buildStatRow('Crosses', 17, 10, homePercentage: 80, awayPercentage: 16),
                    _buildStatRow('Dribbles', 11, 5, homePercentage: 78, awayPercentage: 31),
                  ],
                ),
              ),
            ),

            // Standing Tab (Previously Knockout)
            SingleChildScrollView(
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Knockout Stage',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Quarter Finals',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    // Match 1: Liverpool vs Newcastle
                    _buildKnockoutMatch(
                      homeTeam: 'Liverpool',
                      homeLogo: 'assets/liverpool_logo.png',
                      homeScore: 2,
                      awayTeam: 'Newcastle',
                      awayLogo: 'assets/newcastle_logo.png',
                      awayScore: 1,
                      date: '30 May 2025',
                      isHighlighted: true,
                    ),
                    const SizedBox(height: 16),
                    // Match 2: Chelsea vs Manchester City
                    _buildKnockoutMatch(
                      homeTeam: 'Chelsea',
                      homeLogo: 'assets/chelsea_logo.png',
                      homeScore: 0,
                      awayTeam: 'Man City',
                      awayLogo: 'assets/man_city_logo.png',
                      awayScore: 0,
                      date: '31 May 2025',
                    ),
                    const SizedBox(height: 16),
                    // Match 3: Tottenham vs Arsenal
                    _buildKnockoutMatch(
                      homeTeam: 'Tottenham',
                      homeLogo: 'assets/tottenham_logo.png',
                      homeScore: 2,
                      awayTeam: 'Arsenal',
                      awayLogo: 'assets/arsenal_logo.png',
                      awayScore: 2,
                      date: '31 May 2025',
                    ),
                    const SizedBox(height: 16),
                    // Match 4: Manchester United vs Aston Villa
                    _buildKnockoutMatch(
                      homeTeam: 'Man United',
                      homeLogo: 'assets/man_united_logo.png',
                      homeScore: 1,
                      awayTeam: 'Aston Villa',
                      awayLogo: 'assets/aston_villa_logo.png',
                      awayScore: 0,
                      date: '30 May 2025',
                    ),
                  ],
                ),
              ),
            ),

            // Commentary Tab (New Implementation)
            SingleChildScrollView(
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Commentary',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        _buildCommentaryEntry(
                          time: '90+5\'',
                          icon: Icons.sports_soccer,
                          iconColor: Colors.white,
                          description:
                          'Goal! **Mohamed Salah** scores a dramatic late winner for Liverpool! A stunning finish from a tight angle after a brilliant run. Liverpool 2-1 Newcastle!',
                          isHomeTeam: true,
                        ),
                        _buildCommentaryEntry(
                          time: '85\'',
                          icon: Icons.arrow_forward,
                          iconColor: Colors.green,
                          description:
                          'Substitution for Liverpool: **Mohamed Salah** comes on for **Diogo Jota**.',
                          isHomeTeam: true,
                        ),
                        _buildCommentaryEntry(
                          time: '80\'',
                          icon: Icons.arrow_back,
                          iconColor: Colors.green,
                          description:
                          'Substitution for Newcastle: **Alexander Isak** is replaced by **Chris Wood**.',
                          isHomeTeam: false,
                        ),
                        _buildCommentaryEntry(
                          time: '78\'',
                          icon: Icons.warning,
                          iconColor: Colors.yellow,
                          description:
                          'Yellow Card! **Bruno Guimarães** is booked for a late challenge on Thiago Alcântara.',
                          isHomeTeam: false,
                        ),
                        _buildCommentaryEntry(
                          time: '68\'',
                          icon: Icons.arrow_forward,
                          iconColor: Colors.green,
                          description:
                          'Substitution for Liverpool: **Trent Alexander-Arnold** is replaced by **James Milner**.',
                          isHomeTeam: true,
                        ),
                        _buildCommentaryEntry(
                          time: '45\'',
                          icon: Icons.sports_soccer,
                          iconColor: Colors.white,
                          description:
                          'Goal! **Alexander Isak** equalizes for Newcastle just before halftime! A well-taken shot from inside the box. Liverpool 1-1 Newcastle.',
                          isHomeTeam: false,
                        ),
                        _buildCommentaryEntry(
                          time: '30\'',
                          icon: Icons.sports_soccer,
                          iconColor: Colors.white,
                          description:
                          'Goal! **Diogo Jota** puts Liverpool ahead with a powerful header from a corner! Liverpool 1-0 Newcastle.',
                          isHomeTeam: true,
                        ),
                        _buildCommentaryEntry(
                          time: '1\'',
                          icon: Icons.play_arrow,
                          iconColor: Colors.white,
                          description: 'Kick-off! The match is underway at Anfield.',
                          isHomeTeam: true,
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
    );
  }

  Widget _buildPlayerRatingRow(String playerName, double rating) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              playerName,
              style: const TextStyle(color: Colors.white, fontSize: 14),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
            decoration: BoxDecoration(
              color: rating >= 8 ? Colors.green : Colors.orange,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              rating.toString(),
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTeamStatRow(String statName, int homeValue, int awayValue) {
    double total = (homeValue + awayValue).toDouble();
    double homePercentage = total > 0 ? homeValue / total : 0.5;
    double awayPercentage = total > 0 ? awayValue / total : 0.5;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            statName,
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: LinearProgressIndicator(
                  value: homePercentage,
                  backgroundColor: Colors.grey[700],
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.red),
                ),
              ),
              const SizedBox(width: 8),
              SizedBox(
                width: 30,
                child: Text(
                  '$homeValue',
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(width: 8),
              SizedBox(
                width: 30,
                child: Text(
                  '$awayValue',
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                flex: 2,
                child: LinearProgressIndicator(
                  value: awayPercentage,
                  backgroundColor: Colors.grey[700],
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPlayerPosition(String name, int number, {bool isAway = false}) {
    return Column(
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: isAway ? Colors.blue : Colors.red,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              '$number',
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        ),
        const SizedBox(height: 4),
        SizedBox(
          width: 60,
          child: Text(
            name,
            style: const TextStyle(color: Colors.white, fontSize: 12),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  Widget _buildPlayerList(List<String> players) {
    return Column(
      children: players.map((player) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Row(
            children: [
              Container(
                width: 20,
                height: 20,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 12,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  player,
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildStatsTabButton(BuildContext context, String label, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? Colors.purple : Colors.grey[700],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.grey[400],
            fontSize: 14,
          ),
        ),
      ),
    );
  }

  Widget _buildStatRow(String label, num homeValue, num awayValue, {
    bool isPercentage = false,
    double? homePercentage,
    double? awayPercentage,
  }) {
    double total = (homeValue + awayValue).toDouble();
    double homeProgress = total > 0 ? homeValue / total : 0.5;
    double awayProgress = total > 0 ? awayValue / total : 0.5;

    String homeDisplay = homeValue.toString();
    String awayDisplay = awayValue.toString();

    if (isPercentage) {
      homeDisplay = '$homeValue%';
      awayDisplay = '$awayValue%';
    } else if (homePercentage != null && awayPercentage != null) {
      homeDisplay = '$homeValue ($homePercentage%)';
      awayDisplay = '$awayValue ($awayPercentage%)';
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: LinearProgressIndicator(
                  value: homeProgress,
                  backgroundColor: Colors.grey[700],
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.red),
                ),
              ),
              const SizedBox(width: 8),
              SizedBox(
                width: 60,
                child: Text(
                  homeDisplay,
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(width: 8),
              SizedBox(
                width: 60,
                child: Text(
                  awayDisplay,
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                flex: 2,
                child: LinearProgressIndicator(
                  value: awayProgress,
                  backgroundColor: Colors.grey[700],
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildKnockoutMatch({
    required String homeTeam,
    required String homeLogo,
    required int homeScore,
    required String awayTeam,
    required String awayLogo,
    required int awayScore,
    required String date,
    bool isHighlighted = false,
  }) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: isHighlighted ? Colors.purple.withOpacity(0.3) : const Color(0xFF2A2F4A),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Row(
            children: [
              // Home Team
              Expanded(
                child: Row(
                  children: [
                    Image.asset(
                      homeLogo,
                      width: 24,
                      height: 24,
                      errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.error, color: Colors.white, size: 24),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        homeTeam,
                        style: const TextStyle(color: Colors.white, fontSize: 14),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              // Score
              Text(
                '$homeScore - $awayScore',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Away Team
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Text(
                        awayTeam,
                        style: const TextStyle(color: Colors.white, fontSize: 14),
                        textAlign: TextAlign.end,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Image.asset(
                      awayLogo,
                      width: 24,
                      height: 24,
                      errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.error, color: Colors.white, size: 24),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          // Date
          Text(
            date,
            style: const TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _buildCommentaryEntry({
    required String time,
    required IconData icon,
    required Color iconColor,
    required String description,
    required bool isHomeTeam,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 50,
            child: Text(
              time,
              style: const TextStyle(color: Colors.grey, fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xFF2A2F4A),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    icon,
                    color: iconColor,
                    size: 16,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        children: _parseDescription(description),
                        style: const TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<TextSpan> _parseDescription(String description) {
    List<TextSpan> spans = [];
    final RegExp boldRegex = RegExp(r'\*\*(.*?)\*\*');
    int lastIndex = 0;

    for (Match match in boldRegex.allMatches(description)) {
      // Add text before the bold section
      if (match.start > lastIndex) {
        spans.add(
          TextSpan(
            text: description.substring(lastIndex, match.start),
            style: const TextStyle(color: Colors.white),
          ),
        );
      }
      // Add the bold section
      spans.add(
        TextSpan(
          text: match.group(1),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
      lastIndex = match.end;
    }

    // Add any remaining text after the last bold section
    if (lastIndex < description.length) {
      spans.add(
        TextSpan(
          text: description.substring(lastIndex),
          style: const TextStyle(color: Colors.white),
        ),
      );
    }

    return spans;
  }
}

// Widget for each match event in the Timeline
class MatchEvent extends StatelessWidget {
  final String time;
  final String event;
  final String? subEvent;
  final IconData icon;
  final bool isHomeTeam;
  final Color iconColor;

  const MatchEvent({
    Key? key,
    required this.time,
    required this.event,
    this.subEvent,
    required this.icon,
    required this.isHomeTeam,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment:
        isHomeTeam ? MainAxisAlignment.start : MainAxisAlignment.end,
        children: [
          if (isHomeTeam) ...[
            Text(
              time,
              style: const TextStyle(color: Colors.grey, fontSize: 12),
            ),
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xFF2A2F4A),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    icon,
                    color: iconColor,
                    size: 16,
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        event,
                        style: const TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      if (subEvent != null)
                        Text(
                          subEvent!,
                          style: const TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ] else ...[
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xFF2A2F4A),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        event,
                        style: const TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      if (subEvent != null)
                        Text(
                          subEvent!,
                          style: const TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                    ],
                  ),
                  const SizedBox(width: 8),
                  Icon(
                    icon,
                    color: iconColor,
                    size: 16,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Text(
              time,
              style: const TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ],
      ),
    );
  }
}
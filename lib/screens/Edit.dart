import 'package:flutter/material.dart';

class editscreen extends StatefulWidget {
  @override
  _EditScreenState createState() => _EditScreenState();
}

class _EditScreenState extends State<editscreen> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  String _searchQuery = '';
  final List<Map<String, dynamic>> _sports = [
    {'icon': Icons.sports_soccer, 'label': 'Soccer'},
    {'icon': Icons.sports_cricket, 'label': 'Cricket'},
    {'icon': Icons.sports_football, 'label': 'Football'},
    {'icon': Icons.sports_hockey, 'label': 'Hockey'},
    {'icon': Icons.sports_tennis, 'label': 'Tennis'},
    {'icon': Icons.sports, 'label': 'Kabaddi'},
    {'icon': Icons.sports_basketball, 'label': 'Basketball'},
    {'icon': Icons.sports_volleyball, 'label': 'Volleyball'},
    {'icon': Icons.sports_baseball, 'label': 'Baseball'},
    {'icon': Icons.sports_soccer, 'label': 'Soccer'},
    {'icon': Icons.sports_cricket, 'label': 'Cricket'},
    {'icon': Icons.sports, 'label': 'Kabaddi'},
  ];

  final List<Map<String, dynamic>> _leagues = [
    {'icon': Icons.sports_soccer, 'label': 'PL'},
    {'icon': Icons.sports_football, 'label': 'NFL'},
    {'icon': Icons.sports_cricket, 'label': 'IPL'},
    {'icon': Icons.sports_baseball, 'label': 'MLB'},
    {'icon': Icons.sports_basketball, 'label': 'NBA'},
    {'icon': Icons.sports_football, 'label': 'AFL'},
    {'icon': Icons.sports_cricket, 'label': 'IPL'},
    {'icon': Icons.sports_baseball, 'label': 'MLB'},
    {'icon': Icons.sports_soccer, 'label': 'PL'},
    {'icon': Icons.sports_football, 'label': 'NFL'},
    {'icon': Icons.sports_cricket, 'label': 'IPL'},
    {'icon': Icons.sports_baseball, 'label': 'MLB'},
    {'icon': Icons.sports_basketball, 'label': 'NBA'},
    {'icon': Icons.sports_football, 'label': 'AFL'},
    {'icon': Icons.sports_cricket, 'label': 'IPL'},
    {'icon': Icons.sports_baseball, 'label': 'MLB'},
  ];

  final List<Map<String, dynamic>> _teams = [
    {'icon': Icons.sports_cricket, 'label': 'India'},
    {'icon': Icons.sports_cricket, 'label': 'RCB'},
    {'icon': Icons.sports_soccer, 'label': 'Barcelona'},
    {'icon': Icons.sports, 'label': 'KR'},
    {'icon': Icons.sports_cricket, 'label': 'India'},
    {'icon': Icons.sports, 'label': 'R00'},
    {'icon': Icons.sports_soccer, 'label': 'Barcelona'},
    {'icon': Icons.sports, 'label': 'NAR'},
    {'icon': Icons.sports_cricket, 'label': 'India'},
    {'icon': Icons.sports, 'label': 'R00'},
    {'icon': Icons.sports_soccer, 'label': 'Barcelona'},
    {'icon': Icons.sports, 'label': 'NAR'},
    {'icon': Icons.sports_cricket, 'label': 'India'},
    {'icon': Icons.sports, 'label': 'R00'},
    {'icon': Icons.sports_soccer, 'label': 'Barcelona'},
    {'icon': Icons.sports, 'label': 'NAR'},
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    // Add a listener to rebuild the widget when the tab changes
    _tabController!.addListener(() {
      if (_tabController!.indexIsChanging) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  List<Map<String, dynamic>> _filterItems(List<Map<String, dynamic>> items, String query) {
    if (query.isEmpty) return items;
    return items
        .where((item) => item['label'].toString().toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A1A2E),
      appBar: AppBar(
        backgroundColor: Color(0xFF1A1A2E),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Text(
              'PICK YOUR FAVORITE ${_tabController!.index == 0 ? 'SPORTS' : _tabController!.index == 1 ? 'LEAGUES' : 'TEAMS'}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  _searchQuery = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Search sport, leagues, teams and more...',
                hintStyle: TextStyle(color: Colors.grey[500], fontSize: 14),
                prefixIcon: Icon(Icons.search, color: Colors.grey[500], size: 20),
                filled: true,
                fillColor: Color(0xFF2A2A3E),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
          SizedBox(height: 16),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey[700]!, width: 1)),
            ),
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey[500],
              indicatorColor: Colors.purple,
              indicatorWeight: 3,
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              unselectedLabelStyle: TextStyle(fontSize: 16),
              tabs: [
                Tab(text: 'Sport'),
                Tab(text: 'League'),
                Tab(text: 'Team'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // Sport Tab
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GridView.count(
                    crossAxisCount: 4,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.8,
                    children: _filterItems(_sports, _searchQuery)
                        .map((item) => _buildSportItem(item['icon'], item['label']))
                        .toList(),
                  ),
                ),
                // League Tab
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GridView.count(
                    crossAxisCount: 4,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.8,
                    children: _filterItems(_leagues, _searchQuery)
                        .map((item) => _buildSportItem(item['icon'], item['label']))
                        .toList(),
                  ),
                ),
                // Team Tab
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Stack(
                    children: [
                      GridView.count(
                        crossAxisCount: 4,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        childAspectRatio: 0.8,
                        children: _filterItems(_teams, _searchQuery)
                            .map((item) => _buildSportItem(item['icon'], item['label']))
                            .toList(),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  ),
                  child: Text(
                    'SKIP',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  ),
                  child: Text(
                    'NEXT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSportItem(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: Color(0xFF2A2A3E),
          child: Icon(
            icon,
            size: 28,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(color: Colors.white, fontSize: 12),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
        bottom: TabBar(
          tabs: [
            Tab(text: 'Personal Info'),
            Tab(text: 'Interactions'),
          ],
        ),
      ),
      body: TabBarView(
        children: [
          // Personal Info Page
          PersonalInfoPage(),

          // Interactions Page
          InteractionsPage(),
        ],
      ),
    );
  }
}

class PersonalInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Username: John Doe'),
          Text('Password: ********'),
          Text('University: XYZ University'),
        ],
      ),
    );
  }
}

class InteractionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('My Post'),
          Text('My Posts'),
          Text('My Comments'),
          Text('My Contact List'),
          Text('My Favorites'),
        ],
      ),
    );
  }
}

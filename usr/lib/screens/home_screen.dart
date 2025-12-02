import 'package:couldai_user_app/models/match.dart';
import 'package:couldai_user_app/widgets/match_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Match> upcomingMatches = [
      Match(
        team1: 'India',
        team2: 'Australia',
        tournament: 'World Championship',
        time: DateTime.now().add(const Duration(hours: 3)),
        team1Logo: 'assets/images/india_logo.png',
        team2Logo: 'assets/images/australia_logo.png',
      ),
      Match(
        team1: 'Chennai Super Kings',
        team2: 'Mumbai Indians',
        tournament: 'Indian Premier League',
        time: DateTime.now().add(const Duration(days: 1)),
        team1Logo: 'assets/images/csk_logo.png',
        team2Logo: 'assets/images/mi_logo.png',
      ),
      Match(
        team1: 'England',
        team2: 'South Africa',
        tournament: 'T20 Series',
        time: DateTime.now().add(const Duration(days: 2)),
        team1Logo: 'assets/images/england_logo.png',
        team2Logo: 'assets/images/sa_logo.png',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Upcoming Matches'),
      ),
      body: ListView.builder(
        itemCount: upcomingMatches.length,
        itemBuilder: (context, index) {
          return MatchCard(match: upcomingMatches[index]);
        },
      ),
    );
  }
}

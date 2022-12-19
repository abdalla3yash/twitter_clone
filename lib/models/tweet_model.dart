import 'package:flutter/material.dart';

class Tweet {
  String id;
  String userFirstName;
  String userUserName;
  String userProfilePic;
  String tweet;
  List<String> imageLinks;
  String tweetedAt;
  int likesCount;
  int commentsCount;
  int retweetsCount;

  Tweet(
      {required this.id,
      required this.userFirstName,
      required this.userUserName,
      required this.userProfilePic,
      required this.tweet,
      required this.imageLinks,
      required this.tweetedAt,
      required this.likesCount,
      required this.commentsCount,
      required this.retweetsCount});
}

List tweets = [
  Tweet(
      id: '1',
      userFirstName: 'Abdalla',
      userUserName: 'abdalla120',
      userProfilePic: 'assets/images/KevinHart2.jpg',
      tweet:
          'I still don\'t understand why teachers used to beat the shit out of 4th graders who forgot their notebook.',
      imageLinks: ['assets/images/KevinHart.jpg'],
      tweetedAt: 'Oct 4',
      likesCount: 2,
      commentsCount: 3,
      retweetsCount: 5),
  Tweet(
      id: '2',
      userFirstName: 'Mr.Nader',
      userUserName: 'Nader',
      userProfilePic: 'assets/images/KevinHart2.jpg',
      tweet:
          'I still don\'t understand why teachers used to beat the shit out of 4th graders who forgot their notebook.',
      imageLinks: ['assets/images/CaptainJackSparrow.jpg'],
      tweetedAt: 'Oct 4',
      likesCount: 2,
      commentsCount: 3,
      retweetsCount: 5),
  Tweet(
      id: '3',
      userFirstName: 'magdy',
      userUserName: 'magdy2',
      userProfilePic: 'assets/images/KevinHart2.jpg',
      tweet:
          'I still don\'t understand why teachers used to beat the shit out of 4th graders who forgot their notebook.',
      imageLinks: [],
      tweetedAt: 'Oct 4',
      likesCount: 2,
      commentsCount: 3,
      retweetsCount: 5),
  Tweet(
      id: '4',
      userFirstName: 'amira',
      userUserName: 'amira2',
      userProfilePic: 'assets/images/CaptainJackSparrow.jpg',
      tweet:
          'I still don\'t understand why teachers used to beat the shit out of 4th graders who forgot their notebook.',
      imageLinks: ['assets/images/KevinHart2.jpg'],
      tweetedAt: 'Oct 4',
      likesCount: 2,
      commentsCount: 3,
      retweetsCount: 5),
  Tweet(
      id: '5',
      userFirstName: 'ahmed',
      userUserName: 'ahmed120',
      userProfilePic: 'assets/images/CaptainJackSparrow.jpg',
      tweet:
          'I still don\'t understand why teachers used to beat the shit out of 4th graders who forgot their notebook.',
      imageLinks: ['assets/images/KevinHart2.jpg'],
      tweetedAt: 'Oct 4',
      likesCount: 2,
      commentsCount: 3,
      retweetsCount: 5),
  Tweet(
      id: '6',
      userFirstName: 'osama',
      userUserName: 'osama25',
      userProfilePic: 'assets/images/CaptainJackSparrow.jpg',
      tweet:
          'I still don\'t understand why teachers used to beat the shit out of 4th graders who forgot their notebook.',
      imageLinks: ['assets/images/KevinHart2.jpg'],
      tweetedAt: 'Oct 4',
      likesCount: 2,
      commentsCount: 3,
      retweetsCount: 5),
  Tweet(
      id: '7',
      userFirstName: 'dead one',
      userUserName: 'deadinside',
      userProfilePic: 'assets/images/CaptainJackSparrow.jpg',
      tweet:
          'I still don\'t understand why teachers used to beat the shit out of 4th graders who forgot their notebook.',
      imageLinks: ['assets/images/KevinHart2.jpg'],
      tweetedAt: 'Oct 4',
      likesCount: 2,
      commentsCount: 3,
      retweetsCount: 5),
  Tweet(
      id: '8',
      userFirstName: 'rag',
      userUserName: 'rag',
      userProfilePic: 'assets/images/CaptainJackSparrow.jpg',
      tweet:
          'I still don\'t understand why teachers used to beat the shit out of 4th graders who forgot their notebook.',
      imageLinks: ['assets/images/KevinHart2.jpg'],
      tweetedAt: 'Oct 4',
      likesCount: 2,
      commentsCount: 3,
      retweetsCount: 5),
  Tweet(
      id: '9',
      userFirstName: 'shady',
      userUserName: 'shady7',
      userProfilePic: 'assets/images/CaptainJackSparrow.jpg',
      tweet:
          'I still don\'t understand why teachers used to beat the shit out of 4th graders who forgot their notebook.',
      imageLinks: ['assets/images/KevinHart2.jpg'],
      tweetedAt: 'Oct 4',
      likesCount: 2,
      commentsCount: 3,
      retweetsCount: 5),
  Tweet(
      id: '10',
      userFirstName: 'LTE',
      userUserName: 'lte5',
      userProfilePic: 'assets/images/CaptainJackSparrow.jpg',
      tweet:
          'I still don\'t understand why teachers used to beat the shit out of 4th graders who forgot their notebook.',
      imageLinks: ['assets/images/KevinHart2.jpg'],
      tweetedAt: 'Oct 4',
      likesCount: 2,
      commentsCount: 3,
      retweetsCount: 5),
];

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:twitter/utility/colors.dart';
import 'package:twitter/models/tweet_model.dart';

class TweetCard extends StatelessWidget {
  final Tweet tweet;
  const TweetCard({Key? key, required this.tweet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Palette.blue,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(tweet.userProfilePic),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Text(
                            tweet.userFirstName,
                            style: TextStyle(
                                color: TwitterColor.woodsmoke,
                                fontWeight: FontWeight.w600,
                                fontSize: 17),
                          ),
                          SizedBox(width: 5),
                          Text(
                            '@${tweet.userUserName}',
                            style: TextStyle(
                                color: TwitterColor.woodsmoke_50, fontSize: 17),
                          ),
                          SizedBox(width: 5),
                          Container(
                            height: 3,
                            width: 3,
                            decoration: BoxDecoration(
                              color: TwitterColor.woodsmoke,
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: Text(
                              tweet.tweetedAt,
                              style: TextStyle(
                                  color: TwitterColor.woodsmoke_50,
                                  fontSize: 17),
                            ),
                          ),
                          SvgPicture.asset(
                            'assets/icons/tweetSetting.svg',
                            color: Palette.darkGray,
                          ),
                        ]),
                        SizedBox(height: 2),
                        Text(tweet.tweet,
                            style: TextStyle(
                                color: TwitterColor.woodsmoke,
                                fontSize: 15,
                                height: 1.3)),
                        SizedBox(height: 6),
                        if (tweet.imageLinks.length > 0 &&
                            tweet.imageLinks != null)
                          Container(
                            height: 200,
                            decoration: BoxDecoration(
                              color: Palette.blue,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(tweet.imageLinks[0]),
                              ),
                            ),
                          ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/comments.svg',
                                    color: Palette.darkGray,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    tweet.commentsCount.toString(),
                                    style: TextStyle(
                                        color: TwitterColor.woodsmoke,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/retweet.svg',
                                    color: Palette.darkGray,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    tweet.retweetsCount.toString(),
                                    style: TextStyle(
                                        color: TwitterColor.woodsmoke,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/like.svg',
                                    color: Palette.darkGray,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    tweet.likesCount.toString(),
                                    style: TextStyle(
                                        color: TwitterColor.woodsmoke,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.share_sharp,
                                color: TwitterColor.woodsmoke_50,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Text('Show this thread',
                            style: TextStyle(color: Palette.blue)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(
          thickness: 0.3,
          color: Palette.darkGray,
        )
      ],
    );
  }
}

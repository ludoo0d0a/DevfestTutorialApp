import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:devfest_demo/home/speaker.dart';
import 'package:devfest_demo/universal/dev_scaffold.dart';
import 'package:devfest_demo/utils/tools.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SpeakersPage extends StatelessWidget {
  static const String routeName = "/speakers";

  SpeakersPage({ Key key }):super(key: key) {
    speakers.sort((speaker1, speaker2) => speaker1.speakerName.compareTo(speaker2.speakerName));
  }

  Widget socialActions(context, Speaker speaker) {
    var iconButtons = new List<Widget>();
    if(speaker.fbUrl!=null) {
      iconButtons.add(IconButton(
              icon: Icon(
                FontAwesomeIcons.facebookF,
                size: 15,
              ),
              onPressed: () {
                launch(speaker.fbUrl);
              },
            ));
    }
    if(speaker.githubUrl!=null) {
      iconButtons.add(IconButton(
              icon: Icon(
                FontAwesomeIcons.github,
                size: 15,
              ),
              onPressed: () {
                launch(speaker.githubUrl);
              },
            ));
    }

    if(speaker.twitterUrl!=null) {
      iconButtons.add(IconButton(
              icon: Icon(
                FontAwesomeIcons.twitter,
                size: 15,
              ),
              onPressed: () {
                launch(speaker.twitterUrl);
              },
            ));
    }
    if(speaker.twitterUrl!=null) {
      iconButtons.add(IconButton(
              icon: Icon(
                FontAwesomeIcons.linkedin,
                size: 15,
              ),
              onPressed: () {
                launch(speaker.linkedinUrl);
              },
            ));
    }
   return FittedBox(
        child: Container(
          constraints: BoxConstraints(minWidth: 230.0, minHeight: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: iconButtons,
          ),
        ),
      );
  }
  @override
  Widget build(BuildContext context) {
    return DevScaffold(
      title: "Speakers",
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: speakers.length,
        itemBuilder: (c, i) {
          return Card(
            elevation: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ConstrainedBox(
                    constraints: BoxConstraints.expand(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.3,
                    ),
                    child: CachedNetworkImage(
                      imageUrl: speakers[i].speakerImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              speakers[i].speakerName,
                              style: Theme.of(context).textTheme.title,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            AnimatedContainer(
                              duration: Duration(seconds: 1),
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: 5,
                              color: Tools.multiColors[Random().nextInt(4)],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          speakers[i].speakerDesc,
                          style: Theme.of(context).textTheme.subtitle,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          speakers[i].speakerSession,
                          style: Theme.of(context).textTheme.caption,
                        ),
                        socialActions(context, speakers[i]),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

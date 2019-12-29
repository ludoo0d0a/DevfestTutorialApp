import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:devfest_demo/universal/dev_scaffold.dart';

class SponsorPage extends StatelessWidget {
  static const String routeName = "/sponsor";

  

  @override
  Widget build(BuildContext context) {
    // var _homeBloc = HomeBloc();
    return DevScaffold(
      body: ListView(
        children: <Widget>[
          SponsorImage(
            imgUrl: "https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png",
            
          ),
          SizedBox(
            height: 30,
          ),
          SponsorImage(
            imgUrl: "https://mumbai-devfest19.firebaseapp.com/images/logos/github-logo.png",
          ),
          SizedBox(
            height: 30,
          ),
          SponsorImage(
            imgUrl:
                "https://images.g2crowd.com/uploads/product/image/social_landscape/social_landscape_68187e2e4705f5b5474a094c0137b2e5/clevertap.png",
          ),
          SizedBox(
            height: 30,
          ),
          SponsorImage(
            imgUrl:
                "https://mumbai-devfest19.firebaseapp.com/images/logos/byjus-logo.png",
          ),
          SizedBox(
            height: 30,
          ),
          SponsorImage(
            imgUrl:
                "https://mumbai-devfest19.firebaseapp.com/images/logos/makers-logo.png",
          ),
          SizedBox(
            height: 30,
          ),
          SponsorImage(
            imgUrl:
                "https://mumbai-devfest19.firebaseapp.com/images/logos/searce-logo.png",
          ),
          SizedBox(
            height: 30,
          ),
          SponsorImage(
            imgUrl:
                "https://upload.wikimedia.org/wikipedia/commons/e/ed/Pepperfry_New_Logo.png",
          ),
          SizedBox(
            height: 30,
          ),
          SponsorImage(
            imgUrl:
                "https://mumbai-devfest19.firebaseapp.com/images/logos/agrahyah-logo.png",
                
          )
        ],
      ),
      title: "Sponsors",
    );
  }
}

class SponsorImage extends StatelessWidget {
  final String imgUrl;

  const SponsorImage({Key key, this.imgUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: CachedNetworkImage(
          imageUrl: imgUrl,
          height: 200.0,
          width: 200.0,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

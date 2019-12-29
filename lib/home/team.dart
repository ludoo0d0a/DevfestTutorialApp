class TeamsData {
  List<Team> teams;

  TeamsData({this.teams});

  TeamsData.fromJson(Map<String, dynamic> json) {
    if (json['teams'] != null) {
      teams = new List<Team>();
      json['teams'].forEach((v) {
        teams.add(Team.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.teams != null) {
      data['teams'] = this.teams.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Team {
  String name;
  String image;
  
  String twitterUrl;
  String linkedinUrl;
  String githubUrl;

  Team(
      {this.name,
      this.image,
      this.twitterUrl,
      this.linkedinUrl,
      this.githubUrl,
      });

  Team.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    
    twitterUrl = json['twitter_url'];
    linkedinUrl = json['linkedin_url'];
    githubUrl = json['github_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['image'] = this.image;
    
    data['twitter_url'] = this.twitterUrl;
    data['linkedin_url'] = this.linkedinUrl;
    return data;
  }
}

List<Team> teams = [
  Team(
    name: "Ali Mustafa",
    image:
        "https://firebasestorage.googleapis.com/v0/b/mumbai-devfest19.appspot.com/o/team%2FIMG-20190728-WA0003-01%20-%20Ali%20Mustufa%20Shaikh.jpeg?alt=media&token=d7076d7c-1838-47f7-8214-8c19a210f8d4", //Mandatory eg("http://devfest.gdgsiliguri.org/img/team/NehaBhowmick.jpg",
    
    linkedinUrl: 'https://linkedin.com/in/ialimustufa/',
    twitterUrl: 'https://twitter.com/ialimustufa',
  ),

  Team(
    name: "Faiz Malkani",
    image:
        "https://firebasestorage.googleapis.com/v0/b/mumbai-devfest19.appspot.com/o/team%2Ffaiz%20-%20Faiz%20Malkani.png?alt=media&token=72ea4efc-6183-4a1f-8085-c1b0d694b7ae", //Mandatory eg("http://devfest.gdgsiliguri.org/img/team/NehaBhowmick.jpg",
    
    linkedinUrl: 'https://www.linkedin.com/in/faizmalkani/',
    twitterUrl: 'https://twitter.com/malkani_faiz',
    githubUrl: 'https://github.com/faizmalkani',
  ),

  Team(
    name: "Nikhil Thakkar",
    image:
        'https://firebasestorage.googleapis.com/v0/b/mumbai-devfest19.appspot.com/o/team%2F0.jpeg?alt=media&token=7239055d-4e52-449a-ad6d-2b81b77c82f5',
    
    linkedinUrl: 'https://www.linkedin.com/in/nikhil-thakkar-4b14b722/',
    twitterUrl: 'https://twitter.com/_nikhi1',
    githubUrl: 'https://github.com/nikhil-thakkar',

  ),

  Team(
    name: "Swapnil Borkar",
    image:
        'https://firebasestorage.googleapis.com/v0/b/mumbai-devfest19.appspot.com/o/team%2FIMG_20190504_162629_Bokeh%20-%20Swapnil%20Borkar.jpg?alt=media&token=526e058a-cb7f-446c-88bc-1b15f744494b',
    
    linkedinUrl: 'http://linkedin.com/in/swapnilborkar',
    githubUrl: 'https://github.com/swapnilborkar',

  ),

  Team(
    name: "Maitreyi",
    image:
        'https://firebasestorage.googleapis.com/v0/b/mumbai-devfest19.appspot.com/o/team%2FIMG-20190827-WA0003%20-%20Zoo%20Keep.jpg?alt=media&token=ada30862-68a4-4ece-a5ad-b4306841cf3f',
    
    linkedinUrl: 'https://linkedin.com/in/maitreyi_kv/',
    twitterUrl: 'https://twitter.com/maitreyi_kv',
    

  ),

  Team(
    name: "Karan Trehan",
    image:
        'https://firebasestorage.googleapis.com/v0/b/mumbai-devfest19.appspot.com/o/team%2Fhero%20(1)%20-%20Karan%20Trehan.jpg?alt=media&token=8968afd7-f96e-4071-9d61-e0e838ae7794',
    linkedinUrl: 'https://www.linkedin.com/in/karntrehan/',
    twitterUrl: 'https://twitter.com/karntrehan',
    githubUrl: 'https://github.com/karntrehan',

  ),

  Team(
    name: "Dharmesh Vaya",
    image:
        'https://firebasestorage.googleapis.com/v0/b/mumbai-devfest19.appspot.com/o/team%2F8E1E2322-8C8B-4971-ADCA-436FA8D06CF6%20-%20Dharmesh%20Vaya.jpeg?alt=media&token=b91de610-e880-4ecc-9d75-77879cf3ac3e%22',
    linkedinUrl: 'https://linkedin.com/in/dharmeshvaya/',
    twitterUrl: 'https://twitter.com/DRVaya',
    

  ),

  Team(
    name: "Mohan Pawar",
    image:
        'https://firebasestorage.googleapis.com/v0/b/mumbai-devfest19.appspot.com/o/team%2Fmohan%20-%20mohan%20pawar.jpg?alt=media&token=d582b70b-11f1-41c0-ac66-901cfb4dc5d2',
    linkedinUrl: 'https://www.linkedin.com/in/mohan08p/',
    twitterUrl: 'https://twitter.com/mohan08p',
    

  ),

  Team(
    name: "Nirav Kothari",
    image:
        'https://firebasestorage.googleapis.com/v0/b/mumbai-devfest19.appspot.com/o/team%2FIMG_1920%20-%20Nirav%20Kothari.JPG?alt=media&token=14ee909f-fb95-41c5-a957-095489e69c64',
    linkedinUrl: 'https://www.linkedin.com/in/nirav-kothari-544a1221',
    twitterUrl: 'https://twitter.com/iNiravKothari',
    

  ),

  Team(
    name: "Swapneel Vhatkar",
    image:
        'https://firebasestorage.googleapis.com/v0/b/mumbai-devfest19.appspot.com/o/team%2F20190523_105833-01%20-%20swapneel%20vhatkar.jpeg?alt=media&token=724f6607-e58d-44a3-b47e-5c5d65aa6d0b',
    linkedinUrl: 'https://www.linkedin.com/in/swapneel-vhatkar-7abb59124',
    twitterUrl: 'https://twitter.com/swapneelVhatkar',
    

  ),

 
  
];

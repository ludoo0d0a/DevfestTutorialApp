class SpeakersData {
  List<Speaker> speakers;

  SpeakersData({this.speakers});

  SpeakersData.fromJson(Map<String, dynamic> json) {
    if (json['speakers'] != null) {
      speakers = new List<Speaker>();
      json['speakers'].forEach((v) {
        speakers.add(Speaker.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.speakers != null) {
      data['speakers'] = this.speakers.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Speaker {
  String speakerName;
  String speakerDesc;
  String speakerImage;
  String speakerInfo;
  String speakerId;
  String fbUrl;
  String twitterUrl;
  String linkedinUrl;
  String githubUrl;
  String speakerSession;
  String sessionId;

  Speaker(
      {this.speakerName,
      this.speakerDesc,
      this.speakerImage,
      this.speakerInfo,
      this.speakerId,
      this.fbUrl,
      this.twitterUrl,
      this.linkedinUrl,
      this.githubUrl,
      this.speakerSession,
      this.sessionId});

  Speaker.fromJson(Map<String, dynamic> json) {
    speakerName = json['speaker_name'];
    speakerDesc = json['speaker_desc'];
    speakerImage = json['speaker_image'];
    speakerInfo = json['speaker_info'];
    speakerId = json['speaker_id'];
    fbUrl = json['fb_url'];
    twitterUrl = json['twitter_url'];
    linkedinUrl = json['linkedin_url'];
    githubUrl = json['github_url'];
    speakerSession = json['speaker_session'];
    sessionId = json['session_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['speaker_name'] = this.speakerName;
    data['speaker_desc'] = this.speakerDesc;
    data['speaker_image'] = this.speakerImage;
    data['speaker_info'] = this.speakerInfo;
    data['speaker_id'] = this.speakerId;
    data['fb_url'] = this.fbUrl;
    data['twitter_url'] = this.twitterUrl;
    data['linkedin_url'] = this.linkedinUrl;
    data['github_url'] = this.githubUrl;
    data['speaker_session'] = this.speakerSession;
    data['session_id'] = this.sessionId;
    return data;
  }
}

List<Speaker> speakers = [
  Speaker(
    speakerImage:
        "https://sessionize.com/image?f=bcede5a3a80070703471128fa4262bfa,400,400,True,False,5d-da47-4dee-9428-1ef0efb15c1f.172b43e2-0718-4e84-98ff-f94201e604d5.PNG",
    speakerName: "Aliakbar Attarwala",
    speakerDesc: "Front-end Architect - BookMyShow",
    speakerSession: "Scaling Frontend Development and Micro-Frontend Architecture",
    
    githubUrl: "https://github.com/alliv8",
    twitterUrl: "https://twitter.com/alliv8",
  ),
  Speaker(
    speakerImage:
        "https://sessionize.com/image?f=3b32f5b895502cfc94721839ee496d74,400,400,True,False,18-131f-4ff0-b644-43ba706b82e8.8d1b0d00-5caa-48bb-889d-94e931646e3c.jpg",
    speakerName: "Adit Lal",
    speakerDesc: "Adit is a Product Engineer, Android at GoJek. He is been working in the industry for close to 6 years. Some of his hobbies are Stargazing, Travel and Landscape Photography",
    speakerSession: "Effective DI for Multi Module Project",
    
    githubUrl: "https://github.com/aldefy",
    linkedinUrl: "https://linkedin.com/in/aditlal",
    twitterUrl: "https://twitter.com/aditlal",
  ),
  Speaker(
    speakerSession: "Integrating Firestore as a backend in your Flutter app.",
    speakerImage:
        "https://sessionize.com/image?f=7b5628f004a52f0b8a33836535f3247a,400,400,True,False,db-8a29-4a91-942c-f25e8a7b02cb.bda772ee-5a1d-451e-ab70-440e7899e3e4.jpg",
    speakerName: "Bhavik Makwana",
    speakerDesc: "He is a Flutter Enthusiast, Google certified associate android developer and Open-source contributor.",
    
    githubUrl: "https://github.com/ibhavikmakwana",
    linkedinUrl: "https://in.linkedin.com/in/ibhavikmakwana",
    twitterUrl: "https://twitter.com/ibhavikmakwana",
  ),
 Speaker(
    speakerSession: "Scale your Web Application Securely on Compute Engine",
    speakerImage:
        "https://sessionize.com/image?f=08c586fb06ca3bde335b98ebc60d3cab,400,400,True,False,a1-84a6-409a-a6ee-849f10c6b9d3.9c35028b-1e91-4dea-874f-26b13029a983.jpg",
    speakerName: "Chirag Nayyar",
    speakerDesc: "A hardcore public cloud platform learner and like to share my learning, tweaks with everyone.",
    
    githubUrl: "https://github.com/chiragnayyar",
    linkedinUrl: "https://in.linkedin.com/in/chiragnayyar",
    twitterUrl: "https://twitter.com/chiragnayyar",
  ),
   Speaker(
    speakerSession: "How to handle the Training Model Hangover",
    speakerImage:
        "https://sessionize.com/image?f=37b054f417d183224056a451f09fbe95,400,400,True,False,e6-7ed5-4a0a-a989-79f53f980674.bf55d10e-731d-4425-8201-2be0488539f9.jpg",
    speakerName: "Pratik Parmar",
    speakerDesc: "A Data Scientist who caught the travel bug.",
    
    githubUrl: "https://github.com/HackyRoot",
    linkedinUrl: "https://www.linkedin.com/in/pratikparmar1/",
    twitterUrl: "https://twitter.com/hackyroot",
  ),
  
  Speaker(
    speakerSession: "Level Up as a Developer",
    speakerImage:
        "https://avatars2.githubusercontent.com/u/1614870?s=460&v=4",
    speakerName: "Romin Irani",
    speakerDesc: "My passion is to help developers succeed.",
    
    githubUrl: "https://github.com/rominirani",
    linkedinUrl: "",
    twitterUrl: "https://twitter.com/iRomin",
  ),
  Speaker(
    speakerSession: "Flutter in existing native apps",
    speakerImage:
        "https://sessionize.com/image?f=dd0404c6ebc261e200b879dc962bb952,400,400,True,False,39-a82f-4c7b-a256-36766fb849e7.e86e03af-7398-4c60-9e4d-189d9269c134.JPG",
    speakerName: "Rahul Devanavar",
    speakerDesc: "The startup guy, always eager to experiment with new technology. Has 5 years of experience in mobile application development (Android, iOS, and Flutter).",
    
    githubUrl: "",
    linkedinUrl: "https://www.linkedin.com/in/rahuldevanavar/",
    twitterUrl: "https://twitter.com/Rahuldeva91",
  ),
  Speaker(
    speakerSession: "Make Your Actions More Powerful",
    speakerImage:
        "https://sessionize.com/image?f=06772eacb5bcce6a4fac8686379d2679,400,400,True,False,62872118-2e37-49a8-9c2f-580772334f19.jpg",
    speakerName: "Ravi Rupareliya",
    speakerDesc: "Sr. Software Engineed - Simform Solutions",
    
    githubUrl: "https://github.com/ravirupareliya",
    linkedinUrl: "https://www.linkedin.com/in/ravi-rupareliya/",
    twitterUrl: "https://twitter.com/ravi_rupareliya",
  ),
  Speaker(
    speakerSession: "Let's Talk Composing UI",
    speakerImage:
        "https://sessionize.com/image?f=475d4315df3c8424000efc8933be310d,400,400,True,False,7c-9ec9-4533-b50f-0b03493041d1.0bdfa3c1-b3dc-43ac-a823-925657ef776f.jpg",
    speakerName: "Rivu Chakraborty",
    speakerDesc: "Kotlin Evangelist, Author, Speaker, Community Person, Sr. Android Dev.",
    
    githubUrl: "https://github.com/RivuChk",
    linkedinUrl: "https://www.linkedin.com/in/rivuchk/",
    twitterUrl: "https://twitter.com/rivuchakraborty",
  ),
  Speaker(
    speakerSession: "Protocol Buffers: Is it worth the switch from JSON?",
    speakerImage:
        "https://sessionize.com/image?f=4efda98a3580eabb450c73f03259e183,400,400,True,False,79-cf62-4260-ba90-ca72f59f8e17.a0f9478f-a36c-44da-9244-c0f9e5213562.jpeg",
    speakerName: "Rishabh Singh",
    speakerDesc: "I’m Rishabh, a developer, consultant, tech evangelist & a struggling entrepreneur. I’m the lead developer at OffPay (@getoffpay), where my team & I try to make things happen without the internet!",
    
    githubUrl: "https://github.com/cheesetouched",
    linkedinUrl: "https://www.linkedin.com/in/pingrishabh",
    twitterUrl: "https://twitter.com/pingrishabh",
  ),
  Speaker(
    speakerSession: "Importance of tech in non-technical product based startups and how to handle it",
    speakerImage:
        "https://sessionize.com/image?f=4203821c19f2a40d8e020c000dc850df,400,400,True,False,f6-0fb5-46db-929f-a0d69b45ed70.f7949ef7-6347-4bf9-bc66-b743cb69074a.jpg",
    speakerName: "Rohit Bhaskar",
    speakerDesc: "Current technical lead at Elevar Sports",
    
    githubUrl: "https://github.com/rohitbhaskar",
    linkedinUrl: "https://www.linkedin.com/in/rohitb1vs10/",
    twitterUrl: "https://twitter.com/rohitb1v10",
  ),
    Speaker(
    speakerSession: "Demystifying React Hooks",
    speakerImage:
        "https://sessionize.com/image?f=dce8cd3d9ada417ea02fb400e4c27773,400,400,True,False,77-d846-4f23-b0a4-50e9aa3b4ccc.ab50f22b-d2de-43dc-8241-6109c84255d7.jpg",
    speakerName: "Tathagat Thapliyal",
    speakerDesc: "Co-Founder, CTO At Voz",
    
    githubUrl: "https://github.com/tathagat2006",
    linkedinUrl: "https://www.linkedin.com/in/tathagat-thapliyal/",
    twitterUrl: "https://twitter.com/sumoneisback001",
  ),
  Speaker(
    speakerSession: "Introspection through coding: Getting to know yourself",
    speakerImage:
        "https://sessionize.com/image?f=c61d66fc547ec9681f19e3b69fe5f813,400,400,True,False,ed-4a13-410f-bb3b-f27e4dc2b7e6.0ebf15cd-5cd2-4e36-bdd4-5815739dab6b.jpeg",
    speakerName: "Zeel Mehta",
    speakerDesc: "Tech Enthusiast,Brand Strategy Manager who is simultaneously learning various programming languages",
    
    githubUrl: "https://github.com/zeel97",
    linkedinUrl: "https://www.linkedin.com/in/zeel-mehta-550858122/l/",
    
  ),
];

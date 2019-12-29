class SessionsData {
  List<Session> sessions;

  SessionsData({this.sessions});

  SessionsData.fromJson(Map<String, dynamic> json) {
    if (json['sessions'] != null) {
      sessions = new List<Session>();
      json['sessions'].forEach((v) {
        sessions.add(Session.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sessions != null) {
      data['sessions'] = this.sessions.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Session {
  String sessionId;
  String sessionTitle;
  String sessionDesc;
  String sessionImage;
  String sessionStartTime;
  String sessionTotalTime;
  String sessionLink;
  String speakerName;
  String speakerDesc;
  String speakerImage;
  String speakerInfo;
  String speakerId;
  String track;

  Session({
    this.sessionId,
    this.sessionTitle,
    this.sessionDesc,
    this.sessionImage,
    this.sessionStartTime,
    this.sessionTotalTime,
    this.sessionLink,
    this.speakerName,
    this.speakerDesc,
    this.speakerImage,
    this.speakerInfo,
    this.speakerId,
    this.track,
  });

  Session.fromJson(Map<String, dynamic> json) {
    sessionId = json['session_id'];
    sessionTitle = json['session_title'];
    sessionDesc = json['session_desc'];
    sessionImage = json['session_image'];
    sessionStartTime = json['session_start_time'];
    sessionTotalTime = json['session_total_time'];
    sessionLink = json['session_link'];
    speakerName = json['speaker_name'];
    speakerDesc = json['speaker_desc'];
    speakerImage = json['speaker_image'];
    speakerInfo = json['speaker_info'];
    speakerId = json['speaker_id'];
    track = json['track'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['session_id'] = this.sessionId;
    data['session_title'] = this.sessionTitle;
    data['session_desc'] = this.sessionDesc;
    data['session_image'] = this.sessionImage;
    data['session_start_time'] = this.sessionStartTime;
    data['session_total_time'] = this.sessionTotalTime;
    data['session_link'] = this.sessionLink;
    data['speaker_name'] = this.speakerName;
    data['speaker_desc'] = this.speakerDesc;
    data['speaker_image'] = this.speakerImage;
    data['speaker_info'] = this.speakerInfo;
    data['speaker_id'] = this.speakerId;
    data['track'] = this.track;
    return data;
  }
}

//*  Sessions hardcoded data
final desc = "The async/await feature allows you to write the asynchronous code in a straightforward way," +
    "without a long list of callbacks. Used in C# for quite a while already, it has proven to be extremely useful.In Kotlin you have async and await as library functions implemented using coroutines." +
    "A coroutine is a light-weight thread that can be suspended and resumed later." +
    "Very precise definition, but might be confusing at first. What 'light-weight thread' means?" +
    "How does suspension work? This talk uncovers the magic. We'll discuss the concept of coroutines," +
    "the power of async/await, and how you can benefit from defining your asynchronous computations using suspend function." +
    " The content of this video was not produced or created by Google.";

//* Tracks can be mobile, web and cloud (Make it web by default or if the track type is not clear.)

List<Session> sessions = [
  Session(
    sessionId: "1",
    sessionStartTime: "10:00 AM",
    sessionTotalTime: "30 Mins",
    sessionTitle: "Keynote",
    sessionDesc: desc,
    speakerImage:
        "https://avatars2.githubusercontent.com/u/1614870?s=460&v=4",
    speakerName: "Romin Irani",
    speakerDesc: "Level Up as a Developer",
    track: "cloud",
  ),
  Session(
    sessionId: "2",
    sessionStartTime: "10:30 AM",
    sessionTotalTime: "45 Mins",
    sessionTitle: "How I Became a Mobile Developer with Firebase and Flutter",
    sessionDesc: "Watch Bhavik Makwana Not from the Flutter team integrate a Cloud Firestore database from Firebase into a Flutter app.",
    speakerImage:
        "https://sessionize.com/image?f=475d4315df3c8424000efc8933be310d,400,400,True,False,7c-9ec9-4533-b50f-0b03493041d1.0bdfa3c1-b3dc-43ac-a823-925657ef776f.jpg",
    speakerName: "Rivu Chakraborty",
    speakerDesc: "Kotlin Evangelist, Author, Speaker, Community Person, Sr. Android Dev.",
    track: "mobile",
  ),
  Session(
    sessionId: "3",
    sessionStartTime: "10:30 AM",
    sessionTotalTime: "45 Mins",
    sessionTitle: "How to handle the Training Model Hangover",
    sessionDesc: desc,
    speakerImage:
        "https://sessionize.com/image?f=37b054f417d183224056a451f09fbe95,400,400,True,False,e6-7ed5-4a0a-a989-79f53f980674.bf55d10e-731d-4425-8201-2be0488539f9.jpg",
    speakerName: "Pratik Parmar",
    speakerDesc: "A Data Scientist who caught the travel bug.",
    track: "cloud",
  ),
  Session(
    sessionId: "4",
    sessionStartTime: "12:00 PM",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Make Your Actions More Powerful",
    sessionDesc: desc,
    speakerImage:
        "https://sessionize.com/image?f=4efda98a3580eabb450c73f03259e183,400,400,True,False,79-cf62-4260-ba90-ca72f59f8e17.a0f9478f-a36c-44da-9244-c0f9e5213562.jpeg",
    speakerName: "Ravi Rupareliya",
    speakerDesc: "Sr. Software Engineed - Simform Solutions",
    track: "cloud",
    
  ),
Session(
    sessionId: "5",
    sessionStartTime: "12:45 PM",
    sessionTotalTime: "45 Mins",
    sessionTitle: "DL-on-the-Edge",
    sessionDesc: desc,
    speakerImage:
        "https://sessionize.com/image?f=5f7adf94d877901e6972cb0b16d836d0,400,400,True,False,a3-a84e-4909-8a13-3b9eaef025b3.e6b2c1c5-5ec2-4420-a4ac-c3c913b0f040.jpg",
    speakerName: "Indranil Chandra",
    speakerDesc: "Innovator | Maker | Engineer | Researcher | I teach, preach and leverage ML/DL techniques to build meaningful products.",
    track: "cloud",
    
  ),

  Session(
    sessionId: "6",
    sessionStartTime: "11:15 AM",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Scaling Frontend Development and Micro-Frontend Architecture",
    sessionDesc: desc,
    speakerImage:
        "https://sessionize.com/image?f=bcede5a3a80070703471128fa4262bfa,400,400,True,False,5d-da47-4dee-9428-1ef0efb15c1f.172b43e2-0718-4e84-98ff-f94201e604d5.PNG",
    speakerName: "Aliakbar Attarwala",
    speakerDesc: "Front-end Architect - BookMyShow",
    track: "mobile",
  ),
  Session(
    sessionId: "7",
    sessionStartTime: "12:00 PM",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Integrating Firestore as a backend in your Flutter app.",
    sessionDesc: desc,
    speakerImage:
        "https://sessionize.com/image?f=7b5628f004a52f0b8a33836535f3247a,400,400,True,False,db-8a29-4a91-942c-f25e8a7b02cb.bda772ee-5a1d-451e-ab70-440e7899e3e4.jpg",
    speakerName: "Bhavik Makwana",
    speakerDesc: "He is a Flutter Enthusiast, Google certified associate android developer and Open-source contributor.",
    track: "mobile",
  ),
  
  Session(
    sessionId: "8",
    sessionStartTime: "12:45 PM",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Effective DI for Multi Module Project",
    sessionDesc: desc,
    speakerImage:
        "https://sessionize.com/image?f=3b32f5b895502cfc94721839ee496d74,400,400,True,False,18-131f-4ff0-b644-43ba706b82e8.8d1b0d00-5caa-48bb-889d-94e931646e3c.jpg",
    speakerName: "Adit Lal",
    speakerDesc: "Adit is a Product Engineer, Android at GoJek. He is been working in the industry for close to 6 years. Some of his hobbies are Stargazing, Travel and Landscape Photography",
    track: "mobile",
  ),
  Session(
    sessionId: "9",
    sessionStartTime: "2:15 PM",
    sessionTotalTime: "15 Mins",
    sessionTitle: "Introspection through coding: Getting to know yourself",
    sessionDesc: desc,
    speakerImage:
        "https://sessionize.com/image?f=c61d66fc547ec9681f19e3b69fe5f813,400,400,True,False,ed-4a13-410f-bb3b-f27e4dc2b7e6.0ebf15cd-5cd2-4e36-bdd4-5815739dab6b.jpeg",
    speakerName: "Zeel Mehta",
    speakerDesc: "Tech Enthusiast,Brand Strategy Manager who is simultaneously learning various programming languages",
    track: "mobile",
  ),
  Session(
    sessionId: "10",
    sessionStartTime: "2:30 PM",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Demystifying React Hooks",
    sessionDesc: desc,
    speakerImage:
        "https://sessionize.com/image?f=dce8cd3d9ada417ea02fb400e4c27773,400,400,True,False,77-d846-4f23-b0a4-50e9aa3b4ccc.ab50f22b-d2de-43dc-8241-6109c84255d7.jpg",
    speakerName: "Tathagat Thapliyal",
    speakerDesc: "Co-Founder, CTO At Voz",
    track: "mobile",
  ),
  Session(
    sessionId: "11",
    sessionStartTime: "2:45 PM",
    sessionTotalTime: "15 Mins",
    sessionTitle: "Flutter in existing native apps",
    sessionDesc: desc,
    speakerImage:
        "https://sessionize.com/image?f=dd0404c6ebc261e200b879dc962bb952,400,400,True,False,39-a82f-4c7b-a256-36766fb849e7.e86e03af-7398-4c60-9e4d-189d9269c134.JPG",
    speakerName: "Rahul Devanavar",
    speakerDesc: "The startup guy, always eager to experiment with new technology. Has 5 years of experience in mobile application development (Android, iOS, and Flutter).",
    track: "mobile",
  ),
  Session(
    sessionId: "12",
    sessionStartTime: "2:45 PM",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Scale your Web Application Securely on Compute Engine",
    sessionDesc: desc,
    speakerImage:
        "https://sessionize.com/image?f=08c586fb06ca3bde335b98ebc60d3cab,400,400,True,False,a1-84a6-409a-a6ee-849f10c6b9d3.9c35028b-1e91-4dea-874f-26b13029a983.jpg",
    speakerName: "Chirag Nayyar",
    speakerDesc: "A hardcore public cloud platform learner and like to share my learning, tweaks with everyone",
    track: "cloud",
  ),
  Session(
    sessionId: "13",
    sessionStartTime: "3:00 PM",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Protocol Buffers: Is it worth the switch from JSON",
    sessionDesc: desc,
    speakerImage:
        "https://sessionize.com/image?f=4efda98a3580eabb450c73f03259e183,400,400,True,False,79-cf62-4260-ba90-ca72f59f8e17.a0f9478f-a36c-44da-9244-c0f9e5213562.jpeg",
    speakerName: "Rishabh Singh",
    speakerDesc: "I’m Rishabh, a developer, consultant, tech evangelist & a struggling entrepreneur. I’m the lead developer at OffPay (@getoffpay), where my team & I try to make things happen without the internet!",
    track: "mobile",
  ),
  Session(
    sessionId: "14",
    sessionStartTime: "3:45 PM",
    sessionTotalTime: "45 Mins",
    sessionTitle: "Importance of tech in non-technical product based startups and how to handle it",
    sessionDesc: desc,
    speakerImage:
        "https://sessionize.com/image?f=4203821c19f2a40d8e020c000dc850df,400,400,True,False,f6-0fb5-46db-929f-a0d69b45ed70.f7949ef7-6347-4bf9-bc66-b743cb69074a.jpg",
    speakerName: "Rohit Bhaskar",
    speakerDesc: "Current technical lead at Elevar Sports",
    track: "mobile",
  ),
  
];



import 'package:flutter/material.dart';
import 'package:student/models/announcement.dart';

import 'announcementCard.dart';

class AnnouncementScreen extends StatefulWidget {
  @override
  _AnnouncementScreenState createState() => _AnnouncementScreenState();
}

class _AnnouncementScreenState extends State<AnnouncementScreen> {

  @override
  Widget build(BuildContext context) {

    List<Announcement> AllAnnouncements = Announcement.fetchAll();
    List<Announcement> ExamAnnouncements = Announcement.fetchExams();
    List<Announcement> GeneralAnnouncements = Announcement.fetchGeneral();

    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            elevation: 0,

            title: Text("Announcements"),
            bottom: TabBar(
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    color: Colors.white),
                tabs: [
                  Tab(  child: Text("All items"),),
                  Tab(  child: Text("General"),),
                  Tab(  child: Text("Exams"),),
                ]),
          ),

          body: TabBarView(
              children: [

                //All Announcements
                Container(
                  child: ListView.builder(
                      itemCount: AllAnnouncements.length,
                      itemBuilder: (BuildContext listContext, index){
                        return AnnouncementCard(
                          type: AllAnnouncements[index].getType(),
                          typeColor: AllAnnouncements[index].colorType,
                          title: AllAnnouncements[index].getTitle(),
                          content: AllAnnouncements[index].getContent(),
                          timeReceived: AllAnnouncements[index].getTimeReceived(),
                        );
                      }
                  )
                ),

                //General...fetch only general
                Container(
                  child: ListView.builder(
                    itemCount: GeneralAnnouncements.length,
                    itemBuilder: (BuildContext listContext, index){

                      return  AnnouncementCard(
                        type: GeneralAnnouncements[index].getType(),
                        typeColor: GeneralAnnouncements[index].colorType,
                        title: GeneralAnnouncements[index].getTitle(),
                        content: GeneralAnnouncements[index].getContent(),
                        timeReceived: GeneralAnnouncements[index].getTimeReceived(),
                      );

                    }
                ),
                ),
                Container(
                  child: ListView.builder(
                      itemCount: ExamAnnouncements.length,
                      itemBuilder: (BuildContext listContex,index){
                        return AnnouncementCard(
                          type: ExamAnnouncements[index].getType(),
                          typeColor: ExamAnnouncements[index].colorType,
                          title: ExamAnnouncements[index].getTitle(),
                          content: ExamAnnouncements[index].getContent(),
                          timeReceived: ExamAnnouncements[index].getTimeReceived(),
                        );
                      }),
                ),
              ]
          ),
        )
    
    );
  }
}

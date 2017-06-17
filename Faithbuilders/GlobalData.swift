//
//  GlobalData.swift
//  Faithbuilders
//
//  Created by Curtis Wilson on 6/14/16.
//  Copyright © 2016 Eusebeia. All rights reserved.
//

import UIKit
class GlobalData
{
    // Singleton Setup
    
    fileprivate static var info: GlobalData?
    let speakers: Array<Speaker>
    let classes: Array<Class>
    
    class func getInstance() -> GlobalData
    {
        if self.info == nil
        {
            self.info = GlobalData()
        }
        
        return self.info!
    }
    
    func findSpeakerByName(_ name: String) -> Speaker? {
        var i: Int = 0
        while (i < speakers.count) {
            if (speakers[i].name == name) {
                return speakers[i]
            }
            i += 1
        }
        return nil
    }
    
    // Class properties
    init() {
        speakers = [
            Speaker(name:"Bob Stump", location:"Puyallup, WA", photo:UIImage(named:"bobstump")!, description:"Bob Stump is a graduate of the Bear Valley School of Preaching (1976) and Sunset School of Missions (1977). He preached 15 years for the Springbrook church of Christ (Renton) and served as a missionary in Slovakia for 22 years. He taught seminars in Graz, Austria; Zurich, Switzerland; and Prague, Czech Republic. While in Bratislava, he volunteered to teach English conversation for 16 years at a public high school, Jura Hronca Gymnazium. Bob is the director of the Sunset International Bible Institute Northwest located in Puyallup, WA."),
            Speaker(name:"Dennis Baker", location:"Tacoma, WA", photo:UIImage(named:"dennisbaker")!, description:"Dennis Baker is the minister for Lakeview Church of Christ in Tacoma, Washington where he has served the body for over 20 years. He is the director of STS at Delano Bay Christian Camp. He graduated from the Preston Road School of Preaching in Dallas, Texas. He and his wife, Lanita, have been married for over 30 years and have three children."),
            Speaker(name:"Derrick Allen", location:"Ellensburg, WA", photo:UIImage(named:"derrickallen")!, description:"Derrick Allen has been married to Roxanne Allen for seven years, and we have two beautiful daughters. Derrick graduated from the SIBINW residency program in 2010. He received a B.A. in Biblical Studies from Amridge University in 2016, and is currently pursuing an M.A. in Old Testament from Turner School of Theology. He has been the Evangelist for the Ellensburg, church of Christ in Ellensburg, Washington since 2010. He was raised in the North West and love exploring the outdoors."),
            Speaker(name:"Evertt Huffard", location:"Memphis, TN", photo:UIImage(named:"evertthuffard")!, description:"Dr. Evertt W. Huffard is Professor of leadership and missions at Harding School of Theology, in Memphis, Tennessee, where he has taught for 29 years. He served as VP/Dean for 15 years. In 1997 he received the Distinguished Teacher Award from Harding University. He was an elder at the Church of Christ at White Station for ten years. He is a consultant for church leaders as one of the partners in Hope Network Ministries. He provides church equipping for missions through Mission Resource Network. He has hosted over 30 tour groups to Greece, Turkey, Egypt, Jordan and Israel. In 2014 he consulted for 24 churches in 9 states and participated in church leadership development in Australia, Honduras, Israel, and Mozambique.\n\nHis cross-cultural experiences began as a teenager when his parents moved to Jerusalem, Jordan in 1963. He attended an Arab High School on the West Bank. He returned to the USA in 1967 and after graduating from Lubbock Christian University (A.A.), Harding University (B.A.), and Harding School of Theology (M.A. and M.Th.) he worked with the Church of Christ in Nazareth, Israel and taught Bible at the Galilee Christian High School. He completed a Ph.D. in Inter-Cultural Studies at Fuller Theological Seminary in 1985 with a focus on the Muslim-Christian encounter. He has ten years of urban ministry experience in Los Angeles and Memphis. He lectures on leadership, missions, biblical archaeology, and the Muslim-Christian encounter. He was a participant in a faith-based diplomacy project with leaders of the Muslim Brotherhood in Amman, Jordan in 2011.\n\nEvertt and his wife, Ileene, have three children and seven grandsons."),
            Speaker(name:"Jimmy Hurd", location:"Seattle, WA", photo:UIImage(named:"jimmyhurd")!, description:"Jimmy Hurd has served as a full-time minister with the Churches of Christ for over 28 years. He is a graduate of Seattle Pacific University and the University of Washington. After completing the Master of Health Administration degree in 1981, he entered the field of hospital administration. He entered full time ministry in 1988 serving his home church, the Holgate Church of Christ in Seattle, Washington for 15 years. He then went on to serve as the minister of the Oakland Church of Christ in Southfield, Michigan, (located in the Detroit area) from 2003-2011. Following his ministry in Michigan, he served as the preaching minister of the Cordova Church of Christ in Rancho Cordova, California (near Sacramento) for five and one half years. He began serving the Holgate Street church in September of 2016.\n\nJimmy has had over 20 years of effective ministry and leadership experience with churches, hospitals, nonprofit, government and military organizations. He is a former Medical Service Corps Officer in the US Navy, a former executive director of a non-profit health organization, diversity instructor, and is a featured speaker at the workshops of preachers of Churches of Christ in Ethiopia. He is also active in online ministry. His most popular site is LifeTeachingPro.com. He loves to travel and is a spray paint artist. He and his wife Jacqui have been married for over 38 years. They have two children, Talia Cotton and Richmond Hurd and two grandsons, Christian and Connor Cotton."),
            Speaker(name:"Keith Kasarjian", location:"Denver, CO", photo:UIImage(named:"keithkasarjian")!, description:"Keith Kasarjian has been married to Kim for 25 years and they have 3 children – Molly, Kyle, and Blake. Keith has preached for more than 20 years for churches in Alabama, Tennessee, and Kentucky. He earned the B.A. from Faulkner University and an M.B.S. from Bear Valley Bible Institute of Denver. He is the Assistant Director of Extension Studies at Bear Valley and Director of New School Development.\n\nKeith has taught in Bear Valley extensions in several countries and has done additional mission work in many others. His writings have been published in periodicals such as Gospel Advocate and Words of Truth.\n\nKeith is a scuba diver and a marathon runner, who also enjoys camping with his family, golf, the outdoors, fitness, and cooking."),
            Speaker(name:"Keith Parker", location:"Hendersonville, TN", photo:UIImage(named:"keithparker")!, description:"Keith Parker is a native of Huntsville, AL where he began preaching at the age of 17. He received a B.A. in Bible at Freed-Hardeman University and a Masters in Religion from Lipscomb University. Most recently Keith served as the pulpit minister for the Hendersonville Church of Christ in Hendersonville, Tennessee for 16½ years and for the last 5 years has been in full-time meeting work, preaching for about 50 different congregations each year."),
            Speaker(name:"Ken Wilson", location:"Puyallup, WA", photo:UIImage(named:"kenwilson")!, description: "Ken Wilson has been a minister and family counselor for over 35 years. He earned a Doctor of Ministry degree in Bible and Ministry from Bethany Theological Seminary and a Ph.D. from Cornerstone University in Clinical Pastoral Counseling.\n\n\nHe is a Licensed Pastoral Counselor and Board Certified Clinical Supervisor with the National Christian Counselors Association, and a charter member of the American Association of Christian Counselors. He is also the Founder and President of Agape Counseling Center.\n\nDr. Wilson is the author of eleven published books and has spoken at workshops and seminars in numerous states and foreign countries. He is currently an Elder with the Puyallup Church of Christ and is the Director for the FaithBuilders™ workshop, a yearly collaborative effort of the churches of Christ in the Pacific Northwest.\n\nHe and his wife Sandy have four children and twenty-one grandchildren."),
            Speaker(name:"Lee Jamieson", location:"Tallahassee, FL", photo:UIImage(named:"leejamieson")!, description:"Lee R. Jamieson has served as the Pulpit Minister for the Timberlane Church of Christ in Tallahassee, Florida since February 2014. Previously, he served in the same capacity for congregations in Tuscaloosa, Alabama and Luverne, Alabama. In all, Lee has been in full-time ministry since 2001. He earned his undergraduate degree from the University of North Carolina in 1986 and a Masters Degree from Southern Christian University in Montgomery, Alabama in 2002.\n\nMarried to Kathy for 29 years, the couple has a son, Lee, Jr., who is a sophomore studying at the University of Alabama and a daughter, Madelaine (“Maddy”), who is a freshman at Tallahassee Community College in Tallahassee. Both Lee, Jr. and Maddy are engaged to be married in the summer of 2017.\n\nTogether with his family, Lee has led annual trips to the Republic of Panama working with the indigenous Embera and Kuna tribesmen and other rural Panamanian people in a combined humanitarian and evangelistic outreach. Lee and his family are also actively engaged in summer youth camps and various youth retreats throughout the southeast.\n\nFavorite Bible verse: Thus says the LORD: \"Let not the wise man boast in his wisdom, let not the mighty man boast in his might, let not the rich man boast in his riches, but let him who boasts boast in this, that he understands and knows me, that I am the LORD who practices steadfast love, justice, and righteousness in the earth. For in these things I delight, declares the LORD.\" Jeremiah 9:23-24"),
            Speaker(name:"Lori Boyd", location:"Murfreesboro, TN", photo:UIImage(named:"loriboyd")!, description:"Lori Boyd is from Murfreesboro, Tennessee and attends the East Main Church of Christ. She and her husband, Sam, have been married for seventeen years and have three children, Evie (14), Kate (12), and Briggs (9). Lori is a Registered Nurse and works as a Nursing Supervisor at St. Thomas Rutherford Hospital in Murfreesboro. She is also currently enrolled in classes at the Nashville School of Preaching and Biblical Studies.\n\nLori has written for Think magazine and has developed several Bible studies for women. Her first published book, Trailblazers, was released at the end of last year and she is currently working on the completion of her second book, entitled Walking to the Promised Land. She has a passion for public speaking and enjoys presenting regularly at ladies’ events and retreats.\n\nLori was born in Germany and had the wonderful opportunity to live all across the United States while growing up in the Air Force. She attended Abilene Christian University in Texas and graduated from the Abilene Intercollegiate School of Nursing in 1996. She moved to Nashville in June of 1997 and has called Middle Tennessee “home” ever since. Some of her favorite things include spending time with her family, writing, reading, speaking, teaching, and traveling. Above everything else, she loves the Lord, His church, and the incredible joy that comes with being a Christian."),
            Speaker(name:"Mark Jamieson", location:"Puyallup, WA", photo:UIImage(named:"markjamieson")!, description: "Mark K. Jamieson is currently serving as the pulpit minister for the Puyallup Church of Christ which meets in Puyallup, Washington. He previously served the Lord’s church in Gulf Shores, Alabama; Columbia, Tennessee; and Franklin, Kentucky as their pulpit minister. He currently works as an adjunct instructor with the Guyana Christian University in Lethem, Guyana (South America). He is a former instructor with the Nashville School of Preaching and Biblical Studies, Philippine Theological College, and the Columbia (Tennessee) School of Preaching and Biblical Studies.\n\nHe is the son of LtCol Leo R. Jamieson of Montgomery, Alabama, and Peggie Derryberry Jamieson of Pulaski, Tennessee. He was reared in the United States Marine Corps from Long Island, New York, to Mission Viejo, California, and attended 10 different schools Kindergarten through high school graduation. He has one brother, Lee, of Tallahassee, Florida, who is also a gospel preacher.\n\nHe is married to the former Suzy Yeomans, of Shelby, North Carolina, his wife of over 29 years. Together they have two sons, Kevin, 27, and David, 25. He holds a BA in Biblical Studies from Southern Christian University and an MA in Biblical Studies from Amridge University, formerly Southern Christian University, and has done post-graduate studies at Amridge University towards a PhD in Biblical Studies."),
            Speaker(name:"Mark Johnson", location:"Olympia, WA", photo:UIImage(named:"markjohnson")!, description:"Mark Johnson holds a Doctor of Ministry degree, from Harding Graduate School of Religion, along with many other educational achievements. He is the minister for the Olympia Church of Christ with an emphasis on teaching and leadership. Mark is used extensively throughout the country in numerous workshops and seminars."),
            Speaker(name:"Wes Hanson", location:"Scappoose, OR", photo:UIImage(named:"weshanson")!, description:"Wes Hanson was born and raised in the Northwest where his father, Carl Hanson, has worked as a teacher and preacher for the past 40 years. Wes came to a personal conviction regarding the truth of Christianity at age 16 after the historical proofs for Christ’s resurrection were presented to him by a counselor at Delano Bay Christian Camp. Since then he has fully committed his life to the ministry of the Word, working with both Adults and Teens. He and his wife Rachel, and their family of four live in Scappoose, OR where Wes has served as preaching minister for 14 years. He is involved in the ministry at Camp Yamhill and frequently speaks for youth events and ministry conferences."),
            Speaker(name:"Wissam Al-Aethawi", location:"Metro Detroit, MI", photo:UIImage(named:"wissamalaethawi")!, description: "I am Wissam, 37, an associate minister at Sunset church of Christ and a gospel preacher in Metro Detroit, MI. I was born and raised to a Sunni Muslim family in Baghdad, Iraq. I rejected Islam into atheism in the mid-1990's, found a copy of the Bible in '97, believed in '98 and it took me another 12 years before I could find someone to baptize me in May 2010.\n\nA graduate of the University of Baghdad, I worked as a civil engineer for 8 years after finishing my service as a Republican Guard. Then a Christian woman in the Amish country of Pennsylvania invited me to come to the U.S. I came in April 2011. Nine months later, I went to Sunset International Bible Institute in Lubbock, TX. I finished school and moved to Michigan by early 2014. I like reading, writing, and doing Bible studies. I teach in our church, at my house and other places on a regular basis. I dream of starting an Arab-speaking congregation of the Lord's church in Dearborn."),
        ]
        
        classes = [
            Class(title: "Registration and Displays", speaker:nil, location: "Auditorium", timeStart: "9:00 AM", timeEnd: "9:30 AM", day: 0),
            Class(title: "Concern for the Lost", speaker: speakers[6], location: "Auditorium", timeStart: "9:30 AM", timeEnd: "10:30 AM", day: 0),
            Class(title: "The Power of the Pulpit", speaker: speakers[5], location: "Admin 101", timeStart: "9:30 AM", timeEnd: "10:30 AM", day: 0),
            Class(title: "What is the Anointing?", speaker: speakers[11], location: "Xavier", timeStart: "9:30 AM", timeEnd: "10:30 AM", day: 0),
            Class(title: "The Quran, or Bible", speaker: speakers[13], location: "Auditorium", timeStart: "10:45 AM", timeEnd: "11:45 AM", day: 0),
            Class(title: "Preaching the Word", speaker: speakers[5], location: "Admin 101", timeStart: "10:45 AM", timeEnd: "11:45 AM", day: 0),
            Class(title: "Conquering Fear Through Righteousness", speaker: speakers[9], location: "Xavier", timeStart: "10:45 AM", timeEnd: "11:45 AM", day: 0),
            Class(title: "Embracing Apostolic Authority", speaker: speakers[8], location: "Auditorium", timeStart: "1:30 PM", timeEnd: "2:30 PM", day: 0),
            Class(title: "The Power of Hope", speaker: speakers[10], location: "Auditorium", timeStart: "2:45 PM", timeEnd: "3:45 PM", day: 0),
            Class(title: "Preaching that Convicts", speaker: speakers[5], location: "Admin 101", timeStart: "2:45 PM", timeEnd: "3:45 PM", day: 0),
            Class(title: "Principles of Leadership", speaker: speakers[3], location: "Xavier", timeStart: "2:45 PM", timeEnd: "3:45 PM", day: 0),
            Class(title: "Families in Crisis", speaker: speakers[4], location: "Auditorium", timeStart: "4:00 PM", timeEnd: "5:00 PM", day: 0),
            Class(title: "Preacher Training", speaker: speakers[0], location: "Admin 101", timeStart: "4:00 PM", timeEnd: "5:00 PM", day: 0),
            Class(title: "Casting Out the Fear of Life", speaker: speakers[2], location: "Xavier", timeStart: "4:00 PM", timeEnd: "5:00 PM", day: 0),
            Class(title: "I am Arab and Christian", speaker: speakers[13], location: "Auditorium", timeStart: "7:00 PM", timeEnd: "8:00 PM", day: 0),
            
            
            
            Class(title: "Registration and Displays", speaker:nil, location: "Auditorium", timeStart: "9:00 AM", timeEnd: "9:30 AM", day: 1),
            Class(title: "Walking in the Light", speaker: speakers[6], location: "Auditorium", timeStart: "9:30 AM", timeEnd: "10:30 AM", day: 1),
            Class(title: "We Have the Message", speaker: speakers[8], location: "Admin 101", timeStart: "9:30 AM", timeEnd: "10:30 AM", day: 1),
            Class(title: "What is Testing the Spirits?", speaker: speakers[11], location: "Xavier", timeStart: "9:30 AM", timeEnd: "10:30 AM", day: 1),
            Class(title: "Abraham, Muhammed, Golden Butterfly", speaker: speakers[13], location: "Auditorium", timeStart: "10:45 AM", timeEnd: "11:45 AM", day: 1),
            Class(title: "We Have the Method", speaker: speakers[8], location: "Admin 101", timeStart: "10:45 AM", timeEnd: "11:45 AM", day: 1),
            Class(title: "Conquering Fear Through Knowledge", speaker: speakers[9], location: "Xavier", timeStart: "10:45 AM", timeEnd: "11:45 AM", day: 1),
            Class(title: "Who is the Antichrist?", speaker: speakers[3], location: "Auditorium", timeStart: "1:30 PM", timeEnd: "2:30 PM", day: 1),
            Class(title: "Learning to Conquer Sin", speaker: speakers[10], location: "Auditorium", timeStart: "2:45 PM", timeEnd: "3:45 PM", day: 1),
            Class(title: "We Have the Motive", speaker: speakers[8], location: "Admin 101", timeStart: "2:45 PM", timeEnd: "3:45 PM", day: 1),
            Class(title: "Leadership of the Church", speaker: speakers[3], location: "Xavier", timeStart: "2:45 PM", timeEnd: "3:45 PM", day: 1),
            Class(title: "Permanence of Marriage", speaker: speakers[4], location: "Auditorium", timeStart: "4:00 PM", timeEnd: "5:00 PM", day: 1),
            Class(title: "Electronic Classrooms", speaker: speakers[0], location: "Admin 101", timeStart: "4:00 PM", timeEnd: "5:00 PM", day: 1),
            Class(title: "Casting Out the Fear of Fellowship", speaker: speakers[2], location: "Xavier", timeStart: "4:00 PM", timeEnd: "5:00 PM", day: 1),
            Class(title: "Conquering Fear of the Judgement", speaker: speakers[6], location: "Auditorium", timeStart: "7:00 PM", timeEnd: "8:00 PM", day: 1),
            
            
            
            Class(title: "Registration and Displays", speaker:nil, location: "Auditorium", timeStart: "9:00 AM", timeEnd: "9:30 AM", day: 2),
            Class(title: "Loving One Another", speaker: speakers[6], location: "Auditorium", timeStart: "9:30 AM", timeEnd: "10:30 AM", day: 2),
            Class(title: "Insights into Ministry", speaker: speakers[1], location: "Admin 101", timeStart: "9:30 AM", timeEnd: "10:30 AM", day: 2),
            Class(title: "What is Sin That Leads to Death?", speaker: speakers[11], location: "Xavier", timeStart: "9:30 AM", timeEnd: "10:30 AM", day: 2),
            Class(title: "For We Do Not Wrestle", speaker: speakers[13], location: "Auditorium", timeStart: "10:45 AM", timeEnd: "11:45 AM", day: 2),
            Class(title: "The Power of Youth", speaker: speakers[1], location: "Admin 101", timeStart: "10:45 AM", timeEnd: "11:45 AM", day: 2),
            Class(title: "Conquering Fear Through Love", speaker: speakers[9], location: "Xavier", timeStart: "10:45 AM", timeEnd: "11:45 AM", day: 2),
            Class(title: "Do Not Love the World", speaker: speakers[5], location: "Auditorium", timeStart: "1:30 PM", timeEnd: "2:30 PM", day: 2),
            Class(title: "The Three Witnesses", speaker: speakers[10], location: "Auditorium", timeStart: "2:45 PM", timeEnd: "3:45 PM", day: 2),
            Class(title: "Youth Ministry", speaker: speakers[1], location: "Admin 101", timeStart: "2:45 PM", timeEnd: "3:45 PM", day: 2),
            Class(title: "Leadership of the Home", speaker: speakers[3], location: "Xavier", timeStart: "2:45 PM", timeEnd: "3:45 PM", day: 2),
            Class(title: "No Fear in Love", speaker: speakers[10], location: "Auditorium", timeStart: "4:30 PM", timeEnd: "5:30 PM", day: 2),
            
        ]
    }
}

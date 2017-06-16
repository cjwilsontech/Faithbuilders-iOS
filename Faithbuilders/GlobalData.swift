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
            Speaker(name:"Anthony Wilson",location:"Graham, WA", photo:UIImage(named:"anthonywilson")!, description:"Anthony Wilson is the Pulpit Minister for the Graham church of Christ, in Graham, WA. He is a graduate of the Sunset International Bible Institute with his certification in Biblical and Ministry studies, and also has a Bachelor of Arts Degree in Biblical Studies with Amridge University. Anthony has spoken at many workshops around the Puget Sound. Anthony has over twenty-five years of experience in the communication industry."),
            Speaker(name:"Caleb O'Hara", location:"Ripon, CA", photo:UIImage(named:"calebohara")!, description:"Caleb O’Hara has been working fulltime with the Ripon Church of Christ for ten years. He is the executive director of the Recharge Excellence Conference on the doorstep of Disneyland. He has a passion for working with Millennials and has created the Expedition Winter Camp and a community for Millennials in churches of Christ called Refuge. He views his work in California as that of a missionary in the second largest mission field in the Western Hemisphere (40 Million people live in California). Caleb is also a graduate of the Bear Valley School of Biblical Studies."),
            Speaker(name:"Charlie McClendon", location:"Jacksonville, FL", photo:UIImage(named:"charliemcclendon")!, description:"Charlie McClendon has been preaching the gospel for over 42 years. (Minister) Walter Cox, Jr., at the Westside Church of Christ in Jacksonville, Florida baptized him in 1962. He began preaching a few years later under the mentorship of Brother Walter Cox. In June 1973, Charlie McClendon became the full-time minister of the Northside Church of Christ in Jacksonville, Florida where he is still currently laboring."),
            Speaker(name:"Jay Lockhart", location:"Whitehouse, TX", photo:UIImage(named:"jaylockhart")!, description:"Jay Lockhart graduated from Freed-Hardeman College (University) in 1958 (A.A.); David Lipscomb College (University) in 1961 (B.A.); Harding Graduate School of Religion in 1969 (M.A.); and Trinity Theological Seminary in 1991 (Ph.D.). Jay began preaching in 1956 in Parkersburg, WV. He has preached in congregations in Kentucky, Oklahoma, and Texas. He currently preaches in Whitehouse, TX."),
            Speaker(name:"Keith Parker", location:"Hendersonville, TN", photo:UIImage(named:"keithparker")!, description:"Keith Parker is a native of Huntsville, AL where he began preaching at the age of 17. He received a B.A. in Bible at Freed-Hardeman University and a Masters in Religion from Lipscomb University. Most recently Keith served as the pulpit minister for the Hendersonville Church of Christ in Hendersonville, Tennessee for 16½ years and for the last 5 years has been in full-time meeting work, preaching for about 50 different congregations each year."),
            Speaker(name:"Ken Wilson", location:"Puyallup, WA", photo:UIImage(named:"kenwilson")!, description: "Ken Wilson has been a minister and family counselor for over 35 years. He earned a Doctor of Ministry degree in Bible and Ministry from Bethany Theological Seminary and a Ph.D. from Cornerstone University in Clinical Pastoral Counseling.\n\nHe is a Licensed Pastoral Counselor and Board Certified Clinical Supervisor with the National Christian Counselors Association, and a charter member of the American Association of Christian Counselors. He is also the Founder and President of Agape Counseling Center.\n\nDr. Wilson is the author of eleven published books and has spoken at workshops and seminars in numerous states and foreign countries. He is currently an Elder with the Puyallup Church of Christ and is the Director for the FaithBuilders™ workshop, a yearly collaborative effort of the churches of Christ in the Pacific Northwest.\n\nHe and his wife Sandy have four children and twenty-one grandchildren."),
            Speaker(name:"Kerry Williams", location:"Jonesboro, AR", photo:UIImage(named:"kerrywilliams")!, description: "Kerry Williams became the Pulpit/Lead Minister for the Valley View church of Christ in Jonesboro Arkansas, March of 2012. Before coming to Valley View, he had ministered for the past 20 years to churches in Alabama, Texas, and on the West Coast. He holds a Master of Science in Bible from Lubbock Christian University and a Bachelors from Southern Christian University."),
            Speaker(name:"Kevin Jensen", location:"Yakima, WA", photo:UIImage(named:"kevinjensen")!, description: "Kevin Jensen is the minister for the Summit View Church of Christ in Yakima, Washington. He is a graduate of Harding University and received the Master of Divinities degree from Harding School of Theology. His earlier work includes campus and youth ministry."),
            Speaker(name:"Mark K. Jamieson, Sr.", location:"Puyallup, WA", photo:UIImage(named:"markjamieson")!, description: "Mark K. Jamieson, Sr. currently serves as the pulpit minister at Puyallup church of Christ in Puyallup, Washington. He currently works as an instructor with the Guyana Christian University in Lethem, Guyana (South America). He holds a BA in Biblical Studies from Southern Christian University and an MA in Biblical Studies from Amridge University, formerly Southern Christian University, and has done post-graduate studies at Amridge University towards a PhD in Biblical Studies."),
            Speaker(name:"Pamela Stewart", location:"Denver, CO", photo:UIImage(named:"pamelastewart")!, description: "Pamela Stewart graduated from high school in McCrory, Arkansas, graduated from the women’s program for preachers’ wives at the White’s Ferry Road School of Biblical Studies in West Monroe, Louisiana, and has earned the Bachelor of Biblical Studies degree from Bear Valley Bible Institute International in Denver."),
            Speaker(name:"Rudy Wray", location:"Portland, OR", photo:UIImage(named:"rudywray")!, description: "Rudy Wray graduated from Fort Worth Christian College in 1964 and continued his education at Sunset School of Preaching in Lubbock, Texas, American Christian Bible College and Graduate School of Religion in West Monroe, Louisiana. In 1997 Rudy graduated with a Doctorate of Ministry degree from Northwest Graduate School of the Ministry in Kirkland, Washington. He is currently a Family Life Minister for the Eastside church of Christ in Portland, Oregon."),
            Speaker(name:"Samuel Garner", location:"Seattle, WA", photo:UIImage(named:"samuelgarner")!, description: "Samuel E. Garner is the minister for the Southside Church of Christ in Seattle, Washington. He received his bachelor’s degree from Mississippi State University in Research Sciences and went on to a 3 year program in Biblical Studies at the Georgia School of Preaching in Atlanta, Georgia. He is currently nearing the completion of a Master’s in Biblical Apologetics and an MBA in International Business."),
            Speaker(name:"Sam Jones", location:"Jackson, TN", photo:UIImage(named:"samueljones")!, description: "Sam Jones received a B.S. degree in Biblical Studies from Freed-Hardeman University, both the M.A. and Ph.D. in Sociology (Family, Criminology and Gerontology) from Mississippi State University and has also completed post-doctorate courses in the area of Counseling Education with an emphasis in Marriage and Family Therapy. He currently serves as Vice President for Spiritual Development at Freed-Hardeman University where he has been employed since 1991.")
        ]
        
        classes = [
            Class(title: "Announcements/Singing", speaker:nil, location: "Auditorium", timeStart: "8:30 AM", timeEnd: "9:00 AM", day: 0),
            Class(title: "An Evangelistic Church Pt. 1", speaker: speakers[4], location: "Auditorium", timeStart: "9:15 AM", timeEnd: "10:15 AM", day: 0),
            Class(title: "Women's Most Effective Ministry Pt. 1", speaker: speakers[9], location: "Admin 101", timeStart: "9:15 AM", timeEnd: "10:15 AM", day: 0),
            Class(title: "The Church Begins", speaker: speakers[3], location: "Xavier", timeStart: "9:15 AM", timeEnd: "10:15 AM", day: 0),
            Class(title: "The Glorious Church Pt. 1", speaker: speakers[8], location: "Auditorium", timeStart: "10:30 AM", timeEnd: "11:30 AM", day: 0),
            Class(title: "Reaching Young Families Pt. 1", speaker: speakers[6], location: "Admin 101", timeStart: "10:30 AM", timeEnd: "11:30 AM", day: 0),
            Class(title: "Seeking the Lost Pt. 1", speaker: speakers[2], location: "Xavier", timeStart: "10:30 AM", timeEnd: "11:30 AM", day: 0),
            Class(title: "Congregational Recharge", speaker: speakers[1], location: "Auditorium", timeStart: "1:30 PM", timeEnd: "2:30 PM", day: 0),
            Class(title: "Raising Children Pt. 1", speaker: speakers[12], location: "Auditorium", timeStart: "2:45 PM", timeEnd: "3:45 PM", day: 0),
            Class(title: "Hispanic Missions", speaker: speakers[10], location: "Admin 101", timeStart: "2:45 PM", timeEnd: "3:45 PM", day: 0),
            Class(title: "A Character Focused Ministry Pt. 1", speaker: speakers[11], location: "Xavier", timeStart: "2:45 PM", timeEnd: "3:45 PM", day: 0),
            Class(title: "Reaching Millenials Pt. 1", speaker: speakers[1], location: "Auditorium", timeStart: "4:00 PM", timeEnd: "5:00 PM", day: 0),
            Class(title: "Money and Faith Pt. 1", speaker: speakers[7], location: "Admin 101", timeStart: "4:00 PM", timeEnd: "5:00 PM", day: 0),
            Class(title: "Principles of Unity Pt. 1", speaker: speakers[0], location: "Xavier", timeStart: "4:00 PM", timeEnd: "5:00 PM", day: 0),
            Class(title: "Congregational Singing", speaker: nil, location: "Auditorium", timeStart: "6:30 PM", timeEnd: "7:00 PM", day: 0),
            Class(title: "Counter-Cultural Christianity", speaker: speakers[6], location: "Auditorium", timeStart: "7:00 PM", timeEnd: "8:00 PM", day: 0),
            
            Class(title: "Announcements/Singing", speaker:nil, location: "Auditorium", timeStart: "8:30 AM", timeEnd: "9:00 AM", day: 1),
            Class(title: "An Evangelistic Church Pt. 2", speaker: speakers[4], location: "Auditorium", timeStart: "9:15 AM", timeEnd: "10:15 AM", day: 1),
            Class(title: "Women's Most Effective Ministry Pt. 2", speaker: speakers[9], location: "Admin 101", timeStart: "9:15 AM", timeEnd: "10:15 AM", day: 1),
            Class(title: "Opposition to the Church", speaker: speakers[3], location: "Xavier", timeStart: "9:15 AM", timeEnd: "10:15 AM", day: 1),
            Class(title: "The Glorious Church Pt. 2", speaker: speakers[8], location: "Auditorium", timeStart: "10:30 AM", timeEnd: "11:30 AM", day: 1),
            Class(title: "Reaching Young Families Pt. 2", speaker: speakers[6], location: "Admin 101", timeStart: "10:30 AM", timeEnd: "11:30 AM", day: 1),
            Class(title: "Seeking the Lost Pt. 2", speaker: speakers[2], location: "Xavier", timeStart: "10:30 AM", timeEnd: "11:30 AM", day: 1),
            Class(title: "Future of the Church", speaker: speakers[3], location: "Auditorium", timeStart: "1:30 PM", timeEnd: "2:30 PM", day: 1),
            Class(title: "Raising Children Pt. 2", speaker: speakers[12], location: "Auditorium", timeStart: "2:45 PM", timeEnd: "3:45 PM", day: 1),
            Class(title: "Missions: Cuba Pt. 1", speaker: speakers[10], location: "Admin 101", timeStart: "2:45 PM", timeEnd: "3:45 PM", day: 1),
            Class(title: "A Character Focused Ministry Pt. 2", speaker: speakers[11], location: "Xavier", timeStart: "2:45 PM", timeEnd: "3:45 PM", day: 1),
            Class(title: "Reaching Millenials Pt. 2", speaker: speakers[1], location: "Auditorium", timeStart: "4:00 PM", timeEnd: "5:00 PM", day: 1),
            Class(title: "Money and Faith Pt. 2", speaker: speakers[7], location: "Admin 101", timeStart: "4:00 PM", timeEnd: "5:00 PM", day: 1),
            Class(title: "Principles of Unity Pt. 2", speaker: speakers[0], location: "Xavier", timeStart: "4:00 PM", timeEnd: "5:00 PM", day: 1),
            Class(title: "Congregational Singing", speaker: nil, location: "Auditorium", timeStart: "6:30 PM", timeEnd: "7:00 PM", day: 1),
            Class(title: "The Power of Truth Seekers", speaker: speakers[4], location: "Auditorium", timeStart: "7:00 PM", timeEnd: "8:00 PM", day: 1),
            
            Class(title: "Announcements/Singing", speaker:nil, location: "Auditorium", timeStart: "8:30 AM", timeEnd: "9:00 AM", day: 2),
            Class(title: "An Evangelistic Church Pt. 3", speaker: speakers[4], location: "Auditorium", timeStart: "9:15 AM", timeEnd: "10:15 AM", day: 2),
            Class(title: "Women's Most Effective Ministry Pt. 3", speaker: speakers[9], location: "Admin 101", timeStart: "9:15 AM", timeEnd: "10:15 AM", day: 2),
            Class(title: "Internal Threat to the Church", speaker: speakers[3], location: "Xavier", timeStart: "9:15 AM", timeEnd: "10:15 AM", day: 2),
            Class(title: "The Glorious Church Pt. 3", speaker: speakers[8], location: "Auditorium", timeStart: "10:30 AM", timeEnd: "11:30 AM", day: 2),
            Class(title: "Reaching Young Families Pt. 3", speaker: speakers[6], location: "Admin 101", timeStart: "10:30 AM", timeEnd: "11:30 AM", day: 2),
            Class(title: "Seeking the Lost Pt. 3", speaker: speakers[2], location: "Xavier", timeStart: "10:30 AM", timeEnd: "11:30 AM", day: 2),
            Class(title: "Visionary Leadership", speaker: speakers[12], location: "Auditorium", timeStart: "1:30 PM", timeEnd: "2:30 PM", day: 2),
            Class(title: "Strengthening Families", speaker: speakers[12], location: "Auditorium", timeStart: "2:45 PM", timeEnd: "3:45 PM", day: 2),
            Class(title: "Missions: Cuba Pt. 2", speaker: speakers[10], location: "Admin 101", timeStart: "2:45 PM", timeEnd: "3:45 PM", day: 2),
            Class(title: "Teaching Ancient Scriptures in a Modern World", speaker: speakers[11], location: "Xavier", timeStart: "2:45 PM", timeEnd: "3:45 PM", day: 2),
            Class(title: "Congregational Singing", speaker: nil, location: "Auditorium", timeStart: "4:30 PM", timeEnd: "5:00 PM", day: 2),
            Class(title: "The Unknown God", speaker: speakers[2], location: "Auditorium", timeStart: "5:00 PM", timeEnd: "6:00 PM", day: 2)
        ]
    }
}

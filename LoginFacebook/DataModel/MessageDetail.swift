import SwiftUI

struct MessageDetail : Identifiable {
    var id : UUID = UUID();
    var user : String;
    var message: String;
}


let messageList : [MessageDetail] = [
    MessageDetail(user:"Nguyen Cao Thiem", message : "Hôm nay em ăn gì ??"),
    MessageDetail(user:"Thiêm Tinh Tế", message : "Hôm nay em ăn gì ??"),
    MessageDetail(user:"Thiêm đẹp trai", message : "Hôm nay em ăn gì ??"),
    MessageDetail(user:"Thiêm tinh tế 2", message : "Hôm nay em ăn gì ??"),
    MessageDetail(user:"Nguyen Cao Thiem", message : "Hôm nay em ăn gì nè ??"),
    MessageDetail(user:"Nguyen Cao Thiem", message : "Hôm nay em ăn gì ??"),
    MessageDetail(user:"Nguyen Cao Thiem", message : "Hôm nay em ăn gì ??"),
    MessageDetail(user:"Nguyen Cao Thiem", message : "Hôm nay em ăn gì ??"),
    MessageDetail(user:"Nguyen Cao Thiem", message : "Hôm nay em ăn gì ??"),
    MessageDetail(user:"Nguyen Cao Thiem", message : "Hôm nay em ăn gì ??"),
    MessageDetail(user:"Nguyen Cao Thiem", message : "Hôm nay em ăn gì ??"),
    MessageDetail(user:"Nguyen Cao Thiem", message : "Hôm nay em ăn gì ??"),
    MessageDetail(user:"Nguyen Cao Thiem", message : "Hôm nay em ăn gì ??"),
    MessageDetail(user:"Nguyen Cao Thiem", message : "Hôm nay em ăn gì ??"),
    MessageDetail(user:"Nguyen Cao Thiem", message : "Hôm nay em ăn gì ??"),
]

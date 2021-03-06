//
//  Const.swift
//  CareTogether
//
//  Created by HeinHtet on 05/04/2020.
//  Copyright © 2020 HEINHTET. All rights reserved.
//

import Foundation
//<string name="identified_caretogether">ထိတွေ့ခဲ့သောလူများထဲမှ ဝူဟမ်ဗိုင်းရပ်စ် သံသယလူနာအဖြစ် စောင့်ကြည့်ခံရသူ </string>
//<string name="identified_caretogether2"> ဦး တွေ့ရှီထားပါသည်။</string>
//<string name="safe_one">၁။ အိမ်တွင်လုံခြုံစွာနေခြင်းဖြင့် ရောဂါပိုးမပြန့်နှံ့အောင်ကူညီပါ။</string>
//<string name="safe_two">၂။ မဖြစ်မနေ အပြင်ထွက်ရမည်ဆိုပါက Mask တပ်ပြီးမှထွက်ပါ။</string>
//<string name="safe_three">၃။ ကျန်းမာရေးနှင့်အားကစားဝန်ကြီးဌာနမှ လမ်းညွှန်ချက်များအတိုင်း သေချာလိုက်နာဆောင်ရွက်ပါ။</string>
//<string name="safe_four">၄။ ရောဂါအခြေအနေပြင်းထန်ပါက ဖုန်း <u>၀၆၇-၃၄၂၀၂၆၈</u> သို့ ဆက်သွယ် အကြောင်းကြားပါရန်။</string>
//
//

class Const {
    static let instance = Const()
    
    func indentifiedCount(count : Int)  -> String {
        return  "နီးစပ်ဖူးသူများထဲမှ COVID-19 ရောဂါပိုးတွေ့ရှိသူ  (\(count)) တွေ့ရှိထားပါသည်။"
    }
    
    var safeInfo = "၁။ အိမ်တွင်လုံခြုံစွာနေခြင်းဖြင့် ရောဂါပိုးမပြန့်နှံ့အောင်ကူညီပါ။\n ၂။ မဖြစ်မနေ အပြင်ထွက်ရမည်ဆိုပါက Mask တပ်ပြီးမှထွက်ပါ။\n ၃။ ကျန်းမာရေးနှင့်အားကစားဝန်ကြီးဌာနမှ လမ်းညွှန်ချက်များအတိုင်း သေချာလိုက်နာဆောင်ရွက်ပါ။ \n ၄။ ရောဂါအခြေအနေပြင်းထန်ပါက ဖုန်း <u>၀၆၇-၃၄၂၀၂၆၈</u> သို့ ဆက်သွယ် အကြောင်းကြားပါရန်"
    var permissionRequestBleAndLocation = "သင့်တည်နေရာနဲ့ တွေ့ဆုံဖူးသောသူများအားရယူနိုင်ရန်အတွက် Location နှင့် Bluetooth တို့အားဖွင့်ထားရန်လိုအပ်ပီး Permission အားခွင့်ပြုပေးရန်လိုအပ်ပါသည်"
    
    var perimssionRequestBle = "သင်နှင့် တွေ့ဆုံဖူးသောသူများအားရယူနိုင်ရန်အတွက်  Bluetooth အားဖွင့်ထားရန်လိုအပ်ပီး Permission အားခွင့်ပြုပေးရန်လိုအပ်ပါသည်"
    
    var permissionRequestLocation = "သင့်တည်နေရာ အားရယူနိုင်ရန်အတွက် Location အားဖွင့်ထားရန်လိုအပ်ပီး Permission အားခွင့်ပြုပေးရန်လိုအပ်ပါသည်"
    
    var sawPerson = "မှစ၍ ယနေ့အချိန်အထိ တည်နေရာပေါ်မူတည်၍ ( App သုံးသူအချင်းချင်း )​နီးစပ်ဖူးသူဦးရေ"
}


function HandleAjaxError(obj) {

    if (obj != null && obj.readyState != 0) {
        alert(obj.responseText);
    }
}

function HandleError(e) {
    alert(e.message);
}

function IsFiroFox() {
    //alert(getBrowser())
    if (getBrowser() == "Firefox") {
        return true;
    }
    return false;
}

function IsInteger(val) {
    var result = false;
    var ns = new Array('0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '.', 0, 1, 2, 3, 4, 5, 6, 7, 8, 9);
    for (var i = 0; i < val.length; i++) {
        for (var n = 0; n < ns.length; n++) {
            result = (val[i] == ns[n]);
            if (result) break;
        }
        if (result) { }
        else break;
    }
    return result;
}

function IsNumber(val) {
    var result = false;
    var pointcount = 0;
    val = $.trim(val);
    if (val.indexOf('-.') > -1) { 
    } else {
        for (var i = 0; i < val.length; i++) {
            if (i == 0) {
                if (val[i] == '-') { result = true; }
                else if (val[i] == '.') { break; }
                else if (val[i] == ' ') { break; }
                else { result = IsInteger(val[i]); }
            } else {
                if (val[i] == '.') {
                    pointcount++;
                    if (pointcount > 1) {
                        result = false;
                        break;
                    } else result = true;
                } else {
                    result = IsInteger(val[i]);
                    if (result) { }
                    else break;
                }
            }
        }
    }
    return result;
    /*
    var reg = /^-?[0-9]+.?[0-9]*$/;
    return reg.test(val);
    */
}

function IsInt(n) {
    var value = parseFloat(n);
    if (!isNaN(value)) {
        return n % 1 == 0;
    }
    return false;
}

function CheckEmail(value) {
    var reg = new RegExp(/^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/);
    if (reg.test(value)) {
        return true;
    } else {
        return false;
    }
}


function CheckMobile(value) {
    var reg = new RegExp(/^09[0-9]{8}$/);
    if (reg.test(value)) {
        return true;
    } else {
        return false;
    }
}


function CheckTime(value) {
    var reg = new RegExp(/^([01][0-9]|2[0-3]):[0-5][0-9]$/);
    if (reg.test(value)) {
        return true;
    } else {
        return false;
    }
}

function FormatYYYYMMDD(yyyymmdd) {
    if (yyyymmdd != null && yyyymmdd.length == 8) {
        return yyyymmdd.substr(0, 4) + "/" + yyyymmdd.substr(4, 2) + "/" + yyyymmdd.substr(6, 2);
    }
    return yyyymmdd;
}

function FormatHHMM(hhmm) {
    var hh = hhmm / 100;
    var mm = hhmm % 100;

    return parseInt(hh) + ":" + parseInt(mm);
}

function FormatHHMMSS(hhmmss) {
    var hh = hhmmss / 10000;
    var mm = (hhmmss / 100) % 100;
    var ss = hhmmss % 100;
    return parseInt(hh) + ":" + parseInt(mm) + ":" + parseInt(ss);
}

function GetOrderMarketTitle(market) {
    switch (market) {
        case "S":
            return "證券";
        case "E":
            return "興櫃";
        case "F":
        case "O":
            return "期權";
    }
    return market;
}

function GetBSTitle(bs) {
    switch (bs) {
        case "B":
            return "買進";
        case "S":
            return "賣出";
    }
    return bs;
}

function GetPriceFlagTitle(priceFlag) {
    switch (priceFlag) {
        case "0": return "限價";
        case "9": return "漲停";
        case "8": return "漲停減一檔";
        case "7": return "二分之一漲停";
        case "5": return "平盤";
        case "3": return "二分之一跌停";
        case "2": return "跌停加一檔";
        case "1": return "跌停";
    }
    return priceFlag;
}

function GetOrderQtyTitle(market) {
    switch (market) {
        case "S":
        case "E":
            return "張";
        case "F":
        case "O":
            return "口";
    }
    return market;
}

function GetFOTradeTypeTitle(FOTradeType) {
    switch (FOTradeType) {
        case "R":
            return "ROD";
        case "F":
            return "FOK";
        case "I":
            return "IOC";
    }
    return "";
}

function GetOrderTypeTitle(market, orderType) {
    switch (market) {
        case "S":
        case "E":
            switch (orderType) {
                case "0":
                    return "現股";
                case "3":
                    return "融資";
                case "4":
                    return "融券";
            }

        case "F":
        case "O":
            switch (orderType) {
                case "M":
                    return "市價";
                case "L":
                    return "限價";
                case "P":
                    return "範圍市價";

            }
    }
    return market + " " + orderType;
}

function GetStatusCodeTitle(statusCode, isCss) {
   
    var text = "", className = "";
    switch (statusCode) {
        case "0":
            text = "已停止";
            className = "StatusStop";
            break;
        case "1":
            text = "監控中";
            className = "StatusWatching";
            break;
        case "3":
            text = "已刪除";
            className = "StatusDeleted";
            break;
        case "4":
            text = "已觸發";
            className = "StatusTriggered";
            break;
    }
    if (text != "") {
        if (isCss) {
            text = "<label class=\"" + className + "\">" + text + "</label>";
        }

        return text;
         
    } else {
        return statusCode;
    }
}

function GetTSTUTitle(TSTU) {
    if (TSTU == "1") {
        return "監控中";
    } else {
        return "已停止";
    }
}


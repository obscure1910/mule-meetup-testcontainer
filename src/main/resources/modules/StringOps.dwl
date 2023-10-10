import words from dw::core::Strings

fun cutAfter(str: String | Null , num: Number): String | Null = do {
    var arrWord = words(str)
    ---
    if((not isEmpty(arrWord)) and num > 0 and sizeOf(arrWord) > num)
        (arrWord[0 to num - 1]) reduce ($$ ++ " " ++ $) default "" ++ " ..."
    else 
    	str
}
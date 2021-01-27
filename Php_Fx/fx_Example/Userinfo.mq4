//+------------------------------------------------------------------+
//|                                                     Userinfo.mq4 |
//|                                        Copyright 2021 William H. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2021 William H."
#property link      "https://www.mql5.com"
#property version   "1.00"



//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void userinfo()
  {

   Comment(
      "Acct ",AccountBalance(),"\n"
      "Bars on chart =", WindowFirstVisibleBar(),"\n"
      "Ask = ", DoubleToStr(Ask,Digits),"\n"
      "Bid = ",DoubleToStr(Bid,Digits), "\n"
   // "Ave High= ",DoubleToStr(avHigh(), Digits), "\n"
   // "Ave Low= ", DoubleToStr(avLow(), Digits), "\n"
      "...."
   );

  }
//+------------------------------------------------------------------+

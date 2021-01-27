//+------------------------------------------------------------------+
//|                                                   avHighLine.mq4 |
//|                                        Copyright 2021 William H. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2021 William H."
#property link      "https://www.mql5.com"
#property version   "1.00"





//+------------------------------------------------------------------+
//|      avHigh Line                                                          |
//+------------------------------------------------------------------+
double avHigh()
  {
   double totalH = 0.0;
   for(int i=1; i<=5; i++)
     {
      totalH += High[i];
     }
   double avh = totalH/5;
   return double(avh);
  }

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void avHighLine()
  {
// Average Current High
   ObjectDelete(0,"L1");
   ObjectCreate(_Symbol,"L1",OBJ_HLINE,0,0,avHigh());
   ObjectSetInteger(0,"L1",OBJPROP_COLOR,clrAqua);
   ObjectSetInteger(0,"L1",OBJPROP_WIDTH,2);


  }


//+------------------------------------------------------------------+

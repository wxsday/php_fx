//+------------------------------------------------------------------+
//|                                                    avLowLine.mq4 |
//|                                        Copyright 2021 William H. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2021 William H."
#property link      "https://www.mql5.com"
#property version   "1.00"


//+------------------------------------------------------------------+
//|      avLow Line                                                            |
//+------------------------------------------------------------------+
double avLow()
  {
   double totalL = 0.0;
   for(int i=1; i<=5; i++)
     {
      totalL += Low[i];
     }
   double avl = totalL/5;
   return avl;
  }


// Average Current Low

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void avLowLine()
  {
   ObjectDelete(0,"L2");
   ObjectCreate(_Symbol,"L2",OBJ_HLINE,0,0,avLow());
   ObjectSetInteger(0,"L2",OBJPROP_COLOR,clrBlue);
   ObjectSetInteger(0,"L2",OBJPROP_WIDTH,2);
  }
//+------------------------------------------------------------------+

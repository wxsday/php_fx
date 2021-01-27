//+------------------------------------------------------------------+
//|                                                sellTrailStop.mq4 |
//|                                        Copyright 2021 William H. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2021 William H."
#property link      "https://www.mql5.com"
#property version   "1.00"



//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void sellTS()
  {
   for(int b=OrdersTotal()-1; b>=0; b--)
     {
      if(OrderSelect(b,SELECT_BY_POS,MODE_TRADES))
        {
         if(OrderSymbol()==Symbol())
           {
            if(OrderType()==OP_SELL)
              {
               if(OrderStopLoss()> avHigh())
                 {
                  if(OrderModify(
                        OrderTicket(),
                        OrderOpenPrice(),
                        avHigh(),
                        OrderTakeProfit(),
                        0,
                        CLR_NONE
                     )
                    )
                    {
                     Alert("cool 2");
                    };
                 }
              }
           }
        }
     }


  }
//+------------------------------------------------------------------+

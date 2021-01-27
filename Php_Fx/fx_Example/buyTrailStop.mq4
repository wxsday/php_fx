//+------------------------------------------------------------------+
//|                                                 buyTrailStop.mq4 |
//|                                        Copyright 2021 William H. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2021 William H."
#property link      "https://www.mql5.com"
#property version   "1.00"


//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void buyTS()
  {

// Trailing stop Buy
   for(int i=OrdersTotal()-1; i>=0; i--)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_TRADES))
        {
         if(OrderSymbol()==Symbol())
           {
            if(OrderType()==OP_BUY)
              {
               if(OrderStopLoss()< avLow())
                 {
                  if(OrderModify(
                        OrderTicket(),
                        OrderOpenPrice(),
                        avLow(),
                        OrderTakeProfit(),
                        0,
                        CLR_NONE
                     )
                    )
                    {
                     Alert("cool");
                    };
                 }
              }
           }
        }
     }

  }

//+------------------------------------------------------------------+

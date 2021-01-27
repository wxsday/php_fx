//+------------------------------------------------------------------+
//|                                              firstTestExpert.mq4 |
//|                                        Copyright 2021 William H. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2021 William H."
#include "avHighLine.mq4"
#include "avLowLine.mq4"
#include "Userinfo.mq4"
#include "buyTrailStop.mq4"
#include "sellTrailStop.mq4"

//+------------------------------------------------------------------+
//|        Average True Range                                                        |
//+------------------------------------------------------------------+
double AveTrueRange = iATR(_Symbol,_Period,14,0);


//+------------------------------------------------------------------+
//| Expert tick function                                                                    |
//+------------------------------------------------------------------+
void OnTick()
  {
// write avhigh line
   avHighLine();

// write avLow line
   avLowLine();

// activate buy TS
   buyTS();

// activate sell TS
   sellTS();

   if(Bid >(avHigh()+(AveTrueRange*2)) && OrdersTotal()==0)
     {
      //TP: double(Ask+150*_Point)
      if(OrderSend(Symbol(),OP_BUY,setLot(),Ask,3,avLow(),double(Ask+150*_Point),NULL,0,0,Blue))
        {
         Alert("Buy");
        };
     }
   if(Ask <(avLow()-(AveTrueRange*2)) && OrdersTotal()==0)
     {
      // TP: double(Bid-150*_Point)
      if(OrderSend(Symbol(),OP_SELL,setLot(),Bid,3,avHigh(),double(Bid-150*_Point),NULL,0,0,Red))
        {
         Alert("Sell");
        };
     }
  }// end tick


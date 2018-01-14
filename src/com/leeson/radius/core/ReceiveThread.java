/*    */ package com.leeson.radius.core;
/*    */ 
/*    */ import java.net.DatagramPacket;
/*    */ 
/*    */ public class ReceiveThread
/*    */   implements Runnable
/*    */ {
/*  7 */   private RadiusServer radiusServer = null;
/*    */ 
/*  9 */   private DatagramPacket in = null;
/*    */ 
/*    */   public ReceiveThread(RadiusServer radiusServer, DatagramPacket in)
/*    */   {
/* 13 */     this.radiusServer = radiusServer;
/* 14 */     this.in = in;
/*    */     try
/*    */     {
/* 17 */       new Thread(this).start();
/*    */     }
/*    */     catch (Exception e)
/*    */     {
/* 21 */       Tool.writeErrorLog("Error", e);
/*    */     }
/*    */   }
/*    */ 
/*    */   public void run()
/*    */   {
/*    */     try
/*    */     {
/* 29 */       this.radiusServer.receive(this.in);
/*    */     }
/*    */     catch (Exception e)
/*    */     {
/* 33 */       Tool.writeErrorLog("Error", e);
/*    */     }
/*    */   }
/*    */ }

/* Location:           C:\Users\Thinkpad\Desktop\Tool\jd-gui\jd-gui\spring-ops-3.2.4.RELEASE.jar
 * Qualified Name:     com.leeson.radius.core.ReceiveThread
 * JD-Core Version:    0.6.2
 */
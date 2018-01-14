/*    */ package com.leeson.portal.core.utils;
/*    */ 
/*    */ import com.leeson.common.utils.stringUtils;
/*    */ import javax.servlet.http.HttpServletRequest;
/*    */ 
/*    */ public class GetNgnixRemotIP
/*    */ {
/*    */   public static String getRemoteAddrIp(HttpServletRequest request)
/*    */   {
/* 10 */     String ipFromNginx = getHeader(request, "X-Real-IP");
/*    */ 
/* 13 */     return stringUtils.isBlank(ipFromNginx) ? request.getRemoteAddr() : ipFromNginx;
/*    */   }
/*    */ 
/*    */   private static String getHeader(HttpServletRequest request, String headName)
/*    */   {
/* 18 */     String value = request.getHeader(headName);
/* 19 */     return (!stringUtils.isBlank(value)) && (!"unknown".equalsIgnoreCase(value)) ? value : "";
/*    */   }
/*    */ }

/* Location:           C:\Users\Thinkpad\Desktop\Tool\jd-gui\jd-gui\spring-ops-3.2.4.RELEASE.jar
 * Qualified Name:     com.leeson.portal.core.utils.GetNgnixRemotIP
 * JD-Core Version:    0.6.2
 */
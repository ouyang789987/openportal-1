package com.leeson.radius.core.model;

import java.io.Serializable;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class RadiusNasMap
  implements Serializable
{
  private static final long serialVersionUID = 8883932943417699419L;
  private Map<String, String[]> nasMap = new ConcurrentHashMap();

  private static RadiusNasMap instance = new RadiusNasMap();

  public static RadiusNasMap getInstance()
  {
    return instance;
  }

  public Map<String, String[]> getNasMap() {
    return this.nasMap;
  }

  public void setNasMap(Map<String, String[]> nasMap) {
    this.nasMap = nasMap;
  }
}

/* Location:           C:\Users\Thinkpad\Desktop\Tool\jd-gui\jd-gui\spring-ops-3.2.4.RELEASE.jar
 * Qualified Name:     com.leeson.radius.core.model.RadiusNasMap
 * JD-Core Version:    0.6.2
 */
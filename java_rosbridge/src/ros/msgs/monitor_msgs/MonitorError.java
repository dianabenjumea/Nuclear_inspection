package ros.msgs.monitor_msgs;

public class MonitorError {
  public String topic;
  
  public String content;
  
  public String property;
  
  public float time;
  
  public MonitorError() {}
  
  public MonitorError(String topic, String content, String property, float time) {
    this.topic = topic;
    this.content = content;
    this.property = property;
    this.time = time;
  }
}


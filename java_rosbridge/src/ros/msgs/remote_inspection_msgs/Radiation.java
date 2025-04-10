package ros.msgs.remote_inspection_msgs;

import ros.msgs.geometry_msgs.Pose;

import ros.msgs.std_msgs.Header;

public class Radiation {
  public Header header = new Header();
  
  public float value;
  
  public Pose pose = new Pose();
  
  public String type;
  
  public Radiation() {}
  
  public Radiation(Header header, float value, Pose pose, String type) {
    this.header = header;
    this.value = value;
    this.pose = pose;
    this.type = type;
  }
}


package ros.msgs.remote_inspection_msgs;

import ros.msgs.remote_inspection_msgs.Location;

public class WayP {
  public int key;
  
  public Location pos = new Location();
  
  public WayP() {}
  
  public WayP(int key, Location pos) {
    this.key = key;
    this.pos = pos;
  }
}


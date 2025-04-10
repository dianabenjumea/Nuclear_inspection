package ros.msgs.geometry_msgs;

import ros.msgs.geometry_msgs.Point;
import ros.msgs.geometry_msgs.Quaternion;

public class Pose {
  public Point position = new Point();
  
  public Quaternion orientation = new Quaternion();
  
  public Pose() {}
  
  public Pose(Point position, Quaternion orientation) {
    this.position = position;
    this.orientation = orientation;
  }
}


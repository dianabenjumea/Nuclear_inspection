package ros.msgs.actionlib_msgs;

import ros.msgs.std_msgs.Time;

public class GoalID {
  public Time stamp;
  
  public String id;
  
  public GoalID() {}
  
  public GoalID(Time stamp, String id) {
    this.stamp = stamp;
    this.id = id;
  }
}


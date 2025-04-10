package ros.msgs.move_base_msgs;

import ros.msgs.actionlib_msgs.GoalID;

public class Status {
  public GoalID goal_id = new GoalID();
  
  public String status;
  
  public String text;
  
  public Status() {}
  
  public Status(GoalID goal_id, String status, String text) {
    this.goal_id = goal_id;
    this.status = status;
    this.text = text;
  }
}


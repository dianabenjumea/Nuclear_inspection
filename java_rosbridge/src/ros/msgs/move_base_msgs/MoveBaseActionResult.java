package ros.msgs.move_base_msgs;

import ros.msgs.move_base_msgs.Result;
import ros.msgs.move_base_msgs.Status;
import ros.msgs.std_msgs.Header;

public class MoveBaseActionResult {
  public Header header = new Header();
  
  public Status status = new Status();
  
  public Result result = new Result();
  
  public MoveBaseActionResult() {}
  
  public MoveBaseActionResult(Header header, Status status, Result result) {
    this.header = header;
    this.status = status;
    this.result = result;
  }
}


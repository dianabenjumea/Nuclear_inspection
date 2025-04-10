package ros.msgs.remote_inspection_msgs;

public class Command {
  public String name;
  
  public int location;
  
  public Command() {}
  
  public Command(String name, int location) {
    this.name = name;
    this.location = location;
  }
}


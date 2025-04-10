package ros.msgs.remote_inspection_msgs;

import ros.msgs.remote_inspection_msgs.Location;
import ros.msgs.remote_inspection_msgs.WayP;
import ros.msgs.remote_inspection_msgs.Command;

public class Snapshot {
  public Location at = new Location();
  
  public Location currentLoc = new Location();
  
  public Location position = new Location();
    
  public WayP wayPNow = new WayP();
	
  public WayP wayPNext= new WayP();
  
  public Command command = new Command();
  
  public int inspected;
  
  public double r;
  
  public String radiationStatus;
  
  public Snapshot() {}
  
  public Snapshot(Location at, Location currentLoc, Location position, WayP wayPNow, WayP wayPNext, Command command, int inspected, double r, String radiationStatus) {
    this.at = at;
    this.currentLoc = currentLoc;
    this.position = position;
    this.wayPNow = wayPNow;
    this.wayPNext = wayPNext;
    this.command = command;
    this.inspected = inspected;
    this.r = r;
    this.radiationStatus = radiationStatus;
  }
}


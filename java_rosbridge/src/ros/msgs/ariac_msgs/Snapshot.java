package ros.msgs.ariac_msgs;

import ros.msgs.std_msgs.Header;

import java.awt.image.BufferedImage;


public class Snapshot {

	public int time;
	public double human_operator_speed;
	public double robot_speed;
	public double distance_robot_human_operator;

	public Snapshot() {}

	public Snapshot(int time, double human_operator_speed, double robot_speed, double distance_robot_human_operator) {
		this.time = time;
		this.human_operator_speed = human_operator_speed;
		this.robot_speed = robot_speed;
		this.distance_robot_human_operator = distance_robot_human_operator;
	}

}

// Auto-generated. Do not edit!

// (in-package gazebo_radiation_plugins.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Location = require('./Location.js');
let WayP = require('./WayP.js');
let Command = require('./Command.js');

//-----------------------------------------------------------

class Snapshot {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.at = null;
      this.currentLoc = null;
      this.position = null;
      this.wayPNow = null;
      this.wayPNext = null;
      this.command = null;
      this.inspected = null;
      this.r = null;
      this.radiationStatus = null;
    }
    else {
      if (initObj.hasOwnProperty('at')) {
        this.at = initObj.at
      }
      else {
        this.at = new Location();
      }
      if (initObj.hasOwnProperty('currentLoc')) {
        this.currentLoc = initObj.currentLoc
      }
      else {
        this.currentLoc = new Location();
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Location();
      }
      if (initObj.hasOwnProperty('wayPNow')) {
        this.wayPNow = initObj.wayPNow
      }
      else {
        this.wayPNow = new WayP();
      }
      if (initObj.hasOwnProperty('wayPNext')) {
        this.wayPNext = initObj.wayPNext
      }
      else {
        this.wayPNext = new WayP();
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = new Command();
      }
      if (initObj.hasOwnProperty('inspected')) {
        this.inspected = initObj.inspected
      }
      else {
        this.inspected = 0;
      }
      if (initObj.hasOwnProperty('r')) {
        this.r = initObj.r
      }
      else {
        this.r = 0.0;
      }
      if (initObj.hasOwnProperty('radiationStatus')) {
        this.radiationStatus = initObj.radiationStatus
      }
      else {
        this.radiationStatus = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Snapshot
    // Serialize message field [at]
    bufferOffset = Location.serialize(obj.at, buffer, bufferOffset);
    // Serialize message field [currentLoc]
    bufferOffset = Location.serialize(obj.currentLoc, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = Location.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [wayPNow]
    bufferOffset = WayP.serialize(obj.wayPNow, buffer, bufferOffset);
    // Serialize message field [wayPNext]
    bufferOffset = WayP.serialize(obj.wayPNext, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = Command.serialize(obj.command, buffer, bufferOffset);
    // Serialize message field [inspected]
    bufferOffset = _serializer.int16(obj.inspected, buffer, bufferOffset);
    // Serialize message field [r]
    bufferOffset = _serializer.float64(obj.r, buffer, bufferOffset);
    // Serialize message field [radiationStatus]
    bufferOffset = _serializer.string(obj.radiationStatus, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Snapshot
    let len;
    let data = new Snapshot(null);
    // Deserialize message field [at]
    data.at = Location.deserialize(buffer, bufferOffset);
    // Deserialize message field [currentLoc]
    data.currentLoc = Location.deserialize(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = Location.deserialize(buffer, bufferOffset);
    // Deserialize message field [wayPNow]
    data.wayPNow = WayP.deserialize(buffer, bufferOffset);
    // Deserialize message field [wayPNext]
    data.wayPNext = WayP.deserialize(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = Command.deserialize(buffer, bufferOffset);
    // Deserialize message field [inspected]
    data.inspected = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [r]
    data.r = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [radiationStatus]
    data.radiationStatus = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Command.getMessageSize(object.command);
    length += _getByteLength(object.radiationStatus);
    return length + 98;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gazebo_radiation_plugins/Snapshot';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '88d99162d65f2a1a11f50289164215eb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    gazebo_radiation_plugins/Location at
    gazebo_radiation_plugins/Location currentLoc
    gazebo_radiation_plugins/Location position
    gazebo_radiation_plugins/WayP wayPNow
    gazebo_radiation_plugins/WayP wayPNext
    gazebo_radiation_plugins/Command command
    int16 inspected
    float64 r
    string radiationStatus
    
    ================================================================================
    MSG: gazebo_radiation_plugins/Location
    float64 x
    float64 y
    
    ================================================================================
    MSG: gazebo_radiation_plugins/WayP
    int16 key
    gazebo_radiation_plugins/Location pos
    
    ================================================================================
    MSG: gazebo_radiation_plugins/Command
    string name
    int16 location
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Snapshot(null);
    if (msg.at !== undefined) {
      resolved.at = Location.Resolve(msg.at)
    }
    else {
      resolved.at = new Location()
    }

    if (msg.currentLoc !== undefined) {
      resolved.currentLoc = Location.Resolve(msg.currentLoc)
    }
    else {
      resolved.currentLoc = new Location()
    }

    if (msg.position !== undefined) {
      resolved.position = Location.Resolve(msg.position)
    }
    else {
      resolved.position = new Location()
    }

    if (msg.wayPNow !== undefined) {
      resolved.wayPNow = WayP.Resolve(msg.wayPNow)
    }
    else {
      resolved.wayPNow = new WayP()
    }

    if (msg.wayPNext !== undefined) {
      resolved.wayPNext = WayP.Resolve(msg.wayPNext)
    }
    else {
      resolved.wayPNext = new WayP()
    }

    if (msg.command !== undefined) {
      resolved.command = Command.Resolve(msg.command)
    }
    else {
      resolved.command = new Command()
    }

    if (msg.inspected !== undefined) {
      resolved.inspected = msg.inspected;
    }
    else {
      resolved.inspected = 0
    }

    if (msg.r !== undefined) {
      resolved.r = msg.r;
    }
    else {
      resolved.r = 0.0
    }

    if (msg.radiationStatus !== undefined) {
      resolved.radiationStatus = msg.radiationStatus;
    }
    else {
      resolved.radiationStatus = ''
    }

    return resolved;
    }
};

module.exports = Snapshot;

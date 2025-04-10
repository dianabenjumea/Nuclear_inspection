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

//-----------------------------------------------------------

class WayP {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.key = null;
      this.pos = null;
    }
    else {
      if (initObj.hasOwnProperty('key')) {
        this.key = initObj.key
      }
      else {
        this.key = 0;
      }
      if (initObj.hasOwnProperty('pos')) {
        this.pos = initObj.pos
      }
      else {
        this.pos = new Location();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WayP
    // Serialize message field [key]
    bufferOffset = _serializer.int16(obj.key, buffer, bufferOffset);
    // Serialize message field [pos]
    bufferOffset = Location.serialize(obj.pos, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WayP
    let len;
    let data = new WayP(null);
    // Deserialize message field [key]
    data.key = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [pos]
    data.pos = Location.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gazebo_radiation_plugins/WayP';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0b710348f6d9b37d2e3d0cc4a3be0ce8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 key
    gazebo_radiation_plugins/Location pos
    
    ================================================================================
    MSG: gazebo_radiation_plugins/Location
    float64 x
    float64 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WayP(null);
    if (msg.key !== undefined) {
      resolved.key = msg.key;
    }
    else {
      resolved.key = 0
    }

    if (msg.pos !== undefined) {
      resolved.pos = Location.Resolve(msg.pos)
    }
    else {
      resolved.pos = new Location()
    }

    return resolved;
    }
};

module.exports = WayP;

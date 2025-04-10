; Auto-generated. Do not edit!


(cl:in-package gazebo_radiation_plugins-msg)


;//! \htmlinclude WayP.msg.html

(cl:defclass <WayP> (roslisp-msg-protocol:ros-message)
  ((key
    :reader key
    :initarg :key
    :type cl:fixnum
    :initform 0)
   (pos
    :reader pos
    :initarg :pos
    :type gazebo_radiation_plugins-msg:Location
    :initform (cl:make-instance 'gazebo_radiation_plugins-msg:Location)))
)

(cl:defclass WayP (<WayP>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WayP>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WayP)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_radiation_plugins-msg:<WayP> is deprecated: use gazebo_radiation_plugins-msg:WayP instead.")))

(cl:ensure-generic-function 'key-val :lambda-list '(m))
(cl:defmethod key-val ((m <WayP>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_radiation_plugins-msg:key-val is deprecated.  Use gazebo_radiation_plugins-msg:key instead.")
  (key m))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <WayP>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_radiation_plugins-msg:pos-val is deprecated.  Use gazebo_radiation_plugins-msg:pos instead.")
  (pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WayP>) ostream)
  "Serializes a message object of type '<WayP>"
  (cl:let* ((signed (cl:slot-value msg 'key)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pos) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WayP>) istream)
  "Deserializes a message object of type '<WayP>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'key) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pos) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WayP>)))
  "Returns string type for a message object of type '<WayP>"
  "gazebo_radiation_plugins/WayP")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WayP)))
  "Returns string type for a message object of type 'WayP"
  "gazebo_radiation_plugins/WayP")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WayP>)))
  "Returns md5sum for a message object of type '<WayP>"
  "0b710348f6d9b37d2e3d0cc4a3be0ce8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WayP)))
  "Returns md5sum for a message object of type 'WayP"
  "0b710348f6d9b37d2e3d0cc4a3be0ce8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WayP>)))
  "Returns full string definition for message of type '<WayP>"
  (cl:format cl:nil "int16 key~%gazebo_radiation_plugins/Location pos~%~%================================================================================~%MSG: gazebo_radiation_plugins/Location~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WayP)))
  "Returns full string definition for message of type 'WayP"
  (cl:format cl:nil "int16 key~%gazebo_radiation_plugins/Location pos~%~%================================================================================~%MSG: gazebo_radiation_plugins/Location~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WayP>))
  (cl:+ 0
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pos))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WayP>))
  "Converts a ROS message object to a list"
  (cl:list 'WayP
    (cl:cons ':key (key msg))
    (cl:cons ':pos (pos msg))
))

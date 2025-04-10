; Auto-generated. Do not edit!


(cl:in-package gazebo_radiation_plugins-msg)


;//! \htmlinclude Inspection.msg.html

(cl:defclass <Inspection> (roslisp-msg-protocol:ros-message)
  ((location
    :reader location
    :initarg :location
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Inspection (<Inspection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Inspection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Inspection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_radiation_plugins-msg:<Inspection> is deprecated: use gazebo_radiation_plugins-msg:Inspection instead.")))

(cl:ensure-generic-function 'location-val :lambda-list '(m))
(cl:defmethod location-val ((m <Inspection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_radiation_plugins-msg:location-val is deprecated.  Use gazebo_radiation_plugins-msg:location instead.")
  (location m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Inspection>) ostream)
  "Serializes a message object of type '<Inspection>"
  (cl:let* ((signed (cl:slot-value msg 'location)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Inspection>) istream)
  "Deserializes a message object of type '<Inspection>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'location) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Inspection>)))
  "Returns string type for a message object of type '<Inspection>"
  "gazebo_radiation_plugins/Inspection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Inspection)))
  "Returns string type for a message object of type 'Inspection"
  "gazebo_radiation_plugins/Inspection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Inspection>)))
  "Returns md5sum for a message object of type '<Inspection>"
  "b70bb023a4b06746b026ccb2482d09be")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Inspection)))
  "Returns md5sum for a message object of type 'Inspection"
  "b70bb023a4b06746b026ccb2482d09be")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Inspection>)))
  "Returns full string definition for message of type '<Inspection>"
  (cl:format cl:nil "int16 location~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Inspection)))
  "Returns full string definition for message of type 'Inspection"
  (cl:format cl:nil "int16 location~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Inspection>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Inspection>))
  "Converts a ROS message object to a list"
  (cl:list 'Inspection
    (cl:cons ':location (location msg))
))

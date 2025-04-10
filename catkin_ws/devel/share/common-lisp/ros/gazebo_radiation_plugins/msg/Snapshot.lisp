; Auto-generated. Do not edit!


(cl:in-package gazebo_radiation_plugins-msg)


;//! \htmlinclude Snapshot.msg.html

(cl:defclass <Snapshot> (roslisp-msg-protocol:ros-message)
  ((at
    :reader at
    :initarg :at
    :type gazebo_radiation_plugins-msg:Location
    :initform (cl:make-instance 'gazebo_radiation_plugins-msg:Location))
   (currentLoc
    :reader currentLoc
    :initarg :currentLoc
    :type gazebo_radiation_plugins-msg:Location
    :initform (cl:make-instance 'gazebo_radiation_plugins-msg:Location))
   (position
    :reader position
    :initarg :position
    :type gazebo_radiation_plugins-msg:Location
    :initform (cl:make-instance 'gazebo_radiation_plugins-msg:Location))
   (wayPNow
    :reader wayPNow
    :initarg :wayPNow
    :type gazebo_radiation_plugins-msg:WayP
    :initform (cl:make-instance 'gazebo_radiation_plugins-msg:WayP))
   (wayPNext
    :reader wayPNext
    :initarg :wayPNext
    :type gazebo_radiation_plugins-msg:WayP
    :initform (cl:make-instance 'gazebo_radiation_plugins-msg:WayP))
   (command
    :reader command
    :initarg :command
    :type gazebo_radiation_plugins-msg:Command
    :initform (cl:make-instance 'gazebo_radiation_plugins-msg:Command))
   (inspected
    :reader inspected
    :initarg :inspected
    :type cl:fixnum
    :initform 0)
   (r
    :reader r
    :initarg :r
    :type cl:float
    :initform 0.0)
   (radiationStatus
    :reader radiationStatus
    :initarg :radiationStatus
    :type cl:string
    :initform ""))
)

(cl:defclass Snapshot (<Snapshot>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Snapshot>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Snapshot)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_radiation_plugins-msg:<Snapshot> is deprecated: use gazebo_radiation_plugins-msg:Snapshot instead.")))

(cl:ensure-generic-function 'at-val :lambda-list '(m))
(cl:defmethod at-val ((m <Snapshot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_radiation_plugins-msg:at-val is deprecated.  Use gazebo_radiation_plugins-msg:at instead.")
  (at m))

(cl:ensure-generic-function 'currentLoc-val :lambda-list '(m))
(cl:defmethod currentLoc-val ((m <Snapshot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_radiation_plugins-msg:currentLoc-val is deprecated.  Use gazebo_radiation_plugins-msg:currentLoc instead.")
  (currentLoc m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Snapshot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_radiation_plugins-msg:position-val is deprecated.  Use gazebo_radiation_plugins-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'wayPNow-val :lambda-list '(m))
(cl:defmethod wayPNow-val ((m <Snapshot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_radiation_plugins-msg:wayPNow-val is deprecated.  Use gazebo_radiation_plugins-msg:wayPNow instead.")
  (wayPNow m))

(cl:ensure-generic-function 'wayPNext-val :lambda-list '(m))
(cl:defmethod wayPNext-val ((m <Snapshot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_radiation_plugins-msg:wayPNext-val is deprecated.  Use gazebo_radiation_plugins-msg:wayPNext instead.")
  (wayPNext m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <Snapshot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_radiation_plugins-msg:command-val is deprecated.  Use gazebo_radiation_plugins-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'inspected-val :lambda-list '(m))
(cl:defmethod inspected-val ((m <Snapshot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_radiation_plugins-msg:inspected-val is deprecated.  Use gazebo_radiation_plugins-msg:inspected instead.")
  (inspected m))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <Snapshot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_radiation_plugins-msg:r-val is deprecated.  Use gazebo_radiation_plugins-msg:r instead.")
  (r m))

(cl:ensure-generic-function 'radiationStatus-val :lambda-list '(m))
(cl:defmethod radiationStatus-val ((m <Snapshot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_radiation_plugins-msg:radiationStatus-val is deprecated.  Use gazebo_radiation_plugins-msg:radiationStatus instead.")
  (radiationStatus m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Snapshot>) ostream)
  "Serializes a message object of type '<Snapshot>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'at) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'currentLoc) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wayPNow) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wayPNext) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'command) ostream)
  (cl:let* ((signed (cl:slot-value msg 'inspected)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'radiationStatus))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'radiationStatus))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Snapshot>) istream)
  "Deserializes a message object of type '<Snapshot>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'at) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'currentLoc) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wayPNow) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wayPNext) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'command) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'inspected) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'r) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'radiationStatus) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'radiationStatus) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Snapshot>)))
  "Returns string type for a message object of type '<Snapshot>"
  "gazebo_radiation_plugins/Snapshot")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Snapshot)))
  "Returns string type for a message object of type 'Snapshot"
  "gazebo_radiation_plugins/Snapshot")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Snapshot>)))
  "Returns md5sum for a message object of type '<Snapshot>"
  "88d99162d65f2a1a11f50289164215eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Snapshot)))
  "Returns md5sum for a message object of type 'Snapshot"
  "88d99162d65f2a1a11f50289164215eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Snapshot>)))
  "Returns full string definition for message of type '<Snapshot>"
  (cl:format cl:nil "gazebo_radiation_plugins/Location at~%gazebo_radiation_plugins/Location currentLoc~%gazebo_radiation_plugins/Location position~%gazebo_radiation_plugins/WayP wayPNow~%gazebo_radiation_plugins/WayP wayPNext~%gazebo_radiation_plugins/Command command~%int16 inspected~%float64 r~%string radiationStatus~%~%================================================================================~%MSG: gazebo_radiation_plugins/Location~%float64 x~%float64 y~%~%================================================================================~%MSG: gazebo_radiation_plugins/WayP~%int16 key~%gazebo_radiation_plugins/Location pos~%~%================================================================================~%MSG: gazebo_radiation_plugins/Command~%string name~%int16 location~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Snapshot)))
  "Returns full string definition for message of type 'Snapshot"
  (cl:format cl:nil "gazebo_radiation_plugins/Location at~%gazebo_radiation_plugins/Location currentLoc~%gazebo_radiation_plugins/Location position~%gazebo_radiation_plugins/WayP wayPNow~%gazebo_radiation_plugins/WayP wayPNext~%gazebo_radiation_plugins/Command command~%int16 inspected~%float64 r~%string radiationStatus~%~%================================================================================~%MSG: gazebo_radiation_plugins/Location~%float64 x~%float64 y~%~%================================================================================~%MSG: gazebo_radiation_plugins/WayP~%int16 key~%gazebo_radiation_plugins/Location pos~%~%================================================================================~%MSG: gazebo_radiation_plugins/Command~%string name~%int16 location~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Snapshot>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'at))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'currentLoc))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wayPNow))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wayPNext))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'command))
     2
     8
     4 (cl:length (cl:slot-value msg 'radiationStatus))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Snapshot>))
  "Converts a ROS message object to a list"
  (cl:list 'Snapshot
    (cl:cons ':at (at msg))
    (cl:cons ':currentLoc (currentLoc msg))
    (cl:cons ':position (position msg))
    (cl:cons ':wayPNow (wayPNow msg))
    (cl:cons ':wayPNext (wayPNext msg))
    (cl:cons ':command (command msg))
    (cl:cons ':inspected (inspected msg))
    (cl:cons ':r (r msg))
    (cl:cons ':radiationStatus (radiationStatus msg))
))

;; Auto-generated. Do not edit!


(when (boundp 'gazebo_radiation_plugins::Snapshot)
  (if (not (find-package "GAZEBO_RADIATION_PLUGINS"))
    (make-package "GAZEBO_RADIATION_PLUGINS"))
  (shadow 'Snapshot (find-package "GAZEBO_RADIATION_PLUGINS")))
(unless (find-package "GAZEBO_RADIATION_PLUGINS::SNAPSHOT")
  (make-package "GAZEBO_RADIATION_PLUGINS::SNAPSHOT"))

(in-package "ROS")
;;//! \htmlinclude Snapshot.msg.html


(defclass gazebo_radiation_plugins::Snapshot
  :super ros::object
  :slots (_at _currentLoc _position _wayPNow _wayPNext _command _inspected _r _radiationStatus ))

(defmethod gazebo_radiation_plugins::Snapshot
  (:init
   (&key
    ((:at __at) (instance gazebo_radiation_plugins::Location :init))
    ((:currentLoc __currentLoc) (instance gazebo_radiation_plugins::Location :init))
    ((:position __position) (instance gazebo_radiation_plugins::Location :init))
    ((:wayPNow __wayPNow) (instance gazebo_radiation_plugins::WayP :init))
    ((:wayPNext __wayPNext) (instance gazebo_radiation_plugins::WayP :init))
    ((:command __command) (instance gazebo_radiation_plugins::Command :init))
    ((:inspected __inspected) 0)
    ((:r __r) 0.0)
    ((:radiationStatus __radiationStatus) "")
    )
   (send-super :init)
   (setq _at __at)
   (setq _currentLoc __currentLoc)
   (setq _position __position)
   (setq _wayPNow __wayPNow)
   (setq _wayPNext __wayPNext)
   (setq _command __command)
   (setq _inspected (round __inspected))
   (setq _r (float __r))
   (setq _radiationStatus (string __radiationStatus))
   self)
  (:at
   (&rest __at)
   (if (keywordp (car __at))
       (send* _at __at)
     (progn
       (if __at (setq _at (car __at)))
       _at)))
  (:currentLoc
   (&rest __currentLoc)
   (if (keywordp (car __currentLoc))
       (send* _currentLoc __currentLoc)
     (progn
       (if __currentLoc (setq _currentLoc (car __currentLoc)))
       _currentLoc)))
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:wayPNow
   (&rest __wayPNow)
   (if (keywordp (car __wayPNow))
       (send* _wayPNow __wayPNow)
     (progn
       (if __wayPNow (setq _wayPNow (car __wayPNow)))
       _wayPNow)))
  (:wayPNext
   (&rest __wayPNext)
   (if (keywordp (car __wayPNext))
       (send* _wayPNext __wayPNext)
     (progn
       (if __wayPNext (setq _wayPNext (car __wayPNext)))
       _wayPNext)))
  (:command
   (&rest __command)
   (if (keywordp (car __command))
       (send* _command __command)
     (progn
       (if __command (setq _command (car __command)))
       _command)))
  (:inspected
   (&optional __inspected)
   (if __inspected (setq _inspected __inspected)) _inspected)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:radiationStatus
   (&optional __radiationStatus)
   (if __radiationStatus (setq _radiationStatus __radiationStatus)) _radiationStatus)
  (:serialization-length
   ()
   (+
    ;; gazebo_radiation_plugins/Location _at
    (send _at :serialization-length)
    ;; gazebo_radiation_plugins/Location _currentLoc
    (send _currentLoc :serialization-length)
    ;; gazebo_radiation_plugins/Location _position
    (send _position :serialization-length)
    ;; gazebo_radiation_plugins/WayP _wayPNow
    (send _wayPNow :serialization-length)
    ;; gazebo_radiation_plugins/WayP _wayPNext
    (send _wayPNext :serialization-length)
    ;; gazebo_radiation_plugins/Command _command
    (send _command :serialization-length)
    ;; int16 _inspected
    2
    ;; float64 _r
    8
    ;; string _radiationStatus
    4 (length _radiationStatus)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; gazebo_radiation_plugins/Location _at
       (send _at :serialize s)
     ;; gazebo_radiation_plugins/Location _currentLoc
       (send _currentLoc :serialize s)
     ;; gazebo_radiation_plugins/Location _position
       (send _position :serialize s)
     ;; gazebo_radiation_plugins/WayP _wayPNow
       (send _wayPNow :serialize s)
     ;; gazebo_radiation_plugins/WayP _wayPNext
       (send _wayPNext :serialize s)
     ;; gazebo_radiation_plugins/Command _command
       (send _command :serialize s)
     ;; int16 _inspected
       (write-word _inspected s)
     ;; float64 _r
       (sys::poke _r (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _radiationStatus
       (write-long (length _radiationStatus) s) (princ _radiationStatus s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; gazebo_radiation_plugins/Location _at
     (send _at :deserialize buf ptr-) (incf ptr- (send _at :serialization-length))
   ;; gazebo_radiation_plugins/Location _currentLoc
     (send _currentLoc :deserialize buf ptr-) (incf ptr- (send _currentLoc :serialization-length))
   ;; gazebo_radiation_plugins/Location _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; gazebo_radiation_plugins/WayP _wayPNow
     (send _wayPNow :deserialize buf ptr-) (incf ptr- (send _wayPNow :serialization-length))
   ;; gazebo_radiation_plugins/WayP _wayPNext
     (send _wayPNext :deserialize buf ptr-) (incf ptr- (send _wayPNext :serialization-length))
   ;; gazebo_radiation_plugins/Command _command
     (send _command :deserialize buf ptr-) (incf ptr- (send _command :serialization-length))
   ;; int16 _inspected
     (setq _inspected (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _r
     (setq _r (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _radiationStatus
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _radiationStatus (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get gazebo_radiation_plugins::Snapshot :md5sum-) "88d99162d65f2a1a11f50289164215eb")
(setf (get gazebo_radiation_plugins::Snapshot :datatype-) "gazebo_radiation_plugins/Snapshot")
(setf (get gazebo_radiation_plugins::Snapshot :definition-)
      "gazebo_radiation_plugins/Location at
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

")



(provide :gazebo_radiation_plugins/Snapshot "88d99162d65f2a1a11f50289164215eb")



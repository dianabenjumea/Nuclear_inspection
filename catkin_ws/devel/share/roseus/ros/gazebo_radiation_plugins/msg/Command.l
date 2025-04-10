;; Auto-generated. Do not edit!


(when (boundp 'gazebo_radiation_plugins::Command)
  (if (not (find-package "GAZEBO_RADIATION_PLUGINS"))
    (make-package "GAZEBO_RADIATION_PLUGINS"))
  (shadow 'Command (find-package "GAZEBO_RADIATION_PLUGINS")))
(unless (find-package "GAZEBO_RADIATION_PLUGINS::COMMAND")
  (make-package "GAZEBO_RADIATION_PLUGINS::COMMAND"))

(in-package "ROS")
;;//! \htmlinclude Command.msg.html


(defclass gazebo_radiation_plugins::Command
  :super ros::object
  :slots (_name _location ))

(defmethod gazebo_radiation_plugins::Command
  (:init
   (&key
    ((:name __name) "")
    ((:location __location) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _location (round __location))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:location
   (&optional __location)
   (if __location (setq _location __location)) _location)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int16 _location
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int16 _location
       (write-word _location s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _location
     (setq _location (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get gazebo_radiation_plugins::Command :md5sum-) "2d94206551897a2d3ead717da2c4f2d0")
(setf (get gazebo_radiation_plugins::Command :datatype-) "gazebo_radiation_plugins/Command")
(setf (get gazebo_radiation_plugins::Command :definition-)
      "string name
int16 location

")



(provide :gazebo_radiation_plugins/Command "2d94206551897a2d3ead717da2c4f2d0")



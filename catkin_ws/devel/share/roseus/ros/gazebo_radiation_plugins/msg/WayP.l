;; Auto-generated. Do not edit!


(when (boundp 'gazebo_radiation_plugins::WayP)
  (if (not (find-package "GAZEBO_RADIATION_PLUGINS"))
    (make-package "GAZEBO_RADIATION_PLUGINS"))
  (shadow 'WayP (find-package "GAZEBO_RADIATION_PLUGINS")))
(unless (find-package "GAZEBO_RADIATION_PLUGINS::WAYP")
  (make-package "GAZEBO_RADIATION_PLUGINS::WAYP"))

(in-package "ROS")
;;//! \htmlinclude WayP.msg.html


(defclass gazebo_radiation_plugins::WayP
  :super ros::object
  :slots (_key _pos ))

(defmethod gazebo_radiation_plugins::WayP
  (:init
   (&key
    ((:key __key) 0)
    ((:pos __pos) (instance gazebo_radiation_plugins::Location :init))
    )
   (send-super :init)
   (setq _key (round __key))
   (setq _pos __pos)
   self)
  (:key
   (&optional __key)
   (if __key (setq _key __key)) _key)
  (:pos
   (&rest __pos)
   (if (keywordp (car __pos))
       (send* _pos __pos)
     (progn
       (if __pos (setq _pos (car __pos)))
       _pos)))
  (:serialization-length
   ()
   (+
    ;; int16 _key
    2
    ;; gazebo_radiation_plugins/Location _pos
    (send _pos :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _key
       (write-word _key s)
     ;; gazebo_radiation_plugins/Location _pos
       (send _pos :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _key
     (setq _key (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; gazebo_radiation_plugins/Location _pos
     (send _pos :deserialize buf ptr-) (incf ptr- (send _pos :serialization-length))
   ;;
   self)
  )

(setf (get gazebo_radiation_plugins::WayP :md5sum-) "0b710348f6d9b37d2e3d0cc4a3be0ce8")
(setf (get gazebo_radiation_plugins::WayP :datatype-) "gazebo_radiation_plugins/WayP")
(setf (get gazebo_radiation_plugins::WayP :definition-)
      "int16 key
gazebo_radiation_plugins/Location pos

================================================================================
MSG: gazebo_radiation_plugins/Location
float64 x
float64 y

")



(provide :gazebo_radiation_plugins/WayP "0b710348f6d9b37d2e3d0cc4a3be0ce8")



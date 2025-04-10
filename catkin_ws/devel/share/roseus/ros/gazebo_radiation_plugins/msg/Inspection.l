;; Auto-generated. Do not edit!


(when (boundp 'gazebo_radiation_plugins::Inspection)
  (if (not (find-package "GAZEBO_RADIATION_PLUGINS"))
    (make-package "GAZEBO_RADIATION_PLUGINS"))
  (shadow 'Inspection (find-package "GAZEBO_RADIATION_PLUGINS")))
(unless (find-package "GAZEBO_RADIATION_PLUGINS::INSPECTION")
  (make-package "GAZEBO_RADIATION_PLUGINS::INSPECTION"))

(in-package "ROS")
;;//! \htmlinclude Inspection.msg.html


(defclass gazebo_radiation_plugins::Inspection
  :super ros::object
  :slots (_location ))

(defmethod gazebo_radiation_plugins::Inspection
  (:init
   (&key
    ((:location __location) 0)
    )
   (send-super :init)
   (setq _location (round __location))
   self)
  (:location
   (&optional __location)
   (if __location (setq _location __location)) _location)
  (:serialization-length
   ()
   (+
    ;; int16 _location
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _location
       (write-word _location s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _location
     (setq _location (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get gazebo_radiation_plugins::Inspection :md5sum-) "b70bb023a4b06746b026ccb2482d09be")
(setf (get gazebo_radiation_plugins::Inspection :datatype-) "gazebo_radiation_plugins/Inspection")
(setf (get gazebo_radiation_plugins::Inspection :definition-)
      "int16 location

")



(provide :gazebo_radiation_plugins/Inspection "b70bb023a4b06746b026ccb2482d09be")



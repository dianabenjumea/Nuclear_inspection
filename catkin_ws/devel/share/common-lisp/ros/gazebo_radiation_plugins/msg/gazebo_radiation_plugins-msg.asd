
(cl:in-package :asdf)

(defsystem "gazebo_radiation_plugins-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Command" :depends-on ("_package_Command"))
    (:file "_package_Command" :depends-on ("_package"))
    (:file "Inspection" :depends-on ("_package_Inspection"))
    (:file "_package_Inspection" :depends-on ("_package"))
    (:file "Location" :depends-on ("_package_Location"))
    (:file "_package_Location" :depends-on ("_package"))
    (:file "Simulated_Radiation_Msg" :depends-on ("_package_Simulated_Radiation_Msg"))
    (:file "_package_Simulated_Radiation_Msg" :depends-on ("_package"))
    (:file "Snapshot" :depends-on ("_package_Snapshot"))
    (:file "_package_Snapshot" :depends-on ("_package"))
    (:file "WayP" :depends-on ("_package_WayP"))
    (:file "_package_WayP" :depends-on ("_package"))
  ))
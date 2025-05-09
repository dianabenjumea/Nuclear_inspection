// Generated by gencpp from file gazebo_radiation_plugins/Simulated_Radiation_Msg.msg
// DO NOT EDIT!


#ifndef GAZEBO_RADIATION_PLUGINS_MESSAGE_SIMULATED_RADIATION_MSG_H
#define GAZEBO_RADIATION_PLUGINS_MESSAGE_SIMULATED_RADIATION_MSG_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Pose.h>

namespace gazebo_radiation_plugins
{
template <class ContainerAllocator>
struct Simulated_Radiation_Msg_
{
  typedef Simulated_Radiation_Msg_<ContainerAllocator> Type;

  Simulated_Radiation_Msg_()
    : header()
    , value(0.0)
    , pose()
    , type()  {
    }
  Simulated_Radiation_Msg_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , value(0.0)
    , pose(_alloc)
    , type(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _value_type;
  _value_type value;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _type_type;
  _type_type type;





  typedef boost::shared_ptr< ::gazebo_radiation_plugins::Simulated_Radiation_Msg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gazebo_radiation_plugins::Simulated_Radiation_Msg_<ContainerAllocator> const> ConstPtr;

}; // struct Simulated_Radiation_Msg_

typedef ::gazebo_radiation_plugins::Simulated_Radiation_Msg_<std::allocator<void> > Simulated_Radiation_Msg;

typedef boost::shared_ptr< ::gazebo_radiation_plugins::Simulated_Radiation_Msg > Simulated_Radiation_MsgPtr;
typedef boost::shared_ptr< ::gazebo_radiation_plugins::Simulated_Radiation_Msg const> Simulated_Radiation_MsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gazebo_radiation_plugins::Simulated_Radiation_Msg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gazebo_radiation_plugins::Simulated_Radiation_Msg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::gazebo_radiation_plugins::Simulated_Radiation_Msg_<ContainerAllocator1> & lhs, const ::gazebo_radiation_plugins::Simulated_Radiation_Msg_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.value == rhs.value &&
    lhs.pose == rhs.pose &&
    lhs.type == rhs.type;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::gazebo_radiation_plugins::Simulated_Radiation_Msg_<ContainerAllocator1> & lhs, const ::gazebo_radiation_plugins::Simulated_Radiation_Msg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace gazebo_radiation_plugins

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::gazebo_radiation_plugins::Simulated_Radiation_Msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gazebo_radiation_plugins::Simulated_Radiation_Msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gazebo_radiation_plugins::Simulated_Radiation_Msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gazebo_radiation_plugins::Simulated_Radiation_Msg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gazebo_radiation_plugins::Simulated_Radiation_Msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gazebo_radiation_plugins::Simulated_Radiation_Msg_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gazebo_radiation_plugins::Simulated_Radiation_Msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5b373d3bced4797dd810111ba991daf9";
  }

  static const char* value(const ::gazebo_radiation_plugins::Simulated_Radiation_Msg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5b373d3bced4797dULL;
  static const uint64_t static_value2 = 0xd810111ba991daf9ULL;
};

template<class ContainerAllocator>
struct DataType< ::gazebo_radiation_plugins::Simulated_Radiation_Msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gazebo_radiation_plugins/Simulated_Radiation_Msg";
  }

  static const char* value(const ::gazebo_radiation_plugins::Simulated_Radiation_Msg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gazebo_radiation_plugins::Simulated_Radiation_Msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"float64 value\n"
"geometry_msgs/Pose pose\n"
"string type\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::gazebo_radiation_plugins::Simulated_Radiation_Msg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gazebo_radiation_plugins::Simulated_Radiation_Msg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.value);
      stream.next(m.pose);
      stream.next(m.type);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Simulated_Radiation_Msg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gazebo_radiation_plugins::Simulated_Radiation_Msg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gazebo_radiation_plugins::Simulated_Radiation_Msg_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "value: ";
    Printer<double>::stream(s, indent + "  ", v.value);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.type);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GAZEBO_RADIATION_PLUGINS_MESSAGE_SIMULATED_RADIATION_MSG_H

// Generated by gencpp from file gazebo_radiation_plugins/Command.msg
// DO NOT EDIT!


#ifndef GAZEBO_RADIATION_PLUGINS_MESSAGE_COMMAND_H
#define GAZEBO_RADIATION_PLUGINS_MESSAGE_COMMAND_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace gazebo_radiation_plugins
{
template <class ContainerAllocator>
struct Command_
{
  typedef Command_<ContainerAllocator> Type;

  Command_()
    : name()
    , location(0)  {
    }
  Command_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , location(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _name_type;
  _name_type name;

   typedef int16_t _location_type;
  _location_type location;





  typedef boost::shared_ptr< ::gazebo_radiation_plugins::Command_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gazebo_radiation_plugins::Command_<ContainerAllocator> const> ConstPtr;

}; // struct Command_

typedef ::gazebo_radiation_plugins::Command_<std::allocator<void> > Command;

typedef boost::shared_ptr< ::gazebo_radiation_plugins::Command > CommandPtr;
typedef boost::shared_ptr< ::gazebo_radiation_plugins::Command const> CommandConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gazebo_radiation_plugins::Command_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gazebo_radiation_plugins::Command_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::gazebo_radiation_plugins::Command_<ContainerAllocator1> & lhs, const ::gazebo_radiation_plugins::Command_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name &&
    lhs.location == rhs.location;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::gazebo_radiation_plugins::Command_<ContainerAllocator1> & lhs, const ::gazebo_radiation_plugins::Command_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace gazebo_radiation_plugins

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::gazebo_radiation_plugins::Command_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gazebo_radiation_plugins::Command_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gazebo_radiation_plugins::Command_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gazebo_radiation_plugins::Command_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gazebo_radiation_plugins::Command_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gazebo_radiation_plugins::Command_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gazebo_radiation_plugins::Command_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2d94206551897a2d3ead717da2c4f2d0";
  }

  static const char* value(const ::gazebo_radiation_plugins::Command_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2d94206551897a2dULL;
  static const uint64_t static_value2 = 0x3ead717da2c4f2d0ULL;
};

template<class ContainerAllocator>
struct DataType< ::gazebo_radiation_plugins::Command_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gazebo_radiation_plugins/Command";
  }

  static const char* value(const ::gazebo_radiation_plugins::Command_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gazebo_radiation_plugins::Command_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n"
"int16 location\n"
;
  }

  static const char* value(const ::gazebo_radiation_plugins::Command_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gazebo_radiation_plugins::Command_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.location);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Command_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gazebo_radiation_plugins::Command_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gazebo_radiation_plugins::Command_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name);
    s << indent << "location: ";
    Printer<int16_t>::stream(s, indent + "  ", v.location);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GAZEBO_RADIATION_PLUGINS_MESSAGE_COMMAND_H

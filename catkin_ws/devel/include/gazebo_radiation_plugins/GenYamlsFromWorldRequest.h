// Generated by gencpp from file gazebo_radiation_plugins/GenYamlsFromWorldRequest.msg
// DO NOT EDIT!


#ifndef GAZEBO_RADIATION_PLUGINS_MESSAGE_GENYAMLSFROMWORLDREQUEST_H
#define GAZEBO_RADIATION_PLUGINS_MESSAGE_GENYAMLSFROMWORLDREQUEST_H


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
struct GenYamlsFromWorldRequest_
{
  typedef GenYamlsFromWorldRequest_<ContainerAllocator> Type;

  GenYamlsFromWorldRequest_()
    : folder()
    , world_filename()
    , model_subset_filename()
    , default_bend(0.0)
    , default_rust(0.0)
    , default_radiation(0.0)  {
    }
  GenYamlsFromWorldRequest_(const ContainerAllocator& _alloc)
    : folder(_alloc)
    , world_filename(_alloc)
    , model_subset_filename(_alloc)
    , default_bend(0.0)
    , default_rust(0.0)
    , default_radiation(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _folder_type;
  _folder_type folder;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _world_filename_type;
  _world_filename_type world_filename;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _model_subset_filename_type;
  _model_subset_filename_type model_subset_filename;

   typedef float _default_bend_type;
  _default_bend_type default_bend;

   typedef float _default_rust_type;
  _default_rust_type default_rust;

   typedef float _default_radiation_type;
  _default_radiation_type default_radiation;





  typedef boost::shared_ptr< ::gazebo_radiation_plugins::GenYamlsFromWorldRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gazebo_radiation_plugins::GenYamlsFromWorldRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GenYamlsFromWorldRequest_

typedef ::gazebo_radiation_plugins::GenYamlsFromWorldRequest_<std::allocator<void> > GenYamlsFromWorldRequest;

typedef boost::shared_ptr< ::gazebo_radiation_plugins::GenYamlsFromWorldRequest > GenYamlsFromWorldRequestPtr;
typedef boost::shared_ptr< ::gazebo_radiation_plugins::GenYamlsFromWorldRequest const> GenYamlsFromWorldRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gazebo_radiation_plugins::GenYamlsFromWorldRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gazebo_radiation_plugins::GenYamlsFromWorldRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::gazebo_radiation_plugins::GenYamlsFromWorldRequest_<ContainerAllocator1> & lhs, const ::gazebo_radiation_plugins::GenYamlsFromWorldRequest_<ContainerAllocator2> & rhs)
{
  return lhs.folder == rhs.folder &&
    lhs.world_filename == rhs.world_filename &&
    lhs.model_subset_filename == rhs.model_subset_filename &&
    lhs.default_bend == rhs.default_bend &&
    lhs.default_rust == rhs.default_rust &&
    lhs.default_radiation == rhs.default_radiation;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::gazebo_radiation_plugins::GenYamlsFromWorldRequest_<ContainerAllocator1> & lhs, const ::gazebo_radiation_plugins::GenYamlsFromWorldRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace gazebo_radiation_plugins

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::gazebo_radiation_plugins::GenYamlsFromWorldRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gazebo_radiation_plugins::GenYamlsFromWorldRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gazebo_radiation_plugins::GenYamlsFromWorldRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gazebo_radiation_plugins::GenYamlsFromWorldRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gazebo_radiation_plugins::GenYamlsFromWorldRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gazebo_radiation_plugins::GenYamlsFromWorldRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gazebo_radiation_plugins::GenYamlsFromWorldRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "96e84490834f1029806f056f6761f002";
  }

  static const char* value(const ::gazebo_radiation_plugins::GenYamlsFromWorldRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x96e84490834f1029ULL;
  static const uint64_t static_value2 = 0x806f056f6761f002ULL;
};

template<class ContainerAllocator>
struct DataType< ::gazebo_radiation_plugins::GenYamlsFromWorldRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gazebo_radiation_plugins/GenYamlsFromWorldRequest";
  }

  static const char* value(const ::gazebo_radiation_plugins::GenYamlsFromWorldRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gazebo_radiation_plugins::GenYamlsFromWorldRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string folder\n"
"string world_filename\n"
"string model_subset_filename\n"
"float32 default_bend\n"
"float32 default_rust\n"
"float32 default_radiation\n"
;
  }

  static const char* value(const ::gazebo_radiation_plugins::GenYamlsFromWorldRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gazebo_radiation_plugins::GenYamlsFromWorldRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.folder);
      stream.next(m.world_filename);
      stream.next(m.model_subset_filename);
      stream.next(m.default_bend);
      stream.next(m.default_rust);
      stream.next(m.default_radiation);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GenYamlsFromWorldRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gazebo_radiation_plugins::GenYamlsFromWorldRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gazebo_radiation_plugins::GenYamlsFromWorldRequest_<ContainerAllocator>& v)
  {
    s << indent << "folder: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.folder);
    s << indent << "world_filename: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.world_filename);
    s << indent << "model_subset_filename: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.model_subset_filename);
    s << indent << "default_bend: ";
    Printer<float>::stream(s, indent + "  ", v.default_bend);
    s << indent << "default_rust: ";
    Printer<float>::stream(s, indent + "  ", v.default_rust);
    s << indent << "default_radiation: ";
    Printer<float>::stream(s, indent + "  ", v.default_radiation);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GAZEBO_RADIATION_PLUGINS_MESSAGE_GENYAMLSFROMWORLDREQUEST_H

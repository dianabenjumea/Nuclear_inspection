# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from gazebo_radiation_plugins/GenRandomEnvironmentalEffectsRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class GenRandomEnvironmentalEffectsRequest(genpy.Message):
  _md5sum = "1601fbc011dbf3b713e5f6ae36624db7"
  _type = "gazebo_radiation_plugins/GenRandomEnvironmentalEffectsRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """string folder
int16 number_of_radiation_sources
int16 number_of_rusting_models
int16 number_of_bending_models
float32 max_bend_factor
float32 max_rust_factor
"""
  __slots__ = ['folder','number_of_radiation_sources','number_of_rusting_models','number_of_bending_models','max_bend_factor','max_rust_factor']
  _slot_types = ['string','int16','int16','int16','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       folder,number_of_radiation_sources,number_of_rusting_models,number_of_bending_models,max_bend_factor,max_rust_factor

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GenRandomEnvironmentalEffectsRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.folder is None:
        self.folder = ''
      if self.number_of_radiation_sources is None:
        self.number_of_radiation_sources = 0
      if self.number_of_rusting_models is None:
        self.number_of_rusting_models = 0
      if self.number_of_bending_models is None:
        self.number_of_bending_models = 0
      if self.max_bend_factor is None:
        self.max_bend_factor = 0.
      if self.max_rust_factor is None:
        self.max_rust_factor = 0.
    else:
      self.folder = ''
      self.number_of_radiation_sources = 0
      self.number_of_rusting_models = 0
      self.number_of_bending_models = 0
      self.max_bend_factor = 0.
      self.max_rust_factor = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.folder
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3h2f().pack(_x.number_of_radiation_sources, _x.number_of_rusting_models, _x.number_of_bending_models, _x.max_bend_factor, _x.max_rust_factor))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.folder = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.folder = str[start:end]
      _x = self
      start = end
      end += 14
      (_x.number_of_radiation_sources, _x.number_of_rusting_models, _x.number_of_bending_models, _x.max_bend_factor, _x.max_rust_factor,) = _get_struct_3h2f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.folder
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3h2f().pack(_x.number_of_radiation_sources, _x.number_of_rusting_models, _x.number_of_bending_models, _x.max_bend_factor, _x.max_rust_factor))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.folder = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.folder = str[start:end]
      _x = self
      start = end
      end += 14
      (_x.number_of_radiation_sources, _x.number_of_rusting_models, _x.number_of_bending_models, _x.max_bend_factor, _x.max_rust_factor,) = _get_struct_3h2f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3h2f = None
def _get_struct_3h2f():
    global _struct_3h2f
    if _struct_3h2f is None:
        _struct_3h2f = struct.Struct("<3h2f")
    return _struct_3h2f
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from gazebo_radiation_plugins/GenRandomEnvironmentalEffectsResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class GenRandomEnvironmentalEffectsResponse(genpy.Message):
  _md5sum = "d41d8cd98f00b204e9800998ecf8427e"
  _type = "gazebo_radiation_plugins/GenRandomEnvironmentalEffectsResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """

"""
  __slots__ = []
  _slot_types = []

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GenRandomEnvironmentalEffectsResponse, self).__init__(*args, **kwds)

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
class GenRandomEnvironmentalEffects(object):
  _type          = 'gazebo_radiation_plugins/GenRandomEnvironmentalEffects'
  _md5sum = '1601fbc011dbf3b713e5f6ae36624db7'
  _request_class  = GenRandomEnvironmentalEffectsRequest
  _response_class = GenRandomEnvironmentalEffectsResponse

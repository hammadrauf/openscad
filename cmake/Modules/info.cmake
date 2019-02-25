message("")
message("Configuration")
message("=============")
message("")

get_directory_property(DEFINES COMPILE_DEFINITIONS)

#message("DEFINES = ${DEFINES}")

if(CMAKE_BUILD_TYPE MATCHES DEBUG)
  message("Debug mode: enabled")
else()
  message("Debug mode: disabled")
endif()

if("ENABLE_EXPERIMENTAL" IN_LIST DEFINES)
  message("Experimental features: enabled")
else()
  message("Experimental features: disabled")
endif()

message("")
message("Input Drivers")
if("ENABLE_HIDAPI" IN_LIST DEFINES)
  message("- HID API Driver (enabled)")
else()
  message("- HID API Driver (disabled)")
endif()
if("ENABLE_SPNAV" IN_LIST DEFINES)
  message("- Space Navigator Library Driver (enabled)")
else()
  message("- Space Navigator Library Driver (disabled)")
endif()
if("ENABLE_JOYSTICK" IN_LIST DEFINES)
  message("- Joystick Driver (enabled)")
else()
  message("- Joystick Driver (disabled)")
endif()
if("ENABLE_DBUS" IN_LIST DEFINES)
  message("- DBus Remote Driver (enabled)")
else()
  message("- DBus Remote Driver (disabled)")
endif()
message("")
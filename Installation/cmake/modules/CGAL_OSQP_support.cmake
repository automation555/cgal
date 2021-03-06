if(OSQP_FOUND AND NOT TARGET CGAL::OSQP_support)
  add_library(CGAL::OSQP_support INTERFACE IMPORTED)
  set_target_properties(CGAL::OSQP_support PROPERTIES
    INTERFACE_COMPILE_DEFINITIONS "CGAL_USE_OSQP"
    INTERFACE_INCLUDE_DIRECTORIES "${OSQP_INCLUDE_DIR}"
    INTERFACE_LINK_LIBRARIES "${OSQP_LIBRARIES}")
endif()

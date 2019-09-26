
epic.register_opcode = function(name, options)

  local default_tile = "epic_node_bg.png"
  local front_tile = default_tile

  if options.overlay then
    front_tile = front_tile .. "^" .. options.overlay
  end

  if options.directions then
    if options.directions.right then
      front_tile = front_tile .. "^epic_green_right.png"
    end

    if options.directions.start then
      front_tile = front_tile .. "^epic_green_right_start.png"
    end

    if options.directions.final then
      front_tile = front_tile .. "^epic_green_right_end.png"
    end

    if options.directions.down then
      front_tile = front_tile .. "^epic_red_down.png"
    end
  end

  minetest.register_node(name, {
  	description = options.description,
  	tiles = {
  		default_tile,
      default_tile,
      default_tile,
      default_tile,
      default_tile,
      front_tile,
  	},
    paramtype2 = "facedir",
  	groups = {cracky=3,oddly_breakable_by_hand=3},
  	on_rotate = screwdriver.rotate_simple
  })

end

epic.register_opcode("epic:function", {
	description = "Epic function block",
  overlay = "epic_function.png",
  directions = {
    start = true
  }
})

epic.register_opcode("epic:mob", {
	description = "Epic mob block",
  overlay = "epic_mob.png",
  directions = {
    right = true
  }
})

epic.register_opcode("epic:call", {
	description = "Epic call block",
  overlay = "epic_call.png",
  directions = {
    right = true
  }
})

epic.register_opcode("epic:nop", {
	description = "Epic nop block",
  overlay = "epic_nop.png",
  directions = {
    right = true
  }
})

epic.register_opcode("epic:waypoint", {
	description = "Epic waypoint block",
  overlay = "epic_waypoint.png",
  directions = {
    right = true
  }
})

epic.register_opcode("epic:message", {
	description = "Epic message block",
  overlay = "epic_msg.png",
  directions = {
    right = true
  }
})

epic.register_opcode("epic:if", {
	description = "Epic if block",
  overlay = "epic_if.png",
  directions = {
    right = true,
    down = true
  }
})

epic.register_opcode("epic:end", {
	description = "Epic end block",
  overlay = "epic_end.png",
  directions = {
    final = true
  }
})

epic.register_opcode("epic:ret", {
	description = "Epic ret block",
  overlay = "epic_ret.png",
  directions = {
    final = true
  }
})

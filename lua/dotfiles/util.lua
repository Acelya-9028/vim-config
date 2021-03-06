local _0_0 = nil
do
  local name_23_0_ = "dotfiles.util"
  local loaded_23_0_ = package.loaded[name_23_0_]
  local module_23_0_ = nil
  if ("table" == type(loaded_23_0_)) then
    module_23_0_ = loaded_23_0_
  else
    module_23_0_ = {}
  end
  module_23_0_["aniseed/module"] = name_23_0_
  module_23_0_["aniseed/locals"] = (module_23_0_["aniseed/locals"] or {})
  module_23_0_["aniseed/local-fns"] = (module_23_0_["aniseed/local-fns"] or {})
  package.loaded[name_23_0_] = module_23_0_
  _0_0 = module_23_0_
end
local function _1_(...)
  _0_0["aniseed/local-fns"] = {require = {nvim = "aniseed.nvim"}}
  return {require("aniseed.nvim")}
end
local _2_ = _1_(...)
local nvim = _2_[1]
do local _ = ({nil, _0_0, nil})[2] end
local expand = nil
do
  local v_23_0_ = nil
  do
    local v_23_0_0 = nil
    local function expand0(path)
      return nvim.fn.expand(path)
    end
    v_23_0_0 = expand0
    _0_0["expand"] = v_23_0_0
    v_23_0_ = v_23_0_0
  end
  _0_0["aniseed/locals"]["expand"] = v_23_0_
  expand = v_23_0_
end
local glob = nil
do
  local v_23_0_ = nil
  do
    local v_23_0_0 = nil
    local function glob0(path)
      return nvim.fn.glob(path, true, true, true)
    end
    v_23_0_0 = glob0
    _0_0["glob"] = v_23_0_0
    v_23_0_ = v_23_0_0
  end
  _0_0["aniseed/locals"]["glob"] = v_23_0_
  glob = v_23_0_
end
local exists_3f = nil
do
  local v_23_0_ = nil
  do
    local v_23_0_0 = nil
    local function exists_3f0(path)
      return (nvim.fn.filereadable(path) == 1)
    end
    v_23_0_0 = exists_3f0
    _0_0["exists?"] = v_23_0_0
    v_23_0_ = v_23_0_0
  end
  _0_0["aniseed/locals"]["exists?"] = v_23_0_
  exists_3f = v_23_0_
end
local config_path = nil
do
  local v_23_0_ = nil
  do
    local v_23_0_0 = nvim.fn.stdpath("config")
    _0_0["config-path"] = v_23_0_0
    v_23_0_ = v_23_0_0
  end
  _0_0["aniseed/locals"]["config-path"] = v_23_0_
  config_path = v_23_0_
end
g = {}
local export = nil
do
  local v_23_0_ = nil
  do
    local v_23_0_0 = nil
    local function export0(name, _function)
      g[name] = _function
      return nil
    end
    v_23_0_0 = export0
    _0_0["export"] = v_23_0_0
    v_23_0_ = v_23_0_0
  end
  _0_0["aniseed/locals"]["export"] = v_23_0_
  export = v_23_0_
end
local number_3f = nil
do
  local v_23_0_ = nil
  do
    local v_23_0_0 = nil
    local function number_3f0(x)
      return ("number" == type(x))
    end
    v_23_0_0 = number_3f0
    _0_0["number?"] = v_23_0_0
    v_23_0_ = v_23_0_0
  end
  _0_0["aniseed/locals"]["number?"] = v_23_0_
  number_3f = v_23_0_
end
local safe_equal = nil
do
  local v_23_0_ = nil
  do
    local v_23_0_0 = nil
    local function safe_equal0(x, y)
      return ((type(x) == type(y)) and (x == y))
    end
    v_23_0_0 = safe_equal0
    _0_0["safe-equal"] = v_23_0_0
    v_23_0_ = v_23_0_0
  end
  _0_0["aniseed/locals"]["safe-equal"] = v_23_0_
  safe_equal = v_23_0_
end
local safe_not_equal = nil
do
  local v_23_0_ = nil
  do
    local v_23_0_0 = nil
    local function safe_not_equal0(x, y)
      return ((type(x) ~= type(y)) or (x ~= y))
    end
    v_23_0_0 = safe_not_equal0
    _0_0["safe-not-equal"] = v_23_0_0
    v_23_0_ = v_23_0_0
  end
  _0_0["aniseed/locals"]["safe-not-equal"] = v_23_0_
  safe_not_equal = v_23_0_
end
return nil
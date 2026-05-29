return {
	s({trig = "ocf header", snippetType = "snippet", desc = "boilerplate for orthodox canonical form" }, f(function(args, snip)
		local res, env = {}, snip.env
		local class = env.TM_FILENAME:gsub("^%l", string.upper):gsub("%..*$", "")
		local nl = function(str)
			table.insert(res, str)
		end
		nl("#pragma once")
		nl("class	" .. class .. " {")
		nl("public:")
		nl("	" .. class .. "();")
		nl("	" .. class .. "(const ".. class .. "&);")
		nl("	" .. class .. "&	operator =(const " .. class .. "&);")
		nl("	virtual	~" .. class .. "();")
		nl("")
		nl("private:")
		nl("protected:")
		nl("};")
		nl("")
		return res
	end)),
	s({trig = "ocf body", snippetType = "snippet", desc = "boilerplate for orthodox canonical form" }, {f(function(args, snip)
		local res, env = {}, snip.env
		local guard = env.TM_FILENAME:upper():gsub("%.", "_")
		local class = env.TM_FILENAME:gsub("^%l", string.upper):gsub("%..*$", "")
		local nl = function(str)
			table.insert(res, str)
		end
		nl("#include <iostream>")
		nl("")
		nl("#include \"" .. class .. ".hpp\"")
		nl("")
		nl(class .. "::" .. class .. "() {")
		nl("	std::clog << \"default " .. class .. " constructor called\" << std::endl;")
		nl("}")
		nl("")
		nl(class .. "::" .. class .. "(const " .. class .. "& other) {")
		nl("	std::clog << \"copy " .. class .. " constructor called\" << std::endl;")
		nl("")
		nl("	*this = other;")
		nl("}")
		nl("")
		nl(class .. "&	" .. class .. "::operator =(const " .. class .. "& other) {")
		nl("	std::clog << \"copy " .. class .. " assignment called\" << std::endl;")
		nl("")
		nl("	if (this == &other) return *this;")
		nl("	return *this;")
		nl("}")
		nl("")
		nl(class .. "::~" .. class .. "() {")
		nl("	std::clog << \"default " .. class .. " destructor called\" << std::endl;")
		nl("}")
		return res
	end)}),
	s({trig = "main", snippetType = "snippet", desc = "fubar" }, {
		t({
			'#include <iostream>',
			'',
			'int main([[maybe_unused]] int argc, [[maybe_unused]] char **argv) {',
			'	std::cout << "Hello, World!\\n";',
			'',
			'	return 0;',
			'}'
		}),
	})
}

#include "SharedGen.hpp"

namespace format_strings {

	char const* declare_member_type = R"CAC(
GEODE_NOINLINE static uintptr_t address{global_index}();
using ret{global_index} = {return};
using func{global_index} = ret{global_index}(*)({const}{constw}{class_name}*{arg_types});
using pure{global_index} = ret{global_index}({class_name}*{arg_types}){constw}{const};
using member{global_index} = ret{global_index}({class_name}::*)({raw_arg_types}){const};
)CAC";

	char const* declare_static_type = R"CAC(
GEODE_NOINLINE static uintptr_t address{global_index}();
using ret{global_index} = {return};
using func{global_index} = ret{global_index}(*)({raw_arg_types});
using pure{global_index} = ret{global_index}({raw_arg_types}){constw}{const};
using member{global_index} = func{global_index};
)CAC";

	char const* declare_structor_type = R"CAC(
GEODE_NOINLINE static uintptr_t address{global_index}();
using ret{global_index} = void;
using func{global_index} = ret{global_index}(*)({class_name}*{arg_types});
using pure{global_index} = ret{global_index}({class_name}*{arg_types});
using member{global_index} = func{global_index};
)CAC";

}

int main(int argc, char** argv) {
	string output("");
	Root root = CacShare::init(argc, argv);

	int global_index = 0;
	for (auto& [name, c] : root.classes) {
		string unqualifiedName = CacShare::toUnqualified(name);

		for (auto& f : c.functions) {
			++global_index;
			if (f.name == "colorAllCharactersTo") cout << "colorAllCharactersTo " << CacShare::getAddress(f) << endl;
			if (!CacShare::functionDefined(f))
                continue; // Function not supported, skip

			char const* used_format;
			
			switch (f.function_type) {
				case kVirtualFunction:
				case kRegularFunction:
					used_format = format_strings::declare_member_type;
					break;
				case kStaticFunction:
					used_format = format_strings::declare_static_type;
					break;
				case kDestructor:
				case kConstructor:
					used_format = format_strings::declare_structor_type;
					break;
			}

			output += fmt::format(used_format,
				fmt::arg("arg_types", CacShare::formatArgTypes(f.args)),
				fmt::arg("raw_arg_types", CacShare::formatRawArgTypes(f.args)),
				fmt::arg("class_name", name),
				fmt::arg("const", f.is_const ? "const " : ""),
				fmt::arg("constw", f.is_const ? " " : ""),
				fmt::arg("global_index", global_index),
				fmt::arg("return", CacShare::getReturn(f))
			);
		}
	}

	CacShare::writeFile(output);
}

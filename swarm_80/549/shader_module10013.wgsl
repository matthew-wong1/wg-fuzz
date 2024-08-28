struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true));

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec4<u32>(1u, 1u, 17021u, 1u), vec3<i32>(i32(-2147483648), -24197i, 9705i), true), Struct_1(vec4<u32>(43409u, 1u, 0u, 1u), vec3<i32>(-19950i, 27167i, -14511i), true), Struct_1(vec4<u32>(67578u, 41988u, 0u, 0u), vec3<i32>(70002i, -13743i, -34238i), true), Struct_1(vec4<u32>(11640u, 2998u, 4294967295u, 19408u), vec3<i32>(43571i, 2147483647i, i32(-2147483648)), false), Struct_1(vec4<u32>(16092u, 43314u, 4294967295u, 0u), vec3<i32>(0i, 51789i, -1i), false), Struct_1(vec4<u32>(0u, 35236u, 4294967295u, 91582u), vec3<i32>(-24869i, -22122i, i32(-2147483648)), true), Struct_1(vec4<u32>(4294967295u, 58821u, 36038u, 0u), vec3<i32>(3831i, -5314i, 2147483647i), true), Struct_1(vec4<u32>(55349u, 0u, 0u, 0u), vec3<i32>(-26774i, -1i, 2147483647i), false), Struct_1(vec4<u32>(57929u, 1u, 31006u, 4271u), vec3<i32>(-7152i, 2147483647i, 18179i), false), Struct_1(vec4<u32>(53055u, 1u, 47369u, 0u), vec3<i32>(41036i, 8547i, 2147483647i), false), Struct_1(vec4<u32>(26152u, 17265u, 84687u, 25705u), vec3<i32>(1i, 0i, 32261i), true), Struct_1(vec4<u32>(17401u, 0u, 4294967295u, 1u), vec3<i32>(2147483647i, 2147483647i, -17143i), false));

var<private> global2: array<vec4<bool>, 30>;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(2445f, i32(-1i) * -u_input.b);
}


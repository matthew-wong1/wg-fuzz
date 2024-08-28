struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 11> = array<vec4<u32>, 11>(vec4<u32>(0u, 0u, 60748u, 3899u), vec4<u32>(4294967295u, 38364u, 46262u, 23586u), vec4<u32>(25340u, 36152u, 0u, 7159u), vec4<u32>(23181u, 7404u, 1u, 1u), vec4<u32>(4294967295u, 43139u, 4294967295u, 0u), vec4<u32>(12342u, 1392u, 1u, 0u), vec4<u32>(25302u, 1u, 1u, 4294967295u), vec4<u32>(1u, 0u, 1u, 6376u), vec4<u32>(4294967295u, 47522u, 28583u, 0u), vec4<u32>(4294967295u, 4294967295u, 15751u, 1u), vec4<u32>(4294967295u, 3997u, 41187u, 8349u));

var<private> global1: Struct_1 = Struct_1(vec3<i32>(0i, -1i, -28051i), true);

var<private> global2: vec2<i32> = vec2<i32>(2283i, 0i);

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.wyx;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~select(var_0.yz << (var_0.zy % vec2<u32>(32u)), vec2<u32>(4294967295u, u_input.b.x), vec2<bool>(false, global1.b))));
}


struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29>;

var<private> global1: Struct_1;

var<private> global2: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false));

var<private> global3: vec3<u32>;

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(-109088i, firstLeadingBit(global3.x));
}


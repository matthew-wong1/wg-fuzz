struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29>;

var<private> global1: array<vec3<bool>, 20> = array<vec3<bool>, 20>(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(0u, 31769u & u_input.a.x, _wgslsmith_mult_u32(~u_input.a.x, ~u_input.a.x)));
}


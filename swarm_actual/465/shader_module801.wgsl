struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: u32,
    d: Struct_2,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20>;

var<private> global1: i32;

var<private> global2: array<vec2<i32>, 15>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)))));
    global0 = array<f32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(countOneBits(-u_input.c), u_input.c, -_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c, 0i, 7651i), vec3<i32>(0i, 0i, 13670i)), 1i));
}


struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32 = 30570u;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: bool) -> StorageBuffer {
    global0 = -2147483647i;
    return StorageBuffer(vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.d, u_input.d), ~vec3<i32>(0i, u_input.d, 2147483647i)), 36832i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(false);
}


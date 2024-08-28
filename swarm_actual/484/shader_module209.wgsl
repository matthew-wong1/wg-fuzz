struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
    c: Struct_1,
    d: Struct_3,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 7>;

var<private> global1: array<bool, 31>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(u_input.a.xz, u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(~u_input.c.xz, var_0.b.yz));
}


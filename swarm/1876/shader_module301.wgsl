struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: f32,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec4<f32>,
    d: vec2<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: bool,
}

struct Struct_5 {
    a: u32,
    b: vec3<u32>,
    c: Struct_4,
    d: i32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(0i, 23539i), _wgslsmith_dot_vec2_i32(u_input.b.xy, -(~u_input.b.zy)), vec2<i32>(u_input.a, u_input.d), -310f);
}


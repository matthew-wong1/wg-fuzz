struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: Struct_1,
    d: vec2<bool>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: vec3<bool>,
    d: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<i32>(-2147483647i, select(_wgslsmith_clamp_i32(u_input.d.x, ~(-7690i), -_wgslsmith_clamp_i32(-29854i, global0.x, 1i)), 9425i, any(vec4<bool>(true, true, true, true))), u_input.a, min(~(-19105i) | ((i32(-1i) * -1i) & global0.x), global0.x & -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-(i32(-1i) * -22956i) << (abs(u_input.c.x) % 32u), 1i, -((7875i << (u_input.c.x % 32u)) << (~986u % 32u))), ~max(firstLeadingBit(_wgslsmith_mod_i32(0i, 28361i)), ~_wgslsmith_mod_i32(-22113i, u_input.d.x)));
}


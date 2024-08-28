struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: Struct_1,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(~(-(_wgslsmith_sub_i32(2147483647i, 0i) >> ((u_input.a.x ^ 1u) % 32u))), 1i);
    let var_1 = any(select(vec4<bool>(true, true, true, true), !(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true))), all(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}


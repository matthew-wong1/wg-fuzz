struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<i32>,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(_wgslsmith_sub_u32(~_wgslsmith_div_u32(~u_input.a, _wgslsmith_mult_u32(58670u, u_input.a)), ~(1u << (u_input.c % 32u))), u_input.a, ~0u ^ ((6595u << (~u_input.a % 32u)) ^ _wgslsmith_add_u32(13250u, u_input.c)), ~_wgslsmith_sub_u32(~(~112974u), u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.d.x);
}


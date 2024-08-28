struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: f32,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, u_input.a.x, -(~var_0), _wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, 41735u) >> (_wgslsmith_clamp_u32(45618u, ~u_input.d.x, select(u_input.d.x, 4294967295u, true)) % 32u), u_input.d.x));
}


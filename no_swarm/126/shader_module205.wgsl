struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: i32,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: f32,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_5 {
    a: i32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var_0 = _wgslsmith_mult_i32(select(-u_input.b.x, _wgslsmith_mod_i32(countOneBits(30094i), ~u_input.b.x) | -1i, true), u_input.b.x ^ -1i);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, 1u, _wgslsmith_div_u32(5118u, u_input.a)), u_input.c.yxx)), u_input.a);
}


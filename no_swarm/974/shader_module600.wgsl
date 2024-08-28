struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_mod_i32(u_input.c.x, 35421i));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.wz, reverseBits(u_input.c.zzx), _wgslsmith_mult_vec2_u32(~u_input.b, select(vec2<u32>(u_input.b.x, u_input.b.x), _wgslsmith_div_vec2_u32(u_input.b, u_input.b) >> (min(vec2<u32>(2003u, u_input.b.x), vec2<u32>(u_input.a, 1u)) % vec2<u32>(32u)), any(vec4<bool>(false, false, false, true)) && true)), -456f, -vec4<i32>(13089i, 10078i, 30259i, i32(-1i) * -u_input.c.x));
}


struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: i32,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 41470u;
    var var_1 = 36126u;
    var_1 = 4294967295u;
    var var_2 = ~(_wgslsmith_mod_i32(-2147483647i, -2147483647i) << (~u_input.a % 32u));
    var_1 = var_0;
    var_1 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(1i, 1i)), 2147483647i, -1i), -1i, firstLeadingBit(~_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(801u, var_0, 0u), vec3<u32>(0u, u_input.b, u_input.a)), max(vec3<u32>(u_input.b, 4294967295u, 18764u), vec3<u32>(1006u, 119690u, 30769u)))), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, var_0, _wgslsmith_clamp_u32(abs(u_input.a), 1u, min(u_input.a, 30446u))), ~vec3<u32>(u_input.a, u_input.a, 61545u << (u_input.a % 32u))));
}


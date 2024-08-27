struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~(~_wgslsmith_clamp_i32(reverseBits(1i), -1i, min(12070i, -18361i))));
    var var_1 = select(vec3<u32>(~u_input.b, min(u_input.b, 4294967295u), u_input.a) | vec3<u32>(4197u, u_input.b & u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(18388u, 25831u, 44896u, 4918u), vec4<u32>(u_input.b, 34406u, 52431u, u_input.a))), ~abs(vec3<u32>(u_input.b, u_input.a, 10299u)), vec3<bool>(true, any(vec3<bool>(true, true, true)), all(vec4<bool>(true, false, true, true)))) ^ ~(~_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, u_input.a, 41944u), vec3<u32>(u_input.b, u_input.a, 18839u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, u_input.b, ~_wgslsmith_mult_u32(_wgslsmith_div_u32(~u_input.b, ~u_input.b), 4294967295u), i32(-1i) * -(43380i ^ _wgslsmith_mod_i32(var_0, var_0)), 180f);
}


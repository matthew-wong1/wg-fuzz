struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(-73652i, abs(firstLeadingBit(_wgslsmith_sub_i32(2251i, _wgslsmith_div_i32(-1i, 12713i)))));
    let var_1 = vec4<u32>(u_input.b, ~u_input.a.x, 72040u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~(vec3<u32>(137445u, u_input.b, 1u) ^ vec3<u32>(37208u, u_input.a.x, u_input.c)), ~vec3<u32>(u_input.a.x, u_input.a.x, 1u)), ~4294967295u));
    var var_2 = false;
    var var_3 = !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(0u < u_input.c, select(false, false, false)), any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)))), !any(vec2<bool>(true, false)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~reverseBits(~51375u)));
}


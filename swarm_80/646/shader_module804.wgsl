struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: u32,
    d: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: i32,
    d: u32,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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
    var var_0 = min(u_input.a, u_input.a);
    var var_1 = all(vec4<bool>(true, true, true, true));
    var_1 = true;
    let var_2 = u_input.b;
    var var_3 = ~(~firstTrailingBit(~reverseBits(vec3<u32>(var_2, 1u, 8926u))));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, ~vec3<u32>(~abs(u_input.b), ~u_input.b, ~_wgslsmith_mult_u32(50615u, 1u)), -671f, vec4<u32>(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 32225u, u_input.a, var_2), ~vec4<u32>(4294967295u, u_input.b, 1u, var_2))), _wgslsmith_dot_vec2_u32(var_3.xy, _wgslsmith_sub_vec2_u32(firstLeadingBit(var_3.xx), vec2<u32>(0u, var_2))), 16654u, ~var_3.x), select(var_2, _wgslsmith_clamp_u32(0u, var_3.x, ~1u) >> (1u % 32u), !any(vec2<bool>(true, false))));
}


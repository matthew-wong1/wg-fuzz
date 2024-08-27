struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> u32 {
    var var_0 = select(vec3<u32>(1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(select(u_input.a.zyz, arg_1.b.yzw, vec3<bool>(false, true, false)), vec3<u32>(u_input.a.x, u_input.a.x, arg_1.a)), max(~4294967295u, ~0u)), ~(~4294967295u)), arg_1.b.xyx, !vec3<bool>(_wgslsmith_f_op_f32(trunc(arg_3)) <= -1000f, true, true));
    var_0 = reverseBits(u_input.a.yyz ^ vec3<u32>(arg_1.a, ~(var_0.x & var_0.x), _wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, u_input.a.x), 14770u)));
    let var_1 = Struct_1(0u, arg_0.b, i32(-1i) * -2147483647i);
    var var_2 = Struct_1(firstLeadingBit(4294967295u), ~(~vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(70023u, 14770u), vec2<u32>(0u, u_input.d.x)), 1u, var_1.a << (u_input.d.x % 32u))), ~_wgslsmith_clamp_i32(1i, i32(-1i) * -1i, -1i));
    let var_3 = reverseBits(_wgslsmith_mod_u32(75024u, arg_1.a));
    return 0u;
}

fn func_2() -> Struct_1 {
    var var_0 = ~u_input.d.x;
    var var_1 = Struct_1(_wgslsmith_div_u32(func_3(Struct_1(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), u_input.a, -30696i), Struct_1(u_input.a.x, ~u_input.a, -9525i ^ u_input.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1802f - -1000f), -812f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -487f))), ~0u), min(u_input.a, ~abs(~u_input.a)), -49540i);
    var_0 = _wgslsmith_div_u32(firstTrailingBit(~(1u & u_input.d.x)) | ~(_wgslsmith_mult_u32(u_input.a.x, var_1.b.x) >> (17630u % 32u)), _wgslsmith_div_u32(33149u, u_input.d.x));
    var_0 = ~var_1.b.x & _wgslsmith_div_u32(~_wgslsmith_sub_u32(25038u, u_input.d.x) << (_wgslsmith_div_u32(u_input.d.x, _wgslsmith_add_u32(var_1.a, var_1.b.x)) % 32u), _wgslsmith_dot_vec4_u32(~var_1.b, vec4<u32>(var_1.b.x, 48099u, var_1.b.x, 82418u) << (~u_input.a % vec4<u32>(32u))));
    var_0 = _wgslsmith_div_u32(func_3(Struct_1(68046u, vec4<u32>(53357u, 0u, var_1.b.x, u_input.d.x), -var_1.c), Struct_1(u_input.a.x, vec4<u32>(var_1.b.x, u_input.a.x, 32795u, u_input.a.x) >> (var_1.b % vec4<u32>(32u)), ~1i), _wgslsmith_f_op_f32(floor(-206f)), -567f) << (_wgslsmith_add_u32(_wgslsmith_add_u32(~u_input.a.x, var_1.b.x), var_1.b.x) % 32u), _wgslsmith_mod_u32(_wgslsmith_sub_u32(var_1.a, _wgslsmith_add_u32(87648u, u_input.a.x)), ~1u));
    return Struct_1(func_3(Struct_1(u_input.a.x, var_1.b, ~countOneBits(0i)), Struct_1(4294967295u, (var_1.b >> (vec4<u32>(0u, 0u, 48822u, u_input.a.x) % vec4<u32>(32u))) | vec4<u32>(0u, 6381u, 0u, 0u), _wgslsmith_sub_i32(u_input.b, u_input.b) << (~var_1.a % 32u)), -202f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-891f, 603f) - _wgslsmith_f_op_f32(max(-1122f, 485f))), -759f))), u_input.a, u_input.b);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    return Struct_1(u_input.a.x, vec4<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(~1u, max(u_input.a.x, arg_0.b.x)), 61652u), u_input.a.x, 4294967295u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(28105u, 6053u), arg_0.a)), i32(-1i) * -func_2().c);
}

fn func_1() -> f32 {
    let var_0 = -6897i;
    let var_1 = func_4(func_2());
    let var_2 = var_1.b.x;
    var var_3 = var_1;
    let var_4 = ~vec4<u32>(_wgslsmith_mod_u32(~_wgslsmith_mult_u32(4294967295u, var_3.a), ~min(4294967295u, 34118u)), var_1.a, ~43222u, ~firstTrailingBit(~u_input.d.x));
    return 435f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.x;
    var var_1 = u_input.a.xyy;
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-430f, -375f, -323f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-245f, _wgslsmith_f_op_f32(-1572f + -846f), _wgslsmith_f_op_f32(func_1())))));
    var var_3 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1173f) * _wgslsmith_f_op_f32(sign(var_2.x))) - 200f) >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(599f, var_2.x))))));
    let var_4 = _wgslsmith_clamp_u32(1u, var_1.x, ~(0u << (u_input.d.x % 32u)));
    var_1 = max(u_input.a.yyy, reverseBits(select(~u_input.a.zww, vec3<u32>(0u, 11266u, u_input.d.x), any(vec2<bool>(true, false))) | ~(vec3<u32>(15031u, 40161u, var_4) & u_input.a.wwy)));
    var var_5 = min(vec2<u32>(u_input.a.x, var_0), var_1.xx);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x >> (63956u % 32u), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-751f, -968f), _wgslsmith_f_op_f32(f32(-1f) * -281f), _wgslsmith_f_op_f32(101f - -307f), _wgslsmith_f_op_f32(-var_2.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1055f, var_2.x, 394f, var_2.x))))));
}


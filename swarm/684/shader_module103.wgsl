struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: bool,
    d: vec4<bool>,
    e: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_5, arg_2: vec4<bool>) -> f32 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.b.x, arg_1.b.x))) - vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(-arg_1.b.x))) * _wgslsmith_f_op_vec2_f32(floor(arg_1.a.wz)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(arg_1.a.zy - vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1087f, _wgslsmith_f_op_f32(688f * arg_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -791f)))), 314f));
    var var_3 = arg_0;
    let var_4 = var_0.a.yxy ^ var_0.a.yzy;
    return var_2.x;
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1478f, 2719f)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-850f, -1205f) + vec2<f32>(457f, -1000f)))) - vec2<f32>(_wgslsmith_f_op_f32(ceil(590f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1385f, 1652f, arg_0.x)) * -1241f))));
    let var_1 = vec4<bool>(!arg_0.x, arg_0.x, _wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.c, 17081u, 38579u, u_input.c), vec4<u32>(15870u, 0u, 4294967295u, 14706u) >> (vec4<u32>(4294967295u, 46653u, u_input.c, 8228u) % vec4<u32>(32u))), select(~vec4<u32>(u_input.c, 1u, 31782u, 4294967295u), select(vec4<u32>(u_input.c, 35170u, u_input.c, u_input.c), vec4<u32>(25793u, u_input.c, u_input.c, 55838u), arg_0.x), false)) == abs(~firstLeadingBit(u_input.c)), arg_0.x);
    var var_2 = _wgslsmith_div_u32(~(~18450u), abs(select(u_input.c, 59156u, var_1.x) ^ (1u << (0u % 32u)))) & u_input.c;
    var var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1733f, var_0.x, var_0.x, var_0.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<f32>(-2173f, var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -491f) * vec4<f32>(-1281f, 205f, 1032f, var_0.x))))))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1212f)));
    return abs(_wgslsmith_add_u32(_wgslsmith_clamp_u32(~u_input.c, _wgslsmith_mult_u32(7882u, u_input.c), firstTrailingBit(4294967295u)) | 11938u, min(abs(_wgslsmith_sub_u32(u_input.c, u_input.c)), 4294967295u)));
}

fn func_1(arg_0: vec3<bool>) -> vec3<f32> {
    let var_0 = vec2<f32>(-2090f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1054f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1957f, 155f)), _wgslsmith_f_op_f32(func_2(Struct_3(vec4<i32>(1i, u_input.b.x, u_input.a.x, 1i), Struct_1(18138u), true, vec4<bool>(true, true, false, arg_0.x), 4294967295u), Struct_5(vec4<f32>(349f, -465f, -184f, 1000f), vec2<f32>(697f, -463f), arg_0.yz), vec4<bool>(arg_0.x, true, arg_0.x, true)))))))));
    var var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(289f, var_0.x, -254f, 1288f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1660f, var_0.x, var_0.x, -1959f))), select(vec4<bool>(arg_0.x, false, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(true, arg_0.x, false, arg_0.x))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(trunc(var_0.x)), var_0.x, _wgslsmith_f_op_f32(trunc(520f))), vec4<f32>(2055f, var_0.x, 575f, var_0.x), !(!vec4<bool>(arg_0.x, true, true, true)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(-670f, var_0.x), var_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0 - _wgslsmith_f_op_vec2_f32(vec2<f32>(1047f, -753f) * var_0)) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1046f))), !arg_0.yz);
    var_1 = Struct_5(var_1.a, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), -1132f), vec2<f32>(436f, var_0.x))))), !select(vec2<bool>(arg_0.x, true), var_1.c, all(!arg_0.zy)));
    var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a)), var_1.a, !(!(!vec4<bool>(var_1.c.x, var_1.c.x, true, arg_0.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_1.a.x, -533f)))), _wgslsmith_f_op_f32(f32(-1f) * -465f))), vec2<bool>(true, arg_0.x));
    let var_2 = Struct_4(u_input.a.x, Struct_2(Struct_1(~func_3(vec4<bool>(false, true, false, var_1.c.x))), var_1.a.wzz, Struct_1(4294967295u), firstLeadingBit(countOneBits(vec3<i32>(-14171i, u_input.a.x, u_input.b.x)))));
    return vec3<f32>(var_2.b.b.x, -487f, _wgslsmith_f_op_f32(-var_2.b.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(217f, _wgslsmith_f_op_f32(-2126f - 782f), 532f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-273f, 750f, 2226f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(418f, 1010f, -489f)) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-554f, 739f, -492f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(max(515f, 813f)), _wgslsmith_f_op_f32(558f - 605f), 974f), _wgslsmith_f_op_vec3_f32(func_1(vec3<bool>(true, false, false)))))));
    let var_1 = Struct_4(reverseBits(2147483647i) ^ min(u_input.b.x, select(countOneBits(1i), -u_input.a.x, true)), Struct_2(Struct_1((u_input.c | u_input.c) | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, 4294967295u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(332f)), 200f, _wgslsmith_f_op_f32(ceil(var_0.x)))), Struct_1(35160u & u_input.c), vec3<i32>(1i, -1i, -(-2147483647i ^ u_input.b.x))));
    let var_2 = select(select(vec3<bool>(u_input.c <= reverseBits(0u), any(vec3<bool>(false, false, true)), true), vec3<bool>(true, !any(vec4<bool>(false, false, true, false)), var_1.b.a.a > var_1.b.a.a), select(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), (var_0.x > -1396f) || (11768i == var_1.b.d.x))), !vec3<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true)), true, any(select(vec2<bool>(false, true), vec2<bool>(false, true), false))), true);
    var var_3 = vec4<bool>(true, _wgslsmith_div_f32(1970f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(Struct_3(vec4<i32>(var_1.b.d.x, u_input.b.x, var_1.b.d.x, 1i), var_1.b.a, true, vec4<bool>(true, false, false, false), 4294967295u), Struct_5(vec4<f32>(var_0.x, var_0.x, var_1.b.b.x, var_1.b.b.x), var_1.b.b.zy, vec2<bool>(var_2.x, false)), vec4<bool>(var_2.x, true, var_2.x, false))), var_0.x))) >= _wgslsmith_f_op_f32(-864f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-504f)) - var_1.b.b.x)), _wgslsmith_mult_u32(~(~66833u), u_input.c) > u_input.c, var_2.x);
    let var_4 = Struct_1(max(0u, u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.b.x, var_1.b.b.yx);
}


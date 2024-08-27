struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: f32,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1>;

var<private> global1: array<u32, 28> = array<u32, 28>(37437u, 35037u, 7623u, 40500u, 1u, 0u, 0u, 2935u, 22279u, 42599u, 0u, 64527u, 4294967295u, 4294967295u, 68942u, 0u, 1u, 17938u, 1u, 26001u, 1u, 0u, 1u, 8210u, 74045u, 4294967295u, 63912u, 42332u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(792f)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(497f, -1482f)))))), 52143u);
    let var_1 = var_0;
    let var_2 = select(!select(vec4<bool>(false, select(false, true, true), true, true), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true)), all(vec4<bool>(false, false, false, true)))), !vec4<bool>(all(vec4<bool>(true, false, false, true)), select(true, true, true), true, select(true, true, false)), !vec4<bool>(any(vec3<bool>(false, false, false)), true, all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true))));
    var var_3 = Struct_3(4294967295u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a, -681f)))))));
    var var_4 = countOneBits(vec3<i32>(min(firstLeadingBit(2586i), -59023i), 1i, ~countOneBits(47502i)));
    return select(vec4<bool>(any(vec2<bool>(!var_2.x, all(vec3<bool>(var_2.x, true, var_2.x)))), var_2.x, (true | all(var_2.xxz)) || false, var_2.x), vec4<bool>(any(var_2), select((var_2.x & var_2.x) | !var_2.x, true, !var_2.x | all(vec4<bool>(true, false, var_2.x, var_2.x))), !any(select(vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(var_2.x, var_2.x, var_2.x))), all(var_2)), !any(vec3<bool>(var_3.a == global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12110u, 1u)], 28u)], true, true)));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(arg_2.c.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.c.x))))));
    var var_1 = -15543i;
    let var_2 = ~vec4<i32>(arg_2.d.x, _wgslsmith_mod_i32(arg_2.d.x, _wgslsmith_dot_vec3_i32(arg_2.d, arg_2.d)) & -_wgslsmith_dot_vec2_i32(arg_2.d.xy, arg_2.d.zz), 1i, ~firstTrailingBit(arg_2.b.c));
    var_0 = _wgslsmith_f_op_f32(trunc(arg_2.c.x));
    var var_3 = arg_2.a.xx;
    return arg_2.b.a;
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = Struct_1(func_4(min(~abs(29808u), ~firstLeadingBit(global0[_wgslsmith_index_u32(69267u, 1u)])), ~0u, Struct_2(vec3<bool>(true, true, true), Struct_1(func_3(), vec4<bool>(true, true, true, true), i32(-1i) * -1883i), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(693f, -1793f), vec2<f32>(arg_0, arg_0))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0, 233f), vec2<f32>(arg_0, arg_0))))), -firstTrailingBit(vec3<i32>(19230i, -2147483647i, 0i)))), vec4<bool>(all(vec3<bool>(true, true, true)), true, !(!select(false, false, false)), true), 2147483647i);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1252f);
    let var_2 = _wgslsmith_add_u32(~0u, countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.zxw, ~vec3<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], 4294967295u)), 1u)]));
    let var_3 = Struct_2(!func_3().zyy, Struct_1(var_0.b, !var_0.a, select(var_0.c, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.c, var_0.c, var_0.c), vec3<i32>(-1i, var_0.c, var_0.c)), -vec3<i32>(var_0.c, var_0.c, -37374i)), false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -379f)) - vec2<f32>(-292f, -1730f))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0, arg_0), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * vec2<f32>(arg_0, arg_0)) - _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, -1000f), vec2<f32>(-1539f, arg_0)))))), firstTrailingBit(vec3<i32>(-1i, var_0.c, var_0.c)));
    let var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-610f, arg_0, _wgslsmith_f_op_f32(max(1649f, 563f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-820f, arg_0, arg_0) * vec3<f32>(arg_0, 141f, arg_0)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1538f, var_3.c.x, arg_0))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1401f, -137f, arg_0) - vec3<f32>(var_3.c.x, arg_0, arg_0)) * vec3<f32>(-1062f, 105f, arg_0)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0, 630f, var_3.c.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, var_3.c.x, var_3.c.x) - vec3<f32>(var_3.c.x, arg_0, arg_0))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0));
}

fn func_1(arg_0: i32, arg_1: vec2<u32>) -> f32 {
    global0 = array<u32, 1>();
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1409f))), _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, arg_1.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(55677u, 1u)], 28u)], 0u), ~vec4<u32>(44969u, 0u, arg_1.x, u_input.a.x)), vec4<u32>(1u, arg_1.x, firstLeadingBit(countOneBits(17500u)), _wgslsmith_div_u32(~arg_1.x, max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3060u, 1u)], 1u)], 678u)))));
    var_0 = Struct_4(_wgslsmith_f_op_f32(func_2(-948f)), countOneBits(_wgslsmith_add_u32(_wgslsmith_mult_u32(countOneBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 28u)], 28u)]), global1[_wgslsmith_index_u32(58u >> (global0[_wgslsmith_index_u32(4294967295u, 1u)] % 32u), 28u)]), ~(~0u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.a, -177f), vec2<f32>(var_0.a, 630f))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1128f, 1776f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1324f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-811f, var_0.a) + vec2<f32>(1631f, var_0.a))), all(vec2<bool>(true, true))))));
    global1 = array<u32, 28>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.x * -470f), 1515f)) * 298f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-(~(reverseBits(vec3<i32>(-12320i, 0i, -1i)) | _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 40799i, 1i), vec3<i32>(-3280i, -24809i, 0i), vec3<i32>(0i, 2782i, 83174i)))));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-379f, _wgslsmith_f_op_f32(func_1(var_0.x, u_input.b.zy)))))));
    var var_2 = firstLeadingBit(firstTrailingBit(~u_input.a.x));
    var var_3 = Struct_3(global0[_wgslsmith_index_u32(~65839u, 1u)], 586f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(332f + -1184f)) - 748f));
    var var_4 = vec2<u32>(_wgslsmith_clamp_u32(reverseBits(4294967295u), global1[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(firstLeadingBit((var_3.a & 13552u) & var_3.a), 28u)]), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(64686u, 1u)], 10649u));
    var var_5 = _wgslsmith_f_op_f32(-212f * 280f);
    global1 = array<u32, 28>();
    let var_6 = select(vec3<bool>(false, any(func_4(~u_input.b.x, u_input.a.x, Struct_2(vec3<bool>(true, false, true), Struct_1(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), var_0.x), vec2<f32>(var_3.c, var_3.c), vec3<i32>(var_0.x, var_0.x, 5877i))).ww), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1221f * -1759f) + _wgslsmith_f_op_f32(-var_3.b)) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3.b - var_3.b)))), !select(select(vec3<bool>(false, false, false), func_4(var_3.a, global1[_wgslsmith_index_u32(var_3.a, 28u)], Struct_2(vec3<bool>(false, false, false), Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), 98963i), vec2<f32>(469f, -1550f), vec3<i32>(var_0.x, 46215i, 1i))).xxx, vec3<bool>(true, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, all(vec2<bool>(true, false)))), !(var_3.b <= 1420f));
    let var_7 = Struct_4(_wgslsmith_f_op_f32(-var_3.b), u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<i32>(var_0.x, var_0.x, ~1i), -(_wgslsmith_clamp_vec3_i32(vec3<i32>(-4917i, 45125i, 0i), vec3<i32>(var_0.x, var_0.x, 2147483647i), vec3<i32>(var_0.x, var_0.x, -11642i)) | select(vec3<i32>(var_0.x, 2147483647i, var_0.x), vec3<i32>(var_0.x, var_0.x, -1i), var_6.x)), false), var_0.x, u_input.b.wy, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -883f) + var_7.a), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-504f, var_7.a), _wgslsmith_f_op_f32(-var_7.a))), _wgslsmith_f_op_f32(exp2(var_3.c)), var_3.c)), firstLeadingBit(select(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.c, vec2<u32>(var_3.a, global1[_wgslsmith_index_u32(4294967295u, 28u)])), vec2<u32>(var_3.a, 61478u)), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)] | u_input.c.x, !var_6.x)));
}


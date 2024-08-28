struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: Struct_3,
    d: bool,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    var var_0 = abs(max(~1u, 18734u));
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-arg_0.xyy), !vec4<bool>(true, !any(vec3<bool>(false, false, false)), any(vec3<bool>(true, true, true)), false), Struct_3(arg_0.x), true, vec3<u32>(abs(firstTrailingBit(68559u) << (_wgslsmith_add_u32(26302u, 29410u) % 32u)), reverseBits(countOneBits(0u)), 58382u));
    let var_2 = abs(25216u);
    let var_3 = firstLeadingBit(~u_input.b.x);
    var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-arg_0.yyy), !var_1.b, var_1.c, false, reverseBits(vec3<u32>(1u, abs(_wgslsmith_div_u32(4294967295u, var_2)), max(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_2, 4294967295u, var_2), vec4<u32>(var_2, 0u, 1u, 4294967295u)), ~var_2))));
    return _wgslsmith_clamp_u32(abs(_wgslsmith_mult_u32(~19549u, _wgslsmith_clamp_u32(~var_2, 33569u, min(5710u, 1u)))), max(var_1.e.x | firstLeadingBit(select(var_2, var_1.e.x, var_1.d)), _wgslsmith_add_u32(var_2, ~_wgslsmith_dot_vec3_u32(var_1.e, vec3<u32>(4294967295u, 0u, var_2)))), max(~1u, 1u));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: Struct_3) -> vec4<u32> {
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.c.a, arg_0.a.x, _wgslsmith_f_op_f32(arg_2.a * -1166f)))) - _wgslsmith_f_op_vec3_f32(select(arg_0.a, arg_0.a, (arg_0.e.x << (4294967295u % 32u)) == max(arg_0.e.x, 0u)))), select(select(select(vec4<bool>(true, true, arg_0.d, true), vec4<bool>(true, false, false, arg_0.d), !vec4<bool>(arg_0.d, true, false, arg_0.b.x)), !(!vec4<bool>(arg_1.x, arg_0.b.x, arg_1.x, true)), !vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x)), !select(select(arg_0.b, vec4<bool>(arg_0.b.x, arg_1.x, arg_0.d, arg_1.x), false), vec4<bool>(true, false, arg_0.d, false), arg_0.b), true), Struct_3(arg_0.c.a), all(vec2<bool>(!(!arg_0.b.x), !arg_0.b.x)), vec3<u32>(~(~1u), _wgslsmith_add_u32(_wgslsmith_div_u32(select(4294967295u, 64478u, true), ~arg_0.e.x), ~arg_0.e.x), _wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(reverseBits(22613u), arg_0.e.x ^ arg_0.e.x), ~11126u)));
    let var_1 = ~var_0.e.x;
    var_0 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(floor(1012f));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(max(-1125f, arg_0.c.a)));
    return ~vec4<u32>(~(~arg_0.e.x) | func_3(vec4<f32>(1239f, var_0.c.a, -1453f, 747f)), ~var_1, _wgslsmith_add_u32(~firstLeadingBit(arg_0.e.x), arg_0.e.x), ~(~arg_0.e.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_4, arg_3: u32) -> f32 {
    var var_0 = abs(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_3, 13554u, 0u) >> (vec3<u32>(arg_1.x, 87966u, 0u) % vec3<u32>(32u)), select(arg_2.e, arg_1.zwy, vec3<bool>(false, arg_0.a, true))), arg_1.yzw));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-425f, arg_2.a.x, 931f, 1103f), vec4<f32>(arg_2.c.a, arg_2.a.x, 971f, 1159f), arg_2.d))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.x, arg_2.c.a, arg_2.c.a, -936f)))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-624f, arg_2.c.a, -1422f, arg_2.a.x)))))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-924f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_2.a.x, arg_2.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1045f))), arg_2.a.x), vec4<f32>(-778f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1088f, 2219f))), arg_2.c.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_2.a.x, 640f)))))), arg_0.a));
    let var_2 = Struct_2(5748i, Struct_1(arg_0.a), select(!(!arg_2.b.wzw), select(!select(vec3<bool>(arg_0.a, arg_2.d, arg_2.d), arg_2.b.ywx, vec3<bool>(true, true, arg_2.b.x)), arg_2.b.yww, vec3<bool>(true, true, true)), arg_2.b.zyw), Struct_1(false));
    var var_3 = (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(-arg_2.a.x), any(var_2.c))) * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.x, arg_2.a.x), var_1.x))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(arg_2.a.x + -1610f), var_2.d.a & arg_0.a)) * _wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.a.x, 386f), _wgslsmith_f_op_f32(round(arg_2.c.a))))) && (_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1481f)), 253f) * var_1.x) >= -867f);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(754f * _wgslsmith_f_op_f32(arg_2.a.x * var_1.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + arg_2.c.a)) + var_1.x) - _wgslsmith_f_op_f32(abs(-217f))));
}

fn func_5(arg_0: f32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))), _wgslsmith_f_op_f32(round(arg_0)))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(-609f - arg_0), 669f, _wgslsmith_f_op_f32(-arg_0)))));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-483f, arg_0))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 + var_0.x), _wgslsmith_f_op_f32(-1022f + var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + var_0.x))), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), arg_0 == arg_0))), vec2<f32>(arg_0, var_0.x));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(-402f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
    let var_2 = ~(38305u >> (~4294967295u % 32u));
    let var_3 = _wgslsmith_f_op_f32(step(1408f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * 1223f) * _wgslsmith_f_op_f32(f32(-1f) * -1513f)) - 1313f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-743f - var_1.x)))));
    return Struct_3(-1000f);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<bool>) -> vec2<u32> {
    let var_0 = Struct_1(!all(arg_1.xxw));
    let var_1 = vec4<bool>(arg_1.x, false, !arg_1.x, all(arg_1.ww));
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.c.x >> (88371u % 32u), 2147483647i), -1i);
    var var_3 = select(var_1.zx, arg_1.wy, vec2<bool>(true, true));
    var var_4 = func_5(_wgslsmith_f_op_f32(func_4(var_0, ~_wgslsmith_mult_vec4_u32(func_2(Struct_4(vec3<f32>(958f, -660f, 226f), vec4<bool>(arg_1.x, true, var_1.x, true), Struct_3(2310f), false, vec3<u32>(arg_0.x, arg_0.x, arg_0.x)), vec3<bool>(var_1.x, var_0.a, arg_1.x), Struct_3(1465f)), select(vec4<u32>(1u, arg_0.x, 35444u, arg_0.x), arg_0, arg_1)), Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(1342f, 1281f, -246f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1215f, -164f, -1478f))), var_1, Struct_3(_wgslsmith_f_op_f32(floor(-216f))), !(true & var_0.a), vec3<u32>(arg_0.x & arg_0.x, ~arg_0.x, countOneBits(0u))), abs(_wgslsmith_mult_u32(~arg_0.x, arg_0.x)))));
    return firstLeadingBit(arg_0.xx);
}

fn func_6(arg_0: i32, arg_1: u32) -> Struct_1 {
    var var_0 = ~(select(~abs(vec2<u32>(1u, 49999u)), vec2<u32>(1u, 4294967295u), true) >> ((~vec2<u32>(1u, 1u) << (vec2<u32>(27653u, arg_1) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_1 = select(!any(vec3<bool>(true, true, true)), true, true || (_wgslsmith_sub_i32(arg_0, -1i) >= arg_0));
    let var_2 = !any(!vec2<bool>(var_1, var_0.x != arg_1));
    var_0 = select(firstLeadingBit(vec2<u32>(select(_wgslsmith_mod_u32(0u, arg_1), _wgslsmith_mod_u32(arg_1, var_0.x), var_1), ~25056u)), ~func_2(Struct_4(vec3<f32>(-1824f, 474f, -241f), vec4<bool>(var_1, false, true, var_1), Struct_3(-543f), all(vec3<bool>(var_1, var_1, false)), firstTrailingBit(vec3<u32>(41700u, arg_1, arg_1))), select(select(vec3<bool>(false, true, true), vec3<bool>(true, var_2, var_1), var_1), select(vec3<bool>(var_2, false, false), vec3<bool>(var_1, true, var_1), var_2), select(vec3<bool>(var_2, false, var_1), vec3<bool>(var_1, var_2, true), vec3<bool>(true, false, true))), Struct_3(-309f)).wz, !(false | var_1));
    var var_3 = ~21079u;
    return Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(~0u, func_2(Struct_4(vec3<f32>(449f, -1000f, 490f), vec4<bool>(false, var_1, var_2, var_1), Struct_3(-1288f), false, vec3<u32>(4294967295u, var_0.x, 13586u)), vec3<bool>(false, var_2, false), Struct_3(155f)).x), ~vec2<u32>(1u, var_0.x) >> (firstLeadingBit(vec2<u32>(arg_1, arg_1)) % vec2<u32>(32u))) > ~0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(1u);
    var_0 = countOneBits(reverseBits(~firstTrailingBit(1u))) << (~reverseBits(1u) % 32u);
    var var_1 = _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, firstLeadingBit(0u)), ~select(vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 4294967295u), true) ^ vec2<u32>(56616u << (0u % 32u), 8525u)) >> (84795u % 32u);
    let var_2 = -39556i;
    let var_3 = func_6(abs(0i), ~countOneBits(_wgslsmith_dot_vec2_u32(func_1(vec4<u32>(63401u, 0u, 4294967295u, 49294u), vec4<bool>(true, false, false, true)), vec2<u32>(44360u, 22039u))));
    var var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(889f, -2080f)), _wgslsmith_f_op_f32(trunc(426f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(972f, 371f) * vec2<f32>(-593f, 872f)))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(133f, -693f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(405f, 1000f) * vec2<f32>(-1285f, -614f))))), false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1783f, -1398f) - vec2<f32>(-433f, 140f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-444f, -1000f))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1032f, -290f)))), vec2<f32>(361f, _wgslsmith_div_f32(238f, 390f)))));
    var_4 = vec2<f32>(-1188f, _wgslsmith_f_op_f32(var_4.x - var_4.x));
    let var_5 = Struct_4(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_4.x, -382f, 1334f), vec3<f32>(var_4.x, var_4.x, -1441f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(726f, var_4.x, var_4.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(312f, var_4.x, var_4.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1454f, -569f, 598f) + vec3<f32>(var_4.x, var_4.x, var_4.x)))))), vec4<bool>(false & var_3.a, select(true, true, all(vec3<bool>(var_3.a, false, true))), var_3.a, var_4.x <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-918f)), _wgslsmith_f_op_f32(ceil(-1553f)))), func_5(var_4.x), all(!(!select(vec2<bool>(true, var_3.a), vec2<bool>(var_3.a, var_3.a), var_3.a))), min(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, _wgslsmith_mult_u32(1u, ~4294967295u), _wgslsmith_dot_vec3_u32(~vec3<u32>(26001u, 116381u, 0u), abs(vec3<u32>(0u, 31501u, 1u))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<u32>(32040u, var_5.e.x, ~4294967295u), vec3<u32>(28202u, ~(~var_5.e.x), 1u), var_3.a & var_3.a), var_5.a.x, var_5.e.x);
}


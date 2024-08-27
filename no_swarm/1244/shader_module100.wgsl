struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32, arg_1: vec3<f32>) -> vec3<f32> {
    let var_0 = ~(-1i);
    var var_1 = _wgslsmith_f_op_f32(-arg_1.x);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(169f)));
    var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(abs(arg_0));
    return vec3<f32>(871f, _wgslsmith_f_op_f32(arg_1.x * var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 - 1055f) + _wgslsmith_f_op_f32(-524f - var_2)) + var_2)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec4<u32>) -> bool {
    var var_0 = _wgslsmith_mod_u32(50843u | arg_2.x, firstLeadingBit(~_wgslsmith_add_u32(max(arg_2.x, arg_0.e.x), countOneBits(1u))));
    var_0 = 4213u;
    var_0 = 23391u;
    var var_1 = arg_0;
    let var_2 = vec3<bool>(any(vec2<bool>(true, true)), false, var_1.d);
    return true;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec4<f32>, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = Struct_4(Struct_3(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(arg_2.zwy)), arg_2.wxx, vec3<bool>(true, false, false))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-arg_2.zww)))), -829f, Struct_1(~arg_3.e ^ arg_3.e, arg_2.x, countOneBits(countOneBits(u_input.e.x)), false, u_input.e)), select(!vec3<bool>(true, select(arg_3.d, arg_3.d, false), arg_1 && true), vec3<bool>(arg_3.d, any(!vec4<bool>(arg_1, true, arg_1, false)), false), select(!(!vec3<bool>(false, true, arg_1)), !vec3<bool>(false, true, arg_1), !(680f <= arg_3.b))), arg_3);
    var var_1 = -310f;
    let var_2 = Struct_4(var_0.a, vec3<bool>(select(var_0.c.d, (false != var_0.a.a) && (true & arg_3.d), !all(var_0.b)), true, select(_wgslsmith_mod_i32(-1635i, 21620i), u_input.c.x, func_3(arg_3, arg_3.d, vec4<u32>(4294967295u, 4294967295u, 4506u, var_0.c.c))) <= u_input.c.x), Struct_1(_wgslsmith_add_vec2_u32(select(var_0.a.d.a, _wgslsmith_mult_vec2_u32(var_0.a.d.e, arg_3.e), false), firstLeadingBit(arg_3.e) >> (vec2<u32>(1u, 3608u) % vec2<u32>(32u))), 1000f, _wgslsmith_add_u32(arg_0, max(1u ^ arg_0, ~1u)), any(var_0.b.zy), select(_wgslsmith_div_vec2_u32(~vec2<u32>(var_0.a.d.c, 20425u), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_3.c, 4294967295u), vec2<u32>(4294967295u, u_input.a))), ~u_input.d.xz, true)));
    var_1 = _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(select(1219f, _wgslsmith_f_op_f32(-arg_3.b), all(select(vec2<bool>(var_2.a.d.d, true), var_0.b.zy, !var_0.b.yz)))));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - -349f) - arg_2.x) - _wgslsmith_f_op_f32(-var_2.c.b))), -623f);
    return min(countOneBits(~vec2<u32>(22012u, 35336u << (u_input.d.x % 32u))), ~arg_3.e);
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_3(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-198f, 913f, -394f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-472f, 233f, -686f) - vec3<f32>(938f, 303f, 744f)))) - vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1490f - -366f), 513f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1168f, -724f)), 2605f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(290f, -421f, false))))), 1882f, Struct_1(func_4(~abs(u_input.a), true, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-268f, -475f, 1348f, 491f), vec4<f32>(847f, -1000f, 831f, -169f)))), Struct_1(u_input.e, -1073f, 1u, func_3(Struct_1(vec2<u32>(u_input.a, u_input.e.x), -448f, u_input.e.x, false, u_input.d.xz), false, vec4<u32>(u_input.d.x, 37462u, 4294967295u, 46852u)), u_input.d.zy)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-693f)), _wgslsmith_div_f32(280f, -565f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(758f * 950f) - -410f)), ~u_input.e.x << (u_input.d.x % 32u), select(all(vec3<bool>(false, true, false)), true, true), u_input.d.xx));
    let var_1 = vec2<bool>(var_0.a, var_0.a);
    var var_2 = Struct_4(var_0, !(!(!vec3<bool>(false, var_0.a, false))), Struct_1(u_input.e, 1297f, ~u_input.a, false & var_1.x, ~(~min(u_input.e, vec2<u32>(1u, 1u)))));
    let var_3 = vec3<u32>(48701u, min(_wgslsmith_div_u32(4294967295u, 53437u), _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(11313u, u_input.e.x, 0u))), ~28743u) >> (~(~(~u_input.d)) % vec3<u32>(32u));
    var_2 = Struct_4(Struct_3(any(vec3<bool>(false, true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-995f, var_2.c.b, var_0.c))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -368f)), Struct_1(countOneBits(~u_input.d.xx), _wgslsmith_f_op_f32(f32(-1f) * -2060f), ~firstTrailingBit(var_0.d.a.x), func_4(0u, true, vec4<f32>(var_0.b.x, -333f, var_0.b.x, var_2.a.d.b), Struct_1(var_0.d.a, 1664f, var_2.c.e.x, var_2.b.x, vec2<u32>(var_0.d.e.x, var_2.a.d.c))).x > ~44164u, vec2<u32>(~63313u, var_0.d.a.x))), !select(select(select(vec3<bool>(var_0.a, var_1.x, true), vec3<bool>(var_1.x, var_2.b.x, var_1.x), vec3<bool>(var_2.c.d, var_2.b.x, false)), select(var_2.b, vec3<bool>(true, var_2.b.x, false), true), select(var_0.d.d, var_1.x, true)), var_2.b, vec3<bool>(var_1.x, var_1.x, any(vec3<bool>(var_1.x, var_1.x, true)))), var_0.d);
    return var_2.a;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec3<i32>) -> vec3<f32> {
    let var_0 = u_input.d.x << (~_wgslsmith_sub_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.d.e.x, 61039u, u_input.d.x), vec3<u32>(u_input.e.x, u_input.d.x, arg_0.c.e.x))) % 32u);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(ceil(683f)));
    let var_2 = Struct_4(func_2(), !(!(!vec3<bool>(true, arg_0.a.a, arg_0.a.a))), func_2().d);
    var var_3 = var_2.b;
    var var_4 = arg_0.a.d.a;
    return vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_1.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.a))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a - arg_1.a), _wgslsmith_f_op_f32(floor(var_2.c.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-274f)) * _wgslsmith_f_op_f32(-111f - arg_1.a)))), _wgslsmith_f_op_f32(f32(-1f) * -668f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(78034u), _wgslsmith_dot_vec3_u32(u_input.d & _wgslsmith_mult_vec3_u32(u_input.d, u_input.d), vec3<u32>(u_input.e.x, u_input.d.x, u_input.e.x) ^ vec3<u32>(7611u, 23755u, u_input.e.x)), u_input.d.x), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 18681u, 1u), vec4<u32>(27150u, 43267u, u_input.d.x, u_input.d.x)), firstTrailingBit(0u), ~7383u), vec3<u32>(~u_input.d.x, u_input.e.x ^ u_input.a, abs(u_input.e.x))), _wgslsmith_mod_vec3_u32(~(vec3<u32>(0u, 0u, 7749u) << (vec3<u32>(u_input.a, u_input.a, u_input.e.x) % vec3<u32>(32u))), vec3<u32>(~u_input.e.x, u_input.e.x, ~u_input.e.x)), u_input.d));
    var var_1 = u_input.e.x;
    let var_2 = ~u_input.d.xx;
    var_1 = (((u_input.d.x ^ (u_input.a & var_2.x)) & ~(~u_input.e.x)) >> (1u % 32u)) << (0u % 32u);
    let var_3 = Struct_3(u_input.b == ((u_input.b | (-23833i | u_input.c.x)) | abs(_wgslsmith_sub_i32(36986i, 2147483647i))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-125f, -414f, 1000f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(607f, vec3<f32>(1072f, -585f, 504f))))), _wgslsmith_f_op_vec3_f32(func_5(Struct_4(func_2(), vec3<bool>(true, true, true), Struct_1(u_input.d.zx, -434f, 1u, false, vec2<u32>(var_2.x, var_2.x))), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -695f)), -vec3<i32>(45186i, u_input.c.x, u_input.c.x)))), func_2().c, func_2().d);
    let var_4 = Struct_4(Struct_3(var_3.a, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_5(Struct_4(Struct_3(false, vec3<f32>(var_3.b.x, 1372f, 280f), var_3.b.x, var_3.d), vec3<bool>(true, var_3.a, false), Struct_1(var_3.d.a, var_3.d.b, 1u, var_3.a, vec2<u32>(4294967295u, var_2.x))), Struct_2(-637f), -u_input.c)))), -539f, Struct_1(vec2<u32>(~0u, var_2.x), 596f, ~1u, var_3.d.d, ~vec2<u32>(var_3.d.a.x, var_3.d.a.x))), !vec3<bool>(true, !(!var_3.a), var_3.d.d), Struct_1(firstLeadingBit(~(u_input.e & var_3.d.a)), -1009f, var_2.x, !func_3(Struct_1(u_input.d.yy, var_3.c, 0u, var_3.a, var_2), true, ~vec4<u32>(var_3.d.c, 21014u, 56297u, 4294967295u)), vec2<u32>(countOneBits(_wgslsmith_mod_u32(22346u, 4294967295u)), ~_wgslsmith_mult_u32(var_3.d.a.x, 4294967295u))));
    var_1 = var_4.c.a.x;
    var_1 = var_4.a.d.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.b.yz - _wgslsmith_f_op_vec3_f32(func_1(873f, var_3.b)).xy))), vec3<f32>(var_3.d.b, var_3.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-822f)), _wgslsmith_f_op_f32(min(230f, -986f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(588f + var_3.c)))), _wgslsmith_f_op_vec3_f32(func_1(-634f, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(414f, 791f, true)) - -436f), var_4.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.c.b * -1985f))))).x);
}


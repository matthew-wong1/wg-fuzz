struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 9>;

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(2147483647i, vec4<f32>(-684f, 1647f, -1012f, -482f), false), Struct_1(-5144i, vec4<f32>(-1773f, -1251f, -564f, -1000f), false), Struct_1(i32(-2147483648), vec4<f32>(1000f, 376f, 114f, -860f), true), Struct_1(4891i, vec4<f32>(1494f, 1514f, 1124f, -2094f), true), Struct_1(2147483647i, vec4<f32>(490f, -277f, -978f, 383f), true), Struct_1(50604i, vec4<f32>(371f, -2752f, -680f, 1000f), true), Struct_1(-30502i, vec4<f32>(843f, 2056f, -192f, 2160f), false), Struct_1(270i, vec4<f32>(-173f, 782f, 103f, 579f), false), Struct_1(-29853i, vec4<f32>(-1465f, -402f, -945f, 574f), true), Struct_1(2147483647i, vec4<f32>(-1170f, 1000f, 664f, 1011f), false), Struct_1(2718i, vec4<f32>(-193f, -1000f, -945f, -309f), false), Struct_1(57489i, vec4<f32>(613f, 435f, -1040f, -610f), false), Struct_1(2147483647i, vec4<f32>(477f, -486f, 481f, 268f), false), Struct_1(0i, vec4<f32>(-907f, -1221f, -524f, -1000f), true), Struct_1(-5458i, vec4<f32>(-612f, -1000f, -316f, -213f), false), Struct_1(2147483647i, vec4<f32>(1017f, -304f, -314f, -426f), true), Struct_1(25794i, vec4<f32>(-366f, -1446f, -1494f, -1000f), true), Struct_1(14473i, vec4<f32>(209f, 905f, -919f, -1451f), true), Struct_1(1932i, vec4<f32>(1988f, 638f, -1848f, -1076f), true), Struct_1(-15519i, vec4<f32>(-810f, 1309f, 613f, 156f), false), Struct_1(-28826i, vec4<f32>(340f, -413f, 190f, 310f), false), Struct_1(-6228i, vec4<f32>(-790f, -1402f, 878f, 504f), false), Struct_1(7428i, vec4<f32>(-101f, -1387f, 1276f, -1431f), false), Struct_1(-2108i, vec4<f32>(-2200f, -348f, 659f, -994f), true), Struct_1(35985i, vec4<f32>(1588f, 1802f, 583f, 366f), false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(1u | ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 26382u, 4294967295u), reverseBits(vec3<u32>(u_input.a, u_input.a, 4294967295u))), 25u)], select(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), false)), !select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, false)), true));
    global0 = array<vec2<i32>, 9>();
    global1 = array<Struct_1, 25>();
    var var_1 = Struct_1(_wgslsmith_dot_vec4_i32(select(vec4<i32>(select(var_0.a.a, -1i, var_0.b.x), u_input.b.x, i32(-1i) * -39803i, var_0.a.a), firstLeadingBit(vec4<i32>(-23572i, -25722i, var_0.a.a, 0i)), all(!vec4<bool>(var_0.b.x, true, var_0.a.c, var_0.b.x))), min(vec4<i32>(-25956i, -35624i, -1i, ~2147483647i), vec4<i32>(i32(-1i) * -1i, var_0.a.a, var_0.a.a, var_0.a.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1282f, 338f, var_0.a.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0 + var_0.a.b.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a.b * var_0.a.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0 + arg_0))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1174f)))) < 278f);
    var_1 = global1[_wgslsmith_index_u32(4294967295u, 25u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -266f)), var_1.b.x))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<i32>) -> i32 {
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(min(u_input.a, ~abs(u_input.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, abs(u_input.a)), ~vec2<u32>(39996u, 52277u))), 25u)], !select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), false), true));
    var var_1 = var_0;
    global1 = array<Struct_1, 25>();
    var var_2 = var_0;
    let var_3 = u_input.a;
    return ~arg_1.x;
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    var var_0 = Struct_2(Struct_1(2147483647i, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(sign(-765f)), _wgslsmith_f_op_f32(abs(-1946f)), 1000f, _wgslsmith_f_op_f32(max(-842f, -1818f))))), arg_0.x), arg_0.zz);
    let var_1 = vec3<i32>(func_4(vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.a.b.x)), var_0.a.b.x, _wgslsmith_f_op_f32(func_3(var_0.a.b.x))), ~(-vec3<i32>(17674i, 41591i, var_0.a.a))) | _wgslsmith_mod_i32(-31272i, abs(u_input.b.x)), u_input.b.x, firstLeadingBit(_wgslsmith_clamp_i32(abs(var_0.a.a), max(-1i, -21939i), _wgslsmith_mod_i32(-13857i, u_input.b.x) ^ _wgslsmith_add_i32(var_0.a.a, u_input.b.x))));
    var_0 = Struct_2(Struct_1(-2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_0.a.b))), true), var_0.b);
    var var_2 = Struct_2(Struct_1(_wgslsmith_add_i32(u_input.b.x, u_input.b.x), vec4<f32>(var_0.a.b.x, -512f, _wgslsmith_f_op_f32(min(var_0.a.b.x, _wgslsmith_f_op_f32(f32(-1f) * -789f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(699f)))), arg_0.x), vec2<bool>(var_0.b.x, ~u_input.a <= 30868u));
    var var_3 = var_0.a;
    return _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a, _wgslsmith_add_u32(_wgslsmith_sub_u32(~4294967295u, _wgslsmith_mod_u32(u_input.a, 1504u)), ~1u), u_input.a ^ 26464u, ~u_input.a), ~min(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a) >> (vec4<u32>(u_input.a, 28110u, u_input.a, u_input.a) % vec4<u32>(32u)), vec4<u32>(1u, u_input.a, 0u, 78111u)) | (vec4<u32>(0u, 0u, select(u_input.a, 0u, arg_0.x), firstTrailingBit(u_input.a)) >> (~reverseBits(vec4<u32>(6970u, u_input.a, 10678u, u_input.a)) % vec4<u32>(32u))));
}

fn func_1(arg_0: vec2<i32>, arg_1: f32) -> Struct_2 {
    var var_0 = _wgslsmith_sub_i32(-select(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b.x, -2147483647i), vec3<i32>(1i, arg_0.x, u_input.b.x))), -28298i, false), abs(-(~(~6723i))));
    let var_1 = Struct_2(Struct_1(u_input.b.x, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(arg_1, 643f, false)), arg_1, _wgslsmith_f_op_f32(f32(-1f) * -1409f), _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1, 184f, 143f, arg_1)))), all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), true))), vec2<bool>(~u_input.a != (func_2(vec3<bool>(true, false, true)) & 1u), !all(select(vec2<bool>(false, false), vec2<bool>(false, false), true))));
    var var_2 = ~select(_wgslsmith_clamp_i32(0i & arg_0.x, 29837i, 1i), -abs(u_input.b.x), !any(vec4<bool>(var_1.b.x, false, false, true))) & (max((i32(-1i) * -2147483647i) & firstLeadingBit(u_input.b.x), ~(-2147483647i)) | 1i);
    var var_3 = var_1.b;
    let var_4 = Struct_2(var_1.a, var_1.b);
    return var_4;
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    global1 = array<Struct_1, 25>();
    let var_0 = 7699u;
    let var_1 = _wgslsmith_clamp_u32(u_input.a, _wgslsmith_div_u32(~min(5272u, _wgslsmith_sub_u32(27428u, u_input.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(12779u, 4294967295u, 1u & var_0, 30829u), ~vec4<u32>(u_input.a, var_0, var_0, 62582u))), _wgslsmith_dot_vec3_u32(~min(~vec3<u32>(var_0, var_0, u_input.a), vec3<u32>(u_input.a, 8115u, 1u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0, u_input.a, 14269u) ^ vec3<u32>(u_input.a, var_0, var_0), min(vec3<u32>(1u, u_input.a, 0u), vec3<u32>(var_0, 64122u, u_input.a)))));
    let var_2 = vec4<f32>(arg_1.a.b.x, -1000f, arg_1.a.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1944f, arg_1.a.b.x)))));
    var var_3 = arg_1.a.b;
    return global1[_wgslsmith_index_u32(1u, 25u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 25>();
    global1 = array<Struct_1, 25>();
    global1 = array<Struct_1, 25>();
    let var_0 = func_5(global0[_wgslsmith_index_u32(firstTrailingBit(15867u), 9u)], func_1(~_wgslsmith_mod_vec2_i32(vec2<i32>(-46679i, u_input.b.x), vec2<i32>(2147483647i, u_input.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -409f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(605f)) - -2241f))), false);
    global1 = array<Struct_1, 25>();
    let var_1 = firstTrailingBit(~reverseBits(max(var_0.a, u_input.b.x ^ -1i)));
    var var_2 = Struct_2(Struct_1(44740i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b)), true), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * _wgslsmith_f_op_f32(ceil(696f))) != _wgslsmith_f_op_f32(-287f - var_0.b.x), !var_0.c));
    var var_3 = any(select(!vec4<bool>(any(vec3<bool>(true, var_0.c, true)), var_1 != 2147483647i, false, var_2.a.c), !(!vec4<bool>(false, var_2.b.x, var_0.c, false)), !select(vec4<bool>(var_0.c, false, var_0.c, var_0.c), !vec4<bool>(var_2.a.c, var_0.c, false, false), vec4<bool>(false, var_0.c, var_2.a.c, true))));
    var var_4 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(((vec4<u32>(u_input.a, 66397u, 9460u, 4294967295u) | vec4<u32>(1u, 0u, u_input.a, u_input.a)) | vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) ^ (max(vec4<u32>(u_input.a, 57340u, u_input.a, 0u), vec4<u32>(28497u, 0u, u_input.a, 98200u)) ^ firstLeadingBit(vec4<u32>(1u, 25874u, 4294967295u, 1u))), select(~vec4<u32>(u_input.a, 68382u, 4294967295u, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, 4294967295u), vec4<u32>(8958u, 0u, 4294967295u, u_input.a) ^ vec4<u32>(u_input.a, 9826u, u_input.a, u_input.a)), false)), -(~_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(10942i, -33552i), u_input.b), vec2<i32>(var_1, u_input.b.x), vec2<i32>(-70878i, 1i))), u_input.a >> (_wgslsmith_sub_u32(~62022u, u_input.a) % 32u), 0i);
}


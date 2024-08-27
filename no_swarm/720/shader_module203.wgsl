struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<bool>) -> bool {
    let var_0 = Struct_1(_wgslsmith_clamp_vec3_u32(~(vec3<u32>(37575u, u_input.b.x, u_input.b.x) & vec3<u32>(4294967295u, 67455u, u_input.c)), u_input.b.zww, vec3<u32>(1u, u_input.b.x, u_input.b.x) | u_input.b.zwy), !select(select(!vec4<bool>(true, arg_0.x, true, false), vec4<bool>(arg_0.x, arg_0.x, false, true), arg_0.x), select(select(vec4<bool>(false, arg_0.x, arg_0.x, false), vec4<bool>(true, arg_0.x, arg_0.x, true), arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), true), true), reverseBits(u_input.e.x) > ~u_input.a), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(891f, 1000f, -233f))))), select(u_input.b.xz, ~min(vec2<u32>(u_input.c, u_input.b.x), ~vec2<u32>(20466u, 35860u)), !(!arg_0)));
    var var_1 = vec3<bool>(all(vec3<bool>(!(arg_0.x != arg_0.x), false, var_0.b.x)), true, _wgslsmith_f_op_f32(floor(-220f)) < -387f);
    let var_2 = u_input.b.x;
    var_1 = var_0.b.wxx;
    let var_3 = Struct_4(1u, select(select(vec3<bool>(var_1.x, true, arg_0.x), vec3<bool>(true, false, var_1.x), select(!vec3<bool>(true, var_1.x, var_0.b.x), var_0.b.yzw, var_0.b.zwx)), select(select(var_0.b.xwy, var_0.b.zzy, select(vec3<bool>(false, false, var_0.b.x), var_0.b.www, var_1.x)), var_0.b.wyw, var_0.b.zxy), !var_0.b.zxx), Struct_1(~select(~vec3<u32>(var_2, 0u, 1u), ~vec3<u32>(20536u, 96118u, 4294967295u), select(var_1.x, var_0.b.x, arg_0.x)), !select(vec4<bool>(false, var_0.b.x, true, true), !var_0.b, !var_0.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, -712f, -669f)) * _wgslsmith_f_op_vec3_f32(round(var_0.c))) + var_0.c), vec2<u32>(~_wgslsmith_div_u32(var_0.d.x, var_2), 14400u)), vec4<bool>(true, false, (any(var_0.b.zww) || arg_0.x) || (!var_0.b.x & true), all(!vec3<bool>(true, false, arg_0.x))), var_0);
    return var_3.c.b.x;
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: u32) -> i32 {
    var var_0 = 22496u;
    var_0 = u_input.c;
    let var_1 = Struct_3(Struct_1(~u_input.b.wyz, select(!select(vec4<bool>(arg_1.x, false, arg_1.x, true), vec4<bool>(true, arg_1.x, false, arg_1.x), vec4<bool>(false, true, false, arg_1.x)), !select(vec4<bool>(true, false, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, true, true), false), vec4<bool>(false, false, arg_1.x, true)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(561f, -1762f, 2558f))))), _wgslsmith_div_vec2_u32(u_input.b.xw, vec2<u32>(1u, abs(arg_0)))), Struct_2(Struct_1(firstLeadingBit(~vec3<u32>(37175u, 11570u, 4294967295u)), vec4<bool>(false || arg_1.x, select(true, false, true), func_3(vec2<bool>(false, arg_1.x)), true), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-534f, -726f, 1513f))), u_input.b.ww), vec4<bool>(-u_input.d >= (u_input.e.x | u_input.e.x), any(vec3<bool>(arg_1.x, true, arg_1.x)), true, any(vec3<bool>(arg_1.x, true, arg_1.x)))), u_input.a, Struct_1(_wgslsmith_sub_vec3_u32(select(vec3<u32>(arg_2, arg_2, arg_2), vec3<u32>(u_input.b.x, u_input.b.x, u_input.c), vec3<bool>(arg_1.x, arg_1.x, true)), u_input.b.zzw), select(vec4<bool>(arg_1.x, any(vec4<bool>(false, arg_1.x, arg_1.x, true)), any(vec4<bool>(true, true, true, false)), !arg_1.x), !(!vec4<bool>(true, false, true, arg_1.x)), false), vec3<f32>(-996f, _wgslsmith_f_op_f32(select(1449f, 1f, true)), -1106f), u_input.b.zz), Struct_1(vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_2), vec2<u32>(arg_2, arg_2)), firstLeadingBit(~arg_2), _wgslsmith_div_u32(u_input.c, _wgslsmith_clamp_u32(arg_0, 25706u, 1u))), vec4<bool>(arg_1.x & false, false, false, (false | arg_1.x) | true), vec3<f32>(_wgslsmith_f_op_f32(select(547f, _wgslsmith_f_op_f32(f32(-1f) * -1732f), true)), _wgslsmith_f_op_f32(127f + _wgslsmith_div_f32(782f, 405f)), _wgslsmith_f_op_f32(-541f - _wgslsmith_f_op_f32(f32(-1f) * -1793f))), select(select(u_input.b.yz, vec2<u32>(90751u, u_input.b.x), true), abs(_wgslsmith_div_vec2_u32(u_input.b.wy, u_input.b.yz)), !select(arg_1.x, false, true))));
    var var_2 = Struct_1(~(~vec3<u32>(u_input.b.x, ~u_input.c, 28777u)), vec4<bool>(var_1.e.b.x, !(!arg_1.x), !all(var_1.a.b.xzx), false & !any(var_1.e.b.wzy)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-340f, -431f, var_1.e.c.x) - vec3<f32>(-496f, -1531f, var_1.a.c.x))))), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(var_1.a.a.x, 1u), arg_2), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, arg_0), ~(~vec2<u32>(arg_2, arg_2)))));
    var var_3 = Struct_2(var_1.e, !select(!select(vec4<bool>(var_2.b.x, var_2.b.x, false, arg_1.x), var_2.b, var_1.b.b.x), vec4<bool>(any(vec4<bool>(true, false, var_2.b.x, var_2.b.x)), var_1.b.a.c.x > var_1.e.c.x, arg_1.x, true || var_2.b.x), !vec4<bool>(false, true, var_1.d.b.x, true)));
    return u_input.d;
}

fn func_4(arg_0: vec2<i32>) -> vec2<bool> {
    let var_0 = true & !any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)));
    var var_1 = 1296f;
    var_1 = -1130f;
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1429f, -2509f) + _wgslsmith_div_f32(-401f, 1094f))), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-872f + -765f))), 329f) - vec3<f32>(192f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1670f * _wgslsmith_f_op_f32(f32(-1f) * -747f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-360f)), _wgslsmith_f_op_f32(f32(-1f) * -255f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1814f, -940f), -1000f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1072f + -228f))))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -655f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_2.x))))));
    return select(!(!select(!vec2<bool>(var_0, true), vec2<bool>(true, true), vec2<bool>(true, true))), select(vec2<bool>(false, true), vec2<bool>(true, all(select(vec4<bool>(var_0, var_0, var_0, true), vec4<bool>(var_0, var_0, false, var_0), vec4<bool>(true, var_0, var_0, var_0)))), true), arg_0.x < _wgslsmith_add_i32(-_wgslsmith_dot_vec2_i32(arg_0, u_input.e.yy), _wgslsmith_mult_i32(29900i >> (u_input.c % 32u), _wgslsmith_add_i32(28701i, u_input.e.x))));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = select(func_4(vec2<i32>(u_input.e.x, ~func_2(57068u, vec2<bool>(true, false), u_input.b.x))), select(select(func_4(vec2<i32>(u_input.d, u_input.e.x)), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), true), func_4(u_input.e.yx), (_wgslsmith_f_op_f32(round(-531f)) >= -507f) && false), !select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    let var_1 = -u_input.e.x >> (51280u % 32u);
    let var_2 = ~(~vec4<u32>(max(u_input.b.x, arg_0), ~4294967295u >> (u_input.b.x % 32u), 12894u, reverseBits(0u)));
    var var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(-32371i, -firstTrailingBit(firstLeadingBit(u_input.a)), 0i, ~(u_input.a >> (abs(12964u) % 32u))), vec4<i32>(-var_1, 3755i, u_input.e.x, var_1));
    var var_4 = Struct_3(Struct_1(max(vec3<u32>(select(72789u, u_input.b.x, true), 0u, 6864u), _wgslsmith_add_vec3_u32(var_2.wzz, u_input.b.xyw)), vec4<bool>(false && !var_0.x, true, true, true), vec3<f32>(507f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1104f)), _wgslsmith_f_op_f32(trunc(553f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(492f * 746f) + _wgslsmith_f_op_f32(-1231f - 307f))), min(_wgslsmith_mod_vec2_u32(var_2.wx >> (vec2<u32>(var_2.x, 14767u) % vec2<u32>(32u)), vec2<u32>(arg_0, var_2.x)), var_2.yz)), Struct_2(Struct_1(_wgslsmith_add_vec3_u32(~vec3<u32>(var_2.x, u_input.c, var_2.x), u_input.b.xwx), vec4<bool>(true, var_0.x, true, u_input.e.x == u_input.e.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-199f, 1755f, 956f), vec3<f32>(-789f, -487f, 914f)))), firstTrailingBit(~var_2.wz)), vec4<bool>(true, true, true, var_0.x != var_0.x)), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.e, -u_input.e), var_1), Struct_1(abs(var_2.zxz), vec4<bool>(true, !(var_1 > var_1), var_0.x, all(vec3<bool>(var_0.x, var_0.x, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-422f)), _wgslsmith_f_op_f32(-930f * -1056f), -813f)), u_input.b.ww | vec2<u32>(arg_0, var_2.x)), Struct_1(~(vec3<u32>(var_2.x, var_2.x, 28450u) & ~var_2.wyy), !(!vec4<bool>(true, var_0.x, var_0.x, true)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -107f), _wgslsmith_f_op_f32(f32(-1f) * -687f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(730f, 902f, var_0.x)))), u_input.b.wx));
    return var_4.e;
}

fn func_5(arg_0: Struct_1) -> i32 {
    let var_0 = arg_0.b.x;
    var var_1 = 2205i;
    var_1 = ~33531i;
    var_1 = -_wgslsmith_add_i32(u_input.a << (reverseBits(68275u) % 32u), i32(-1i) * -30645i);
    let var_2 = arg_0;
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(_wgslsmith_clamp_u32(abs(_wgslsmith_add_u32(40525u, u_input.c)), u_input.b.x, min(42064u, _wgslsmith_dot_vec3_u32(u_input.b.yyz, vec3<u32>(u_input.c, 106101u, 122880u))))));
    let var_1 = firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e.x, u_input.a, -2147483647i, u_input.e.x), vec4<i32>(u_input.a, u_input.d, 19462i, -56847i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 1i, 1i, 1i) << (u_input.b % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(u_input.d, u_input.a, 4756i, u_input.a)))), -u_input.d, 43320i & select(u_input.d, u_input.a, false), -(~0i)));
    var_0 = _wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(0i, -6877i, u_input.e.x), firstLeadingBit(var_1.wyw), vec3<i32>(var_1.x, 1670i, u_input.e.x)), abs(u_input.e)), vec3<i32>(u_input.a, u_input.d, var_1.x << (1u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x);
}


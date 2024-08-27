struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: Struct_2,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<f32> {
    var var_0 = !select(vec4<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), 1000f <= _wgslsmith_f_op_f32(step(1474f, 1000f)), true, false), !(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), true)), true & all(vec3<bool>(true, false, false)));
    var_0 = vec4<bool>(var_0.x, all(!var_0.zz), false, false);
    var_0 = !select(!(!vec4<bool>(var_0.x, true, true, var_0.x)), vec4<bool>(var_0.x, !all(var_0.yx), true & !var_0.x, true), true);
    var_0 = select(vec4<bool>(true, true, all(!vec4<bool>(var_0.x, true, false, var_0.x)) && false, true), select(vec4<bool>(true, var_0.x, true, false || !var_0.x), select(!vec4<bool>(false, false, var_0.x, var_0.x), select(select(vec4<bool>(true, false, var_0.x, false), vec4<bool>(var_0.x, var_0.x, true, var_0.x), true), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, true)), vec4<bool>(true, !var_0.x, var_0.x, var_0.x)), !select(!vec4<bool>(var_0.x, true, var_0.x, var_0.x), !vec4<bool>(var_0.x, false, var_0.x, false), false)), true);
    var_0 = vec4<bool>(reverseBits(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-1008i, 0i, 61808i, -2147483647i), vec4<i32>(-40247i, -1i, -4228i, 30910i)))) > (_wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, -39029i, -57948i, 2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(-24216i, 19317i, -1i, -1i), vec4<i32>(-2147483647i, 14705i, -2147483647i, 5683i))) >> (~u_input.b % 32u)), false, any(select(select(!var_0.zww, !var_0.wyx, var_0.xzw), !var_0.ywz, !(!var_0.x))), var_0.x);
    return vec4<f32>(1087f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -845f) * 426f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-429f, -966f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -140f), _wgslsmith_f_op_f32(-1575f - -517f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1341f * 1463f)))) - _wgslsmith_f_op_f32(100f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1123f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: Struct_4) -> f32 {
    let var_0 = arg_3.a.b;
    let var_1 = vec4<bool>(false, reverseBits(abs(_wgslsmith_mult_i32(-33389i, arg_1))) <= select(~max(arg_3.e.x, 0i), arg_3.d.e.x, !arg_3.a.b | true), var_0, !(_wgslsmith_dot_vec2_i32(vec2<i32>(54941i, -40853i), arg_3.d.e.zy) >= (arg_3.d.e.x ^ 2147483647i)) && arg_0.b);
    let var_2 = Struct_3(!arg_3.d.b.wzy, vec4<bool>(true, _wgslsmith_sub_u32(~1u, ~arg_0.c) < abs(select(14936u, arg_3.d.d.c, var_1.x)), u_input.b <= arg_0.c, var_0), max(arg_3.d.e.zxw, arg_3.d.e.xzy) ^ select(vec3<i32>(-1i & arg_3.b, -arg_3.d.e.x, ~19283i), abs(arg_3.d.e.www), vec3<bool>(false, true, true)));
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) * vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_div_f32(1032f, -1102f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -944f)), 268f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3())))));
    var_3 = _wgslsmith_f_op_vec4_f32(func_3());
    return var_3.x;
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = abs(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0, 6632i) >> (vec2<u32>(28025u, u_input.b) % vec2<u32>(32u)), arg_1.xz), arg_1.zw) | -arg_1.xx);
    var_0 = abs(-arg_1.xy & vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -11319i, 19079i, var_0.x), vec4<i32>(arg_0, arg_1.x, arg_0, -11659i)), -20169i), abs(1i)));
    var var_1 = Struct_2(select(!vec2<bool>(true, arg_3.b), vec2<bool>(all(!vec2<bool>(arg_3.b, true)), true), ~_wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(u_input.a.x, arg_3.a)) != 10468u), vec4<bool>(any(vec3<bool>(any(vec4<bool>(false, false, false, arg_3.b)), true, false)), !arg_3.b, all(!(!vec3<bool>(arg_3.b, false, true))), false), arg_3, Struct_1(0u, arg_3.b, u_input.b), arg_1);
    var var_2 = arg_2;
    var_1 = Struct_2(var_1.a, var_1.b, Struct_1(~(~arg_3.c) & ~(var_1.c.a & 10103u), arg_3.b, _wgslsmith_mult_u32(var_1.c.a, abs(u_input.a.x))), var_1.c, var_1.e);
    return var_1.d;
}

fn func_1(arg_0: u32, arg_1: bool) -> Struct_1 {
    let var_0 = func_4(-1i, firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(37278i, ~0i, firstTrailingBit(-1i), 1i), vec4<i32>(min(-1i, -1i), 1i, 0i, _wgslsmith_mult_i32(0i, -8048i)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1433f), -1214f, _wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(106u, true, 2344u), select(-51841i, 1i, false), arg_0 & 0u, Struct_4(Struct_1(arg_0, arg_1, u_input.b), 0i, arg_1, Struct_2(vec2<bool>(arg_1, arg_1), vec4<bool>(true, false, true, true), Struct_1(0u, arg_1, 13989u), Struct_1(1u, false, u_input.b), vec4<i32>(-31104i, -18341i, 6260i, 38571i)), vec4<i32>(-2147483647i, 1i, 41194i, -44103i)))))), Struct_1(u_input.a.x, true, ~4294967295u));
    var var_1 = Struct_4(var_0, _wgslsmith_mult_i32((-23243i << (u_input.a.x % 32u)) | -1i, abs(_wgslsmith_clamp_i32(0i, countOneBits(-2147483647i), _wgslsmith_div_i32(-29482i, -15204i)))), abs(1i) < ~_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(64952i, 4723i), vec2<i32>(2147483647i, -1i)), vec2<i32>(1i, 1i)), Struct_2(!select(vec2<bool>(arg_1, var_0.b), vec2<bool>(true, arg_1), !vec2<bool>(true, var_0.b)), vec4<bool>(false, !arg_1 | false, !(!var_0.b), any(select(vec2<bool>(var_0.b, arg_1), vec2<bool>(var_0.b, false), vec2<bool>(arg_1, var_0.b)))), Struct_1(abs(~16788u), false, ~23700u), var_0, -vec4<i32>(reverseBits(0i), 45954i, ~(-20157i), _wgslsmith_mult_i32(23936i, 0i))), vec4<i32>(_wgslsmith_mult_i32(firstLeadingBit(1i), 0i), reverseBits(1i), -2147483647i, ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(-21183i, -1i, 37870i), vec3<i32>(4971i, 2147483647i, 2748i)))));
    var var_2 = var_1.d.e.xxw;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1402f, -151f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1285f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1658f, -105f, -1000f))) + vec3<f32>(-1000f, -117f, -302f))))));
    var_1 = Struct_4(var_0, -39891i, true, Struct_2(!vec2<bool>(true, any(vec3<bool>(arg_1, var_0.b, var_0.b))), var_1.d.b, Struct_1(1u, arg_1, _wgslsmith_mod_u32(1u, arg_0)), func_4(~var_2.x, ~var_1.d.e, vec4<f32>(-934f, -799f, _wgslsmith_f_op_f32(trunc(-468f)), 369f), Struct_1(~46473u, arg_1, countOneBits(var_0.c))), ~vec4<i32>(_wgslsmith_mult_i32(var_2.x, -2147483647i), _wgslsmith_clamp_i32(var_1.d.e.x, var_1.e.x, -2147483647i), abs(-1i), _wgslsmith_mod_i32(var_1.e.x, -16303i))), -vec4<i32>(var_2.x, _wgslsmith_mult_i32(var_1.b << (7228u % 32u), abs(var_1.b)), -1i, _wgslsmith_mod_i32(_wgslsmith_add_i32(-2147483647i, var_1.e.x), var_1.e.x)));
    return Struct_1(85610u, abs(var_1.b ^ var_2.x) > 1i, _wgslsmith_mod_u32(var_1.d.d.c, 45726u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 1u, 0u) & min(vec3<u32>(33640u, u_input.b, 24743u), u_input.a), _wgslsmith_sub_vec3_u32(u_input.a & vec3<u32>(u_input.b, u_input.b, u_input.a.x), vec3<u32>(1u, 23412u, 38113u))), _wgslsmith_clamp_i32(-34613i, ~11127i, _wgslsmith_clamp_i32(2147483647i, -1i, 44077i)) <= -76421i), _wgslsmith_clamp_i32(-_wgslsmith_dot_vec2_i32(select(vec2<i32>(22184i, -15083i), vec2<i32>(-42884i, 74503i), vec2<bool>(true, true)), select(vec2<i32>(36895i, 0i), vec2<i32>(-2843i, 1i), true)), -(~(-1i)), ~1i >> ((_wgslsmith_dot_vec4_u32(vec4<u32>(28058u, 746u, u_input.b, u_input.a.x), vec4<u32>(u_input.b, u_input.b, 5800u, u_input.a.x)) << (u_input.b % 32u)) % 32u)), func_1(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(68006u, 1u), abs(36788u)), all(vec3<bool>(true, 25258u == u_input.b, any(vec4<bool>(false, true, true, true))))).b, Struct_2(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false)), func_4(-1i, firstTrailingBit(vec4<i32>(-1i, 74459i, 69935i, -49484i) << (vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(func_3()), func_4(firstTrailingBit(-2147483647i), abs(vec4<i32>(-39821i, 2147483647i, -47836i, -1i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1731f, 1020f, 237f, 997f) + vec4<f32>(791f, -779f, 1614f, 673f)), func_1(42798u, false))), func_4(-abs(0i), -select(vec4<i32>(2147483647i, -1i, 25627i, -2147483647i), vec4<i32>(5992i, -2147483647i, -1i, 41826i), false), vec4<f32>(_wgslsmith_f_op_f32(-1403f + -1301f), _wgslsmith_f_op_f32(abs(812f)), _wgslsmith_f_op_f32(step(-682f, -1504f)), 1063f), Struct_1(u_input.b, true, abs(8633u))), select(vec4<i32>(~48367i, _wgslsmith_div_i32(-2147483647i, 1i), -41776i, ~4645i), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(107442i, 44975i, -2147483647i, -2147483647i), vec4<i32>(7055i, 5147i, 1i, -3303i), vec4<i32>(-1i, 57034i, -7709i, 26942i)), vec4<i32>(1i, 1i, 1i, 1i)), vec4<bool>(true, func_4(-23424i, vec4<i32>(5356i, -2147483647i, 1i, -2147483647i), vec4<f32>(-1572f, -444f, -830f, 503f), Struct_1(u_input.a.x, false, u_input.b)).b, func_4(24894i, vec4<i32>(1i, 23201i, 0i, 1i), vec4<f32>(-1735f, 590f, -335f, 516f), Struct_1(0u, false, u_input.b)).b, true))), -_wgslsmith_mult_vec4_i32(vec4<i32>(reverseBits(-1i), 37175i, 33284i, ~(-1979i)), vec4<i32>(-34475i, _wgslsmith_sub_i32(-1i, 26120i), 1i, _wgslsmith_sub_i32(-1i, 0i))));
    var var_1 = Struct_2(!select(var_0.d.a, var_0.d.b.yx, var_0.d.b.zw), select(!var_0.d.b, !(!(!var_0.d.b)), var_0.d.d.b), func_1(_wgslsmith_add_u32(~0u, ~(~var_0.d.d.c)), all(select(!var_0.d.b.xzx, !vec3<bool>(false, var_0.d.a.x, false), true))), func_1(~var_0.d.d.a, true), countOneBits(vec4<i32>(_wgslsmith_clamp_i32(0i, 58393i, abs(-38973i)), 2147483647i, ~_wgslsmith_sub_i32(var_0.b, var_0.b), 30662i)));
    let var_2 = func_4(var_1.e.x, max(var_0.e, var_0.e), vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_div_f32(1000f, -517f), _wgslsmith_f_op_f32(sign(1005f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1000f)))))), Struct_1(var_1.d.c, var_1.e.x > ~(-var_0.e.x), 15066u));
    let var_3 = 44698i | (var_1.e.x << (42506u % 32u));
    var_0 = Struct_4(Struct_1(1u, true, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(101259u, var_2.a, var_0.a.c, 6457u), vec4<u32>(7659u, 8988u, 0u, var_2.c)) ^ (var_2.c << (0u % 32u)), ~(~1u))), _wgslsmith_mult_i32(21352i, _wgslsmith_clamp_i32(~(-2147483647i), ~var_1.e.x, countOneBits(_wgslsmith_div_i32(var_1.e.x, var_1.e.x)))), !(!var_1.a.x), Struct_2(var_1.b.xz, var_0.d.b, Struct_1(var_2.c, true, _wgslsmith_mod_u32(~22921u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c.a, var_2.a, 2363u, 4294967295u), vec4<u32>(111070u, var_2.a, 4294967295u, u_input.a.x)))), func_4(_wgslsmith_dot_vec4_i32(reverseBits(var_1.e), var_0.d.e << (vec4<u32>(var_2.a, u_input.a.x, 0u, 31142u) % vec4<u32>(32u))), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-13671i, var_3, var_3, 12680i), var_1.e, var_0.e), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -17674i, -56928i, -54776i), var_0.d.e, var_1.e), var_2.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(418f, 1091f, 932f, -880f), vec4<f32>(2163f, 1327f, 118f, 902f))), var_1.c), vec4<i32>(var_1.e.x, var_0.b, -917i, var_1.e.x)), reverseBits(vec4<i32>(-42387i, 2147483647i, -12359i, -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec4_u32(~(vec4<u32>(58095u, 0u, u_input.b, var_0.a.c) >> (vec4<u32>(6831u, 2452u, var_1.c.a, 9845u) % vec4<u32>(32u))), vec4<u32>(min(var_2.a, var_1.d.a), 17907u >> (u_input.b % 32u), var_2.a, abs(4294967295u)), ~max(vec4<u32>(16872u, 16771u, 4294967295u, 0u), vec4<u32>(0u, 31335u, 0u, u_input.a.x))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1620f, 1029f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f * 337f), 944f)), 1f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(406f, -1582f, -495f, -1448f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-515f, -1000f, -774f, 1420f))), vec4<f32>(-633f, 125f, -698f, 899f))))))), vec3<i32>(var_1.e.x, var_3, var_0.e.x), 1u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-770f - -1066f) * _wgslsmith_f_op_f32(1000f - 724f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1925f))) + _wgslsmith_f_op_f32(f32(-1f) * -1401f))));
}


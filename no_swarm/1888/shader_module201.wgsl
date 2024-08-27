struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<u32>,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(round(arg_0.x))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: u32) -> Struct_2 {
    var var_0 = arg_1.a;
    let var_1 = arg_1;
    var var_2 = _wgslsmith_mult_u32(4294967295u, ~u_input.d.x);
    let var_3 = vec3<i32>(2147483647i, -25608i, u_input.b);
    let var_4 = Struct_2(Struct_1(arg_1.a.e, select(var_0.b, !vec4<bool>(true, var_1.a.b.x, var_1.a.b.x, true), true), var_0.c, vec4<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.a.a, var_0.a, -389f, -864f))))), _wgslsmith_f_op_f32(1f + 115f), _wgslsmith_f_op_f32(max(var_0.a, arg_1.a.d.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_1.a.e))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-764f)), var_0.e, 4294967295u > var_1.a.c.x)))));
    return Struct_2(Struct_1(424f, vec4<bool>(all(select(vec2<bool>(true, arg_1.a.b.x), vec2<bool>(var_1.a.b.x, false), vec2<bool>(false, false))), true, true, var_1.a.b.x), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.d.x, u_input.c, ~var_1.a.c.x), vec3<u32>(35730u | u_input.d.x, var_4.a.c.x, max(arg_1.a.c.x, arg_1.a.c.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(488f - 1079f), -189f, var_1.a.d.x, var_4.a.e) + vec4<f32>(-1000f, arg_1.a.a, _wgslsmith_f_op_f32(select(-1018f, arg_0.x, true)), _wgslsmith_f_op_f32(-929f * -1450f))), arg_1.a.a));
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    let var_0 = arg_2.a;
    let var_1 = arg_2;
    return func_2(var_0.d.www, Struct_2(arg_2.a), 0u);
}

fn func_5(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_2) -> vec4<i32> {
    var var_0 = arg_2.a;
    var var_1 = Struct_2(arg_2.a);
    var var_2 = func_2(vec3<f32>(_wgslsmith_div_f32(var_1.a.d.x, -1000f), _wgslsmith_f_op_f32(arg_2.a.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(396f)) + -3006f)), 1628f), arg_2, 4294967295u).a.b;
    var_2 = var_0.b;
    return _wgslsmith_add_vec4_i32(select(vec4<i32>(-1i, 0i, 2147483647i, u_input.b), vec4<i32>(-1i, u_input.b, u_input.b, u_input.b), var_0.b) | _wgslsmith_add_vec4_i32(vec4<i32>(-56517i, u_input.b, -75206i, u_input.b) | vec4<i32>(0i, u_input.b, u_input.b, u_input.b), abs(vec4<i32>(42914i, -58307i, u_input.b, u_input.b))), vec4<i32>(0i, ~select(0i, u_input.b, true), -1i, _wgslsmith_add_i32(u_input.b >> (4294967295u % 32u), u_input.b))) & (_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b << (22110u % 32u), u_input.b, -u_input.b), ~(-vec4<i32>(1i, u_input.b, u_input.b, 0i))) & -vec4<i32>(select(u_input.b, u_input.b, true), max(-1i, -46571i), u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 1i, -2147483647i), vec3<i32>(u_input.b, u_input.b, u_input.b))));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-262f, -1329f, 1959f) - vec3<f32>(-1544f, 233f, -653f)))))));
    var var_1 = vec4<i32>(-1i) * -func_5(u_input.d.x, vec2<u32>(u_input.d.x, u_input.c) >> (min(u_input.d.xy, vec2<u32>(57556u, 56688u)) % vec2<u32>(32u)), func_4(any(vec4<bool>(false, true, true, true)), vec2<bool>(true, true), func_2(var_0, Struct_2(Struct_1(var_0.x, vec4<bool>(false, true, true, true), vec3<u32>(17891u, u_input.a.x, 1u), vec4<f32>(var_0.x, var_0.x, 629f, var_0.x), var_0.x)), u_input.a.x), _wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.b)));
    var_1 = _wgslsmith_sub_vec4_i32(-(~select(vec4<i32>(-1i, 4972i, -28623i, 11615i), firstLeadingBit(vec4<i32>(var_1.x, u_input.b, u_input.b, u_input.b)), false)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 1i, u_input.b, _wgslsmith_sub_i32(2147483647i, u_input.b)), min(min(-vec4<i32>(-25045i, 8581i, 36889i, -2147483647i), select(vec4<i32>(var_1.x, -14223i, var_1.x, 27476i), vec4<i32>(var_1.x, u_input.b, 2147483647i, -5594i), false)), vec4<i32>(u_input.b, 0i, var_1.x, u_input.b) << (~u_input.a % vec4<u32>(32u)))));
    var_1 = vec4<i32>(u_input.b, 1367i, _wgslsmith_div_i32(_wgslsmith_add_i32(-var_1.x, -var_1.x), ~(-2147483647i)) << (12054u % 32u), var_1.x);
    let var_2 = func_4(!(!all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), false))), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), Struct_2(Struct_1(_wgslsmith_div_f32(1189f, -1000f), vec4<bool>(true, true, true, true), func_2(vec3<f32>(1189f, -149f, 541f), Struct_2(Struct_1(-1921f, vec4<bool>(true, false, true, false), vec3<u32>(u_input.a.x, 7001u, u_input.a.x), vec4<f32>(-1266f, var_0.x, -528f, var_0.x), 425f)), u_input.a.x).a.c, _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -1283f, -215f, 812f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 947f, 794f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<f32>(-562f, var_0.x, var_0.x, var_0.x))) * _wgslsmith_f_op_f32(var_0.x + -552f)))), 0i).a;
    return func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f))))), Struct_2(func_4(var_2.b.x, var_2.b.xy, func_2(_wgslsmith_f_op_vec3_f32(-var_0), func_2(vec3<f32>(var_0.x, var_2.e, 642f), Struct_2(Struct_1(-1311f, vec4<bool>(false, var_2.b.x, true, var_2.b.x), u_input.d, vec4<f32>(1257f, var_2.d.x, var_0.x, -1224f), -1356f)), 0u), ~33448u), ~_wgslsmith_mod_i32(u_input.b, u_input.b)).a), u_input.c);
}

fn func_6(arg_0: i32, arg_1: f32, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    var var_0 = _wgslsmith_div_u32(50425u, arg_3);
    var var_1 = _wgslsmith_f_op_f32(ceil(-297f));
    let var_2 = arg_1;
    var_0 = 25952u;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_2(vec3<f32>(-895f, 266f, var_2), Struct_2(arg_2.a), 34706u).a.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(193f - arg_2.a.d.x)))) - func_1().a.e);
    return Struct_2(func_4(select(arg_2.a.b.x || arg_2.a.b.x, true, arg_2.a.b.x || false), arg_2.a.b.xz, arg_2, ~(u_input.b ^ ~arg_0)).a);
}

fn func_7(arg_0: Struct_2, arg_1: bool, arg_2: vec4<u32>) -> f32 {
    var var_0 = arg_0;
    let var_1 = select(~vec3<i32>(~(i32(-1i) * -19119i), _wgslsmith_div_i32(-u_input.b, func_5(39492u, vec2<u32>(arg_0.a.c.x, 39535u), arg_0).x), max(-28044i, -u_input.b)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, select(-2147483647i, _wgslsmith_mod_i32(1i, u_input.b), !arg_0.a.b.x), -select(u_input.b, u_input.b, true)), reverseBits(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 4256i, u_input.b), vec3<i32>(2147483647i, u_input.b, u_input.b))), vec3<i32>(0i & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -50061i, -99679i), vec3<i32>(31105i, u_input.b, -1i)), -12102i, -8511i)), var_0.a.b.xww);
    var_0 = arg_0;
    var_0 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a.a, -635f, _wgslsmith_f_op_f32(var_0.a.e - 546f)), arg_0.a.d.yzw, !(var_0.a.d.x >= 1479f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.a.e, -913f, 1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-771f, arg_0.a.d.x, -1023f)))), func_1(), arg_2.x);
    var_0 = func_6(-33869i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.e) - _wgslsmith_f_op_f32(func_3(arg_0.a.d))))), func_4(arg_1 & arg_1, var_0.a.b.wz, func_1(), 86984i), ~(~reverseBits(_wgslsmith_mod_u32(var_0.a.c.x, 4294967295u))));
    return arg_0.a.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_7(func_6(1i, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(367f)))), func_1(), _wgslsmith_add_u32(~4294967295u, ~29187u)), true, _wgslsmith_add_vec4_u32(~reverseBits(u_input.a), u_input.a))), vec4<bool>(true, true, any(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(436f, 1000f, 1000f)), func_6(0i, -1198f, Struct_2(Struct_1(-1000f, vec4<bool>(true, true, false, true), u_input.d, vec4<f32>(136f, 346f, -533f, -207f), 156f)), 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yy)).a.b.xy), true), ~select(_wgslsmith_div_vec3_u32(u_input.d, u_input.d) << ((u_input.a.wxy ^ vec3<u32>(u_input.a.x, u_input.d.x, u_input.d.x)) % vec3<u32>(32u)), vec3<u32>(26840u, 1u, u_input.c) ^ (vec3<u32>(1u, u_input.d.x, 0u) ^ u_input.a.xxz), vec3<bool>(true, any(vec4<bool>(true, true, true, true)), func_4(false, vec2<bool>(true, true), Struct_2(Struct_1(265f, vec4<bool>(false, true, true, false), vec3<u32>(u_input.a.x, 9948u, u_input.a.x), vec4<f32>(430f, 1369f, -479f, -859f), -827f)), u_input.b).a.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(574f, 1309f, 579f, 2236f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(597f, 784f, 721f, 376f), vec4<f32>(-907f, 529f, -1012f, -1075f))) + vec4<f32>(-1935f, 1158f, 969f, 583f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(828f, 577f, -1554f, -1000f)) + vec4<f32>(_wgslsmith_f_op_f32(-129f * -558f), _wgslsmith_f_op_f32(f32(-1f) * -569f), -563f, -1416f))), 529f);
    var var_1 = Struct_1(var_0.a, vec4<bool>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(var_0.c.x, u_input.a.x), 20512u) < var_0.c.x, !(_wgslsmith_f_op_f32(746f + var_0.e) < -348f), var_0.b.x, !(false && func_2(var_0.d.xww, Struct_2(Struct_1(-1507f, vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, false), u_input.a.zyz, var_0.d, var_0.e)), var_0.c.x).a.b.x)), vec3<u32>(22581u, u_input.c, max(var_0.c.x | var_0.c.x, ~u_input.a.x)) | _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a.x, 21638u, 0u), vec3<u32>(u_input.d.x, u_input.a.x, 8161u) >> (u_input.a.zyx % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.d.x, -206f, var_0.d.x, var_0.a))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-894f)) + _wgslsmith_f_op_f32(var_0.e + var_0.a)), func_6(-u_input.b, 1465f, func_6(u_input.b, -758f, Struct_2(Struct_1(var_0.d.x, var_0.b, vec3<u32>(68795u, var_0.c.x, 65015u), vec4<f32>(197f, var_0.e, var_0.a, 337f), var_0.a)), u_input.d.x), ~u_input.a.x).a.a, var_0.d.x, _wgslsmith_div_f32(func_2(var_0.d.xxz, Struct_2(Struct_1(-1651f, vec4<bool>(true, false, true, true), var_0.c, vec4<f32>(var_0.d.x, 968f, var_0.d.x, -322f), var_0.d.x)), var_0.c.x).a.d.x, var_0.d.x))), 930f);
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3124f)), func_6(-16919i | ~u_input.b, 1f, Struct_2(func_6(u_input.b, var_1.a, Struct_2(Struct_1(var_0.a, var_0.b, u_input.a.xyx, var_0.d, -1198f)), 1u).a), var_0.c.x).a.b, vec3<u32>(1u, var_1.c.x, ~u_input.a.x), vec4<f32>(var_1.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a, _wgslsmith_f_op_f32(-var_1.a)))), -493f, 1180f), _wgslsmith_f_op_f32(1754f * var_0.d.x));
    var_0 = func_4(var_0.b.x, vec2<bool>(true, true), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(952f + 778f), _wgslsmith_f_op_f32(func_7(Struct_2(Struct_1(-592f, vec4<bool>(var_1.b.x, var_0.b.x, false, var_1.b.x), u_input.d, vec4<f32>(-811f, var_0.e, 572f, var_1.a), var_1.e)), var_1.b.x, u_input.a)), _wgslsmith_div_f32(var_0.a, var_1.a))), func_1(), firstTrailingBit(reverseBits(~var_1.c.x))), select(u_input.b, abs(-25781i), func_2(vec3<f32>(259f, var_1.e, var_0.e), Struct_2(Struct_1(103f, var_0.b, var_1.c, var_1.d, -1236f)), max(0u, u_input.a.x)).a.b.x) ^ u_input.b).a;
    var var_2 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, var_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(935f, -349f)))))));
}


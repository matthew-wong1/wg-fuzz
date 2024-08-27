struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: Struct_4,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<bool>) -> bool {
    return arg_0.x;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_4(0i, select(!(!vec3<bool>(arg_0.b.a, arg_0.b.a, arg_1.x)), !(!select(vec3<bool>(true, arg_2.x, arg_0.c.a), vec3<bool>(false, true, false), vec3<bool>(arg_1.x, false, arg_0.b.a))), !(!(!vec3<bool>(false, arg_0.b.a, true)))), Struct_2(~_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.b, arg_3.x, 1u), vec4<u32>(arg_0.c.c.x, u_input.c, 45707u, 12055u)), vec4<u32>(1u, u_input.b, arg_3.x, arg_0.b.b.x)), Struct_1(func_3(select(vec4<bool>(false, true, arg_1.x, true), vec4<bool>(true, arg_2.x, arg_2.x, arg_0.c.a), false)), ~vec3<u32>(4294967295u, 22779u, arg_3.x), ~vec4<u32>(u_input.b, 3584u, arg_3.x, arg_3.x)), arg_0.c, vec4<i32>(_wgslsmith_clamp_i32(firstLeadingBit(arg_0.d.x), -2147483647i, i32(-1i) * -18283i), firstLeadingBit(arg_0.d.x), _wgslsmith_div_i32(-arg_0.d.x, 13135i & arg_0.d.x), reverseBits(abs(0i))), 1678f));
    let var_1 = var_0;
    let var_2 = 53317i;
    var var_3 = var_2;
    let var_4 = _wgslsmith_add_vec2_i32(select(max(~vec2<i32>(-12433i, var_1.c.d.x), (vec2<i32>(-2147483647i, var_2) >> (arg_3.zy % vec2<u32>(32u))) | _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 2147483647i), var_1.c.d.yz, vec2<i32>(1i, var_2))), ~abs(_wgslsmith_mod_vec2_i32(arg_0.d.yw, var_1.c.d.yy)), false), select(var_0.c.d.yw, ~abs(vec2<i32>(2147483647i, 0i) | arg_0.d.wx), true));
    return var_0.c.c;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_4 {
    var var_0 = !(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(arg_1.x, arg_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1657f), true & arg_0.a)))) <= 689f);
    var var_1 = -2147483647i;
    let var_2 = Struct_3(vec3<bool>(true, false, !arg_0.a), Struct_2(_wgslsmith_div_vec4_u32(abs(vec4<u32>(arg_0.c.x, 10224u, 4294967295u, 9199u)), arg_3.c), Struct_1(func_2(Struct_2(vec4<u32>(7621u, arg_2.x, u_input.b, 34907u), arg_0, Struct_1(false, arg_3.c.zyy, arg_0.c), vec4<i32>(-1i, u_input.d, 2147483647i, u_input.a), 430f), !vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(false, false), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_3.c.x, 113127u, 15092u), vec3<u32>(u_input.c, arg_3.b.x, 0u), vec3<u32>(2005u, arg_2.x, 67678u))).a, ~arg_2, _wgslsmith_clamp_vec4_u32(arg_0.c, func_2(Struct_2(vec4<u32>(arg_2.x, 3642u, arg_3.c.x, arg_0.b.x), Struct_1(true, vec3<u32>(4294967295u, 40648u, arg_2.x), arg_0.c), arg_0, vec4<i32>(-1i, u_input.a, u_input.d, -11534i), arg_1.x), vec2<bool>(arg_3.a, arg_0.a), vec2<bool>(true, true), vec3<u32>(arg_2.x, u_input.c, 48934u)).c, arg_3.c)), arg_0, -vec4<i32>(1i, -26515i, _wgslsmith_div_i32(2147483647i, 1i), abs(-1i)), -1180f), _wgslsmith_f_op_f32(min(478f, -790f)));
    var var_3 = vec4<i32>(_wgslsmith_clamp_i32(max(var_2.b.d.x, min(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.b.d.x, var_2.b.d.x, -17168i), vec3<i32>(2147483647i, var_2.b.d.x, u_input.a)), ~var_2.b.d.x)), var_2.b.d.x, u_input.d), min(var_2.b.d.x ^ var_2.b.d.x, -2147483647i), 1i, ~u_input.d);
    var var_4 = _wgslsmith_f_op_f32(arg_1.x - 461f);
    return Struct_4(1i, !select(select(vec3<bool>(false, true, false), !var_2.a, false), select(vec3<bool>(false, arg_3.a, var_2.b.b.a), vec3<bool>(arg_0.a, var_2.a.x, true), !arg_0.a), var_2.a.x), var_2.b);
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: Struct_1, arg_3: vec2<i32>) -> bool {
    let var_0 = arg_0;
    var var_1 = Struct_3(func_4(arg_2, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.e, 679f) - vec2<f32>(arg_0.c.e, 1500f))))), ~(select(vec3<u32>(0u, var_0.c.c.c.x, var_0.c.a.x), vec3<u32>(arg_0.c.c.c.x, arg_2.c.x, 1u), arg_0.c.c.a) << (abs(vec3<u32>(20247u, 51578u, 40570u)) % vec3<u32>(32u))), func_4(func_2(Struct_2(var_0.c.b.c, Struct_1(true, arg_0.c.b.c.yxy, arg_0.c.a), Struct_1(false, var_0.c.c.c.zxz, vec4<u32>(arg_2.b.x, 34866u, var_0.c.b.b.x, 0u)), vec4<i32>(-60519i, -1i, -2147483647i, arg_3.x), var_0.c.e), func_4(var_0.c.c, vec2<f32>(var_0.c.e, var_0.c.e), vec3<u32>(0u, var_0.c.a.x, 1u), Struct_1(var_0.c.b.a, arg_0.c.b.b, vec4<u32>(4294967295u, 4294967295u, 0u, 13071u))).b.zz, vec2<bool>(true, false), arg_0.c.a.zyx), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.e, arg_0.c.e) + vec2<f32>(1564f, var_0.c.e)))), vec3<u32>(0u, 62606u & arg_0.c.b.b.x, arg_2.b.x), Struct_1(func_3(vec4<bool>(false, arg_2.a, true, arg_2.a)), ~arg_2.b, ~vec4<u32>(arg_0.c.c.c.x, 52604u, 4294967295u, arg_0.c.b.b.x))).c.c).b, Struct_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(~1u, 4294967295u, 40643u, _wgslsmith_mult_u32(arg_0.c.b.b.x, 1u)), (vec4<u32>(var_0.c.c.b.x, var_0.c.a.x, 0u, 27962u) ^ vec4<u32>(u_input.b, arg_2.b.x, arg_2.c.x, u_input.b)) << ((vec4<u32>(arg_0.c.c.b.x, 1u, u_input.b, 27704u) & arg_2.c) % vec4<u32>(32u)), max(var_0.c.a, vec4<u32>(4294967295u, 54304u, arg_0.c.b.b.x, var_0.c.b.b.x))), Struct_1(arg_2.a, abs(arg_0.c.a.zzx), arg_0.c.b.c), var_0.c.b, arg_0.c.d, -644f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.c.e)) * arg_0.c.e)) + -2283f));
    var var_2 = Struct_4(_wgslsmith_clamp_i32(firstTrailingBit(40644i), min(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_0.c.d.x, var_1.b.d.x), vec3<i32>(arg_3.x, 43430i, 0i) | var_1.b.d.xzy), 1i), -((arg_0.c.d.x & u_input.d) & -22846i)), vec3<bool>(!func_2(var_1.b, var_0.b.zy, select(var_0.b.zz, arg_0.b.zy, vec2<bool>(true, arg_1)), vec3<u32>(1u, 63685u, 35216u)).a, var_0.b.x, arg_2.a), Struct_2(firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(arg_2.b.xx, vec2<u32>(4294967295u, 4294967295u)), _wgslsmith_mod_u32(arg_2.b.x, u_input.c), max(0u, 1539u), arg_0.c.c.b.x)), var_0.c.b, func_4(func_4(var_0.c.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.e, -648f) + vec2<f32>(1457f, -616f)), vec3<u32>(115273u, arg_0.c.b.b.x, arg_2.b.x), func_2(arg_0.c, vec2<bool>(arg_0.b.x, var_0.b.x), vec2<bool>(arg_2.a, arg_2.a), vec3<u32>(43522u, arg_2.b.x, var_0.c.b.c.x))).c.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c, 378f) + vec2<f32>(var_1.c, -877f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-427f, arg_0.c.e))), _wgslsmith_clamp_vec3_u32(vec3<u32>(72612u, 49183u, arg_2.c.x) << (vec3<u32>(arg_0.c.c.c.x, var_1.b.b.b.x, var_0.c.a.x) % vec3<u32>(32u)), vec3<u32>(4294967295u, var_0.c.a.x, 18969u), arg_2.c.yzw), Struct_1(var_0.b.x, arg_0.c.c.b, var_0.c.a)).c.b, abs(~vec4<i32>(-1i, arg_3.x, var_1.b.d.x, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) * _wgslsmith_f_op_f32(max(-137f, arg_0.c.e))))));
    var var_3 = true;
    var var_4 = var_0.c.c.b.yx;
    return false;
}

fn func_6(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: Struct_5, arg_3: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-501f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-377f)))));
    return arg_2.a;
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(func_6(vec2<bool>(func_5(func_4(func_2(Struct_2(vec4<u32>(43437u, 1u, 21678u, 4294967295u), Struct_1(false, vec3<u32>(u_input.b, u_input.c, 1u), vec4<u32>(u_input.b, 1u, 4294967295u, u_input.b)), Struct_1(false, vec3<u32>(982u, u_input.b, u_input.c), vec4<u32>(u_input.b, 1u, 0u, 11946u)), vec4<i32>(0i, u_input.d, u_input.d, -33929i), 779f), vec2<bool>(true, true), vec2<bool>(false, false), vec3<u32>(46592u, u_input.c, u_input.b)), _wgslsmith_f_op_vec2_f32(-arg_0.zy), vec3<u32>(1u, u_input.c, 18774u), func_2(Struct_2(vec4<u32>(u_input.c, 57355u, u_input.c, u_input.b), Struct_1(false, vec3<u32>(11191u, u_input.b, u_input.b), vec4<u32>(u_input.b, 1u, u_input.b, u_input.b)), Struct_1(true, vec3<u32>(u_input.c, 0u, u_input.c), vec4<u32>(0u, u_input.b, u_input.b, 0u)), vec4<i32>(1i, u_input.d, 16396i, u_input.a), -276f), vec2<bool>(true, true), vec2<bool>(true, true), vec3<u32>(u_input.b, u_input.b, 65223u))), true, Struct_1(any(vec4<bool>(true, false, true, false)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 4294967295u, 4565u), vec3<u32>(u_input.c, 1u, u_input.b)), ~vec4<u32>(0u, u_input.c, 36969u, u_input.b)), countOneBits(vec2<i32>(u_input.a, 6627i)) & _wgslsmith_mult_vec2_i32(vec2<i32>(-44850i, u_input.d), vec2<i32>(6559i, 2147483647i))), !(~u_input.b < ~97936u)), !vec4<bool>(false, true, u_input.d == -1i, false), Struct_5(-327f, ~abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(u_input.a, u_input.a))), Struct_4(countOneBits(u_input.d) | -7320i, vec3<bool>(true, true, true), func_4(Struct_1(true, vec3<u32>(19350u, u_input.b, 8059u), vec4<u32>(4294967295u, u_input.c, u_input.b, u_input.b)), arg_0.xw, vec3<u32>(u_input.c, u_input.b, 37876u), func_4(Struct_1(true, vec3<u32>(u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, 1u, 56318u, u_input.b)), vec2<f32>(arg_0.x, -448f), vec3<u32>(4294967295u, 21269u, 1u), Struct_1(false, vec3<u32>(92944u, u_input.c, u_input.b), vec4<u32>(u_input.b, 0u, u_input.c, u_input.c))).c.c).c), !vec2<bool>(true, all(vec4<bool>(true, false, false, false)))), any(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), 846f >= arg_0.x), vec3<bool>(true, false, true), true))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_0.x)));
    var_0 = _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(round(-1590f)));
    var_0 = arg_0.x;
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-791f))));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-946f, -2016f, 249f, -858f)))))))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -847f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-527f, _wgslsmith_f_op_f32(abs(-1205f)))), -374f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -971f)) - _wgslsmith_f_op_f32(-728f + _wgslsmith_f_op_f32(561f + 286f))), -981f), abs(vec2<i32>(_wgslsmith_add_i32(-2252i, -46926i), 2147483647i) ^ ~vec2<i32>(-2147483647i, u_input.a)), ~5823u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1229f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1430f + -1384f)))));
}


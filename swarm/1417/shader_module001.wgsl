struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: i32,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32) -> vec2<f32> {
    var var_0 = ~(~(~5659u >> (_wgslsmith_clamp_u32(4294967295u, u_input.a.x, 85403u) % 32u))) >> (0u % 32u);
    let var_1 = Struct_5(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1147f * 335f))))), Struct_3(Struct_2(vec3<bool>(true, true, false), Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1702f, -1340f, 1884f, 683f), vec4<f32>(-438f, 566f, -1448f, 1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(402f, -176f, 1255f) + vec3<f32>(765f, -1257f, -721f)), arg_0, _wgslsmith_f_op_f32(ceil(350f))), all(vec3<bool>(true, false, true)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1115f, -221f, 392f, -367f) - vec4<f32>(1000f, -1677f, -272f, 454f)), vec3<f32>(1108f, 2929f, 485f), 1i, _wgslsmith_f_op_f32(1781f - -695f)), reverseBits(~8497u)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, select(true, true, true)), vec3<bool>(true, true, true)), arg_0), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1181f, -1510f, -468f) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1356f, -1449f, -2662f), vec3<f32>(-495f, -1198f, 383f)))))))));
    var_0 = u_input.a.x & _wgslsmith_mod_u32(u_input.a.x, 4294967295u);
    return _wgslsmith_f_op_vec2_f32(sign(var_1.b.a.b.b.yx));
}

fn func_2() -> Struct_3 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(min(-453f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2301f - 1698f) - 757f))))), _wgslsmith_f_op_f32(ceil(-1000f)));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3(1i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1622f))), vec2<bool>(true && select(true, false, false), true))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) * vec2<f32>(var_0.x, var_0.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-803f, var_0.x), vec2<f32>(1269f, var_0.x))))));
    let var_1 = vec2<i32>(_wgslsmith_sub_i32(i32(-1i) * -8221i, ~_wgslsmith_sub_i32(59336i, 45859i) & (1i << (u_input.a.x % 32u))), 1i);
    var var_2 = Struct_3(Struct_2(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-406f, var_0.x, var_0.x, -349f), vec4<f32>(var_0.x, var_0.x, -1671f, var_0.x), false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1580f, var_0.x, var_0.x) + vec3<f32>(-631f, -1311f, -250f))), 2147483647i, -1372f), all(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1504f, var_0.x, var_0.x, -351f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(175f, 197f, 930f, 769f) - vec4<f32>(var_0.x, 1000f, -1476f, -998f))), vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), -938f, 685f), -2147483647i << (u_input.a.x % 32u), var_0.x), ~abs(~u_input.a.x)), select(select(vec3<bool>(false, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), vec3<bool>(true, u_input.a.x == (u_input.a.x << (u_input.a.x % 32u)), false), select(vec3<bool>(true, true, all(vec4<bool>(false, false, false, true))), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(false, false, true)), false)), -(~_wgslsmith_add_i32(var_1.x ^ var_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 17666i, var_1.x, var_1.x), vec4<i32>(var_1.x, 23764i, var_1.x, 23876i)))));
    var var_3 = vec3<i32>(var_1.x, abs(12392i), -57216i);
    return Struct_3(var_2.a, select(vec3<bool>(!any(vec4<bool>(false, false, var_2.a.a.x, var_2.b.x)), any(var_2.b), true), var_2.b, var_2.b.x), var_1.x);
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = func_2();
    let var_1 = func_2();
    let var_2 = ~select(-abs(vec4<i32>(var_1.c, var_1.c, 1i, var_1.a.d.c)) & ~(-vec4<i32>(var_1.a.d.c, var_0.a.d.c, -1089i, -2147483647i)), -(~vec4<i32>(1i, var_1.c, var_1.c, 36546i) ^ select(vec4<i32>(var_1.a.b.c, var_0.c, 31246i, -1i), vec4<i32>(var_1.c, 19212i, var_1.a.d.c, -18227i), vec4<bool>(false, false, true, false))), select(!select(vec4<bool>(true, false, var_1.a.c, var_0.a.c), vec4<bool>(false, arg_1.x, var_1.a.c, true), vec4<bool>(var_1.a.a.x, arg_1.x, false, var_0.a.c)), vec4<bool>(var_0.a.b.d <= var_0.a.d.d, var_1.a.c, true, false), true));
    let var_3 = Struct_1(var_1.a.b.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-605f, var_0.a.b.a.x, _wgslsmith_div_f32(176f, _wgslsmith_f_op_f32(sign(1151f))))), var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.d.a.x)))));
    let var_4 = _wgslsmith_mod_vec3_u32(vec3<u32>(3504u, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a) | var_1.a.e, _wgslsmith_mult_u32(15083u, ~(~u_input.a.x))), vec3<u32>(1u, 0u, ~1u));
    return func_2().a;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_2, arg_3: vec3<bool>) -> u32 {
    var var_0 = Struct_4(275u, abs(func_2().c), Struct_1(_wgslsmith_f_op_vec4_f32(-arg_2.d.a), arg_2.d.a.xzz, ~(-7119i), arg_0));
    let var_1 = vec4<i32>(i32(-1i) * -2147483647i, 1i, _wgslsmith_mod_i32(var_0.b, _wgslsmith_mod_i32(0i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.b.c, var_0.b, 0i), vec3<i32>(var_0.b, -6012i, var_0.c.c)), _wgslsmith_dot_vec2_i32(vec2<i32>(-415i, var_0.c.c), vec2<i32>(var_0.c.c, 1i))))), arg_2.d.c);
    var var_2 = _wgslsmith_f_op_f32(var_0.c.d - var_0.c.d);
    var var_3 = Struct_3(arg_2, func_2().b, _wgslsmith_clamp_i32(~(~(~var_1.x)), select(reverseBits(countOneBits(-49808i)), var_0.c.c, arg_2.a.x), i32(-1i) * -(~arg_2.b.c)));
    var var_4 = ~vec4<u32>(var_3.a.e, reverseBits(4294967295u << (var_0.a % 32u)), ~min(u_input.a.x, var_0.a), var_3.a.e) ^ ~max(~abs(vec4<u32>(arg_2.e, var_3.a.e, 1u, u_input.a.x)), vec4<u32>(13722u, _wgslsmith_mult_u32(var_3.a.e, var_0.a), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, var_3.a.e, u_input.a.x), vec4<u32>(var_0.a, var_0.a, 0u, var_0.a))));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -9618i << ((abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(75738u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x))) | func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-642f, 1298f) + 416f), false, func_1(7860u, vec2<bool>(false, false), select(u_input.a.zx, vec2<u32>(u_input.a.x, 0u), false)), vec3<bool>(true, false, any(vec2<bool>(true, true))))) % 32u);
    let var_1 = ~vec4<u32>(u_input.a.x, ~4294967295u, 0u ^ u_input.a.x, 1u);
    let var_2 = func_2().a.d;
    let var_3 = func_2();
    var var_4 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -259f), 293f)))), var_3, _wgslsmith_div_vec3_f32(vec3<f32>(var_3.a.d.b.x, _wgslsmith_div_f32(-1964f, _wgslsmith_f_op_f32(max(-386f, var_3.a.b.b.x))), _wgslsmith_f_op_f32(-var_3.a.d.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_2.a.wyz, var_3.a.d.a.www)))));
    var_0 = var_4.b.c >> (var_1.x % 32u);
    let var_5 = var_4.b.b.yz;
    var var_6 = Struct_2(!vec3<bool>(var_3.a.b.c == reverseBits(44159i), 19647u == var_4.b.a.e, var_3.a.a.x), var_2, false, func_1(563u, func_1(var_4.b.a.e, vec2<bool>(var_5.x, var_4.b.b.x), ~min(var_1.zx, vec2<u32>(var_3.a.e, 4294967295u))).a.zx, reverseBits(u_input.a.yy)).d, u_input.a.x);
    var var_7 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c, 685f, vec4<u32>(_wgslsmith_mod_u32(1u, 1u) | _wgslsmith_add_u32(var_6.e, _wgslsmith_dot_vec3_u32(vec3<u32>(6967u, 6459u, 23083u), var_1.zyw)), ~1u, ~(1u & var_7.x) ^ var_1.x, ~countOneBits(_wgslsmith_sub_u32(var_6.e, 0u))), u_input.a);
}


struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: i32) -> vec3<bool> {
    let var_0 = arg_1;
    let var_1 = Struct_1(arg_0.a, arg_1.c, select(all(vec2<bool>(global0.c, true)), arg_1.b, var_0.c), vec2<bool>(arg_0.b, (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), u_input.c) & 71820u) >= (arg_2.x << (select(1u, 1u, true) % 32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_0.e, arg_0.e) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global0.e, var_0.e, arg_0.d.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(global0.e))))));
    let var_2 = _wgslsmith_f_op_f32(116f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1339f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1000f)))))));
    global0 = Struct_1(arg_0.a, var_0.c, true, !arg_1.d, global0.e);
    var var_3 = select(!var_0.d, !(!vec2<bool>(arg_1.d.x, false)), all(!vec3<bool>(any(vec4<bool>(true, false, true, var_1.b)), any(var_0.d), true)));
    return !(!vec3<bool>(var_0.c, select(any(vec3<bool>(true, false, arg_0.c)), true, !var_3.x), false));
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(15940i, select(true, false || !any(vec3<bool>(global0.d.x, global0.d.x, global0.d.x)), !all(vec2<bool>(true, true))), any(select(vec3<bool>(true, global0.d.x, all(vec3<bool>(global0.d.x, false, global0.b))), vec3<bool>(!global0.d.x, true, false), func_3(Struct_1(global0.a, global0.b, global0.c, global0.d, vec4<f32>(-983f, global0.e.x, global0.e.x, -539f)), Struct_1(2998i, global0.c, false, vec2<bool>(false, false), vec4<f32>(global0.e.x, global0.e.x, 455f, -986f)), ~vec2<u32>(30123u, u_input.d.x), 0i))), vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1926f - 1224f), _wgslsmith_f_op_f32(-global0.e.x), _wgslsmith_f_op_f32(-1019f * global0.e.x), global0.e.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.e.x, 455f, 1119f, 713f), _wgslsmith_f_op_vec4_f32(-global0.e)))))));
    global0 = Struct_1(_wgslsmith_clamp_i32(~2147483647i, _wgslsmith_dot_vec4_i32(-(vec4<i32>(u_input.b, -33008i, u_input.b, 73596i) >> (vec4<u32>(u_input.d.x, 4294967295u, 16041u, 0u) % vec4<u32>(32u))), vec4<i32>(global0.a, 1i, _wgslsmith_clamp_i32(-1i, global0.a, u_input.a.x), ~global0.a)), countOneBits(global0.a)), true, 24845i > global0.a, !vec2<bool>(all(!vec3<bool>(true, global0.b, global0.c)), u_input.c.x <= ~6399u), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global0.e.x, global0.e.x)), _wgslsmith_f_op_f32(-global0.e.x))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.e.x - -2283f)))), 486f, _wgslsmith_f_op_f32(140f + -863f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1255f, _wgslsmith_f_op_f32(ceil(global0.e.x))))))));
    global0 = Struct_1(~28856i, false, global0.c, global0.d, vec4<f32>(_wgslsmith_f_op_f32(trunc(2537f)), 204f, _wgslsmith_f_op_f32(430f * global0.e.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_0 = ~global0.a;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.x)) + global0.e.x);
    return Struct_1(_wgslsmith_add_i32(global0.a, ~1i), (i32(-1i) * -firstLeadingBit(global0.a)) > u_input.b, reverseBits(-1i) < (_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -27823i), ~u_input.a.zy) | (global0.a & max(10913i, -13188i))), !(!func_3(Struct_1(-1i, false, global0.b, vec2<bool>(true, true), global0.e), Struct_1(u_input.a.x, false, false, global0.d, global0.e), vec2<u32>(u_input.d.x, 4294967295u), u_input.b).zz), _wgslsmith_div_vec4_f32(vec4<f32>(global0.e.x, 751f, global0.e.x, _wgslsmith_f_op_f32(max(var_1, _wgslsmith_f_op_f32(-global0.e.x)))), _wgslsmith_f_op_vec4_f32(-global0.e)));
}

fn func_4(arg_0: Struct_1) -> vec2<bool> {
    global0 = arg_0;
    var var_0 = false;
    let var_1 = vec2<bool>(!(~(~50858u) >= (~u_input.d.x & u_input.d.x)), func_2().c);
    var var_2 = -29248i;
    var var_3 = _wgslsmith_f_op_f32(floor(-1917f));
    return vec2<bool>(false, true | select(true & !var_1.x, any(!vec4<bool>(false, false, var_1.x, var_1.x)), global0.b));
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(arg_1.a, false, func_2().b, vec2<bool>(true | (~69593u != u_input.d.x), all(func_3(func_2(), Struct_1(-19581i, false, global0.d.x, arg_1.d, vec4<f32>(-563f, 431f, -574f, -495f)), max(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(u_input.c.x, 111969u)), arg_1.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1639f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(661f, -545f)), 116f, 357f)));
    let var_1 = arg_1;
    var var_2 = Struct_1(select(1i, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-37141i, -7411i, -1i, arg_1.a)), abs(vec4<i32>(var_1.a, -2147483647i, 2147483647i, arg_1.a) | vec4<i32>(var_0.a, var_1.a, -44710i, 24068i))), global0.c), false | (326f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1270f)))), var_1.d.x, var_0.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1426f, global0.e.x, _wgslsmith_f_op_f32(step(1524f, arg_1.e.x)), _wgslsmith_f_op_f32(-1000f * arg_1.e.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.e.x, -412f, arg_1.e.x, 1219f), _wgslsmith_f_op_vec4_f32(max(arg_1.e, vec4<f32>(2159f, -553f, -1000f, var_1.e.x))), all(vec3<bool>(global0.d.x, var_1.b, arg_0)))))));
    let var_3 = vec2<i32>(firstLeadingBit(~var_2.a), 40917i);
    let var_4 = -1260f;
    return func_2();
}

fn func_1() -> i32 {
    var var_0 = func_5(!(_wgslsmith_f_op_f32(f32(-1f) * -545f) == global0.e.x) || !(_wgslsmith_div_f32(1310f, global0.e.x) > global0.e.x), Struct_1(~(-(~u_input.a.x)), 4294967295u < _wgslsmith_sub_u32(_wgslsmith_div_u32(24394u, u_input.d.x), reverseBits(0u)), true, select(select(vec2<bool>(global0.c, global0.d.x), vec2<bool>(true, true), true), global0.d, func_4(func_2())), global0.e));
    var var_1 = func_5(select(true, func_4(Struct_1(-u_input.a.x, var_0.b, true, global0.d, _wgslsmith_f_op_vec4_f32(var_0.e + var_0.e))).x, var_0.b), func_5(any(vec3<bool>(true, var_0.d.x, !global0.c)), func_2()));
    var var_2 = u_input.a.yx;
    let var_3 = Struct_1(1i, all(!select(select(vec3<bool>(var_0.b, var_1.b, true), vec3<bool>(false, true, var_0.b), vec3<bool>(var_0.c, var_1.d.x, false)), vec3<bool>(false, global0.b, var_1.b), true)), true, !global0.d, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(828f, -611f, -1000f, _wgslsmith_f_op_f32(ceil(var_1.e.x))))));
    var_0 = func_5(true, func_5(func_3(Struct_1(~var_1.a, var_1.d.x, global0.b, !var_0.d, _wgslsmith_f_op_vec4_f32(-var_1.e)), Struct_1(var_2.x >> (11108u % 32u), var_3.b, all(vec4<bool>(false, false, var_3.c, false)), vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.x, var_1.e.x, -1118f, var_0.e.x) - vec4<f32>(280f, var_0.e.x, var_1.e.x, -1049f))), countOneBits(firstLeadingBit(u_input.d.zz)), i32(-1i) * -2147483647i).x, var_3));
    return _wgslsmith_mult_i32(-9919i, 0i ^ ((var_2.x << (u_input.c.x % 32u)) << ((select(55005u, 2506u, false) | _wgslsmith_mult_u32(u_input.d.x, 0u)) % 32u)));
}

fn func_6(arg_0: i32, arg_1: vec3<f32>, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_1(select(~(-18948i), _wgslsmith_add_i32(-2147483647i ^ func_1(), arg_2), _wgslsmith_dot_vec2_u32(u_input.d.yy, reverseBits(u_input.d.yy)) >= (~u_input.c.x & (u_input.c.x & 91794u))), !(!all(global0.d)), global0.d.x | !all(global0.d), !vec2<bool>(false, global0.b & true), _wgslsmith_f_op_vec4_f32(global0.e * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(global0.e)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.e.x), global0.e.x))));
    let var_2 = arg_2;
    global0 = Struct_1(-global0.a, global0.d.x, _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1, global0.e.x)))) >= _wgslsmith_f_op_f32(ceil(-437f)), !select(vec2<bool>(var_0.b, false), func_2().d, true), vec4<f32>(-1254f, _wgslsmith_f_op_f32(trunc(-737f)), -628f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * -327f))));
    var_0 = func_2();
    return func_5(true, Struct_1(arg_0 ^ 612i, !(_wgslsmith_dot_vec3_u32(u_input.d, u_input.d) >= u_input.c.x), any(vec2<bool>(any(vec3<bool>(global0.d.x, global0.b, true)), any(vec3<bool>(true, global0.d.x, false)))), vec2<bool>(!(5866u >= u_input.c.x), var_0.c), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1062f * var_1))), _wgslsmith_f_op_f32(arg_1.x - 545f), _wgslsmith_f_op_f32(trunc(1139f)), -550f)));
}

fn func_7(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1) -> StorageBuffer {
    var var_0 = any(select(vec4<bool>(u_input.c.x < 47964u, all(arg_0.d) | true, !(!global0.b), true), !vec4<bool>(true, !arg_0.c, true, global0.c && arg_2.c), !select(!vec4<bool>(true, global0.d.x, arg_0.d.x, global0.d.x), select(vec4<bool>(false, true, global0.b, true), vec4<bool>(arg_2.c, arg_0.b, true, global0.c), vec4<bool>(arg_2.b, arg_2.d.x, global0.d.x, false)), false)));
    var var_1 = u_input.d.xy;
    global0 = Struct_1(-1026i, all(!(!func_4(arg_2))), global0.c, global0.d, arg_2.e);
    var var_2 = ~17390i;
    var_0 = !global0.d.x || (func_5(arg_2.b, arg_0).e.x <= global0.e.x);
    return StorageBuffer(global0.e, _wgslsmith_clamp_vec3_i32(abs(firstLeadingBit(~u_input.a)), vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.yx, vec2<i32>(u_input.a.x, 0i)), u_input.a.zy), arg_2.a, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2151i, 25250i, u_input.b, global0.a), vec4<i32>(-52631i, 0i, arg_0.a, arg_2.a))), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(global0.a, -9132i), -27950i), _wgslsmith_div_i32(1i, arg_0.a ^ arg_0.a), u_input.a.x ^ -2147483647i)), _wgslsmith_div_vec2_u32(select(max(~vec2<u32>(15327u, 29029u), vec2<u32>(u_input.d.x, 0u)), ~(~vec2<u32>(1u, 65702u)), arg_2.c), _wgslsmith_clamp_vec2_u32(arg_1.yz, vec2<u32>(arg_1.x, u_input.c.x), countOneBits(vec2<u32>(10658u, var_1.x))) | ~(~vec2<u32>(47423u, var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_7(func_6(global0.a, global0.e.xxz, func_1()), ~_wgslsmith_div_vec3_u32(u_input.d, firstLeadingBit(~vec3<u32>(0u, 15367u, u_input.c.x))), func_2());
}


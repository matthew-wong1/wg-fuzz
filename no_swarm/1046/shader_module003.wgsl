struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: u32,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: f32,
    d: vec4<u32>,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> vec3<f32> {
    let var_0 = true;
    return vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 + arg_0), arg_0);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, -451f, arg_0.x))) + vec4<f32>(-1109f, arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), -241f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -290f)) * _wgslsmith_div_f32(arg_0.x, 646f)), _wgslsmith_f_op_f32(2169f + 115f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-267f * _wgslsmith_f_op_f32(1000f * arg_0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(480f, -334f, arg_1.e.x)))), 1000f)));
    var var_1 = Struct_1(select(arg_3.a, !arg_3.a, arg_3.a), !select(select(select(vec2<bool>(arg_3.b.x, false), arg_3.b, arg_3.a.x), select(arg_1.a.ww, arg_3.b, arg_1.b.x), arg_1.a.x && false), vec2<bool>(all(vec2<bool>(true, true)), arg_1.a.x), all(select(vec2<bool>(arg_1.b.x, true), arg_1.a.yz, arg_1.a.yw))), ~_wgslsmith_mult_u32(17300u, u_input.a.x) | _wgslsmith_sub_u32(~u_input.a.x, _wgslsmith_div_u32(0u, ~39791u)), _wgslsmith_add_i32(-20997i, 36818i), !(!arg_3.e));
    var_1 = arg_3;
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, arg_0.x, arg_0.x), vec4<f32>(-1734f, arg_0.x, arg_0.x, arg_0.x), false)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(445f, 161f, 569f, 296f), vec4<f32>(-389f, arg_0.x, -1494f, -1314f)))))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -847f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-887f * var_0.x) - _wgslsmith_f_op_f32(774f - -207f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-263f * -1788f), _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_div_f32(964f, 1f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 737f, var_0.x))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -1068f, 1434f, -889f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(sign(386f)), _wgslsmith_f_op_f32(-1962f + arg_0.x), _wgslsmith_f_op_f32(round(var_0.x)), -318f))))));
    return var_1.b.x;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = 26025i;
    var var_1 = arg_1;
    var var_2 = arg_1;
    var_1 = Struct_1(vec4<bool>(true, func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(1000f))), arg_1, firstLeadingBit(vec4<i32>(var_0, 0i, arg_1.d, 12561i)) ^ countOneBits(vec4<i32>(var_2.d, var_0, 10222i, -20160i)), Struct_1(var_2.a, !var_2.e.zy, u_input.a.x, 6928i, vec3<bool>(var_1.b.x, true, var_2.e.x))), true, false), !select(select(vec2<bool>(var_1.a.x, false), select(var_2.e.xz, vec2<bool>(var_1.a.x, true), arg_1.e.x), select(arg_1.e.xz, var_2.e.zx, true)), var_2.a.zw, !vec2<bool>(true, var_2.e.x)), 7850u, var_1.d, !select(var_1.e, vec3<bool>(var_1.e.x, true, !arg_0), vec3<bool>(func_4(vec3<f32>(1000f, -1000f, -1319f), Struct_1(var_1.a, var_1.a.xw, var_1.c, var_1.d, vec3<bool>(false, var_2.b.x, arg_0)), vec4<i32>(var_1.d, 24516i, var_0, var_2.d), Struct_1(var_2.a, arg_1.e.xy, 4294967295u, arg_1.d, var_1.a.zzz)), !var_2.a.x, true)));
    var_1 = Struct_1(vec4<bool>(true, all(select(vec3<bool>(false, arg_0, var_2.a.x), vec3<bool>(false, true, false), var_1.a.zyz)) || all(arg_1.a), select(!select(false, arg_1.a.x, false), any(select(arg_1.a.ww, vec2<bool>(arg_0, false), var_1.a.zw)), all(select(arg_1.a.xxx, vec3<bool>(arg_0, var_2.a.x, false), var_2.a.xxx))), true), vec2<bool>(true, all(!vec2<bool>(var_1.a.x, true))), u_input.a.x, ~(~(17033i >> (countOneBits(var_2.c) % 32u))), var_2.e);
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: u32) -> vec4<bool> {
    let var_0 = Struct_1(vec4<bool>(false | all(arg_0.a), all(!(!vec4<bool>(arg_1.x, arg_2.a.x, arg_0.b.x, arg_2.e.x))), select(any(func_2(arg_0.b.x, Struct_1(arg_0.a, arg_0.a.wy, 1u, arg_2.d, vec3<bool>(false, arg_2.b.x, true)), 0u).e), true, false), false), select(vec2<bool>(true, ~arg_2.d >= (arg_0.d & arg_2.d)), vec2<bool>(_wgslsmith_sub_u32(u_input.a.x, arg_3) >= max(66748u, 0u), false), arg_0.e.x && true), ~(~1u | _wgslsmith_mult_u32(arg_0.c & arg_0.c, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a.yy))), -_wgslsmith_sub_i32(~44586i | arg_0.d, -1i), func_2(all(vec3<bool>(!arg_0.e.x, !arg_0.b.x, false)), Struct_1(!(!arg_2.a), select(vec2<bool>(true, true), func_2(false, Struct_1(arg_2.a, vec2<bool>(arg_2.e.x, arg_2.e.x), 0u, arg_0.d, arg_2.e), 11369u).a.ww, !arg_2.e.x), ~countOneBits(u_input.a.x), arg_2.d, func_2(!arg_0.a.x, Struct_1(arg_2.a, vec2<bool>(arg_0.e.x, false), 13053u, 0i, arg_1), select(0u, 2817u, arg_2.a.x)).a.xxy), firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(2570u, arg_3), vec2<u32>(arg_0.c, arg_2.c)))).a.wxw);
    var var_1 = i32(-1i) * -2147483647i;
    var var_2 = -reverseBits(~_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.d, -1i, var_0.d, 17036i), vec4<i32>(-21865i, arg_2.d, 1840i, arg_2.d) & vec4<i32>(1i, -1i, 0i, 20030i), vec4<i32>(var_0.d, var_0.d, arg_0.d, -1i)));
    var var_3 = _wgslsmith_mult_i32(23085i, _wgslsmith_mod_i32(arg_2.d, -func_2(!arg_0.a.x, func_2(arg_2.b.x, Struct_1(arg_0.a, vec2<bool>(true, arg_0.a.x), arg_0.c, var_2.x, arg_1), 29440u), countOneBits(4294967295u)).d));
    let var_4 = arg_0;
    return select(vec4<bool>(!(false | var_0.e.x) || !any(vec3<bool>(arg_1.x, var_0.a.x, false)), any(!arg_1.zy), arg_1.x, arg_0.e.x), vec4<bool>(2526i < _wgslsmith_sub_i32(~var_0.d, ~var_2.x), !arg_0.e.x, any(select(func_2(true, var_0, arg_2.c).a, vec4<bool>(arg_0.a.x, true, true, arg_2.b.x), all(var_4.a))), true), vec4<bool>(arg_0.b.x, any(arg_0.a), true, true));
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32) -> vec2<bool> {
    var var_0 = -225f;
    var var_1 = func_2(arg_1.a.x, func_2(!(48657u > arg_1.c) || true, func_2(arg_2 <= -949f, Struct_1(arg_1.a, vec2<bool>(true, arg_1.a.x), arg_1.c, ~35870i, arg_1.a.yxy), 52578u), 4294967295u), ~min(_wgslsmith_div_u32(reverseBits(arg_1.c), 17890u), u_input.a.x));
    var var_2 = arg_1;
    var var_3 = func_2(func_5(Struct_1(arg_1.a, select(func_2(var_2.a.x, Struct_1(vec4<bool>(var_2.e.x, var_1.a.x, true, false), arg_1.a.yy, 1u, var_2.d, vec3<bool>(arg_1.b.x, var_1.e.x, arg_1.a.x)), 1u).b, arg_1.e.xy, var_1.b), ~countOneBits(4294967295u), var_2.d, vec3<bool>(arg_1.e.x, !var_1.a.x, 32933u <= var_1.c)), var_2.a.wzy, func_2(!func_2(true, Struct_1(vec4<bool>(var_1.b.x, true, false, arg_1.a.x), var_2.e.zz, 97051u, -2147483647i, var_2.e), var_1.c).e.x, func_2(true, Struct_1(var_1.a, vec2<bool>(var_1.b.x, var_2.b.x), 1u, 43485i, vec3<bool>(true, false, false)), ~60136u), ~_wgslsmith_mod_u32(u_input.a.x, var_2.c)), ~_wgslsmith_clamp_u32(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(55538u, 52717u, 4294967295u, 34031u), u_input.a), 1u)).x, Struct_1(var_1.a, var_2.a.xy, 0u, reverseBits(1i), arg_1.a.zzz), abs(~(~max(1u, var_1.c))));
    var_0 = 929f;
    return vec2<bool>(all(func_2(true, func_2(-271f != arg_2, Struct_1(vec4<bool>(true, false, false, true), var_1.a.xy, var_2.c, var_3.d, vec3<bool>(true, var_2.e.x, true)), max(arg_1.c, u_input.a.x)), 78825u).a), !func_2(any(vec4<bool>(true, var_3.a.x, var_1.b.x, true)), arg_1, var_3.c).e.x);
}

fn func_1() -> vec3<f32> {
    let var_0 = Struct_1(!vec4<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), false, true, select(true, false, true)), func_6(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1096f, -1319f, 619f, -1000f), vec4<f32>(-591f, 1370f, 1605f, 978f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1043f, 653f, -1000f, 2158f), vec4<f32>(1322f, 738f, 1132f, -182f), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-139f, 560f, -1087f, 1431f)))), Struct_1(func_5(func_2(true, Struct_1(vec4<bool>(true, true, false, true), vec2<bool>(false, true), u_input.a.x, 1i, vec3<bool>(true, true, false)), 9320u), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), Struct_1(vec4<bool>(false, false, true, true), vec2<bool>(true, true), 5879u, 5402i, vec3<bool>(true, false, true)), 64013u), func_2(true, Struct_1(vec4<bool>(true, false, true, false), vec2<bool>(true, false), 0u, 42708i, vec3<bool>(false, false, true)), 4294967295u).a.ww, _wgslsmith_mod_u32(_wgslsmith_add_u32(1u, 31168u), 518u >> (u_input.a.x % 32u)), -1i, !select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-983f + -750f) + _wgslsmith_f_op_f32(-1109f - -1221f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-211f, 900f))))), 4294967295u, _wgslsmith_dot_vec4_i32(-(~vec4<i32>(37474i, -7347i, 2147483647i, -5047i)) >> (u_input.a % vec4<u32>(32u)), select(~vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(0i, -1i, 5954i, 761i), select(all(vec3<bool>(false, false, false)), func_5(Struct_1(vec4<bool>(false, true, true, true), vec2<bool>(true, true), u_input.a.x, 0i, vec3<bool>(true, true, false)), vec3<bool>(true, true, true), Struct_1(vec4<bool>(true, false, true, true), vec2<bool>(true, true), u_input.a.x, 1i, vec3<bool>(false, true, true)), u_input.a.x).x, true))), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true))));
    let var_1 = var_0.a.wwx;
    let var_2 = var_0;
    let var_3 = !(!(!(!var_1.zz)));
    let var_4 = var_0;
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-218f + 1431f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1331f, _wgslsmith_div_f32(-130f, 899f), -1409f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 61344u;
    var_0 = 34468u;
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec3_f32(func_1());
    var var_3 = func_2(any(func_2(false, func_2(func_5(Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(false, false), u_input.a.x, 30723i, vec3<bool>(true, true, false)), vec3<bool>(true, true, false), Struct_1(vec4<bool>(false, false, false, true), vec2<bool>(true, false), 6274u, -2147483647i, vec3<bool>(true, true, false)), 0u).x, func_2(true, Struct_1(vec4<bool>(false, true, false, false), vec2<bool>(false, false), u_input.a.x, -1i, vec3<bool>(false, true, false)), 4294967295u), ~4294967295u), max(0u, 8431u)).a.xxz), func_2(func_6(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-602f, -154f, -1000f, var_2.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-894f, -1279f, -168f, -541f))), func_2(true, func_2(true, Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(false, false), 13085u, 26231i, vec3<bool>(false, true, false)), u_input.a.x), _wgslsmith_mod_u32(u_input.a.x, 81628u)), 214f).x, func_2(false, func_2(all(vec2<bool>(false, true)), Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(true, false), 4294967295u, -38776i, vec3<bool>(false, false, true)), u_input.a.x), abs(u_input.a.x ^ 3889u)), 2643u), u_input.a.x);
    var_0 = 1u;
    let var_4 = true;
    var_0 = max(_wgslsmith_mod_u32(abs(15253u), var_3.c), u_input.a.x) | max(_wgslsmith_mult_u32(~58076u, reverseBits(_wgslsmith_div_u32(var_3.c, u_input.a.x))), reverseBits(4294967295u & u_input.a.x) >> (u_input.a.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_3.c | var_3.c, 59923u, 0u, 47360u) & ~vec4<u32>(_wgslsmith_mod_u32(1u, 4294967295u), u_input.a.x, 62939u, 950u), vec2<u32>(reverseBits(_wgslsmith_mult_u32(1u, var_3.c)), 5762u), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(-var_2.x))).x, ~u_input.a);
}


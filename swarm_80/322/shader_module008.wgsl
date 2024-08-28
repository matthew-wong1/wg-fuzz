struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<f32>,
    c: bool,
    d: Struct_3,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-822f, vec3<bool>(false, true, true), 831f, -38203i), 59268u, Struct_1(-121f, vec3<bool>(false, false, true), -132f, 1i), Struct_1(485f, vec3<bool>(true, true, false), -471f, i32(-2147483648)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec3<bool>, arg_3: Struct_5) -> f32 {
    global0 = Struct_2(arg_3.a, 0u, global0.c, global0.c);
    var var_0 = _wgslsmith_f_op_f32(trunc(arg_3.a.c));
    let var_1 = global0.c;
    var var_2 = arg_1.x;
    var var_3 = global0.d.c;
    return 710f;
}

fn func_3(arg_0: Struct_5, arg_1: u32, arg_2: i32, arg_3: i32) -> f32 {
    global0 = Struct_2(global0.d, ~(~arg_0.e), global0.d, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(arg_0.d, arg_0.a.b, vec3<bool>(arg_0.a.b.x, arg_0.c, false), arg_0)), _wgslsmith_div_f32(global0.a.a, global0.a.c), !arg_0.a.b.x)) * arg_0.a.c), vec3<bool>(all(arg_0.a.b), all(vec4<bool>(true, true, true, false)), true), _wgslsmith_f_op_f32(f32(-1f) * -700f), _wgslsmith_clamp_i32(arg_2, ~_wgslsmith_mult_i32(global0.c.d, -1i), 13110i)));
    let var_0 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -804f), vec3<bool>(true, false, true), _wgslsmith_f_op_f32(-arg_0.b.x), ~global0.d.d), _wgslsmith_dot_vec3_u32(firstTrailingBit(firstLeadingBit(vec3<u32>(arg_0.e, global0.b, 4294967295u))), vec3<u32>(25273u, ~arg_1, countOneBits(arg_1))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.d.c)) + _wgslsmith_f_op_f32(-arg_0.b.x)), arg_0.a.b, arg_0.b.x, u_input.b.x), Struct_1(_wgslsmith_div_f32(-154f, _wgslsmith_f_op_f32(-arg_0.a.a)), !select(arg_0.a.b, vec3<bool>(true, true, global0.c.b.x), arg_0.c), 1826f, _wgslsmith_mult_i32(-arg_0.a.d, _wgslsmith_clamp_i32(arg_0.a.d, -1i, 2147483647i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1768f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -420f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(471f + _wgslsmith_f_op_f32(-arg_0.a.c)))));
    return _wgslsmith_f_op_f32(arg_0.a.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(735f + 1587f)) + -828f));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: u32) -> Struct_2 {
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(279f, 1190f))))), vec3<bool>(!(arg_1.a.d == u_input.e.x), true, all(vec2<bool>(global0.a.b.x, arg_1.a.b.x))), arg_1.d.c, global0.d.d), 2892u, global0.c, Struct_1(arg_1.c.a, select(!arg_1.c.b, arg_1.c.b, global0.c.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.c.c + _wgslsmith_f_op_f32(sign(arg_1.c.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_3(vec3<u32>(arg_2, 82563u, arg_2), arg_2), vec3<bool>(global0.a.b.x, true, global0.c.b.x), vec3<bool>(true, true, true), Struct_5(global0.d, vec4<f32>(arg_1.d.c, global0.c.a, arg_1.a.a, arg_1.d.c), arg_1.c.b.x, Struct_3(vec3<u32>(global0.b, 1u, 19982u), u_input.d.x), arg_2)))))), -36585i));
    let var_0 = _wgslsmith_f_op_f32(-816f + _wgslsmith_f_op_f32(arg_1.a.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.a + -685f))));
    global0 = arg_1;
    global0 = Struct_2(global0.c, _wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 1u), vec3<u32>(arg_2, 4294967295u, u_input.a.x) << (vec3<u32>(13972u, global0.b, u_input.d.x) % vec3<u32>(32u))), ~(~1u)), arg_1.a, Struct_1(arg_0, arg_1.a.b, _wgslsmith_f_op_f32(-arg_1.d.c), _wgslsmith_sub_i32(1i, -13502i)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, arg_0, global0.d.c, 104f))))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, arg_1.a.c, -484f, 335f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-793f, arg_0, 843f, 1000f), vec4<f32>(1453f, 1200f, arg_1.c.a, -194f))))))));
    return arg_1;
}

fn func_1(arg_0: f32) -> i32 {
    var var_0 = func_4(-505f, Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_3(vec3<u32>(52121u, 0u, global0.b), global0.b), vec3<bool>(global0.a.b.x, global0.a.b.x, global0.a.b.x), global0.a.b, Struct_5(global0.c, vec4<f32>(arg_0, 218f, 588f, 757f), true, Struct_3(vec3<u32>(u_input.a.x, 1089u, 35485u), u_input.d.x), 33179u))) - _wgslsmith_f_op_f32(func_3(Struct_5(Struct_1(arg_0, global0.c.b, global0.c.a, u_input.e.x), vec4<f32>(426f, -762f, arg_0, -184f), global0.a.b.x, Struct_3(vec3<u32>(1u, 1u, global0.b), global0.b), 43455u), 35988u, u_input.b.x, -2470i))), vec3<bool>(select(false, true, global0.a.b.x), true, true), 1282f, firstLeadingBit(~u_input.e.x)), firstLeadingBit(~_wgslsmith_mod_u32(global0.b, 0u)), global0.d, global0.a), ~((~37984u << (global0.b % 32u)) & ~(1u & global0.b)));
    let var_1 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false | any(var_0.a.b.yx), !any(vec3<bool>(true, false, var_0.c.b.x)), var_0.c.d >= u_input.e.x), !(!select(vec4<bool>(var_0.d.b.x, var_0.c.b.x, true, global0.a.b.x), vec4<bool>(true, global0.d.b.x, true, global0.c.b.x), false))), select(vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1548f) < _wgslsmith_f_op_f32(-arg_0), !(arg_0 < 1902f), global0.a.d >= -2147483647i, !var_0.c.b.x), vec4<bool>(true, true, true | (-2147483647i < var_0.d.d), _wgslsmith_f_op_f32(abs(global0.a.c)) <= _wgslsmith_f_op_f32(arg_0 + 375f)), vec4<bool>(global0.a.b.x, var_0.c.b.x, true, true)), select(vec4<bool>(false, true, true, global0.a.b.x), vec4<bool>(true, func_4(1000f, Struct_2(Struct_1(arg_0, global0.a.b, var_0.d.a, u_input.e.x), global0.b, Struct_1(var_0.d.c, vec3<bool>(false, var_0.c.b.x, global0.c.b.x), var_0.a.c, 18617i), Struct_1(arg_0, vec3<bool>(var_0.c.b.x, var_0.c.b.x, true), 997f, -1i)), 2575u).c.b.x == select(var_0.a.b.x, true, global0.c.b.x), false, select(!global0.c.b.x, true, all(vec4<bool>(true, var_0.a.b.x, false, var_0.a.b.x)))), global0.a.b.x));
    let var_2 = u_input.c.yz;
    var_0 = func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(func_2(Struct_3(vec3<u32>(46173u, 4294967295u, var_0.b), 0u), global0.c.b, vec3<bool>(true, false, var_0.a.b.x), Struct_5(global0.d, vec4<f32>(2338f, arg_0, global0.d.a, var_0.d.a), true, Struct_3(vec3<u32>(0u, var_0.b, 4294967295u), 4376u), var_0.b)))))))), Struct_2(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0))), Struct_2(global0.c, select(4294967295u, 11338u, false), global0.d, Struct_1(988f, global0.a.b, -699f, 25062i)), global0.b).d, select(abs(7276u), max(global0.b, u_input.a.x), func_4(_wgslsmith_f_op_f32(exp2(var_0.a.a)), Struct_2(var_0.d, 23952u, Struct_1(1344f, vec3<bool>(var_1.x, global0.a.b.x, false), var_0.c.a, -87960i), var_0.a), 1u).a.b.x), global0.c, var_0.c), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.b, var_0.b, 0u >> (~global0.b % 32u), 34976u), vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(global0.b, u_input.d.x, 4294967295u), vec3<u32>(23700u, 44486u, 1u), true), vec3<u32>(52161u, 45397u, u_input.a.x)), 56478u, 25357u)));
    global0 = Struct_2(func_4(-142f, func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(167f, 1515f) + 765f), Struct_2(func_4(-664f, Struct_2(Struct_1(global0.d.a, vec3<bool>(var_1.x, var_1.x, true), arg_0, u_input.b.x), 1u, global0.c, var_0.c), var_0.b).c, _wgslsmith_add_u32(1u, global0.b), Struct_1(-1458f, vec3<bool>(var_1.x, global0.c.b.x, false), global0.c.a, var_2.x), func_4(var_0.d.a, Struct_2(global0.c, global0.b, var_0.c, Struct_1(var_0.d.a, var_1.yyy, arg_0, global0.c.d)), 0u).a), u_input.d.x), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(~28867u, 1u, global0.b), ~_wgslsmith_div_u32(1u, var_0.b))).a, func_4(global0.c.c, Struct_2(var_0.c, var_0.b, Struct_1(_wgslsmith_f_op_f32(arg_0 - var_0.d.c), vec3<bool>(false, var_0.c.b.x, true), arg_0, ~u_input.c.x), func_4(_wgslsmith_f_op_f32(round(arg_0)), func_4(var_0.a.c, Struct_2(Struct_1(640f, vec3<bool>(var_0.d.b.x, var_0.a.b.x, var_0.d.b.x), -2534f, global0.d.d), 53949u, Struct_1(global0.a.a, var_1.wzx, global0.c.c, u_input.c.x), Struct_1(2013f, vec3<bool>(global0.a.b.x, var_1.x, true), global0.c.a, -1i)), var_0.b), ~45807u).a), 1u).b, func_4(-532f, func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(125f, var_0.c.a)), func_4(_wgslsmith_f_op_f32(-global0.d.c), Struct_2(Struct_1(415f, var_0.a.b, 1297f, var_0.a.d), global0.b, var_0.d, Struct_1(-1000f, vec3<bool>(false, global0.d.b.x, var_1.x), -1132f, u_input.e.x)), global0.b), u_input.d.x), _wgslsmith_sub_u32(112170u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(0u, global0.b, var_0.b, 35573u)), vec4<u32>(u_input.a.x, global0.b, u_input.a.x, 11974u)))).a, var_0.d);
    return i32(-1i) * -var_0.c.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !global0.d.b.xy;
    var var_1 = max(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e.x, func_1(-1768f), _wgslsmith_mult_i32(global0.c.d, -4557i)), u_input.e), vec3<i32>(-2147483647i | _wgslsmith_sub_i32(-10985i, global0.a.d), -(u_input.c.x | u_input.b.x), -502i)) & vec3<i32>(~global0.c.d, global0.a.d, _wgslsmith_add_i32(firstLeadingBit(_wgslsmith_clamp_i32(u_input.b.x, u_input.e.x, 50533i)), _wgslsmith_mult_i32(firstTrailingBit(1181i), global0.a.d)));
    var_1 = vec3<i32>(~global0.d.d, abs(1i | var_1.x), -max(abs(global0.a.d), global0.d.d) >> (reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.b, 4294967295u), ~u_input.a)) % 32u));
    global0 = Struct_2(func_4(-1699f, func_4(_wgslsmith_f_op_f32(-1019f * _wgslsmith_f_op_f32(-global0.a.c)), func_4(_wgslsmith_f_op_f32(step(global0.c.a, 584f)), Struct_2(Struct_1(537f, vec3<bool>(true, false, global0.c.b.x), global0.c.c, -5656i), 1u, Struct_1(global0.a.c, global0.c.b, -1443f, 4703i), global0.c), 1u), min(81273u, 1u)), ~(~u_input.d.x)).c, u_input.d.x, global0.d, global0.d);
    let var_2 = Struct_1(-1509f, global0.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.a.c, -306f, global0.d.b.x)) * _wgslsmith_f_op_f32(f32(-1f) * -585f)))), 14995i);
    let var_3 = Struct_1(var_2.a, !global0.a.b, _wgslsmith_f_op_f32(global0.d.c - -1217f), -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c, 97369u, _wgslsmith_f_op_f32(abs(var_2.a)));
}


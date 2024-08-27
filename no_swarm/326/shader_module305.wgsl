struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: u32,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: i32,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<u32>) -> vec2<f32> {
    global0 = arg_1.a.e.x;
    global0 = arg_1.a.e.x;
    var var_0 = Struct_2(!((arg_0.c & arg_0.c) == arg_1.a.b), -countOneBits(u_input.c.x), arg_2.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1495f, _wgslsmith_f_op_f32(449f + -145f)) * arg_0.e) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_1.e.d.yz, vec2<f32>(arg_0.d.x, arg_1.e.a), arg_1.a.a)))))), arg_1.a.e);
    var var_1 = _wgslsmith_dot_vec4_u32(~arg_2, ~firstLeadingBit(reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 41753u, 0u, arg_1.a.c), arg_2))));
    let var_2 = Struct_3(Struct_2(!(!var_0.a), max(-7070i, arg_0.c), u_input.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.e.e) + vec2<f32>(_wgslsmith_f_op_f32(var_0.e.x + arg_1.a.e.x), _wgslsmith_f_op_f32(arg_1.e.d.x + arg_1.e.d.x))), var_0.e), !select(arg_1.b, arg_1.b, !(!arg_1.b)), ~(firstTrailingBit(u_input.c.x | u_input.c.x) | ~var_0.b), all(vec3<bool>(var_0.a, true, all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), false)))), arg_0);
    return vec2<f32>(_wgslsmith_f_op_f32(sign(arg_1.a.d.x)), arg_1.e.e.x);
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = Struct_3(arg_3, select(vec2<bool>(true, true), !(!vec2<bool>(arg_3.a, arg_3.a)), !(!select(vec2<bool>(arg_3.a, arg_3.a), vec2<bool>(true, arg_3.a), arg_3.a))), firstLeadingBit(u_input.c.x), select(arg_3.a, false, any(vec4<bool>(!arg_3.a, true, any(vec4<bool>(arg_3.a, arg_3.a, arg_3.a, false)), all(vec3<bool>(arg_3.a, arg_3.a, arg_3.a))))), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec2_f32(func_3(arg_2, Struct_3(arg_3, vec2<bool>(false, arg_3.a), 40594i, false, Struct_1(arg_2.a, u_input.c, u_input.c.x, arg_3.e.xxz, arg_2.d.xz)), vec4<u32>(40608u, arg_3.c, 4294967295u, 38754u))).x, _wgslsmith_f_op_f32(-arg_2.e.x))), u_input.c, ~2147483647i, vec3<f32>(-371f, -1067f, 864f), _wgslsmith_div_vec2_f32(arg_3.d, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.x, arg_1.x), _wgslsmith_f_op_vec2_f32(ceil(arg_2.d.yz)))))));
    global0 = _wgslsmith_f_op_f32(1559f - arg_0);
    global0 = arg_0;
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-249f + var_0.e.a) * var_0.e.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(875f - -1606f))));
    var var_1 = arg_3;
    return vec2<u32>(3969u, arg_3.c ^ arg_3.c);
}

fn func_2(arg_0: f32) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_0 = ~u_input.b.yx;
    var var_1 = true;
    var_0 = u_input.b.yx | _wgslsmith_mod_vec2_u32(func_4(arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(579f, arg_0, 1395f, -2006f))), Struct_1(_wgslsmith_div_f32(560f, arg_0), -u_input.c, -u_input.c.x, vec3<f32>(342f, 728f, arg_0), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(arg_0, vec4<i32>(u_input.c.x, 0i, u_input.c.x, -2818i), u_input.c.x, vec3<f32>(arg_0, -317f, arg_0), vec2<f32>(arg_0, arg_0)), Struct_3(Struct_2(false, u_input.c.x, 1u, vec2<f32>(arg_0, arg_0), vec4<f32>(-1334f, arg_0, arg_0, -2559f)), vec2<bool>(true, false), -12701i, true, Struct_1(333f, u_input.c, u_input.c.x, vec3<f32>(313f, arg_0, 373f), vec2<f32>(arg_0, 1685f))), vec4<u32>(u_input.a, 0u, 421u, u_input.a)))), Struct_2(true, max(u_input.c.x, 25458i), ~var_0.x, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-695f, arg_0))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -739f, arg_0, 1096f) + vec4<f32>(584f, arg_0, arg_0, arg_0)))), func_4(-245f, vec4<f32>(arg_0, _wgslsmith_f_op_f32(arg_0 * arg_0), arg_0, arg_0), Struct_1(arg_0, vec4<i32>(2147483647i, u_input.d, 12467i, u_input.d) >> (vec4<u32>(9993u, 94211u, 0u, 10822u) % vec4<u32>(32u)), 5732i >> (u_input.b.x % 32u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 691f, arg_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(318f, arg_0))), Struct_2(true, 0i, _wgslsmith_mod_u32(u_input.a, 46965u), _wgslsmith_f_op_vec2_f32(vec2<f32>(324f, 203f) * vec2<f32>(-1000f, 535f)), vec4<f32>(1370f, 827f, arg_0, arg_0))));
    let var_2 = Struct_2(!(!(select(true, false, false) && all(vec4<bool>(true, true, false, true)))), u_input.d, 4294967295u, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(995f)))), arg_0))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-203f, 751f) * _wgslsmith_f_op_f32(abs(arg_0))), _wgslsmith_f_op_f32(f32(-1f) * -1634f), _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(max(-1389f, -1161f)), -4699i < u_input.c.x))), vec4<f32>(_wgslsmith_div_f32(-234f, _wgslsmith_f_op_f32(325f - -975f)), arg_0, -490f, 205f)));
    return Struct_1(1f, -vec4<i32>(countOneBits(2147483647i | u_input.d), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.b, var_2.b, 2147483647i), u_input.c.wxw ^ u_input.c.zyz), _wgslsmith_add_i32(firstTrailingBit(2147483647i), reverseBits(20369i)), 0i), u_input.c.x | var_2.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.e.wyx - _wgslsmith_f_op_vec3_f32(-vec3<f32>(495f, arg_0, arg_0)))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(var_2.e.yxw * vec3<f32>(347f, arg_0, arg_0))))))), vec2<f32>(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(f32(-1f) * -378f)), var_2.e.x));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: bool, arg_3: Struct_1) -> Struct_2 {
    global0 = arg_3.e.x;
    return Struct_2(any(vec2<bool>(arg_0.x, arg_2)), _wgslsmith_mult_i32(arg_3.b.x, _wgslsmith_dot_vec3_i32(select(vec3<i32>(1i, arg_1.x, 33347i) ^ u_input.c.zww, vec3<i32>(arg_3.b.x, -3859i, -2147483647i), vec3<bool>(arg_0.x, true, arg_2)), arg_3.b.xyz)), ~u_input.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-232f, _wgslsmith_f_op_f32(sign(-2092f))) + _wgslsmith_f_op_vec2_f32(arg_3.e * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.e.x, 644f) * arg_3.e)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.a, arg_3.e.x, arg_3.a, -1000f) * vec4<f32>(arg_3.d.x, arg_3.a, 984f, arg_3.e.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(113f, arg_3.a, 872f, arg_3.e.x) - vec4<f32>(arg_3.e.x, arg_3.d.x, 1314f, -444f))) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_3.e.x, arg_3.e.x, -1000f, 293f), vec4<f32>(-1077f, 161f, -379f, arg_3.e.x))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(923f, 366f, -462f, -301f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(882f, arg_3.e.x, -1052f, 1097f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.e.x, arg_3.d.x, arg_3.d.x, 1278f)))))));
}

fn func_6(arg_0: Struct_3, arg_1: u32) -> vec4<i32> {
    global0 = _wgslsmith_f_op_f32(arg_0.e.e.x - _wgslsmith_f_op_f32(-533f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-2055f, arg_0.a.d.x))))));
    global0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1052f, arg_0.e.e.x))))) + arg_0.e.a)).a;
    let var_0 = vec3<bool>(!any(!(!vec4<bool>(arg_0.b.x, true, arg_0.a.a, arg_0.a.a))), false, arg_0.a.a);
    let var_1 = arg_0;
    var var_2 = var_1.a;
    return select(func_2(_wgslsmith_f_op_f32(-var_1.e.e.x)).b, vec4<i32>(-36441i, -var_1.a.b, _wgslsmith_sub_i32(_wgslsmith_sub_i32(-83136i, -1i) | _wgslsmith_div_i32(var_2.b, var_1.a.b), var_2.b), _wgslsmith_mult_i32(-2517i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 12183i), vec2<i32>(1i, var_2.b)) | _wgslsmith_mult_i32(var_2.b, 0i))), all(!vec3<bool>(true & arg_0.d, any(arg_0.b), false)));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.d.x - arg_1.e.x), arg_1.e.x) - arg_1.d.x);
    var var_0 = !(!(!vec2<bool>(any(vec2<bool>(arg_1.a, true)), !arg_1.a)));
    var_0 = vec2<bool>(var_0.x, true);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-arg_1.e.x), func_6(Struct_3(func_5(!vec3<bool>(arg_1.a, var_0.x, var_0.x), ~vec2<i32>(30182i, -74859i), arg_1.a != false, func_2(-1000f)), !vec2<bool>(arg_1.a, var_0.x), max(-10419i, _wgslsmith_mod_i32(arg_1.b, 21630i)), false, Struct_1(_wgslsmith_f_op_f32(-arg_1.e.x), max(vec4<i32>(arg_1.b, u_input.d, u_input.c.x, 12148i), vec4<i32>(u_input.d, arg_1.b, 1399i, -71231i)), 24342i, vec3<f32>(arg_1.e.x, 1180f, arg_1.d.x), arg_1.d)), arg_1.c), arg_1.b, vec3<f32>(_wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.x * -1426f))), _wgslsmith_f_op_f32(f32(-1f) * -225f)), _wgslsmith_f_op_vec2_f32(floor(arg_1.e.yx)));
    var var_2 = vec2<i32>(_wgslsmith_div_i32(-23590i ^ arg_1.b, _wgslsmith_dot_vec4_i32(u_input.c, -reverseBits(u_input.c))), ~(-_wgslsmith_add_i32(arg_1.b ^ -16777i, -2147483647i)));
    return var_1;
}

fn func_7(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: Struct_1) -> u32 {
    var var_0 = select(_wgslsmith_mult_i32(arg_2.c, abs(~u_input.d) << (2698u % 32u)), 0i, arg_0.x);
    let var_1 = _wgslsmith_f_op_f32(ceil(-1478f));
    var var_2 = _wgslsmith_f_op_f32(max(-1427f, func_1(_wgslsmith_mod_vec4_u32(select(vec4<u32>(4453u, u_input.b.x, u_input.b.x, 38437u) ^ vec4<u32>(arg_1.x, 0u, 0u, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(3856u, arg_1.x, 1516u, 19819u), vec4<u32>(u_input.a, u_input.b.x, 1u, arg_1.x)), true), ~(~vec4<u32>(0u, arg_1.x, 85656u, 4294967295u))), Struct_2(false, u_input.d, 58577u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.e * vec2<f32>(var_1, 1644f)) * _wgslsmith_f_op_vec2_f32(arg_2.d.zy - arg_2.e)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 510f, arg_2.e.x, -293f) - vec4<f32>(1201f, arg_2.e.x, -640f, arg_2.d.x)))))).a));
    var var_3 = arg_0;
    var var_4 = Struct_2(arg_0.x, _wgslsmith_clamp_i32(countOneBits(-2147483647i), arg_2.b.x, 13354i), 4294967295u, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_2.d.x, -588f, arg_0.x)), 1104f), -355f), _wgslsmith_f_op_vec2_f32(abs(arg_2.d.yz)), arg_0.x)), vec4<f32>(-484f, var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1))), arg_2.d.x), -547f));
    return _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~arg_1, u_input.b), ~u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -118f;
    let var_0 = -vec3<i32>(~min(u_input.d, u_input.c.x), u_input.d, -27475i);
    let var_1 = Struct_3(Struct_2(true, abs(-39633i), func_7(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), vec3<u32>(u_input.b.x, u_input.a, 4669u), func_1(vec4<u32>(u_input.a, 1u, 51623u, u_input.b.x), Struct_2(false, 2147483647i, 18370u, vec2<f32>(1284f, -272f), vec4<f32>(-356f, -883f, -318f, -105f)))) >> (50822u % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-func_1(vec4<u32>(0u, 33405u, u_input.a, 0u), Struct_2(true, 0i, 0u, vec2<f32>(682f, 339f), vec4<f32>(-1765f, -1187f, 407f, -281f))).d.xx)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(219f, 253f, -536f, 807f)))), vec2<bool>(true, !all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false)))), reverseBits(-2147483647i), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2254f + 594f) * _wgslsmith_f_op_vec2_f32(func_3(Struct_1(1100f, u_input.c, -1i, vec3<f32>(-2472f, 1173f, -209f), vec2<f32>(615f, 636f)), Struct_3(Struct_2(true, -90353i, 8142u, vec2<f32>(-291f, -427f), vec4<f32>(-1204f, -420f, 661f, 195f)), vec2<bool>(false, true), 2147483647i, false, Struct_1(759f, u_input.c, u_input.d, vec3<f32>(-587f, -609f, -1406f), vec2<f32>(-392f, -674f))), vec4<u32>(4294967295u, 4294967295u, u_input.a, 4294967295u))).x) >= _wgslsmith_f_op_f32(step(-507f, _wgslsmith_f_op_f32(-193f * -1219f)))), func_1(firstTrailingBit(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.b.x, 1549u, 0u, u_input.a))), Struct_2(true, 32538i, ~u_input.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(300f, -1000f)), vec2<f32>(1201f, -1000f), vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1052f, -611f, -220f, -1252f))))));
    let var_2 = var_1;
    var var_3 = 4294967295u;
    var_3 = ~u_input.a << (~(~_wgslsmith_mult_u32(u_input.b.x, 1u)) % 32u);
    let var_4 = -firstLeadingBit(~var_1.e.b.xy | ~vec2<i32>(u_input.c.x, 2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~(-1i), -(-2147483647i & ~var_2.e.b.x), -1i, var_1.c));
}


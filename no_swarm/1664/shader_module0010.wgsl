struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: vec2<i32>,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_5, arg_2: vec4<bool>, arg_3: Struct_1) -> bool {
    global0 = arg_3.b.xy;
    var var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-256f, 1000f), arg_1.a)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))) + _wgslsmith_f_op_vec2_f32(ceil(arg_3.b.zy))), _wgslsmith_f_op_f32(-arg_3.b.x), arg_1.c);
    var var_1 = Struct_2(arg_1.c.x);
    return var_1.a;
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: bool) -> f32 {
    global0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(284f - 921f)))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_div_f32(-142f, global0.x))), 391f), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1208f, _wgslsmith_div_f32(-109f, global0.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.x, global0.x))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(-967f, -752f)))))));
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(global0.x - _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-1124f - 1000f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-838f, -1000f)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(410f, global0.x))))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(global0.x - 1138f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 255f))) * vec2<f32>(global0.x, _wgslsmith_f_op_f32(global0.x + global0.x))));
    global0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 687f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(global0.x, global0.x))), vec2<f32>(_wgslsmith_f_op_f32(select(global0.x, global0.x, false)), 840f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.x, global0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-453f, -1174f) * vec2<f32>(656f, global0.x))))), (abs(arg_1) < u_input.d) && !arg_2))));
    var var_0 = Struct_4(Struct_1(1695f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 1562f)))))), 1u);
    return _wgslsmith_f_op_f32(-global0.x);
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    var var_0 = Struct_5(arg_0.e.b.xz, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.e.a - -136f) - _wgslsmith_f_op_f32(floor(-1589f))))), _wgslsmith_f_op_f32(func_4(vec3<u32>(arg_0.a, _wgslsmith_sub_u32(22710u, 0u), 1u), u_input.d, func_3(Struct_1(510f, vec3<f32>(1645f, 836f, -1083f)), Struct_5(vec2<f32>(622f, -702f), global0.x, arg_0.b), vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, false), arg_0.e) | false))), select(vec2<bool>(!all(vec3<bool>(false, arg_0.b.x, arg_0.b.x)), true), select(vec2<bool>(arg_0.b.x, false), vec2<bool>(all(vec3<bool>(arg_0.b.x, arg_0.b.x, true)), global0.x > arg_0.e.b.x), arg_0.b), !select(true, true, all(vec4<bool>(arg_0.b.x, true, arg_0.b.x, false)))));
    var var_1 = max(46046u, ~17619u);
    var var_2 = any(!select(vec3<bool>(var_0.c.x, true, all(vec2<bool>(arg_0.b.x, arg_0.b.x))), !(!vec3<bool>(arg_0.b.x, true, true)), vec3<bool>(true, true, true)));
    let var_3 = 1i;
    var var_4 = 56417u;
    return arg_0;
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_5) -> vec2<bool> {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_2.b, -953f), vec2<f32>(-1678f, arg_2.a.x)))))) + _wgslsmith_f_op_vec2_f32(step(arg_2.a, vec2<f32>(global0.x, arg_2.b))));
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.e.b.zx), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(arg_0.e.b.zz)), _wgslsmith_f_op_vec2_f32(max(arg_2.a, arg_0.e.b.yy)))));
    let var_0 = ~_wgslsmith_add_vec3_i32(~max(~vec3<i32>(u_input.b, arg_0.c.x, arg_0.d), vec3<i32>(0i, -20258i, arg_0.c.x)), select(vec3<i32>(u_input.c.x, arg_0.d, arg_0.d) ^ firstTrailingBit(vec3<i32>(u_input.b, -45749i, u_input.c.x)), ~abs(vec3<i32>(1i, -25939i, arg_0.c.x)), any(select(vec4<bool>(arg_2.c.x, false, arg_1.x, true), vec4<bool>(false, true, true, true), vec4<bool>(arg_2.c.x, true, arg_0.b.x, arg_1.x)))));
    global0 = vec2<f32>(-595f, arg_2.a.x);
    let var_1 = !(!vec4<bool>(arg_0.b.x, func_3(func_2(arg_0).e, Struct_5(vec2<f32>(-1285f, -1104f), 1004f, arg_1), !vec4<bool>(arg_1.x, true, arg_2.c.x, arg_2.c.x), func_2(Struct_3(46824u, arg_0.b, u_input.c, var_0.x, arg_0.e)).e), arg_1.x, arg_2.c.x));
    return vec2<bool>(arg_1.x, !(53373u < u_input.a.x));
}

fn func_6(arg_0: vec2<bool>) -> vec2<f32> {
    global0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1683f, -1216f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-530f, global0.x) * vec2<f32>(-161f, 649f)), true)) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 743f))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-203f, global0.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-461f, 393f), vec2<f32>(global0.x, -165f), true)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(788f, -1007f))), !arg_0.x)))));
    var var_0 = func_2(Struct_3(func_2(Struct_3(4294967295u ^ u_input.e.x, arg_0, select(u_input.c, u_input.c, arg_0.x), -2147483647i, Struct_1(-885f, vec3<f32>(global0.x, global0.x, global0.x)))).a, select(func_2(func_2(Struct_3(u_input.a.x, arg_0, u_input.c, -25968i, Struct_1(566f, vec3<f32>(global0.x, 2195f, -448f))))).b, vec2<bool>(arg_0.x || arg_0.x, !arg_0.x), arg_0), u_input.c, _wgslsmith_dot_vec2_i32(~(~u_input.c), u_input.c), Struct_1(-1181f, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(649f, -203f, 2911f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 430f, -1227f))))))).a;
    let var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, _wgslsmith_mod_u32(~(4294967295u << (0u % 32u)), _wgslsmith_mult_u32(~u_input.a.x, ~7521u))), u_input.a);
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)) + _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, -252f), vec2<f32>(128f, global0.x))))), vec2<f32>(290f, 668f))));
}

fn func_1() -> f32 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_6(select(vec2<bool>(true, true), func_5(func_2(Struct_3(u_input.a.x, vec2<bool>(false, true), u_input.c, u_input.b, Struct_1(1321f, vec3<f32>(global0.x, -1496f, global0.x)))), vec2<bool>(false, true), Struct_5(vec2<f32>(global0.x, global0.x), -499f, vec2<bool>(true, false))), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, false), 14133i <= u_input.b)))));
    var var_0 = Struct_4(func_2(Struct_3(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 39112u, u_input.a.x, u_input.e.x), u_input.e), vec2<bool>(true, true), ~abs(u_input.c), u_input.b, Struct_1(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1286f, 946f, global0.x), vec3<f32>(global0.x, 1075f, global0.x), false))))).e, max(u_input.e.x, _wgslsmith_mult_u32(~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), countOneBits(~u_input.e.x))));
    var var_1 = Struct_3(~var_0.b, vec2<bool>(func_3(Struct_1(_wgslsmith_f_op_f32(step(var_0.a.b.x, -1417f)), vec3<f32>(-1187f, global0.x, global0.x)), Struct_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a, var_0.a.b.x)), -1747f, vec2<bool>(false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), var_0.a), true), vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 9241i, -50455i, -2147483647i), vec4<i32>(u_input.b, u_input.d, u_input.c.x, u_input.c.x)), ~u_input.c.x), ~u_input.d & _wgslsmith_sub_i32(u_input.b, ~u_input.c.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b.x))), vec3<f32>(_wgslsmith_f_op_f32(-1922f * _wgslsmith_f_op_f32(select(var_0.a.a, 941f, false))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global0.x)))), -158f)));
    let var_2 = Struct_3(1u, vec2<bool>(!(!(var_1.a < var_0.b)), var_1.b.x), -func_2(Struct_3(min(var_0.b, 1u), !vec2<bool>(var_1.b.x, true), var_1.c, _wgslsmith_div_i32(-12995i, -1i), Struct_1(-2525f, var_1.e.b))).c, 2147483647i, func_2(Struct_3(abs(~var_0.b), var_1.b, vec2<i32>(_wgslsmith_mod_i32(var_1.d, u_input.d), var_1.c.x & u_input.c.x), select(u_input.c.x, firstTrailingBit(u_input.c.x), all(vec4<bool>(var_1.b.x, false, false, var_1.b.x))), Struct_1(_wgslsmith_f_op_f32(-global0.x), vec3<f32>(550f, -279f, var_1.e.b.x)))).e);
    return _wgslsmith_f_op_f32(var_2.e.b.x + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-func_2(var_2).e.b.x), 516f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, global0.x), vec2<f32>(1000f, 405f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -472f) * vec2<f32>(1905f, global0.x)), _wgslsmith_div_vec2_f32(vec2<f32>(-1819f, -219f), vec2<f32>(-260f, 1689f)))))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, _wgslsmith_f_op_f32(sign(-539f)))))));
    var var_0 = Struct_1(_wgslsmith_div_f32(-1072f, _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_vec3_f32(select(func_2(func_2(func_2(Struct_3(u_input.a.x, vec2<bool>(true, false), vec2<i32>(49415i, u_input.d), -14108i, Struct_1(global0.x, vec3<f32>(-378f, global0.x, global0.x)))))).e.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, 646f, -1464f)))))), true)));
    var var_1 = vec2<bool>(all(vec2<bool>(true, true)), select(true, func_5(func_2(Struct_3(u_input.e.x, vec2<bool>(false, true), vec2<i32>(-4617i, 2147483647i), u_input.d, Struct_1(152f, var_0.b))), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), Struct_5(var_0.b.yx, var_0.b.x, vec2<bool>(false, false))).x, select(true, true, true)) && true);
    global0 = vec2<f32>(global0.x, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(round(551f))));
    var_1 = vec2<bool>(var_1.x, func_5(func_2(func_2(Struct_3(22292u, vec2<bool>(var_1.x, true), vec2<i32>(38856i, u_input.c.x), 2147483647i, Struct_1(var_0.a, var_0.b)))), !func_2(func_2(Struct_3(u_input.a.x, vec2<bool>(false, false), vec2<i32>(-18059i, 19792i), -9304i, Struct_1(var_0.a, vec3<f32>(var_0.a, -237f, -1271f))))).b, Struct_5(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -354f), _wgslsmith_f_op_f32(1181f + var_0.b.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-797f)), _wgslsmith_f_op_f32(-var_0.a))), select(vec2<bool>(true, var_1.x), !vec2<bool>(true, var_1.x), !vec2<bool>(var_1.x, true)))).x);
    let x = u_input.a;
    s_output = StorageBuffer(abs((_wgslsmith_div_u32(0u, 22305u) >> (_wgslsmith_clamp_u32(u_input.e.x, u_input.a.x, 49654u) % 32u)) << (u_input.a.x % 32u)), -1419f, ~(~(-(~vec4<i32>(u_input.b, -1395i, u_input.c.x, -1i)))));
}


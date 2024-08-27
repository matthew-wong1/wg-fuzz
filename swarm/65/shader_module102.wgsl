struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<bool>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec3<f32>,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
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

var<private> global0: array<vec2<f32>, 9> = array<vec2<f32>, 9>(vec2<f32>(738f, 450f), vec2<f32>(226f, 1623f), vec2<f32>(-2247f, 1434f), vec2<f32>(1000f, -338f), vec2<f32>(144f, 404f), vec2<f32>(-186f, 1223f), vec2<f32>(-722f, 440f), vec2<f32>(1000f, 401f), vec2<f32>(-1675f, -908f));

var<private> global1: array<f32, 9>;

var<private> global2: Struct_2;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = select(select(vec3<bool>(true, global2.b.c.x, all(vec3<bool>(false, true, false))), vec3<bool>((global2.c.e | false) == arg_0.c.x, false, all(vec4<bool>(true, false, false, false)) || !global2.b.c.x), select(!vec3<bool>(false, true, arg_0.e), select(!vec3<bool>(arg_0.b, arg_0.b, global2.b.e), vec3<bool>(false, false, global2.c.c.x), false), select(vec3<bool>(arg_0.b, global2.b.c.x, true), select(vec3<bool>(true, false, global2.b.e), vec3<bool>(arg_0.c.x, true, arg_0.b), vec3<bool>(true, true, false)), true))), !(!(!select(vec3<bool>(arg_0.c.x, true, true), vec3<bool>(global2.c.b, arg_0.b, true), vec3<bool>(true, true, false)))), false);
    let var_1 = Struct_2(1u, global2.c, global2.b);
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1914f, var_1.b.a, arg_0.a, global1[_wgslsmith_index_u32(33361u, 9u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(1u, 9u)], 440f, var_1.c.a)))) + vec4<f32>(global2.c.a, _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(global2.b.d.x, 9u)])), _wgslsmith_f_op_f32(-global2.c.a), 937f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(534f, -205f, _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(global2.b.d.x, 9u)], 1152f)), _wgslsmith_f_op_f32(var_1.c.a * global2.b.a)))))));
    global1 = array<f32, 9>();
    var var_3 = var_1;
    return vec2<bool>(false, global2.b.b);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: Struct_1) -> bool {
    let var_0 = ~(~u_input.a);
    var var_1 = global2.c;
    global2 = Struct_2(arg_1.x ^ min(~reverseBits(1u), arg_2.d.x), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-452f * _wgslsmith_f_op_f32(global2.c.a - arg_2.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(767f * -127f))))), !global2.b.e, global2.b.c, ~_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(var_1.d, vec3<u32>(0u, 20017u, global2.a)), vec3<u32>(u_input.b.x, 48394u, 34494u) | var_0.zyz), false), Struct_1(-2060f, true, vec2<bool>(global2.b.c.x, !(var_1.c.x & var_1.b)), u_input.a.yzx ^ select(~vec3<u32>(5603u, global2.c.d.x, 25864u), vec3<u32>(arg_2.d.x, var_1.d.x, var_0.x), vec3<bool>(var_1.b, arg_2.b, false)), false));
    global0 = array<vec2<f32>, 9>();
    global0 = array<vec2<f32>, 9>();
    return false;
}

fn func_2() -> Struct_2 {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(global2.b.d.x, 9u)], -910f, -721f)))))), _wgslsmith_sub_vec2_u32(vec2<u32>(~67101u, _wgslsmith_dot_vec3_u32(vec3<u32>(75289u, u_input.b.x, 39851u), global2.b.d)), max(~vec2<u32>(global2.a, u_input.a.x), _wgslsmith_mod_vec2_u32(vec2<u32>(global2.b.d.x, 9303u), vec2<u32>(4294967295u, u_input.a.x)))), Struct_1(global2.b.a, any(vec3<bool>(false, global2.b.c.x, global2.c.e)) & all(global2.c.c), !func_3(global2.c), ~(global2.b.d << (global2.b.d % vec3<u32>(32u))), all(vec2<bool>(true, false)))) | all(!vec2<bool>(global2.b.b, true));
    var var_1 = Struct_2(81264u, global2.b, Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(0u, 9u)])), _wgslsmith_f_op_f32(global2.c.a * 976f), false)))), global2.b.a < -1159f, global2.b.c, vec3<u32>(_wgslsmith_mult_u32(global2.c.d.x, 63940u), ~4294967295u, min(u_input.b.x, u_input.b.x)) ^ _wgslsmith_add_vec3_u32(u_input.a.zwx, ~u_input.a.yxy), global2.b.e | true));
    global0 = array<vec2<f32>, 9>();
    var var_2 = Struct_2(~u_input.b.x, Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, u_input.a.x, 0u)), ~u_input.b), 9u)], !global2.c.e, vec2<bool>(true, !all(vec4<bool>(false, true, var_0, global2.b.b))), u_input.a.wxy, true), global2.c);
    var_2 = Struct_2(firstLeadingBit(countOneBits(~(~global2.b.d.x))), Struct_1(-1091f, true, var_1.c.c, vec3<u32>(31789u, abs(_wgslsmith_div_u32(var_1.c.d.x, var_1.c.d.x)), ~(~42088u)), true), var_2.b);
    return Struct_2(_wgslsmith_mod_u32(~u_input.a.x, _wgslsmith_mod_u32(30757u, min(var_1.b.d.x, var_1.b.d.x) >> (~1u % 32u))), Struct_1(-1000f, true, select(global2.b.c, !select(var_2.c.c, var_1.b.c, true), vec2<bool>(all(global2.c.c), var_2.c.e & false)), _wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(44518u, global2.c.d.x, 31650u)), global2.c.d), true), Struct_1(_wgslsmith_f_op_f32(-var_1.b.a), all(vec3<bool>(true, !var_0, true)), var_1.c.c, min(u_input.a.xyy, vec3<u32>(56437u & var_2.b.d.x, ~4294967295u, 4294967295u)), true));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: f32) -> f32 {
    global2 = func_2();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1392f, -489f) * global0[_wgslsmith_index_u32(arg_0.a.c.d.x, 9u)]) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.x, global1[_wgslsmith_index_u32(4294967295u, 9u)]) - arg_0.c.yz)))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2505f + _wgslsmith_f_op_f32(f32(-1f) * -151f)) - arg_0.d.b.a) + _wgslsmith_f_op_f32(floor(-897f))), _wgslsmith_f_op_f32(-2390f + _wgslsmith_f_op_f32(-arg_0.a.c.a)), func_2().c.a, var_0.x);
    var var_2 = -arg_1.x;
    var var_3 = func_2();
    return arg_0.d.b.a;
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: u32) -> Struct_2 {
    let var_0 = global2.c;
    global0 = array<vec2<f32>, 9>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1334f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-566f + global1[_wgslsmith_index_u32(1u, 9u)]) + _wgslsmith_f_op_f32(step(1096f, 234f)))) + _wgslsmith_f_op_f32(f32(-1f) * -900f)), !(!global2.c.c.x), func_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), false, !vec2<bool>(true, arg_1.b.e), global2.c.d, arg_1.c.e)), vec3<u32>(~0u, _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(91u, 0u), 1u), ~(~u_input.b.x)), u_input.b.x), false);
    let var_2 = select(select(select(vec3<bool>(true, func_3(var_1).x, all(vec4<bool>(arg_1.b.b, false, true, var_0.c.x))), vec3<bool>(true, true, global2.c.b), !vec3<bool>(global2.b.e, arg_1.c.b, true)), !vec3<bool>(109766u >= arg_2, any(vec3<bool>(var_0.e, false, true)), arg_2 >= global2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.a)) >= 241f), vec3<bool>(true, true, var_0.d.x < firstLeadingBit(~arg_2)), !select(vec3<bool>(!global2.b.c.x, true, var_1.d.x > 1u), select(vec3<bool>(true, var_0.c.x, false), vec3<bool>(var_1.e, false, var_1.b), true), select(!vec3<bool>(var_1.e, true, var_1.e), vec3<bool>(true, true, true), any(vec2<bool>(false, var_0.e)))));
    var var_3 = var_0.e;
    return func_2();
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec3<f32>) -> f32 {
    let var_0 = func_6(vec4<f32>(780f, _wgslsmith_f_op_f32(func_5(Struct_3(func_2(), ~0u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, global1[_wgslsmith_index_u32(arg_1.d.x, 9u)], arg_2.x)), Struct_2(global2.a, global2.c, Struct_1(arg_0, global2.b.b, global2.c.c, global2.b.d, true)), ~arg_1.d.x), -(vec4<i32>(2147483647i, 2147483647i, 15339i, 39946i) >> (vec4<u32>(59075u, arg_1.d.x, global2.a, arg_1.d.x) % vec4<u32>(32u))), func_2().b.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(1065f + -831f)) + _wgslsmith_f_op_f32(arg_0 * _wgslsmith_div_f32(-106f, arg_1.a))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.a))))), func_2(), ~_wgslsmith_mult_u32(~min(1u, global2.c.d.x), global2.b.d.x));
    let var_1 = Struct_3(func_2(), global2.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(134f, arg_1.a, -1156f))) + _wgslsmith_f_op_vec3_f32(min(arg_3, vec3<f32>(arg_0, arg_1.a, global1[_wgslsmith_index_u32(global2.c.d.x, 9u)])))) - vec3<f32>(_wgslsmith_f_op_f32(450f - 1998f), -286f, _wgslsmith_f_op_f32(f32(-1f) * -473f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, 1f, var_0.b.a))), func_6(_wgslsmith_f_op_vec4_f32(-arg_2), func_6(vec4<f32>(_wgslsmith_f_op_f32(select(-370f, arg_0, false)), _wgslsmith_f_op_f32(round(558f)), _wgslsmith_f_op_f32(-1043f + arg_1.a), var_0.c.a), var_0, arg_1.d.x), var_0.a | arg_1.d.x), 38393u >> (arg_1.d.x % 32u));
    let var_2 = Struct_2(_wgslsmith_clamp_u32(countOneBits(arg_1.d.x), global2.b.d.x, global2.c.d.x), Struct_1(arg_2.x, all(vec4<bool>(var_1.a.b.b | global2.b.b, true, -1753f == global2.b.a, false)), var_1.a.b.c, ~_wgslsmith_sub_vec3_u32(func_6(vec4<f32>(global1[_wgslsmith_index_u32(0u, 9u)], var_1.d.b.a, 220f, arg_1.a), Struct_2(u_input.b.x, Struct_1(-496f, arg_1.c.x, var_0.c.c, var_0.b.d, true), Struct_1(145f, true, vec2<bool>(var_0.c.b, var_0.b.c.x), arg_1.d, arg_1.c.x)), var_1.a.a).c.d, vec3<u32>(4294967295u, 72588u, global2.a)), arg_1.b), Struct_1(-1026f, !global2.c.b, var_1.d.c.c, arg_1.d, true));
    global1 = array<f32, 9>();
    global0 = array<vec2<f32>, 9>();
    return global1[_wgslsmith_index_u32(~countOneBits(var_1.a.c.d.x), 9u)];
}

fn func_7(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: bool) -> Struct_2 {
    global1 = array<f32, 9>();
    var var_0 = u_input.a;
    var var_1 = vec4<f32>(global1[_wgslsmith_index_u32(20267u, 9u)], global1[_wgslsmith_index_u32(min(4078u, firstTrailingBit(~5226u | u_input.a.x)), 9u)], -695f, global1[_wgslsmith_index_u32(global2.c.d.x, 9u)]);
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(445f + _wgslsmith_f_op_f32(f32(-1f) * -451f)), -957f, -1124f, -1000f);
    var var_2 = vec4<bool>(_wgslsmith_f_op_f32(func_5(Struct_3(Struct_2(arg_1.x, global2.b, Struct_1(arg_0.x, global2.b.c.x, vec2<bool>(false, global2.b.e), u_input.a.xzx, global2.b.e)), firstLeadingBit(var_0.x), _wgslsmith_div_vec3_f32(vec3<f32>(366f, global2.c.a, var_1.x), vec3<f32>(1000f, 1620f, global1[_wgslsmith_index_u32(0u, 9u)])), func_6(vec4<f32>(global1[_wgslsmith_index_u32(global2.b.d.x, 9u)], 506f, -387f, var_1.x), Struct_2(arg_1.x, Struct_1(arg_0.x, false, vec2<bool>(false, true), global2.c.d, global2.b.c.x), Struct_1(arg_0.x, false, vec2<bool>(arg_2, true), vec3<u32>(4294967295u, u_input.b.x, global2.a), false)), 29897u), ~1u), _wgslsmith_div_vec4_i32(vec4<i32>(0i, 7345i, 27957i, 59041i), vec4<i32>(14583i, 16261i, -1i, 3984i)), func_2().b.a)) < -535f, global2.c.e, true, global2.c.c.x);
    return Struct_2(10570u, global2.b, func_6(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1[_wgslsmith_index_u32(51546u, 9u)], global2.c.a, global1[_wgslsmith_index_u32(u_input.b.x, 9u)], 734f))))), Struct_2(arg_1.x, global2.b, func_6(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 628f, var_1.x, global2.c.a) + vec4<f32>(113f, global1[_wgslsmith_index_u32(0u, 9u)], -2107f, arg_0.x)), Struct_2(global2.a, global2.b, global2.c), var_0.x).c), firstLeadingBit(u_input.b.x)).b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_7(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(u_input.b.x, 9u)], global2.c, vec4<f32>(-1000f, -2003f, global2.b.a, global1[_wgslsmith_index_u32(global2.b.d.x, 9u)]), vec3<f32>(-1660f, global1[_wgslsmith_index_u32(13256u, 9u)], 1199f))) - func_6(vec4<f32>(309f, 252f, -1000f, global2.c.a), Struct_2(u_input.b.x, Struct_1(global1[_wgslsmith_index_u32(3785u, 9u)], global2.c.c.x, global2.b.c, global2.c.d, global2.c.c.x), global2.c), 116766u).c.a)), _wgslsmith_f_op_f32(func_1(global2.c.a, Struct_1(_wgslsmith_f_op_f32(func_5(Struct_3(Struct_2(global2.c.d.x, global2.c, Struct_1(global2.b.a, global2.b.b, global2.b.c, vec3<u32>(u_input.b.x, global2.a, u_input.b.x), global2.b.c.x)), 4294967295u, vec3<f32>(global1[_wgslsmith_index_u32(global2.a, 9u)], global1[_wgslsmith_index_u32(u_input.a.x, 9u)], global2.b.a), Struct_2(global2.c.d.x, global2.b, Struct_1(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], true, vec2<bool>(true, global2.c.b), u_input.b, true)), u_input.a.x), vec4<i32>(-2147483647i, -2147483647i, 44710i, 856i), -830f)), !global2.c.b, func_2().b.c, u_input.a.yyw, true || global2.c.b), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(830f, 1000f, global1[_wgslsmith_index_u32(global2.b.d.x, 9u)], global1[_wgslsmith_index_u32(0u, 9u)]), vec4<f32>(global2.b.a, 686f, -1586f, global2.b.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-669f, global2.c.a, global2.c.a, global1[_wgslsmith_index_u32(u_input.a.x, 9u)])), global2.c.d.x != u_input.a.x)), vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(global2.c.d.x, global2.a, 4294967295u, 7497u)), 9u)], -1369f, 772f))), global1[_wgslsmith_index_u32(77396u & (abs(57827u) ^ global2.c.d.x), 9u)]), ~(~vec2<u32>(_wgslsmith_sub_u32(0u, u_input.b.x), firstTrailingBit(u_input.a.x))), func_2().c.c.x);
    let var_0 = 0u;
    global1 = array<f32, 9>();
    var var_1 = select(~u_input.a ^ _wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(u_input.b.x | global2.c.d.x, global2.b.d.x, 1u, firstLeadingBit(0u))), ~countOneBits(u_input.a), vec4<bool>(true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(global2.b.d.x, 9u)], Struct_1(-136f, global2.b.b, vec2<bool>(global2.c.e, global2.b.e), vec3<u32>(1u, 57149u, global2.a), global2.b.e), vec4<f32>(696f, 342f, global2.b.a, -209f), vec3<f32>(-566f, 1122f, -323f))))) >= global2.b.a, true, func_6(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1356f, global2.c.a, 1633f, global1[_wgslsmith_index_u32(4294967295u, 9u)])), func_7(vec3<f32>(-896f, 870f, global2.c.a), vec2<u32>(var_0, global2.b.d.x), false), ~global2.a).c.b != !(global2.c.a <= global2.b.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(1i));
}


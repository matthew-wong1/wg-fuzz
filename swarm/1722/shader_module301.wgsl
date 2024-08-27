struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<f32>,
    c: Struct_3,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6> = array<bool, 6>(true, false, false, true, true, true);

var<private> global1: bool = false;

var<private> global2: i32;

var<private> global3: bool;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec2<bool>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -837f))));
    return vec2<bool>(true, !(!arg_2.x));
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: f32, arg_3: vec3<f32>) -> vec4<bool> {
    let var_0 = arg_1;
    global3 = u_input.a.x != arg_1.x;
    global0 = array<bool, 6>();
    var var_1 = false;
    var var_2 = !all(!select(func_3(Struct_1(arg_0, global0[_wgslsmith_index_u32(var_0.x, 6u)]), u_input.b, vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 6u)], false)), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], global0[_wgslsmith_index_u32(u_input.d.x, 6u)]), !vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 6u)], true)));
    return select(!(!select(!vec4<bool>(false, true, global0[_wgslsmith_index_u32(25820u, 6u)], global0[_wgslsmith_index_u32(u_input.e, 6u)]), !vec4<bool>(global0[_wgslsmith_index_u32(arg_1.x, 6u)], false, true, false), !global0[_wgslsmith_index_u32(arg_1.x, 6u)])), select(select(!vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 6u)], false, false, global0[_wgslsmith_index_u32(4294967295u, 6u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(arg_1.x, 6u)], false, global0[_wgslsmith_index_u32(4294967295u, 6u)], false), vec4<bool>(global0[_wgslsmith_index_u32(162287u, 6u)], global0[_wgslsmith_index_u32(var_0.x, 6u)], true, global0[_wgslsmith_index_u32(arg_1.x, 6u)]), -2147483647i > u_input.b), vec4<bool>(true, any(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_1.x, 6u)], global0[_wgslsmith_index_u32(9292u, 6u)], global0[_wgslsmith_index_u32(u_input.a.x, 6u)])), global0[_wgslsmith_index_u32(abs(arg_1.x), 6u)], true)), select(select(!vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.d.x, 6u)], true), vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(12543u, 6u)], false), select(vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(u_input.d.x, 6u)]), vec4<bool>(false, false, global0[_wgslsmith_index_u32(arg_1.x, 6u)], false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.e, 6u)], global0[_wgslsmith_index_u32(u_input.d.x, 6u)], false, false))), select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.e, 6u)], false, true), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 6u)], true, true), false), vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 6u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 6u)], false), !vec4<bool>(global0[_wgslsmith_index_u32(arg_1.x, 6u)], true, false, true)), func_3(Struct_1(arg_2, true), countOneBits(1i), vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 6u)])).x), true), vec4<bool>(global0[_wgslsmith_index_u32(max(0u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 15102u, 1u), u_input.d.xwx), min(u_input.d.zwz, vec3<u32>(u_input.d.x, arg_1.x, var_0.x)))), 6u)], any(select(!vec3<bool>(global0[_wgslsmith_index_u32(15683u, 6u)], global0[_wgslsmith_index_u32(u_input.d.x, 6u)], true), !vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 6u)], true), global0[_wgslsmith_index_u32(reverseBits(var_0.x), 6u)])), false, global0[_wgslsmith_index_u32(~4656u, 6u)]));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_1) -> vec2<bool> {
    global2 = -11162i;
    var var_0 = Struct_1(_wgslsmith_f_op_f32(select(-699f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1252f) - -448f)), arg_3.b)), all(arg_2.yx));
    var var_1 = arg_1;
    let var_2 = Struct_3(Struct_2(arg_1.a), arg_1, 783f);
    return vec2<bool>(any(arg_2.xxy), true);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_5, arg_2: Struct_4, arg_3: vec2<i32>) -> Struct_4 {
    var var_0 = !func_4(~vec3<u32>(25224u, ~arg_1.a.a.x, ~0u), arg_1.c.a, select(!(!vec4<bool>(arg_2.b, arg_1.c.b.a.b, true, arg_2.b)), select(vec4<bool>(arg_1.a.b, false, arg_1.c.b.a.b, arg_2.b), !vec4<bool>(false, global0[_wgslsmith_index_u32(43633u, 6u)], false, global0[_wgslsmith_index_u32(arg_1.d, 6u)]), false && global0[_wgslsmith_index_u32(16353u, 6u)]), func_2(366f, vec2<u32>(1u, arg_1.a.a.x), _wgslsmith_f_op_f32(floor(-256f)), vec3<f32>(arg_1.b.x, -1724f, arg_1.b.x))), arg_1.c.a.a);
    global0 = array<bool, 6>();
    global0 = array<bool, 6>();
    var var_1 = Struct_5(Struct_4(arg_1.a.a, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.c.a.a.a, arg_1.b.x, -182f, arg_1.b.x), vec4<f32>(arg_1.c.b.a.a, -2203f, 1046f, 1311f), vec4<bool>(true, var_0.x, true, var_0.x))), _wgslsmith_f_op_vec4_f32(arg_1.b * vec4<f32>(1022f, 725f, arg_1.b.x, arg_1.c.c))))) * _wgslsmith_f_op_vec4_f32(step(arg_1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(826f, arg_1.b.x, 470f, 217f))) + _wgslsmith_f_op_vec4_f32(arg_1.b - arg_1.b))))), arg_1.c, arg_2.a.x);
    global0 = array<bool, 6>();
    return arg_2;
}

fn func_5(arg_0: Struct_4, arg_1: vec2<u32>) -> Struct_1 {
    global1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-446f)) + _wgslsmith_f_op_f32(select(-464f, 1073f, global0[_wgslsmith_index_u32(95576u, 6u)]))))), vec2<u32>(_wgslsmith_mod_u32(func_1(-vec2<i32>(u_input.b, -34352i), Struct_5(arg_0, vec4<f32>(-153f, -510f, 487f, 202f), Struct_3(Struct_2(Struct_1(1207f, arg_0.b)), Struct_2(Struct_1(-427f, global0[_wgslsmith_index_u32(13642u, 6u)])), 2042f), arg_0.a.x), Struct_4(arg_0.a, true), ~u_input.c).a.x, ~9182u), u_input.e), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-102f - 1676f) * -1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(414f, 1306f, -1297f), vec3<f32>(266f, -198f, -789f))))))).x;
    var var_0 = select(vec4<bool>(true, true, firstLeadingBit(_wgslsmith_add_u32(u_input.e, u_input.d.x)) != func_1(u_input.c, Struct_5(Struct_4(vec3<u32>(arg_0.a.x, u_input.a.x, u_input.a.x), false), vec4<f32>(-878f, 647f, 1436f, 1096f), Struct_3(Struct_2(Struct_1(1391f, true)), Struct_2(Struct_1(-1551f, global0[_wgslsmith_index_u32(48874u, 6u)])), 1683f), u_input.e), Struct_4(arg_0.a, false), abs(vec2<i32>(u_input.c.x, u_input.b))).a.x, any(func_3(Struct_1(-171f, global0[_wgslsmith_index_u32(u_input.d.x, 6u)]), _wgslsmith_mod_i32(-2147483647i, -63955i), func_2(-1598f, u_input.a, -337f, vec3<f32>(-650f, -688f, 646f)).yx))), !(!vec4<bool>(arg_0.b || arg_0.b, false, true, true)), func_2(_wgslsmith_f_op_f32(-1625f * 1345f), u_input.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1300f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))).x);
    global1 = false;
    global1 = true & all(!func_2(_wgslsmith_f_op_f32(step(-983f, 1000f)), u_input.d.wy, _wgslsmith_f_op_f32(ceil(825f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1105f, 1008f, -1059f) + vec3<f32>(762f, 1000f, -646f))));
    var var_1 = Struct_5(Struct_4(arg_0.a, global0[_wgslsmith_index_u32(~arg_1.x, 6u)]), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1006f, 628f, 1000f, 314f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(954f, -802f, -871f, -1179f) + vec4<f32>(633f, 719f, -225f, -2723f)), vec4<f32>(-766f, 122f, -1210f, -2197f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(202f, -1993f, -928f, -462f), vec4<f32>(-967f, 2913f, 533f, -605f))))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-479f, -1289f, 290f, -509f)))))), Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(582f - -114f), any(var_0.yy))), Struct_2(Struct_1(_wgslsmith_f_op_f32(max(956f, -841f)), 22417i <= u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -994f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1007f, -1000f))))), min(48893u, ~reverseBits(~arg_0.a.x)));
    return var_1.c.b.a;
}

fn func_6(arg_0: Struct_1) -> i32 {
    let var_0 = arg_0;
    var var_1 = Struct_5(func_1(-vec2<i32>(u_input.c.x, ~1i), Struct_5(Struct_4(reverseBits(vec3<u32>(u_input.a.x, 4294967295u, 4294967295u)), !var_0.b), vec4<f32>(1675f, _wgslsmith_f_op_f32(var_0.a * -929f), _wgslsmith_f_op_f32(max(var_0.a, -437f)), _wgslsmith_f_op_f32(round(1000f))), Struct_3(Struct_2(var_0), Struct_2(Struct_1(1629f, true)), _wgslsmith_f_op_f32(exp2(var_0.a))), u_input.e), func_1(u_input.c, Struct_5(func_1(u_input.c, Struct_5(Struct_4(vec3<u32>(u_input.a.x, u_input.d.x, u_input.a.x), true), vec4<f32>(arg_0.a, -644f, var_0.a, arg_0.a), Struct_3(Struct_2(Struct_1(var_0.a, false)), Struct_2(Struct_1(arg_0.a, arg_0.b)), -1868f), 4294967295u), Struct_4(vec3<u32>(8832u, u_input.d.x, u_input.d.x), arg_0.b), u_input.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, arg_0.a, var_0.a, var_0.a)), Struct_3(Struct_2(Struct_1(-1493f, true)), Struct_2(arg_0), arg_0.a), 1u), func_1(select(vec2<i32>(u_input.c.x, 0i), u_input.c, var_0.b), Struct_5(Struct_4(vec3<u32>(u_input.e, u_input.d.x, 0u), var_0.b), vec4<f32>(var_0.a, 1364f, var_0.a, 1720f), Struct_3(Struct_2(arg_0), Struct_2(Struct_1(arg_0.a, false)), 992f), 52948u), Struct_4(vec3<u32>(u_input.e, u_input.e, 17636u), arg_0.b), _wgslsmith_add_vec2_i32(u_input.c, u_input.c)), -u_input.c), u_input.c), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1537f, var_0.a, 1000f, var_0.a))))))), Struct_3(Struct_2(func_5(func_1(u_input.c, Struct_5(Struct_4(vec3<u32>(u_input.e, u_input.d.x, u_input.d.x), global0[_wgslsmith_index_u32(u_input.a.x, 6u)]), vec4<f32>(var_0.a, var_0.a, var_0.a, 344f), Struct_3(Struct_2(var_0), Struct_2(var_0), var_0.a), 25500u), Struct_4(vec3<u32>(70265u, u_input.a.x, u_input.e), true), u_input.c), vec2<u32>(0u, u_input.e))), Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(var_0.a)), var_0.a == -359f)), var_0.a), ~(~(~(~4294967295u))));
    var_1 = Struct_5(var_1.a, var_1.b, Struct_3(var_1.c.a, Struct_2(func_5(var_1.a, vec2<u32>(24274u, 108472u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_f_op_f32(f32(-1f) * -1093f)) - _wgslsmith_f_op_f32(-var_1.b.x))), ~(~_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.e, 20864u), var_1.a.a.x, reverseBits(1u))));
    let var_2 = min(~_wgslsmith_mult_vec3_u32(~(~vec3<u32>(var_1.a.a.x, u_input.e, 27551u)), vec3<u32>(~1u, 1u ^ var_1.d, select(22418u, 0u, arg_0.b))), countOneBits(var_1.a.a));
    let var_3 = var_1.a;
    return max(_wgslsmith_mod_i32(u_input.b, 1i), -_wgslsmith_dot_vec3_i32(~select(vec3<i32>(2246i, 38683i, 24338i), vec3<i32>(17308i, -1i, u_input.b), vec3<bool>(global0[_wgslsmith_index_u32(59361u, 6u)], var_3.b, global0[_wgslsmith_index_u32(24585u, 6u)])), max(vec3<i32>(u_input.b, u_input.c.x, u_input.c.x) | vec3<i32>(2171i, 22326i, 1i), -vec3<i32>(21435i, 1i, 903i))));
}

fn func_7(arg_0: bool, arg_1: i32) -> Struct_3 {
    global3 = true | any(!select(vec3<bool>(false, arg_0, true), !vec3<bool>(false, false, global0[_wgslsmith_index_u32(0u, 6u)]), func_2(-1443f, u_input.d.yz, -703f, vec3<f32>(656f, -1073f, -1000f)).xyw));
    var var_0 = vec3<i32>(arg_1 ^ _wgslsmith_mult_i32(arg_1, arg_1), ~(-6988i), -23844i);
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -518f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-326f * -802f) + 1824f) - _wgslsmith_f_op_f32(-236f * 1000f)), _wgslsmith_f_op_f32(trunc(1f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(637f, -853f, 306f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-217f, -650f, 668f) + vec3<f32>(1392f, 116f, -122f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1036f, -596f, 159f))), func_1(u_input.c, Struct_5(Struct_4(u_input.d.yww, false), vec4<f32>(332f, 336f, 1015f, -887f), Struct_3(Struct_2(Struct_1(253f, false)), Struct_2(Struct_1(202f, global0[_wgslsmith_index_u32(u_input.e, 6u)])), -302f), 4294967295u), Struct_4(vec3<u32>(3525u, u_input.e, 58855u), false), u_input.c).b))) + vec3<f32>(_wgslsmith_f_op_f32(max(-1000f, 366f)), -204f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -285f))))), func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -197f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1751f)) * 845f)), ~u_input.d.xw, _wgslsmith_div_f32(-528f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-508f - -190f))), vec3<f32>(-672f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1892f - -2006f), _wgslsmith_f_op_f32(abs(431f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, 1150f))))).x));
    var var_2 = Struct_1(-1440f, true);
    var var_3 = vec3<u32>(u_input.e << (~min(_wgslsmith_div_u32(u_input.d.x, 43555u), ~u_input.a.x) % 32u), u_input.e >> (u_input.d.x % 32u), min(u_input.a.x >> (_wgslsmith_dot_vec4_u32(~u_input.d, u_input.d) % 32u), u_input.a.x));
    return Struct_3(Struct_2(func_5(func_1(~var_0.xy, Struct_5(Struct_4(vec3<u32>(var_3.x, u_input.e, var_3.x), false), vec4<f32>(779f, var_1.x, var_2.a, -481f), Struct_3(Struct_2(Struct_1(var_1.x, true)), Struct_2(Struct_1(1630f, false)), 660f), 1u), func_1(vec2<i32>(var_0.x, -25380i), Struct_5(Struct_4(vec3<u32>(var_3.x, var_3.x, 60338u), var_2.b), vec4<f32>(var_1.x, 274f, var_1.x, var_1.x), Struct_3(Struct_2(Struct_1(1000f, false)), Struct_2(Struct_1(var_2.a, true)), 274f), 0u), Struct_4(vec3<u32>(u_input.d.x, var_3.x, var_3.x), false), var_0.yy), vec2<i32>(0i, u_input.b) >> (vec2<u32>(17638u, 37084u) % vec2<u32>(32u))), ~(vec2<u32>(var_3.x, 4294967295u) ^ vec2<u32>(var_3.x, u_input.e)))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + -473f)), arg_0)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(311f * var_2.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(Struct_4(u_input.d.ywz, global0[_wgslsmith_index_u32(~31465u, 6u)]), vec4<f32>(-1371f, -1268f, 1051f, _wgslsmith_f_op_f32(926f * _wgslsmith_div_f32(198f, _wgslsmith_f_op_f32(f32(-1f) * -1156f)))), func_7(true, func_6(func_5(func_1(u_input.c, Struct_5(Struct_4(vec3<u32>(u_input.e, 0u, 1u), global0[_wgslsmith_index_u32(u_input.d.x, 6u)]), vec4<f32>(-1000f, 224f, 1530f, -1701f), Struct_3(Struct_2(Struct_1(-315f, false)), Struct_2(Struct_1(-648f, global0[_wgslsmith_index_u32(u_input.a.x, 6u)])), 1765f), 1u), Struct_4(vec3<u32>(12969u, 1u, u_input.e), global0[_wgslsmith_index_u32(u_input.d.x, 6u)]), u_input.c), u_input.d.yw << (vec2<u32>(u_input.d.x, u_input.d.x) % vec2<u32>(32u))))), select(1u, firstTrailingBit(u_input.e), select(true, func_1(u_input.c, Struct_5(Struct_4(vec3<u32>(6112u, u_input.e, 4294967295u), false), vec4<f32>(-1000f, -160f, 1632f, -2049f), Struct_3(Struct_2(Struct_1(442f, true)), Struct_2(Struct_1(569f, global0[_wgslsmith_index_u32(u_input.e, 6u)])), 586f), u_input.d.x), Struct_4(vec3<u32>(4294967295u, u_input.d.x, 1u), false), vec2<i32>(1i, 1i)).b, true)));
    var var_1 = Struct_4(~(vec3<u32>(~4294967295u, _wgslsmith_sub_u32(var_0.a.a.x, var_0.a.a.x), _wgslsmith_div_u32(37099u, 4294967295u)) >> (vec3<u32>(var_0.a.a.x, 93028u, ~var_0.a.a.x) % vec3<u32>(32u))), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(select(var_0.c.b.a.a, -2366f, true))))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(541f, var_0.c.b.a.a, var_0.c.b.a.b)), func_7(var_0.a.b, 47615i).a.a.a)) * var_0.c.c));
    let var_2 = _wgslsmith_f_op_vec3_f32(min(var_0.b.zwz, vec3<f32>(919f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-948f, var_0.b.x)), var_0.c.c)) * var_0.b.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2325f, var_0.c.b.a.a) * var_0.c.a.a.a))))));
    let var_3 = Struct_1(-1000f, !(!all(vec2<bool>(true, false))));
    global3 = var_1.b | global0[_wgslsmith_index_u32(1u, 6u)];
    var var_4 = var_0.a;
    var var_5 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.x)) + -2913f), -1000f), 246f);
    let var_6 = ~1u;
    var_4 = Struct_4(var_1.a, func_1(~vec2<i32>(u_input.c.x, countOneBits(u_input.c.x)), Struct_5(Struct_4(u_input.d.wzx, global0[_wgslsmith_index_u32(4294967295u, 6u)]), var_0.b, Struct_3(func_7(var_1.b, 36214i).b, func_7(var_1.b, -1i).a, -525f), var_0.a.a.x), Struct_4(_wgslsmith_sub_vec3_u32(var_1.a, vec3<u32>(var_0.d, 0u, var_1.a.x)), any(!vec3<bool>(var_1.b, true, false))), select(_wgslsmith_clamp_vec2_i32(~vec2<i32>(7973i, u_input.c.x), vec2<i32>(u_input.b, u_input.b), ~vec2<i32>(u_input.b, 0i)), -u_input.c, var_3.b)).b);
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(_wgslsmith_add_i32(-1i << (1u % 32u), -1i), u_input.b, u_input.c.x, 1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(286f, _wgslsmith_f_op_f32(select(142f, var_2.x, var_0.a.b)), 321f, 950f)))), _wgslsmith_f_op_f32(min(-2104f, 1751f)));
}


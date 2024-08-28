struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: u32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_2,
    d: bool,
}

struct Struct_5 {
    a: vec3<f32>,
    b: u32,
    c: vec4<f32>,
    d: vec4<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3> = array<u32, 3>(53657u, 31664u, 4294967295u);

var<private> global1: array<vec3<bool>, 25> = array<vec3<bool>, 25>(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1() -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], 3u)];
    global1 = array<vec3<bool>, 25>();
    var_0 = ~0u;
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(284f, 621f, -1316f, 653f), vec4<f32>(317f, -1477f, -1067f, 1000f)))))))));
    var var_2 = false;
    return _wgslsmith_mult_i32(abs(-max(1i, 0i)), ~((2147483647i << (abs(global0[_wgslsmith_index_u32(1u, 3u)]) % 32u)) & _wgslsmith_clamp_i32(i32(-1i) * -40131i, 1i, _wgslsmith_sub_i32(35129i, 1i))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: bool) -> bool {
    let var_0 = ~_wgslsmith_div_u32(_wgslsmith_sub_u32(min(u_input.a.x, 95954u), 68805u), 33322u);
    global0 = array<u32, 3>();
    global0 = array<u32, 3>();
    global1 = array<vec3<bool>, 25>();
    var var_1 = ~4294967295u << (global0[_wgslsmith_index_u32(select(_wgslsmith_mult_u32(u_input.a.x, 1u) | 9714u, 4294967295u, arg_2) ^ ~9932u, 3u)] % 32u);
    return arg_1.c.a.x;
}

fn func_2() -> bool {
    var var_0 = vec3<bool>(func_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -251f), vec2<f32>(-112f, 684f), true))), vec2<f32>(-829f, _wgslsmith_f_op_f32(select(1000f, 610f, false)))), Struct_2(Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-104f, -167f, 957f)), u_input.b, vec4<f32>(-1114f, 540f, -266f, -2005f), firstLeadingBit(0i)), Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1575f, 1004f, -589f)), 65972u | global0[_wgslsmith_index_u32(4294967295u, 3u)], _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-821f, -800f, -1216f, 518f))), 1i), Struct_1(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), false), _wgslsmith_f_op_vec3_f32(vec3<f32>(363f, -1645f, -1000f) + vec3<f32>(759f, -1019f, -300f)), global0[_wgslsmith_index_u32(countOneBits(26771u), 3u)], vec4<f32>(-595f, 1836f, 465f, -915f), 1i)), true), any(select(select(global1[_wgslsmith_index_u32(11350u, 25u)], vec3<bool>(false, false, true), true), vec3<bool>(select(true, false, false), any(vec2<bool>(false, true)), true), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a) | 1u, 25u)])), all(!vec3<bool>(true, true, any(global1[_wgslsmith_index_u32(u_input.b, 25u)]))));
    var var_1 = Struct_2(Struct_1(select(!select(vec4<bool>(true, true, var_0.x, true), vec4<bool>(false, true, true, var_0.x), var_0.x), vec4<bool>(true || var_0.x, all(vec4<bool>(false, var_0.x, var_0.x, true)), var_0.x, true), select(vec4<bool>(var_0.x, true, false, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), any(vec3<bool>(true, var_0.x, var_0.x)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1116f, 1134f, -1543f)), _wgslsmith_div_vec3_f32(vec3<f32>(1139f, 541f, 547f), vec3<f32>(-505f, -1586f, -434f)))))), 3551u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-665f, -280f, 913f, 795f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2972f, 945f, -1851f, 130f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-111f, -1265f, 2314f, -870f)))), vec4<bool>(any(vec2<bool>(var_0.x, var_0.x)), true, all(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 3u)], 25u)]), func_3(vec2<f32>(667f, -543f), Struct_2(Struct_1(vec4<bool>(true, var_0.x, true, var_0.x), vec3<f32>(-411f, 439f, 562f), u_input.a.x, vec4<f32>(-1728f, 284f, -708f, -484f), 1i), Struct_1(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec3<f32>(1634f, -1000f, 376f), 1u, vec4<f32>(-853f, 1034f, -320f, 2109f), 10797i), Struct_1(vec4<bool>(true, var_0.x, false, false), vec3<f32>(298f, 1887f, -170f), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], vec4<f32>(-1762f, 152f, 1000f, 1105f), 47641i)), true)))), 35225i), Struct_1(!vec4<bool>(true, var_0.x, all(vec4<bool>(var_0.x, false, false, true)), var_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-856f, -351f, -824f))), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, u_input.a.x), 3u)], _wgslsmith_div_u32(u_input.b, global0[_wgslsmith_index_u32(4884u, 3u)])) | 4294967295u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1000f, 1070f), -111f, _wgslsmith_f_op_f32(-1240f + -1781f), _wgslsmith_f_op_f32(min(-756f, 828f)))), -2678i), Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-621f, -342f, -1000f) - vec3<f32>(-1713f, 848f, 1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(240f, -856f, -1000f)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(307f, 2261f, 1174f)))))), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(105u), ~1u), 3u)], min(global0[_wgslsmith_index_u32(select(u_input.a.x, 40768u, false), 3u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(26331u, u_input.b), 3u)])), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(737f, 1742f, -541f, -959f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1778f, 1288f, -224f, -102f)))))), ~(~(~(-13904i)))));
    var var_2 = var_1.b.e;
    global1 = array<vec3<bool>, 25>();
    return any(var_0.yx);
}

fn func_4(arg_0: vec2<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, -1000f)));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(398f)) - var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_0.x, -243f)))))), vec2<bool>(select(!all(global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), true, arg_0.x), func_2() | !any(vec3<bool>(true, false, true)))));
    var_1 = vec2<f32>(162f, 1f);
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1000f)), var_0.x))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(966f * var_0.x), var_1.x, true)), _wgslsmith_f_op_f32(-var_1.x)) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_div_f32(1287f, _wgslsmith_div_f32(var_0.x, 782f)))));
    let var_3 = Struct_4(Struct_3(select(vec3<bool>(arg_0.x, true, true), vec3<bool>(true, true, true), select(!global1[_wgslsmith_index_u32(14649u, 25u)], !global1[_wgslsmith_index_u32(11574u, 25u)], true))), Struct_2(Struct_1(select(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), !vec4<bool>(false, true, true, arg_0.x), arg_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1132f, 445f, var_2.x))), reverseBits(~u_input.a.x), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(914f, var_1.x, 1509f, var_0.x))))), countOneBits(5515i) << (0u % 32u)), Struct_1(vec4<bool>(arg_0.x, true, arg_0.x, any(global1[_wgslsmith_index_u32(u_input.a.x, 25u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -918f, 827f)), _wgslsmith_div_u32(~global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(countOneBits(4294967295u), 3u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, -1000f, 1011f, 1002f), vec4<f32>(916f, -529f, var_2.x, var_2.x)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.x, -751f, 626f, var_0.x)))), 2147483647i), Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(-744f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(602f + 1973f)), ~(~29397u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, 1224f, var_1.x, var_1.x)))), ~firstLeadingBit(9924i))), Struct_2(Struct_1(vec4<bool>(func_2(), arg_0.x, arg_0.x, any(vec3<bool>(false, false, arg_0.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-917f, var_0.x, -983f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-596f, -1459f, var_1.x))), ~_wgslsmith_mult_u32(28386u, 42668u), vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), 1f, _wgslsmith_f_op_f32(var_0.x - var_1.x), _wgslsmith_f_op_f32(var_0.x * var_2.x)), 9369i), Struct_1(!vec4<bool>(arg_0.x, arg_0.x, true, false), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_2.x, var_2.x)))), u_input.a.x, vec4<f32>(var_1.x, _wgslsmith_f_op_f32(258f - 1524f), _wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(floor(var_0.x))), 51813i), Struct_1(vec4<bool>(arg_0.x, true, true, arg_0.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1069f, var_1.x, var_2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_1.x, var_0.x))), ~reverseBits(1u), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-976f, var_0.x, -956f, 660f), vec4<f32>(var_2.x, var_1.x, var_1.x, var_1.x))), _wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, var_2.x, var_0.x, var_0.x), vec4<f32>(var_1.x, var_0.x, var_2.x, var_1.x)))), _wgslsmith_add_i32(min(21942i, 30312i), _wgslsmith_sub_i32(-2147483647i, -1i)))), any(arg_0));
    return var_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(1i, func_1(), ~59901i);
    let var_1 = global0[_wgslsmith_index_u32(23760u, 3u)] ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, ~54329u), ~firstTrailingBit(~u_input.a));
    global1 = array<vec3<bool>, 25>();
    var var_2 = func_4(vec2<bool>(!all(vec4<bool>(false, false, false, true)) && !any(global1[_wgslsmith_index_u32(41168u, 25u)]), !func_2()));
    var var_3 = any(var_2.b.a);
    var_2 = func_4(!vec2<bool>(var_2.a.a.x, true));
    var_3 = all(vec2<bool>(var_2.a.a.x, true));
    global0 = array<u32, 3>();
    var_2 = Struct_2(Struct_1(vec4<bool>(select(all(vec3<bool>(true, var_2.b.a.x, false)), all(var_2.a.a.zxx), any(vec2<bool>(var_2.b.a.x, var_2.b.a.x))), true, false, !func_2()), var_2.a.d.wwx, select(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_2.c.c, global0[_wgslsmith_index_u32(63772u, 3u)]), u_input.a), func_4(vec2<bool>(false, var_2.a.a.x)).b.c, var_2.c.a.x), _wgslsmith_f_op_vec4_f32(var_2.b.d * vec4<f32>(var_2.b.b.x, _wgslsmith_f_op_f32(floor(var_2.b.b.x)), 563f, _wgslsmith_f_op_f32(step(var_2.b.b.x, -408f)))), ~(-1i | var_0.x)), func_4(vec2<bool>(false, var_2.b.a.x)).c, Struct_1(vec4<bool>(all(var_2.a.a.ww), false, !(true | var_2.b.a.x), var_2.b.a.x), vec3<f32>(_wgslsmith_f_op_f32(select(286f, _wgslsmith_f_op_f32(var_2.c.d.x + 1386f), var_2.a.a.x)), _wgslsmith_f_op_f32(-var_2.b.b.x), var_2.c.b.x), 1u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.a.d.x, var_2.a.d.x, 1482f, var_2.c.b.x))) * var_2.b.d), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_i32(-13167i, abs(var_0.x)), 0u, 8636u, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.d.x) + _wgslsmith_f_op_f32(-var_2.a.d.x)), func_4(var_2.c.a.xx).a.d.x, -1048f), countOneBits(_wgslsmith_sub_i32(var_2.b.e, -1i & _wgslsmith_dot_vec2_i32(var_0.yy, vec2<i32>(0i, var_2.b.e)))));
}


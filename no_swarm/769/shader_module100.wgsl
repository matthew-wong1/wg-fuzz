struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 15>;

var<private> global1: array<vec4<i32>, 13>;

var<private> global2: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> f32 {
    global2 = ~u_input.d;
    global2 = firstTrailingBit(firstTrailingBit(_wgslsmith_mult_u32(~_wgslsmith_sub_u32(0u, u_input.d), 7068u)));
    var var_0 = arg_1.d.c.x;
    let var_1 = !(!arg_1.b.c);
    let var_2 = _wgslsmith_mult_vec2_i32(max(~_wgslsmith_clamp_vec2_i32(vec2<i32>(32570i, u_input.c.x), u_input.a.xz, u_input.c.zy), u_input.a.yy), _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), select(~u_input.c.zy, u_input.a.xz << (vec2<u32>(u_input.d, u_input.d) % vec2<u32>(32u)), !var_1), vec2<i32>(1i, 1i)), u_input.c.zy));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.b.b)));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: i32, arg_3: vec4<f32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(-1335f - arg_3.x)))), -363f, vec2<bool>(!(all(vec2<bool>(true, false)) & any(vec4<bool>(true, false, true, true))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))));
    global1 = array<vec4<i32>, 13>();
    global2 = _wgslsmith_mod_u32(43309u, _wgslsmith_dot_vec3_u32(~vec3<u32>(~u_input.d, ~4294967295u, _wgslsmith_sub_u32(u_input.d, u_input.d)), vec3<u32>(~0u, u_input.d & u_input.d, ~u_input.d)));
    return _wgslsmith_f_op_f32(-var_0.b);
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.a;
    let var_1 = ~_wgslsmith_mod_u32(4294967295u, firstLeadingBit(u_input.d));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -321f) * _wgslsmith_f_op_f32(func_4(var_0.x, _wgslsmith_f_op_f32(trunc(-1283f)), countOneBits(~var_0.x), vec4<f32>(_wgslsmith_div_f32(-457f, -115f), _wgslsmith_div_f32(1400f, -1000f), _wgslsmith_f_op_f32(func_3(var_0.x, Struct_2(vec3<f32>(1114f, 863f, -2312f), Struct_1(vec2<f32>(1000f, -437f), 2095f, vec2<bool>(false, true)), Struct_1(vec2<f32>(-563f, 856f), 226f, vec2<bool>(true, true)), Struct_1(vec2<f32>(2006f, 123f), 633f, vec2<bool>(false, true))))), 362f)))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1303f, 991f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(468f - 368f)))));
    var var_4 = ~var_0.x;
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1258f, var_3))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-378f, var_3) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, var_3))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, 1590f)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(519f, var_3)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 - _wgslsmith_f_op_f32(ceil(-2258f))) - 918f), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(select(false, false, false), true)));
}

fn func_5(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    return arg_2.d;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>) -> f32 {
    let var_0 = vec2<u32>(u_input.d, 1u) ^ vec2<u32>(u_input.d, max(65812u, firstLeadingBit(11289u)));
    var var_1 = select(vec2<bool>(all(func_5(~u_input.a.x, global0[_wgslsmith_index_u32(u_input.d, 15u)], Struct_2(vec3<f32>(-998f, arg_0.b, arg_1.a.x), arg_1, Struct_1(vec2<f32>(arg_0.b, arg_0.a.x), 1000f, vec2<bool>(false, arg_2.x)), arg_0), u_input.d).c), true), select(arg_2.yz, vec2<bool>(arg_2.x, arg_1.c.x || true), func_5(~u_input.b, var_0, Struct_2(vec3<f32>(-312f, arg_0.b, 454f), func_2(), func_5(17123i, vec2<u32>(4294967295u, u_input.d), Struct_2(vec3<f32>(arg_0.a.x, -748f, -363f), Struct_1(vec2<f32>(arg_0.b, 1000f), arg_1.a.x, vec2<bool>(arg_2.x, arg_2.x)), Struct_1(vec2<f32>(223f, 1009f), 770f, arg_0.c), Struct_1(arg_0.a, arg_0.a.x, arg_2.wx)), 0u), arg_1), ~4294967295u).c), !(_wgslsmith_div_f32(-234f, 1551f) < _wgslsmith_f_op_f32(-1419f + arg_1.b)));
    global1 = array<vec4<i32>, 13>();
    let var_2 = ~9981i;
    let var_3 = arg_1;
    return func_2().a.x;
}

fn func_1() -> vec3<bool> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_6(func_5(~countOneBits(u_input.a.x), min(global0[_wgslsmith_index_u32(u_input.d, 15u)] >> (vec2<u32>(1u, u_input.d) % vec2<u32>(32u)), global0[_wgslsmith_index_u32(u_input.d & u_input.d, 15u)]), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(390f, -1228f, 738f)), func_2(), func_2(), Struct_1(vec2<f32>(273f, 659f), -1539f, vec2<bool>(true, true))), u_input.d ^ ~u_input.d), func_5(~u_input.c.x, ~(global0[_wgslsmith_index_u32(u_input.d, 15u)] << (global0[_wgslsmith_index_u32(32711u, 15u)] % vec2<u32>(32u))), Struct_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(332f, -1529f, 1000f), vec3<f32>(147f, -740f, 1296f))), func_2(), Struct_1(vec2<f32>(-629f, 173f), -1162f, vec2<bool>(true, true)), Struct_1(vec2<f32>(627f, -896f), -1000f, vec2<bool>(true, false))), 42696u), vec4<bool>(!any(vec3<bool>(true, true, false)), true, true, select(true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1203f))))), 755f, _wgslsmith_f_op_f32(-1639f + -368f));
    global2 = u_input.d;
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(step(var_0.x, 1143f)))), 651f, var_0.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1109f, 130f, 117f, var_0.x) - vec4<f32>(320f, -214f, 589f, -1471f))), vec4<f32>(_wgslsmith_div_f32(var_0.x, -1362f), var_0.x, var_0.x, -2389f), vec4<bool>(true, true, all(vec2<bool>(false, false)), true)))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-var_0.zzz), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_0.xx, vec2<f32>(1706f, -526f))) - vec2<f32>(674f, var_0.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.x)))), _wgslsmith_f_op_f32(abs(1039f)), select(!func_2().c, !func_5(u_input.b, global0[_wgslsmith_index_u32(52107u, 15u)], Struct_2(vec3<f32>(-328f, var_0.x, var_0.x), Struct_1(vec2<f32>(var_0.x, var_0.x), var_0.x, vec2<bool>(false, false)), Struct_1(vec2<f32>(631f, 627f), var_0.x, vec2<bool>(true, false)), Struct_1(vec2<f32>(var_0.x, var_0.x), -552f, vec2<bool>(true, true))), 29735u).c, false)), func_5(38818i, ~abs(vec2<u32>(u_input.d, u_input.d)), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.ywy, var_0.xyy, false))), func_5(13722i, vec2<u32>(u_input.d, 54472u) ^ vec2<u32>(u_input.d, 1u), Struct_2(var_0.xxz, Struct_1(vec2<f32>(var_0.x, -1000f), 1197f, vec2<bool>(false, true)), Struct_1(vec2<f32>(-326f, -1000f), 1390f, vec2<bool>(false, false)), Struct_1(var_0.ww, var_0.x, vec2<bool>(true, false))), u_input.d), func_2(), func_5(37288i, _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 0u), global0[_wgslsmith_index_u32(u_input.d, 15u)]), Struct_2(var_0.wxy, Struct_1(var_0.yy, var_0.x, vec2<bool>(false, false)), Struct_1(var_0.xw, -1168f, vec2<bool>(false, false)), Struct_1(vec2<f32>(-700f, var_0.x), -1741f, vec2<bool>(false, true))), min(781u, u_input.d))), ~(~(8629u << (u_input.d % 32u)))), Struct_1(vec2<f32>(-1786f, var_0.x), _wgslsmith_f_op_f32(exp2(var_0.x)), vec2<bool>(false, true)));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(var_0.ywx, var_1.a, !var_1.d.c.x)), _wgslsmith_f_op_vec3_f32(select(var_0.yww, var_0.xxx, var_1.c.c.x))))), var_1.b, func_5(u_input.b, global0[_wgslsmith_index_u32(4294967295u, 15u)], Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(var_1.a, var_0.wwz)), _wgslsmith_f_op_vec3_f32(-var_0.zyx), var_1.d.c.x)), var_1.c, Struct_1(var_0.xx, _wgslsmith_f_op_f32(554f * -1271f), !var_1.c.c), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.b, 742f)), 811f, var_1.d.c)), ~(u_input.d << (~1u % 32u))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1623f + 1000f))), var_1.d.b, !vec2<bool>(true, var_1.b.c.x)));
    return select(!(!(!vec3<bool>(var_1.b.c.x, var_2.c.c.x, true))), !(!(!select(vec3<bool>(true, var_2.b.c.x, var_1.b.c.x), vec3<bool>(var_2.d.c.x, var_1.c.c.x, var_2.d.c.x), vec3<bool>(false, var_1.b.c.x, false)))), _wgslsmith_f_op_f32(var_2.b.a.x - _wgslsmith_f_op_f32(trunc(-173f))) == var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 13>();
    let var_0 = firstTrailingBit(firstLeadingBit(0u));
    var var_1 = ~0u;
    let var_2 = !any(func_1());
    var_1 = u_input.d;
    global0 = array<vec2<u32>, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-741f, -406f, 289f) * vec3<f32>(1032f, -661f, 1690f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(648f, -1065f, -342f) * vec3<f32>(934f, 890f, 240f))))), u_input.a.x, global1[_wgslsmith_index_u32((_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.d), vec3<u32>(45851u, 0u, var_0)) ^ _wgslsmith_sub_u32(19807u, var_0)) >> (_wgslsmith_mod_u32(~var_0, firstTrailingBit(u_input.d)) % 32u), 13u)] | (global1[_wgslsmith_index_u32(0u & _wgslsmith_sub_u32(var_0, 0u), 13u)] | ~vec4<i32>(2147483647i, u_input.a.x, 2147483647i, u_input.b)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(718f, _wgslsmith_f_op_f32(f32(-1f) * -182f), _wgslsmith_f_op_f32(round(-550f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(849f, 456f, 865f))))))));
}


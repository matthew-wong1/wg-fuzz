struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<f32>, 13>;

var<private> global2: vec2<i32>;

var<private> global3: array<vec2<i32>, 3> = array<vec2<i32>, 3>(vec2<i32>(-23191i, -10521i), vec2<i32>(-1i, -1i), vec2<i32>(-77319i, i32(-2147483648)));

var<private> global4: bool = true;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: f32) -> bool {
    global1 = array<vec2<f32>, 13>();
    let var_0 = Struct_1(global0.a);
    var var_1 = Struct_2(Struct_1(~min(_wgslsmith_mod_u32(u_input.b.x, global0.a), 4294967295u)), _wgslsmith_f_op_f32(-212f + -234f), _wgslsmith_f_op_f32(exp2(arg_0.x)), ~vec4<u32>(u_input.b.x, 1u, reverseBits(~u_input.b.x), 0u), Struct_1(global0.a));
    global3 = array<vec2<i32>, 3>();
    var var_2 = Struct_2(var_0, _wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x)))), var_1.d, Struct_1(_wgslsmith_add_u32(~(~0u), firstLeadingBit(global0.a))));
    return true;
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    global4 = any(!vec4<bool>(true, true, !all(vec3<bool>(true, true, true)), true));
    let var_0 = all(!vec4<bool>(false, u_input.b.x > ~global0.a, true, func_3(_wgslsmith_div_vec3_f32(vec3<f32>(-1033f, 1000f, 1255f), vec3<f32>(-208f, 264f, 397f)), -229f)));
    var var_1 = _wgslsmith_div_i32(reverseBits(-(~u_input.a.x)), ~abs(-4772i)) << (0u % 32u);
    global1 = array<vec2<f32>, 13>();
    global0 = arg_1;
    return arg_1;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    var var_0 = arg_2;
    global4 = true;
    var var_1 = reverseBits(vec2<i32>(_wgslsmith_mult_i32(firstTrailingBit(u_input.a.x), 0i) << (~firstLeadingBit(1u) % 32u), ~_wgslsmith_div_i32(global2.x, ~0i)));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -911f);
    return func_2(-2147483647i, var_0.e);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: vec4<bool>, arg_3: vec2<u32>) -> Struct_1 {
    global0 = func_4(select(!select(arg_2, select(vec4<bool>(true, false, arg_2.x, arg_2.x), vec4<bool>(true, false, arg_2.x, arg_2.x), vec4<bool>(true, arg_2.x, arg_2.x, false)), arg_2), !(!(!vec4<bool>(true, true, true, arg_2.x))), false & all(vec2<bool>(true, true))), func_2(firstTrailingBit(-20759i), Struct_1(arg_3.x)), Struct_2(func_2(_wgslsmith_dot_vec2_i32(global3[_wgslsmith_index_u32(4294967295u, 3u)], vec2<i32>(global2.x, global2.x)) | 1i, func_2(~(-32125i), Struct_1(4294967295u))), 456f, -1465f, ~(~(~vec4<u32>(87554u, 17155u, arg_3.x, 2010u))), Struct_1(abs(arg_3.x))), all(arg_2.wzx));
    global0 = func_4(arg_2, Struct_1(u_input.b.x), Struct_2(func_4(vec4<bool>(arg_2.x, global2.x > u_input.a.x, arg_2.x, any(vec4<bool>(true, false, true, false))), func_2(~(-27207i), func_2(u_input.a.x, Struct_1(global0.a))), Struct_2(func_2(-37851i, Struct_1(arg_3.x)), arg_0.x, arg_0.x, countOneBits(vec4<u32>(global0.a, 271u, arg_3.x, 50143u)), Struct_1(u_input.b.x)), true), -620f, _wgslsmith_div_f32(126f, _wgslsmith_f_op_f32(arg_0.x + arg_0.x)), ~select(countOneBits(vec4<u32>(860u, u_input.b.x, arg_3.x, 4294967295u)), ~vec4<u32>(arg_3.x, 18317u, global0.a, 70324u), vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x)), func_2(1i, func_4(arg_2, Struct_1(u_input.b.x), Struct_2(Struct_1(u_input.b.x), arg_0.x, arg_1.x, vec4<u32>(1696u, arg_3.x, global0.a, 22137u), Struct_1(arg_3.x)), !arg_2.x))), arg_2.x);
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(arg_0));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_1.x)))), var_0.x, arg_1.x);
    var var_2 = min(~(countOneBits(vec4<u32>(arg_3.x, 4294967295u, 0u, 0u)) | (vec4<u32>(global0.a, 4294967295u, 27603u, 52657u) & vec4<u32>(21722u, global0.a, u_input.b.x, global0.a))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 14467u, 1u, arg_3.x), vec4<u32>(global0.a, arg_3.x, 4294967295u, global0.a))) << (firstTrailingBit(vec4<u32>(65536u, _wgslsmith_clamp_u32(0u, firstTrailingBit(1u), ~20691u), _wgslsmith_clamp_u32(u_input.b.x, ~global0.a, ~global0.a), _wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, global0.a), arg_3.x))) % vec4<u32>(32u));
    return func_2(global2.x, func_4(!select(vec4<bool>(true, arg_2.x, arg_2.x, false), vec4<bool>(false, arg_2.x, arg_2.x, false), select(arg_2, arg_2, true)), Struct_1(firstLeadingBit(_wgslsmith_div_u32(var_2.x, 2253u))), Struct_2(Struct_1(4294967295u & u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(f32(-1f) * -368f)), _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_sub_vec4_u32(~vec4<u32>(var_2.x, 7014u, var_2.x, global0.a), vec4<u32>(1u, arg_3.x, var_2.x, 79321u) | vec4<u32>(15005u, 26500u, var_2.x, 47602u)), func_4(select(arg_2, vec4<bool>(true, false, arg_2.x, arg_2.x), true), func_4(arg_2, Struct_1(15031u), Struct_2(Struct_1(var_2.x), -1246f, arg_1.x, vec4<u32>(62470u, var_2.x, u_input.b.x, 15593u), Struct_1(global0.a)), arg_2.x), Struct_2(Struct_1(global0.a), var_1.x, var_1.x, vec4<u32>(var_2.x, arg_3.x, 30864u, 1u), Struct_1(global0.a)), any(vec2<bool>(true, true)))), false));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c - _wgslsmith_f_op_f32(_wgslsmith_div_f32(530f, arg_2.b) - -582f))));
    global4 = false;
    let var_1 = !(false & select(true, !all(vec2<bool>(true, true)), true));
    var_0 = arg_2.c;
    global3 = array<vec2<i32>, 3>();
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c, 546f, arg_2.c, -556f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1651f, -311f, arg_2.c, -320f))), vec4<f32>(arg_2.b, _wgslsmith_f_op_f32(trunc(arg_2.c)), 849f, arg_0.c)))));
}

fn func_6(arg_0: vec4<f32>, arg_1: u32) -> StorageBuffer {
    var var_0 = Struct_2(func_4(vec4<bool>(func_2(-32990i, Struct_1(arg_1)).a > global0.a, true, true, !all(vec3<bool>(false, true, false))), Struct_1(firstLeadingBit(1u)), Struct_2(func_2(i32(-1i) * -2147483647i, Struct_1(36708u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_0.x)), 936f)), ~vec4<u32>(37367u, global0.a, arg_1, global0.a) | firstLeadingBit(vec4<u32>(4294967295u, 0u, u_input.b.x, u_input.b.x)), func_4(vec4<bool>(false, false, false, true), Struct_1(13912u), Struct_2(Struct_1(u_input.b.x), -810f, -186f, vec4<u32>(20795u, arg_1, 7847u, 1u), Struct_1(96505u)), false)), !any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1392f)), _wgslsmith_f_op_f32(-2020f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.x - 789f))) + arg_0.x)), vec4<u32>(func_4(vec4<bool>(true, true, true, true), func_4(vec4<bool>(true, true, true, true), func_1(arg_0.zyx, vec3<f32>(arg_0.x, arg_0.x, 1742f), vec4<bool>(true, true, false, false), vec2<u32>(52944u, 8100u)), Struct_2(Struct_1(global0.a), arg_0.x, -1013f, vec4<u32>(62368u, global0.a, arg_1, arg_1), Struct_1(arg_1)), -27683i <= global2.x), Struct_2(func_2(-35663i, Struct_1(21734u)), arg_0.x, _wgslsmith_f_op_f32(abs(-442f)), ~vec4<u32>(32413u, 5735u, 1u, global0.a), Struct_1(56902u)), _wgslsmith_mod_i32(2147483647i, global2.x) >= 1i).a, _wgslsmith_div_u32(~0u, u_input.b.x), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(29507u, 14581u, arg_1, global0.a), vec4<u32>(4294967295u, 1u, global0.a, 1u)), ~vec4<u32>(4294967295u, arg_1, arg_1, global0.a)) << (5178u % 32u), _wgslsmith_div_u32(arg_1, 4294967295u)), func_1(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x, -2086f), vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), 1f, true)), _wgslsmith_f_op_f32(arg_0.x * 754f)), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true), u_input.b));
    global3 = array<vec2<i32>, 3>();
    let var_1 = Struct_2(func_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(select(arg_0.x, -501f, false)), _wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_f32(max(-2311f, var_0.b))))), vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0.x)), arg_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x)))), vec4<bool>(!any(vec4<bool>(false, false, false, true)), (-8669i & u_input.a.x) != 2147483647i, any(vec4<bool>(true, true, true, true)), true), min(_wgslsmith_div_vec2_u32(u_input.b, max(u_input.b, u_input.b)), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), u_input.b, var_0.d.xw)))), _wgslsmith_f_op_f32(-arg_0.x), arg_0.x, countOneBits(min(countOneBits(vec4<u32>(1u, arg_1, 4294967295u, u_input.b.x)), var_0.d)), Struct_1(arg_1));
    return StorageBuffer(_wgslsmith_f_op_f32(-arg_0.x), ~abs(-u_input.a) >> (~(~_wgslsmith_add_vec2_u32(vec2<u32>(var_1.d.x, var_0.e.a), var_0.d.wx)) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~(~global0.a));
    global1 = array<vec2<f32>, 13>();
    let x = u_input.a;
    s_output = func_6(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_5(Struct_2(func_1(vec3<f32>(-1000f, -1359f, -317f), vec3<f32>(1000f, -1606f, 845f), vec4<bool>(false, true, false, true), u_input.b), -492f, _wgslsmith_f_op_f32(abs(-889f)), abs(vec4<u32>(0u, 96106u, global0.a, u_input.b.x)), func_2(-9476i, Struct_1(global0.a))), firstLeadingBit(global2.x), Struct_2(func_2(global2.x, Struct_1(656u)), _wgslsmith_f_op_f32(min(-296f, 2171f)), -1441f, _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.a, 1u, 55424u, u_input.b.x), vec4<u32>(1u, var_0.a, 22188u, u_input.b.x), vec4<u32>(38685u, 58471u, 4294967295u, var_0.a)), Struct_1(global0.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1683f, -1367f, 586f, -1599f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1135f, 480f, 1024f, 1000f) + vec4<f32>(899f, -1280f, -1753f, -693f)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), false)))), -abs(-17924i) == _wgslsmith_div_i32(u_input.a.x, ~55059i))), select(0u, _wgslsmith_div_u32(88450u, 30083u), true));
}


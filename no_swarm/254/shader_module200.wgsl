struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
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

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec4<bool>(false, false, false, false), 914f), Struct_1(vec4<bool>(true, true, false, false), -815f), Struct_1(vec4<bool>(true, true, false, true), 842f), Struct_1(vec4<bool>(true, false, true, true), 568f), Struct_1(vec4<bool>(true, true, true, true), 1537f), Struct_1(vec4<bool>(false, true, false, true), 311f), Struct_1(vec4<bool>(false, false, true, false), 301f), Struct_1(vec4<bool>(true, false, true, false), 436f), Struct_1(vec4<bool>(true, true, false, false), 631f), Struct_1(vec4<bool>(false, true, false, false), -1009f), Struct_1(vec4<bool>(true, false, false, true), 171f), Struct_1(vec4<bool>(false, false, false, false), -303f), Struct_1(vec4<bool>(false, true, false, false), -283f), Struct_1(vec4<bool>(false, false, false, true), -1000f));

var<private> global2: vec3<u32>;

var<private> global3: vec3<i32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -1768f) - _wgslsmith_div_f32(868f, -113f)), _wgslsmith_f_op_f32(max(-2159f, -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -695f, 418f)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-518f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -364f) + -2158f))), -1535f));
    let var_1 = global1[_wgslsmith_index_u32(arg_0.x, 14u)];
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(637f, -1092f)) * _wgslsmith_f_op_f32(trunc(var_0.x)))), true));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-135f, _wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(-var_0.x))) + var_0.x), -(vec2<i32>(1i, u_input.c) | _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -17279i), vec2<i32>(-4321i, 2147483647i), global3.yx)) | u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, 252f, 1000f), vec3<f32>(var_2, 201f, var_0.x))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-672f, var_1.b, 1161f), vec3<f32>(var_1.b, 2014f, var_0.x))), select(var_1.a.zyx, vec3<bool>(true, false, var_1.a.x), vec3<bool>(true, global0.x, var_1.a.x)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, var_2, var_0.x) + vec3<f32>(var_0.x, 103f, -765f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, var_1.b), vec3<f32>(-310f, -2188f, var_1.b), false))))), var_1.a.x, Struct_1(vec4<bool>(_wgslsmith_f_op_f32(var_1.b * var_2) < _wgslsmith_f_op_f32(exp2(var_0.x)), !(arg_0.x < 40040u), false, var_1.a.x), _wgslsmith_f_op_f32(-1129f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), var_2, var_1.b <= var_2)))));
    var var_4 = _wgslsmith_f_op_vec2_f32(-var_3.c.yz);
    return var_1.b;
}

fn func_2(arg_0: f32) -> vec4<u32> {
    var var_0 = Struct_2(arg_0, global3.xy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, 553f, arg_0), vec3<f32>(-177f, -247f, -477f), global0.x)) + vec3<f32>(-416f, 2297f, arg_0)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) - _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(arg_0, arg_0, arg_0))))), false, Struct_1(!vec4<bool>(true, true, true, global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<u32>(global2.x, global2.x) ^ vec2<u32>(1u, global2.x))) - arg_0)));
    global1 = array<Struct_1, 14>();
    let var_1 = all(var_0.e.a.xyx);
    var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1374f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, var_0.e.b))))), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(54103i, _wgslsmith_dot_vec2_i32(vec2<i32>(-32684i, -4254i), vec2<i32>(global3.x, -10133i))), vec2<i32>(0i, global3.x << (global2.x % 32u))), 1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(357f, arg_0, arg_0))))) + var_0.c), select(51566u, global2.x, var_1) == ~abs(global2.x), Struct_1(select(var_0.e.a, var_0.e.a, var_0.e.a), var_0.a));
    global1 = array<Struct_1, 14>();
    return abs(select(min(vec4<u32>(global2.x, global2.x, 1u, 4294967295u), vec4<u32>(0u, 4294967295u, 4294967295u, global2.x)) << (~(~vec4<u32>(global2.x, global2.x, 23144u, 12864u)) % vec4<u32>(32u)), vec4<u32>(~5760u | (global2.x | global2.x), ~1u, 0u, global2.x), select(vec4<bool>(true, global0.x, true, -378f > var_0.a), vec4<bool>(false & var_0.d, var_1, global3.x > -1i, true), all(select(global0.yz, var_0.e.a.ww, false)))));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    global0 = vec3<bool>(arg_2.d, global0.x, all(!arg_2.e.a.xzz));
    global0 = arg_1.e.a.zxz;
    global0 = select(!vec3<bool>(!(global2.x < 4294967295u), !all(vec4<bool>(true, arg_2.e.a.x, true, arg_1.e.a.x)), any(!vec3<bool>(arg_1.d, true, true))), arg_2.e.a.yww, !select(vec3<bool>(!arg_2.e.a.x, any(arg_1.e.a.zzz), global0.x), select(vec3<bool>(true, global0.x, global0.x), select(vec3<bool>(true, arg_1.d, false), arg_1.e.a.xzx, vec3<bool>(arg_1.e.a.x, true, arg_1.d)), true), select(select(vec3<bool>(false, false, true), vec3<bool>(arg_2.e.a.x, global0.x, false), vec3<bool>(false, false, global0.x)), vec3<bool>(global0.x, false, true), true)));
    global2 = vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(global2.x, 0u, global2.x, 0u)), func_2(_wgslsmith_div_f32(958f, arg_1.e.b))), func_2(arg_2.c.x).x), 25781u, _wgslsmith_mult_u32(2791u, global2.x));
    global1 = array<Struct_1, 14>();
    return arg_2;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.c.x)) * _wgslsmith_f_op_f32(func_3(global2.yx)))))), _wgslsmith_f_op_f32(-arg_2.b)));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(223f, arg_1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.b), arg_1.e.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-682f, 347f, arg_1.e.b, 1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-889f, arg_1.e.b, -428f, arg_1.c.x) * vec4<f32>(arg_1.a, arg_1.a, arg_1.c.x, -974f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.x, _wgslsmith_f_op_f32(trunc(arg_1.e.b)), -506f, arg_2.b))));
    let var_2 = !arg_1.d;
    global3 = abs(-abs(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, global3.x, 4382i), -vec3<i32>(global3.x, global3.x, 41107i))));
    var var_3 = func_1(_wgslsmith_f_op_f32(-arg_2.b), Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1000f, 1086f, arg_1.d && false)), _wgslsmith_f_op_f32(abs(var_1.x)), arg_2.a.x)), vec2<i32>(arg_1.b.x, abs(arg_1.b.x) | -1i), _wgslsmith_f_op_vec3_f32(min(arg_1.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.e.b, arg_1.a, 2595f)))))), true, arg_2), arg_1).e;
    return Struct_1(vec4<bool>(_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(-var_1.x))) > arg_2.b, !(!all(vec3<bool>(arg_2.a.x, true, var_2))), (!var_2 == true) | false, true), arg_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(true, func_1(-1000f, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1360f), ~vec2<i32>(-3695i, -55226i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-581f, -795f, 522f)))), !(!global0.x), global1[_wgslsmith_index_u32(abs(4294967295u) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, global2.x), global2.xy), 14u)]), Struct_2(1000f, u_input.a, vec3<f32>(-1579f, _wgslsmith_f_op_f32(round(1000f)), -1393f), true, Struct_1(vec4<bool>(true, false, global0.x, global0.x), _wgslsmith_f_op_f32(-324f + -1000f)))), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(575f + -1777f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-389f)))), Struct_2(func_1(_wgslsmith_f_op_f32(872f + -745f), func_1(-1472f, Struct_2(-946f, vec2<i32>(-4515i, u_input.b), vec3<f32>(1133f, -1507f, 160f), global0.x, Struct_1(vec4<bool>(false, false, false, global0.x), -513f)), Struct_2(-440f, vec2<i32>(u_input.c, 1i), vec3<f32>(-692f, 1122f, -186f), false, global1[_wgslsmith_index_u32(4294967295u, 14u)])), func_1(-915f, Struct_2(806f, global3.xy, vec3<f32>(1711f, -230f, -809f), global0.x, Struct_1(vec4<bool>(global0.x, global0.x, false, global0.x), -243f)), Struct_2(-1062f, vec2<i32>(15856i, -2147483647i), vec3<f32>(462f, 997f, 493f), global0.x, global1[_wgslsmith_index_u32(global2.x, 14u)]))).c.x, u_input.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(746f, -2388f, 102f)), ~global2.x <= global2.x, global1[_wgslsmith_index_u32(global2.x, 14u)]), Struct_2(1f, firstLeadingBit(global3.zy) | select(vec2<i32>(global3.x, global3.x), u_input.a, global0.xy), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(946f, 175f, -1923f) + vec3<f32>(414f, 802f, -251f))), !all(global0.yx), Struct_1(vec4<bool>(true, false, global0.x, global0.x), _wgslsmith_f_op_f32(-1505f - -1155f)))).e);
    global3 = vec3<i32>(_wgslsmith_dot_vec2_i32(global3.xx, global3.xz), func_1(_wgslsmith_f_op_f32(-var_0.b), Struct_2(var_0.b, ~vec2<i32>(u_input.c, 61084i), _wgslsmith_f_op_vec3_f32(vec3<f32>(209f, 615f, var_0.b) + _wgslsmith_div_vec3_f32(vec3<f32>(var_0.b, 157f, var_0.b), vec3<f32>(1763f, -1048f, -1247f))), true, func_4(true, Struct_2(var_0.b, global3.yx, vec3<f32>(var_0.b, var_0.b, var_0.b), true, global1[_wgslsmith_index_u32(global2.x, 14u)]), func_1(var_0.b, Struct_2(var_0.b, u_input.a, vec3<f32>(var_0.b, 328f, -336f), global0.x, Struct_1(var_0.a, var_0.b)), Struct_2(var_0.b, vec2<i32>(2147483647i, -21044i), vec3<f32>(var_0.b, var_0.b, var_0.b), var_0.a.x, global1[_wgslsmith_index_u32(4294967295u, 14u)])).e)), func_1(_wgslsmith_div_f32(-657f, var_0.b), Struct_2(_wgslsmith_div_f32(-2202f, var_0.b), ~u_input.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(-891f, var_0.b, var_0.b) - vec3<f32>(var_0.b, var_0.b, var_0.b)), select(true, var_0.a.x, true), Struct_1(var_0.a, var_0.b)), Struct_2(var_0.b, -u_input.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(-516f, var_0.b, var_0.b) - vec3<f32>(var_0.b, -787f, -129f)), global0.x, Struct_1(vec4<bool>(var_0.a.x, true, var_0.a.x, true), -2250f)))).b.x, _wgslsmith_div_i32(func_1(-1161f, Struct_2(_wgslsmith_f_op_f32(var_0.b - 226f), vec2<i32>(-23877i, -55615i), vec3<f32>(-576f, var_0.b, var_0.b), true, func_1(-263f, Struct_2(var_0.b, u_input.a, vec3<f32>(var_0.b, -547f, var_0.b), false, global1[_wgslsmith_index_u32(global2.x, 14u)]), Struct_2(-405f, u_input.a, vec3<f32>(var_0.b, var_0.b, var_0.b), var_0.a.x, global1[_wgslsmith_index_u32(1u, 14u)])).e), func_1(_wgslsmith_f_op_f32(-614f * var_0.b), func_1(365f, Struct_2(var_0.b, global3.xz, vec3<f32>(var_0.b, 122f, 1397f), true, Struct_1(var_0.a, -1000f)), Struct_2(433f, global3.xz, vec3<f32>(-1160f, 476f, var_0.b), false, Struct_1(vec4<bool>(true, var_0.a.x, global0.x, global0.x), var_0.b))), Struct_2(var_0.b, vec2<i32>(54733i, u_input.c), vec3<f32>(var_0.b, var_0.b, var_0.b), var_0.a.x, Struct_1(vec4<bool>(global0.x, global0.x, true, false), 103f)))).b.x, _wgslsmith_div_i32(u_input.c, 73777i)));
    let var_1 = select(select(var_0.a, vec4<bool>(true, true, true, (var_0.b >= 764f) || (global0.x | true)), var_0.a), vec4<bool>(var_0.a.x, _wgslsmith_f_op_f32(-var_0.b) >= _wgslsmith_f_op_f32(round(-524f)), true, global0.x), select(!select(select(var_0.a, var_0.a, vec4<bool>(global0.x, global0.x, true, false)), !var_0.a, var_0.a), vec4<bool>(var_0.a.x, any(vec2<bool>(true, false)) || func_4(false, Struct_2(-1421f, vec2<i32>(u_input.a.x, u_input.a.x), vec3<f32>(-382f, var_0.b, var_0.b), false, Struct_1(vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x), -1647f)), global1[_wgslsmith_index_u32(56704u, 14u)]).a.x, !func_1(132f, Struct_2(var_0.b, vec2<i32>(-2147483647i, global3.x), vec3<f32>(var_0.b, var_0.b, var_0.b), true, Struct_1(vec4<bool>(global0.x, true, var_0.a.x, global0.x), var_0.b)), Struct_2(var_0.b, u_input.a, vec3<f32>(var_0.b, var_0.b, 691f), false, Struct_1(vec4<bool>(var_0.a.x, true, var_0.a.x, true), -183f))).d, true & !global0.x), var_0.a));
    let var_2 = 0u;
    var var_3 = var_0.b;
    var var_4 = ~global2.xz;
    var var_5 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.b, 1979f, var_0.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(718f, 262f, -285f, -260f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(149f, var_0.b, var_0.b, -445f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_0.b, 2484f, 675f) * vec4<f32>(-412f, var_0.b, -609f, var_0.b))))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-1i));
}


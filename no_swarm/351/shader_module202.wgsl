struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: bool,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7> = array<bool, 7>(false, false, false, false, true, false, true);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: vec2<f32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(abs(108f));
    var var_1 = Struct_2(-598f, ~u_input.c.x, Struct_1(~abs(select(vec4<u32>(u_input.d, 52864u, u_input.c.x, u_input.d), vec4<u32>(u_input.c.x, 0u, 0u, 0u), true)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(850f, arg_2.x, arg_0, 719f)))))), true, all(!select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(u_input.d, 7u)]), vec3<bool>(global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(27627u, 7u)], false), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], false))), select(!(!vec2<bool>(true, global0[_wgslsmith_index_u32(20227u, 7u)])), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], !global0[_wgslsmith_index_u32(4294967295u, 7u)]), !select(vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 7u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 7u)], false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 7u)], false)))));
    var var_2 = var_1.a;
    var_0 = arg_2.x;
    let var_3 = -604f;
    return var_1.c.a;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec2<i32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_1.c.b, vec4<f32>(-279f, arg_1.c.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_2.x, -2638f)), _wgslsmith_f_op_f32(-arg_1.c.b.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(arg_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -1126f), true)))) * arg_0.c.b);
    var var_1 = abs(vec4<i32>(u_input.b.x, _wgslsmith_sub_i32(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.x, arg_3.x, arg_3.x, 22337i), vec4<i32>(-1i, -31253i, arg_3.x, -1i))) << (abs(~6835u) % 32u), 37569i, u_input.e));
    global0 = array<bool, 7>();
    let var_2 = 1u;
    let var_3 = Struct_2(-1000f, _wgslsmith_add_u32(arg_0.b, func_2(-1269f, -firstTrailingBit(vec3<i32>(2147483647i, 0i, arg_3.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, arg_2.x))).x), Struct_1(vec4<u32>(_wgslsmith_mod_u32(select(4294967295u, var_2, true), ~arg_1.b), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a.x, 109551u, 0u)), select(arg_0.c.a.xyx, u_input.a, vec3<bool>(global0[_wgslsmith_index_u32(arg_0.c.a.x, 7u)], arg_1.c.c, false))), select(0u & u_input.c.x, _wgslsmith_add_u32(30021u, 1u), true), 0u), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(arg_1.c.b.x, arg_1.a, false)), _wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(var_0.x + -1546f), -1034f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, -1000f, arg_0.a, -755f)))), true)), true, _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(arg_1.a * -1091f)) > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(arg_0.c.b.x)), arg_0.a)), arg_0.c.e));
    return !select(vec4<bool>(!(global0[_wgslsmith_index_u32(arg_0.b, 7u)] & false), arg_1.c.c, (u_input.b.x >> (49582u % 32u)) > firstTrailingBit(10803i), global0[_wgslsmith_index_u32(1u, 7u)]), vec4<bool>(false, any(var_3.c.e), true && arg_0.c.d, true), arg_0.c.e.x || true);
}

fn func_1(arg_0: vec2<i32>) -> bool {
    let var_0 = Struct_1(select(firstLeadingBit(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1084f), -vec3<i32>(0i, -57398i, -1i), _wgslsmith_div_vec2_f32(vec2<f32>(-1172f, -123f), vec2<f32>(-764f, -523f)))), ~_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.d, u_input.d, u_input.c.x), vec4<u32>(0u, 1u, u_input.a.x, u_input.c.x), vec4<u32>(1u, 0u, 16375u, u_input.a.x)), max(vec4<u32>(53319u, 23303u, u_input.c.x, u_input.c.x), vec4<u32>(4294967295u, 89590u, u_input.a.x, u_input.a.x))), select(!func_3(Struct_2(554f, u_input.a.x, Struct_1(vec4<u32>(4294967295u, 21879u, u_input.c.x, u_input.c.x), vec4<f32>(1842f, 674f, 1427f, 365f), global0[_wgslsmith_index_u32(u_input.d, 7u)], global0[_wgslsmith_index_u32(15146u, 7u)], vec2<bool>(true, true))), Struct_2(753f, u_input.d, Struct_1(vec4<u32>(1u, u_input.c.x, u_input.c.x, 4294967295u), vec4<f32>(-1149f, 1000f, -1205f, -652f), global0[_wgslsmith_index_u32(5256u, 7u)], true, vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 7u)], false))), vec3<f32>(1047f, 2643f, 170f), u_input.b.xy), func_3(Struct_2(951f, u_input.d, Struct_1(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 28346u), vec4<f32>(267f, 106f, 1241f, 1155f), global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(u_input.d, 7u)], vec2<bool>(false, false))), Struct_2(1000f, u_input.a.x, Struct_1(vec4<u32>(u_input.a.x, 3671u, 0u, u_input.c.x), vec4<f32>(-121f, -2304f, 141f, 149f), true, false, vec2<bool>(global0[_wgslsmith_index_u32(40290u, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)]))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, 809f, 937f), vec3<f32>(1120f, 300f, 1895f))), select(u_input.b.yz, u_input.b.zx, vec2<bool>(false, false))), vec4<bool>(global0[_wgslsmith_index_u32(4467u, 7u)], false, true, 0i != u_input.b.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-511f * -758f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(779f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(500f - -736f), -1661f)))), !(global0[_wgslsmith_index_u32(24433u, 7u)] | select(global0[_wgslsmith_index_u32(min(u_input.a.x, u_input.c.x), 7u)], !global0[_wgslsmith_index_u32(u_input.c.x, 7u)], true)), false, select(!(!vec2<bool>(global0[_wgslsmith_index_u32(59392u, 7u)], false)), select(!(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 7u)], false)), select(!vec2<bool>(global0[_wgslsmith_index_u32(59146u, 7u)], true), !vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 7u)]), global0[_wgslsmith_index_u32(u_input.d, 7u)]), vec2<bool>(true, false)), select(vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 1u), 7u)], -32635i > arg_0.x), vec2<bool>(func_3(Struct_2(739f, u_input.a.x, Struct_1(vec4<u32>(28393u, u_input.a.x, u_input.d, u_input.c.x), vec4<f32>(370f, 758f, -1151f, -1263f), global0[_wgslsmith_index_u32(u_input.c.x, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)], vec2<bool>(false, true))), Struct_2(1000f, 33714u, Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 0u), vec4<f32>(317f, -1739f, -1000f, 602f), true, global0[_wgslsmith_index_u32(111422u, 7u)], vec2<bool>(true, false))), vec3<f32>(-1327f, -147f, -391f), u_input.b.yz).x, !global0[_wgslsmith_index_u32(4294967295u, 7u)]), !(!vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.d, 7u)])))));
    let var_1 = true;
    global0 = array<bool, 7>();
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(var_0.b - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-2044f)), _wgslsmith_f_op_f32(-506f + var_0.b.x), 1552f, _wgslsmith_f_op_f32(var_0.b.x - var_0.b.x)) - var_0.b))));
    var var_3 = _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x >> (4294967295u % 32u), ~(~var_0.a.x)), max(var_0.a.ww, ~vec2<u32>(~4294967295u, _wgslsmith_clamp_u32(u_input.d, u_input.d, 36662u))));
    return true | func_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.x))), u_input.d, Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(76490u, 0u, 1u, 83169u), var_0.a, vec4<u32>(u_input.d, var_0.a.x, var_0.a.x, u_input.d)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(300f, var_0.b.x, var_2.x, -739f))), true, false, var_0.e)), Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_2.x, var_0.b.x)))), _wgslsmith_mod_u32(11048u, var_0.a.x), var_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b.zyw))), arg_0).x;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: vec3<bool>) -> Struct_1 {
    global0 = array<bool, 7>();
    let var_0 = -903f;
    global0 = array<bool, 7>();
    global0 = array<bool, 7>();
    let var_1 = 33230i;
    return Struct_1(firstTrailingBit(_wgslsmith_add_vec4_u32(min(~vec4<u32>(1u, 4294967295u, 27215u, 0u), func_2(-1063f, u_input.b, arg_0.ww)), vec4<u32>(0u, u_input.a.x, 74578u, u_input.a.x) & max(vec4<u32>(15405u, 0u, 29242u, 1u), vec4<u32>(17323u, u_input.d, u_input.a.x, u_input.d)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(arg_0, vec4<f32>(-222f, var_0, var_0, -1100f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0, arg_0.x, 674f)))), func_3(Struct_2(arg_0.x, 49566u, Struct_1(vec4<u32>(u_input.c.x, u_input.a.x, u_input.d, u_input.a.x), vec4<f32>(var_0, -674f, 624f, -1246f), arg_2.x, true, arg_1.zz)), Struct_2(arg_0.x, u_input.a.x, Struct_1(vec4<u32>(26490u, u_input.c.x, 17185u, u_input.d), arg_0, false, arg_1.x, arg_1.yw)), _wgslsmith_div_vec3_f32(arg_0.wzy, vec3<f32>(arg_0.x, var_0, 808f)), u_input.b.yx))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), var_0, _wgslsmith_f_op_f32(arg_0.x - -120f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, false)))))), false, true, arg_2.xx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(142f, -982f, -952f, 646f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(680f, -742f, 563f, -1314f))))), select(vec4<bool>(all(!vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 7u)])), true, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d, u_input.a.x) ^ 18666u, 7u)], true | !global0[_wgslsmith_index_u32(u_input.a.x, 7u)]), vec4<bool>(true, all(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 7u)], global0[_wgslsmith_index_u32(u_input.c.x, 7u)], true)), any(vec2<bool>(true, global0[_wgslsmith_index_u32(36520u, 7u)])), true | func_1(vec2<i32>(u_input.b.x, u_input.e))), vec4<bool>(1u < _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.c.x, u_input.a.x, 1u), vec4<u32>(u_input.a.x, u_input.c.x, 49036u, u_input.a.x)), !any(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 7u)])), all(vec2<bool>(global0[_wgslsmith_index_u32(1u, 7u)], false)) && all(vec2<bool>(global0[_wgslsmith_index_u32(77912u, 7u)], false)), any(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(16692u, 7u)], global0[_wgslsmith_index_u32(1u, 7u)])))), vec3<bool>(true, true, func_1(u_input.b.yx)));
    let x = u_input.a;
    s_output = StorageBuffer(522f, var_0.b, u_input.e, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, 1u), firstLeadingBit(var_0.a.xz)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b)));
}


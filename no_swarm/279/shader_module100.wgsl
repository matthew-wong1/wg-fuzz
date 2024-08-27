struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: i32,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 13>;

var<private> global1: array<Struct_2, 12>;

var<private> global2: Struct_2;

var<private> global3: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(26495i, 1000f, 0i, vec3<f32>(-1434f, -1000f, 1332f), vec2<i32>(88221i, 17868i)), Struct_2(6637i, -687f, 29257i, vec3<f32>(167f, 983f, 585f), vec2<i32>(0i, 87422i)), Struct_2(0i, 1839f, i32(-2147483648), vec3<f32>(-307f, -505f, 709f), vec2<i32>(3759i, i32(-2147483648))), Struct_2(0i, 1901f, 30103i, vec3<f32>(-1000f, 493f, -513f), vec2<i32>(-10563i, 19526i)), Struct_2(-19508i, 152f, i32(-2147483648), vec3<f32>(-976f, -916f, 252f), vec2<i32>(-37461i, 2147483647i)), Struct_2(25250i, 214f, i32(-2147483648), vec3<f32>(1003f, 2032f, 556f), vec2<i32>(12127i, 1i)), Struct_2(8149i, 1186f, -1i, vec3<f32>(-111f, 608f, 1833f), vec2<i32>(9663i, 11494i)), Struct_2(-8821i, -484f, 0i, vec3<f32>(-1808f, 913f, 1000f), vec2<i32>(0i, i32(-2147483648))), Struct_2(1i, -1429f, -1308i, vec3<f32>(-106f, 790f, -228f), vec2<i32>(-9471i, 1i)), Struct_2(2147483647i, -1000f, 1i, vec3<f32>(768f, -359f, -773f), vec2<i32>(0i, 11446i)), Struct_2(13212i, -948f, 40567i, vec3<f32>(741f, -1222f, -2214f), vec2<i32>(-1i, 0i)), Struct_2(0i, -656f, 1i, vec3<f32>(442f, -1351f, 2064f), vec2<i32>(-5318i, 57045i)), Struct_2(-25960i, -820f, -5353i, vec3<f32>(-2394f, 517f, 1508f), vec2<i32>(-23179i, 0i)), Struct_2(10146i, -939f, -2079i, vec3<f32>(-689f, -524f, -420f), vec2<i32>(-29276i, i32(-2147483648))), Struct_2(2147483647i, -392f, 34209i, vec3<f32>(897f, -2556f, 709f), vec2<i32>(39554i, -7528i)), Struct_2(-7549i, 1768f, -1i, vec3<f32>(949f, -1054f, -169f), vec2<i32>(i32(-2147483648), -62610i)), Struct_2(-6128i, -239f, 29004i, vec3<f32>(-575f, 427f, 3130f), vec2<i32>(2147483647i, -40435i)), Struct_2(2147483647i, 1046f, i32(-2147483648), vec3<f32>(782f, -1497f, 1697f), vec2<i32>(-1i, 6841i)), Struct_2(-1i, -1000f, -13828i, vec3<f32>(866f, 561f, -1682f), vec2<i32>(2147483647i, -1412i)), Struct_2(2147483647i, 1384f, 60644i, vec3<f32>(702f, -502f, -432f), vec2<i32>(i32(-2147483648), -29304i)), Struct_2(i32(-2147483648), -411f, 12146i, vec3<f32>(-279f, 121f, -148f), vec2<i32>(2494i, 14072i)));

var<private> global4: array<bool, 11>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    global4 = array<bool, 11>();
    var var_0 = global1[_wgslsmith_index_u32(~reverseBits(u_input.d.x), 12u)];
    let var_1 = all(vec4<bool>(!global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(109659u, u_input.c, 23259u, u_input.b.x) | vec4<u32>(u_input.b.x, u_input.c, u_input.c, 18494u), max(vec4<u32>(41958u, u_input.b.x, u_input.b.x, 1u), vec4<u32>(13900u, 14518u, 1u, 4294967295u))), 11u)], true, global4[_wgslsmith_index_u32(u_input.c, 11u)] | any(select(vec3<bool>(global4[_wgslsmith_index_u32(u_input.c, 11u)], true, global4[_wgslsmith_index_u32(150256u, 11u)]), vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 11u)], false, false), global4[_wgslsmith_index_u32(5476u, 11u)])), any(vec4<bool>(false, global4[_wgslsmith_index_u32(0u, 11u)], true, any(vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 11u)], global4[_wgslsmith_index_u32(u_input.c, 11u)]))))));
    var var_2 = Struct_1(select(select(!vec3<bool>(global4[_wgslsmith_index_u32(1u, 11u)], false, var_1), !(!vec3<bool>(var_1, global4[_wgslsmith_index_u32(u_input.c, 11u)], global4[_wgslsmith_index_u32(0u, 11u)])), select(select(vec3<bool>(var_1, false, true), vec3<bool>(global4[_wgslsmith_index_u32(u_input.c, 11u)], var_1, true), vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.b.x, 11u)], false)), select(vec3<bool>(true, false, global4[_wgslsmith_index_u32(u_input.d.x, 11u)]), vec3<bool>(false, global4[_wgslsmith_index_u32(9856u, 11u)], true), vec3<bool>(true, false, true)), true || var_1)), vec3<bool>(all(vec2<bool>(false, true)), false, false), !vec3<bool>(all(vec3<bool>(var_1, global4[_wgslsmith_index_u32(4294967295u, 11u)], true)), true, global4[_wgslsmith_index_u32(~u_input.b.x, 11u)])), global4[_wgslsmith_index_u32(u_input.c, 11u)], !(!vec3<bool>(!var_1, true, true)));
    let var_3 = !(all(select(vec4<bool>(var_2.a.x, global4[_wgslsmith_index_u32(u_input.b.x, 11u)], var_2.a.x, global4[_wgslsmith_index_u32(1u, 11u)]), select(vec4<bool>(false, var_1, false, global4[_wgslsmith_index_u32(27762u, 11u)]), vec4<bool>(var_2.a.x, var_2.a.x, var_2.c.x, var_1), vec4<bool>(true, true, false, true)), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 39203u, u_input.c, u_input.c), vec4<u32>(u_input.b.x, 0u, u_input.c, u_input.b.x)), 11u)])) | false);
    return -1328f;
}

fn func_2(arg_0: i32) -> vec4<f32> {
    global1 = array<Struct_2, 12>();
    global1 = array<Struct_2, 12>();
    let var_0 = global0[_wgslsmith_index_u32(u_input.d.x & 137505u, 13u)];
    var var_1 = ~(66324u ^ (_wgslsmith_dot_vec2_u32(vec2<u32>(28616u, 4294967295u), vec2<u32>(u_input.d.x, u_input.d.x)) >> (1563u % 32u))) << (firstTrailingBit(_wgslsmith_clamp_u32(~min(u_input.c, u_input.c), u_input.b.x, u_input.d.x)) % 32u);
    global4 = array<bool, 11>();
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3()), global2.b, _wgslsmith_f_op_f32(global2.b - 192f), _wgslsmith_f_op_f32(ceil(-1000f))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(global2.d.x, 1000f, global2.b, global2.d.x), vec4<f32>(global2.d.x, -1206f, global2.d.x, global2.b))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-109f, global2.d.x, global2.d.x, global2.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d.x, global2.b, 317f, global2.d.x)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b, -1029f, 541f, global2.d.x) - vec4<f32>(-673f, global2.d.x, global2.d.x, global2.d.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1302f, global2.d.x, global2.d.x, global2.b)), vec4<f32>(1000f, global2.b, global2.d.x, global2.d.x), global4[_wgslsmith_index_u32(18241u, 11u)]))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-603f, global2.d.x, global2.d.x, 433f) - vec4<f32>(309f, 1176f, global2.d.x, global2.b))), vec4<f32>(_wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(f32(-1f) * -1082f), -498f, 225f))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: vec4<f32>) -> bool {
    var var_0 = true;
    let var_1 = !(!any(!vec4<bool>(false, arg_1.x, arg_1.x, false)));
    let var_2 = Struct_1(!arg_1, false, vec3<bool>(!(!select(false, true, true)), -1000f <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(f32(-1f) * -514f)), false));
    global3 = array<Struct_2, 21>();
    global2 = global1[_wgslsmith_index_u32(reverseBits(~u_input.c | u_input.c), 12u)];
    return !all(!vec2<bool>(any(vec4<bool>(arg_1.x, var_2.b, global4[_wgslsmith_index_u32(46725u, 11u)], false)), 52257u != u_input.c));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: vec2<bool>) -> i32 {
    var var_0 = true;
    var var_1 = select(vec3<bool>(false, func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d.x, global2.d.x, 1000f, 1219f) + vec4<f32>(1211f, global2.b, global2.d.x, 1103f)) * _wgslsmith_f_op_vec4_f32(func_2(global2.e.x))), vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global2.d.x, global2.b, global2.d.x))))), true), select(select(select(vec3<bool>(true, true, true), vec3<bool>(global4[_wgslsmith_index_u32(u_input.d.x, 11u)], true, arg_2.x), !global4[_wgslsmith_index_u32(4294967295u, 11u)]), !select(vec3<bool>(false, global4[_wgslsmith_index_u32(arg_0, 11u)], false), vec3<bool>(false, true, false), false), all(vec2<bool>(global4[_wgslsmith_index_u32(arg_0, 11u)], arg_2.x))), !(!(!vec3<bool>(global4[_wgslsmith_index_u32(u_input.c, 11u)], false, false))), vec3<bool>(global4[_wgslsmith_index_u32(1u, 11u)], global4[_wgslsmith_index_u32(9437u, 11u)], arg_2.x)), select(select(!select(vec3<bool>(true, arg_2.x, false), vec3<bool>(arg_2.x, global4[_wgslsmith_index_u32(1u, 11u)], false), vec3<bool>(true, arg_2.x, false)), select(vec3<bool>(false, global4[_wgslsmith_index_u32(u_input.d.x, 11u)], global4[_wgslsmith_index_u32(4294967295u, 11u)]), vec3<bool>(true, global4[_wgslsmith_index_u32(45616u, 11u)], false), true), false), vec3<bool>(false, arg_2.x, global4[_wgslsmith_index_u32(~0u, 11u)]), vec3<bool>(-17816i == global2.e.x, !(!global4[_wgslsmith_index_u32(arg_1.x, 11u)]), !(0i > u_input.a))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global2.b)))), global2.d.x)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(global2.d.x)))));
    var var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-494f, global2.b, global2.d.x), _wgslsmith_f_op_vec3_f32(floor(global2.d)), all(arg_2)))))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~u_input.b.x), 0u) & ~arg_0, 12u)], Struct_1(vec3<bool>(true & !var_1.x, false, true), false, select(select(!vec3<bool>(false, arg_2.x, var_1.x), !vec3<bool>(global4[_wgslsmith_index_u32(arg_0, 11u)], true, global4[_wgslsmith_index_u32(u_input.b.x, 11u)]), select(vec3<bool>(true, true, false), vec3<bool>(true, arg_2.x, var_1.x), vec3<bool>(arg_2.x, true, arg_2.x))), vec3<bool>(any(vec4<bool>(false, false, false, true)), true, true), select(vec3<bool>(global4[_wgslsmith_index_u32(arg_0, 11u)], var_1.x, global4[_wgslsmith_index_u32(34702u, 11u)]), vec3<bool>(false, arg_2.x, var_1.x), select(false, var_1.x, false)))), abs(vec2<u32>(17761u, _wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.c, 1u, 1331u, 4294967295u), vec4<u32>(arg_0, arg_0, 4294967295u, 4294967295u)), vec4<u32>(arg_1.x, u_input.c, 1680u, 1u) ^ vec4<u32>(arg_0, arg_0, arg_0, 1u)))));
    var var_4 = var_3.d << (firstTrailingBit(~_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(10188u, u_input.d.x), vec2<u32>(0u, 4294967295u)), vec2<u32>(arg_0, arg_0), abs(vec2<u32>(0u, 6761u)))) % vec2<u32>(32u));
    return -firstLeadingBit(~_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, 26841i), var_3.b.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(-58641i, global2.b, ~(~0i), vec3<f32>(_wgslsmith_f_op_f32(exp2(global2.d.x)), _wgslsmith_div_f32(global2.d.x, _wgslsmith_f_op_f32(-global2.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d.x * 162f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(149f * -744f) - -799f))), -select(~(-global2.e), firstLeadingBit(~global2.e), _wgslsmith_f_op_f32(global2.d.x + global2.d.x) >= -124f));
    var var_1 = Struct_3(vec4<i32>(_wgslsmith_add_i32(func_1(_wgslsmith_mult_u32(22695u, 0u), u_input.b, !vec2<bool>(global4[_wgslsmith_index_u32(u_input.c, 11u)], global4[_wgslsmith_index_u32(u_input.c, 11u)])), _wgslsmith_dot_vec3_i32(vec3<i32>(41503i, u_input.a, var_0.c) ^ vec3<i32>(0i, var_0.e.x, 1803i), min(vec3<i32>(global2.a, u_input.a, -1i), vec3<i32>(u_input.a, global2.e.x, global2.e.x)))), func_1(_wgslsmith_mult_u32(4294967295u, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x)), max(abs(u_input.d.yy), ~u_input.b), !select(vec2<bool>(false, true), vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 11u)], global4[_wgslsmith_index_u32(35198u, 11u)]), vec2<bool>(global4[_wgslsmith_index_u32(u_input.d.x, 11u)], false))), ((global2.e.x & global2.e.x) & ~(-1i)) >> (~(~39231u) % 32u), var_0.a >> (_wgslsmith_mult_u32(u_input.b.x, 4294967295u & u_input.b.x) % 32u)));
    global0 = array<Struct_3, 13>();
    let var_2 = global0[_wgslsmith_index_u32(127391u, 13u)];
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2.d.x), _wgslsmith_f_op_f32(floor(var_0.d.x))))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global2.d.yy)), _wgslsmith_f_op_vec2_f32(round(global2.d.zx)))))));
    global4 = array<bool, 11>();
    var var_4 = firstLeadingBit(abs(min(_wgslsmith_div_vec4_u32(min(vec4<u32>(0u, u_input.d.x, 0u, u_input.d.x), vec4<u32>(u_input.c, 1u, u_input.c, u_input.b.x)), firstTrailingBit(vec4<u32>(1u, u_input.b.x, 7966u, u_input.d.x))), vec4<u32>(57176u, _wgslsmith_mod_u32(u_input.d.x, u_input.b.x), u_input.d.x, _wgslsmith_div_u32(u_input.c, 1u)))));
    let var_5 = Struct_2(_wgslsmith_mod_i32(countOneBits(~var_0.a), -27172i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.x))), var_2.a.x, vec3<f32>(var_0.d.x, 292f, _wgslsmith_f_op_f32(min(var_3.x, var_3.x))), _wgslsmith_clamp_vec2_i32(countOneBits(-abs(var_0.e)), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, var_0.a), min(vec2<i32>(var_0.e.x, -1i), vec2<i32>(-1i, -35i))) << (~vec2<u32>(u_input.d.x, 1u) % vec2<u32>(32u)), var_1.a.zy));
    var var_6 = Struct_2(var_1.a.x, -870f, var_0.a, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(730f * var_0.b), var_5.d.x, var_5.b) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, -465f, 1892f) - vec3<f32>(global2.b, 859f, -152f)) - global2.d)))), _wgslsmith_clamp_vec2_i32(-(var_1.a.zz << (~vec2<u32>(0u, u_input.b.x) % vec2<u32>(32u))), ~vec2<i32>(2147483647i, 1i), ~countOneBits(abs(global2.e))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.wxw, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.d.x))))), min(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, -1i, -1i), vec3<i32>(_wgslsmith_mult_i32(-10511i, var_0.e.x), func_1(u_input.b.x, vec2<u32>(45315u, u_input.d.x), vec2<bool>(global4[_wgslsmith_index_u32(var_4.x, 11u)], false)), var_5.c)) | vec3<i32>(~_wgslsmith_clamp_i32(var_6.e.x, 1i, 0i), -31907i, var_5.a >> (var_4.x % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 4294967295u, 73696u), vec3<u32>(u_input.d.x, var_4.x, u_input.d.x)), _wgslsmith_div_u32(1u, u_input.c)), firstLeadingBit(var_4.wyw >> (vec3<u32>(var_4.x, 56156u, u_input.d.x) % vec3<u32>(32u))) | _wgslsmith_div_vec3_u32(u_input.d, ~u_input.d)), abs(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_4.x, var_4.x, var_4.x, 0u), vec4<u32>(u_input.d.x, var_4.x, var_4.x, var_4.x), vec4<u32>(0u, u_input.b.x, 7793u, 20369u))) ^ vec4<u32>(~26807u, firstTrailingBit(16304u), 21536u, ~1u)));
}


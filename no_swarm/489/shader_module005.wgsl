struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: f32 = -341f;

var<private> global2: vec4<u32> = vec4<u32>(4294967295u, 49078u, 1u, 39939u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2.a.yz;
    var var_1 = arg_2;
    let var_2 = arg_0;
    var var_3 = -1i;
    let var_4 = u_input.a.x;
    return arg_1;
}

fn func_3() -> f32 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - 248f)));
    global2 = max(~vec4<u32>(~1u, u_input.b, ~u_input.b, select(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, global2.x), global2.ywz), global2.x, all(vec4<bool>(false, true, false, false)))), vec4<u32>(_wgslsmith_mult_u32(~abs(global2.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, global2.x) & vec3<u32>(5963u, u_input.b, 1u), global2.zyx)), _wgslsmith_mult_u32(~(~102693u), 1u), _wgslsmith_dot_vec2_u32(firstTrailingBit(global2.zw), firstLeadingBit(vec2<u32>(u_input.b, 0u))) | 3140u, ~u_input.b));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(min(1782f, _wgslsmith_f_op_f32(min(-812f, -316f)))))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1285f)))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1972f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1574f))))))));
    let var_1 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-463f, 163f, 1495f, -399f)))))), func_1(vec4<f32>(-539f, _wgslsmith_f_op_f32(min(-879f, -736f)), _wgslsmith_f_op_f32(347f + _wgslsmith_f_op_f32(-735f + -714f)), 383f), Struct_1(vec3<bool>(true, false, true), ~(u_input.b >> (4294967295u % 32u))), func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1509f, -1708f, -563f, 592f) * vec4<f32>(187f, 511f, -387f, -1078f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2063f, 1904f, 203f, 681f)))), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(928f, 225f, 1033f, -1484f)), func_1(vec4<f32>(-1000f, -301f, 342f, -891f), Struct_1(vec3<bool>(false, true, true), 1u), Struct_1(vec3<bool>(true, false, true), u_input.b)), func_1(vec4<f32>(1024f, 289f, -1054f, 236f), Struct_1(vec3<bool>(true, false, true), u_input.b), Struct_1(vec3<bool>(false, true, false), global2.x))), Struct_1(vec3<bool>(false, false, true), u_input.b >> (u_input.b % 32u)))), Struct_1(!func_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-145f, -1116f, -479f, 958f), vec4<f32>(-115f, -311f, 490f, -1000f), true)), func_1(vec4<f32>(2134f, -923f, 913f, -703f), Struct_1(vec3<bool>(false, true, false), 2088u), Struct_1(vec3<bool>(true, false, true), 1u)), Struct_1(vec3<bool>(false, false, false), global2.x)).a, ~0u));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-892f * 1419f) + _wgslsmith_f_op_f32(-452f - -2674f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(922f))))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec3<bool> {
    var var_0 = func_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(323f, _wgslsmith_f_op_f32(select(239f, -1234f, true)), -264f, 1165f)))), arg_1, arg_1);
    var var_1 = vec2<f32>(1f, 1f);
    var var_2 = vec3<bool>(!any(vec4<bool>(all(vec3<bool>(true, arg_0.a.x, arg_1.a.x)), true, true, all(vec2<bool>(arg_1.a.x, false)))), all(!(!select(vec4<bool>(arg_0.a.x, false, false, arg_0.a.x), vec4<bool>(var_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec4<bool>(arg_0.a.x, arg_0.a.x, false, true)))), true);
    var_1 = vec2<f32>(-182f, var_1.x);
    global0 = var_1.x;
    return func_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(278f, 550f, 1215f, 675f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(647f, var_1.x, var_1.x, -405f)))) + vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), 2409f, _wgslsmith_f_op_f32(func_3()))))), func_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-697f, var_1.x, 167f, -488f)))))), arg_1, Struct_1(vec3<bool>(true, any(var_0.a), any(vec3<bool>(false, var_2.x, var_0.a.x))), ~arg_1.b)), Struct_1(!select(vec3<bool>(arg_1.a.x, var_0.a.x, true), select(arg_1.a, vec3<bool>(var_2.x, false, var_0.a.x), var_0.a), all(arg_0.a.zy)), 1u)).a;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: f32) -> u32 {
    var var_0 = ~vec4<u32>(0u, 4294967295u ^ arg_0.b, arg_2.b, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, 4294967295u), _wgslsmith_clamp_vec3_u32(global2.xzw, global2.wyw, global2.zww)));
    let var_1 = Struct_1(!arg_2.a, _wgslsmith_mod_u32(73257u, u_input.b));
    let var_2 = !(!(!all(select(vec2<bool>(var_1.a.x, arg_1.x), arg_0.a.zx, vec2<bool>(arg_1.x, false)))));
    var var_3 = any(vec3<bool>(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-767f, arg_3, arg_3, -2190f), vec4<f32>(199f, -319f, 1431f, arg_3), arg_1.x))), var_1, func_1(vec4<f32>(-669f, arg_3, -1509f, arg_3), arg_2, Struct_1(vec3<bool>(var_1.a.x, true, false), 35136u))).a.x, all(func_2(func_1(vec4<f32>(-275f, 1489f, arg_3, arg_3), Struct_1(vec3<bool>(var_2, arg_1.x, false), arg_0.b), Struct_1(vec3<bool>(true, arg_2.a.x, true), arg_0.b)), Struct_1(vec3<bool>(arg_0.a.x, var_2, true), 4294967295u), 0u)), arg_1.x));
    global2 = abs(select(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.b, var_1.b, u_input.b, 35353u), ~vec4<u32>(20869u, 0u, 6115u, 1u))), _wgslsmith_clamp_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, var_0.x, 1u), vec4<u32>(arg_2.b, 4294967295u, 49485u, 1u)), reverseBits(~vec4<u32>(1u, global2.x, 13120u, arg_2.b)), ~vec4<u32>(u_input.b, 60134u, 1175u, arg_0.b)), !select(vec4<bool>(var_1.a.x, arg_2.a.x, true, false), !vec4<bool>(arg_2.a.x, arg_2.a.x, var_2, false), !vec4<bool>(false, true, var_1.a.x, arg_1.x))));
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!(!vec3<bool>(any(vec2<bool>(true, true)), true, global2.x != 29606u)), func_4(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-157f, 489f, 500f, -784f) - vec4<f32>(1205f, 1108f, -705f, 2302f))), Struct_1(vec3<bool>(true, true, true), global2.x ^ global2.x), Struct_1(vec3<bool>(true, true, true), _wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, 39388u, u_input.b), vec3<u32>(0u, global2.x, 38548u)))), select(!func_2(Struct_1(vec3<bool>(true, true, false), 4294967295u), Struct_1(vec3<bool>(false, false, true), 23805u), 0u), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), Struct_1(vec3<bool>(true, true, true), global2.x), _wgslsmith_f_op_f32(func_3())));
    var var_1 = vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -20438i) << ((global2.yy >> (_wgslsmith_sub_vec2_u32(vec2<u32>(41205u, 28391u), global2.ww) % vec2<u32>(32u))) % vec2<u32>(32u)), max(~vec2<i32>(0i, -4164i), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, -12855i), firstTrailingBit(u_input.a.zz)))), -_wgslsmith_sub_i32(u_input.a.x, select(_wgslsmith_mult_i32(42607i, u_input.a.x), _wgslsmith_sub_i32(u_input.a.x, -43069i), all(var_0.a))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(471f))));
    var var_2 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-327f, -1912f, -159f, 278f) + vec4<f32>(1097f, 1264f, -882f, 958f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-260f, -242f, 1023f, 252f)))), vec4<f32>(172f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -430f), _wgslsmith_f_op_f32(-1235f * 1610f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-790f, -996f, 206f, -1000f)) + vec4<f32>(1f, 1f, 1f, 1f))), func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-625f, 1000f, -1084f, -308f), vec4<f32>(1486f, -612f, -807f, -622f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(2719f, -711f, 822f, -176f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(975f, -1027f, 288f, -534f)) * vec4<f32>(-1186f, -553f, 1048f, 1527f))), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(254f, -295f, -1292f, -676f)), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1629f, 984f, -1000f, -975f)), func_1(vec4<f32>(-401f, -582f, -358f, 2334f), Struct_1(var_0.a, global2.x), Struct_1(var_0.a, global2.x)), func_1(vec4<f32>(-1505f, 838f, -1000f, -609f), Struct_1(var_0.a, global2.x), Struct_1(var_0.a, global2.x))), func_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1586f, 522f, -1293f, 1216f), vec4<f32>(-521f, -1000f, -285f, -445f))), func_1(vec4<f32>(-1821f, -889f, -1288f, -1310f), Struct_1(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), global2.x), Struct_1(vec3<bool>(false, true, var_0.a.x), 78198u)), func_1(vec4<f32>(1159f, -251f, 469f, 340f), Struct_1(var_0.a, u_input.b), Struct_1(var_0.a, var_0.b)))), func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(325f, -857f, -302f, -1761f), vec4<f32>(-1000f, -386f, 252f, 1000f), false)), vec4<f32>(-824f, -691f, 444f, 428f)), func_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1341f, -927f, 1057f, 821f), vec4<f32>(1010f, 228f, -447f, -2554f), var_0.a.x)), func_1(vec4<f32>(1312f, -670f, -387f, -832f), Struct_1(vec3<bool>(false, true, var_0.a.x), 4294967295u), Struct_1(var_0.a, u_input.b)), func_1(vec4<f32>(-603f, -2658f, -582f, 1336f), Struct_1(var_0.a, 14960u), Struct_1(vec3<bool>(var_0.a.x, true, var_0.a.x), 0u))), Struct_1(!var_0.a, ~1u))), Struct_1(var_0.a, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b | u_input.b, global2.x), _wgslsmith_sub_vec3_u32(~global2.xyw, vec3<u32>(var_0.b, 73589u, 4294967295u)))));
    let var_3 = select(!vec4<bool>(var_0.a.x, true, false, true), select(!(!(!vec4<bool>(var_2.a.x, true, var_2.a.x, var_0.a.x))), vec4<bool>(true, true, true, true), vec4<bool>(true, false, var_0.a.x, var_0.a.x)), vec4<bool>(var_2.a.x, false, var_0.a.x, var_2.a.x));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
    let var_4 = func_2(func_1(vec4<f32>(-1550f, 1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(107f + -533f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -657f), 397f)), func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-573f, 582f, 347f, -820f)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-960f, 115f, 872f, -1992f), vec4<f32>(-375f, -1284f, 734f, -245f)))), Struct_1(select(var_2.a, var_3.xyy, var_3.xwz), 1u), func_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2834f, -149f, -340f, -1181f))), func_1(vec4<f32>(-1000f, 1696f, -2375f, 572f), Struct_1(vec3<bool>(var_3.x, true, var_2.a.x), var_2.b), Struct_1(var_0.a, u_input.b)), func_1(vec4<f32>(330f, 148f, 2284f, -888f), Struct_1(var_0.a, u_input.b), Struct_1(vec3<bool>(false, var_0.a.x, var_3.x), 1u)))), Struct_1(!var_3.xyz, ~40012u)), func_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(775f, _wgslsmith_f_op_f32(f32(-1f) * -518f), 1748f, _wgslsmith_f_op_f32(select(108f, -1465f, true))))), func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 206f, 771f, -1572f), vec4<f32>(452f, -1181f, -627f, 197f)) + vec4<f32>(-1000f, -1853f, -1359f, 534f)), Struct_1(select(var_3.wyy, var_0.a, true), 4294967295u >> (global2.x % 32u)), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-657f, 1840f, -374f, 173f) + vec4<f32>(-828f, 177f, 535f, -345f)), Struct_1(vec3<bool>(true, true, false), global2.x), Struct_1(var_3.xwy, 4294967295u))), func_1(_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(1f, 1f, 1f, 1f)), Struct_1(func_1(vec4<f32>(-578f, -955f, 1205f, 361f), Struct_1(vec3<bool>(true, var_3.x, true), 1u), Struct_1(vec3<bool>(false, false, false), 1u)).a, func_4(Struct_1(var_0.a, 96972u), var_3.zzy, Struct_1(vec3<bool>(true, false, var_3.x), var_0.b), 1586f)), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-967f, 194f, 1928f, -1332f) * vec4<f32>(-607f, -1749f, -312f, 1340f)), Struct_1(vec3<bool>(var_0.a.x, var_3.x, var_2.a.x), global2.x), Struct_1(vec3<bool>(false, var_3.x, true), var_0.b)))), var_0.b).yy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32((vec4<u32>(22278u, u_input.b, 9269u, var_2.b) | vec4<u32>(1u, 27091u, u_input.b, var_0.b)) ^ (vec4<u32>(var_2.b, 59898u, global2.x, 1u) & vec4<u32>(global2.x, var_2.b, 4294967295u, var_0.b)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global2.x, var_2.b, var_2.b, 3153u), vec4<u32>(90758u, var_0.b, 0u, global2.x) & vec4<u32>(global2.x, global2.x, 92165u, global2.x), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, var_2.b, var_2.b, var_2.b), vec4<u32>(var_0.b, var_0.b, 5572u, u_input.b)))), ~(~(vec4<u32>(u_input.b, 57626u, 25935u, 74338u) | vec4<u32>(global2.x, 13198u, 0u, u_input.b)))), -(~(~vec3<i32>(2147483647i, var_1.x, u_input.a.x))) >> (vec3<u32>(global2.x, ~0u >> (var_0.b % 32u), 0u) % vec3<u32>(32u)));
}


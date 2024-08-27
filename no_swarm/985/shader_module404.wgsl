struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: bool,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec3<i32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec3<u32>(0u, 1u, 0u), -964f, 356f, vec4<f32>(-2830f, -539f, 1609f, -398f)), Struct_1(vec3<u32>(5781u, 39212u, 4659u), -573f, -1079f, vec4<f32>(-215f, 594f, 141f, 851f)), Struct_1(vec3<u32>(68560u, 14202u, 1u), 1073f, -1000f, vec4<f32>(402f, 542f, -1059f, 425f)), Struct_1(vec3<u32>(29941u, 21177u, 0u), 1000f, -810f, vec4<f32>(-555f, 755f, 1283f, -741f)), Struct_1(vec3<u32>(0u, 1u, 11897u), 542f, 405f, vec4<f32>(1636f, 2219f, 792f, 291f)), Struct_1(vec3<u32>(1u, 4294967295u, 1u), -896f, 2159f, vec4<f32>(-478f, -2730f, -2192f, 1417f)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u), -1086f, 369f, vec4<f32>(1292f, 302f, 1475f, 820f)), Struct_1(vec3<u32>(1u, 59483u, 0u), -1000f, 977f, vec4<f32>(839f, -907f, 282f, 1000f)), Struct_1(vec3<u32>(0u, 75716u, 1u), 648f, 654f, vec4<f32>(-989f, 1647f, -616f, -1334f)), Struct_1(vec3<u32>(4294967295u, 0u, 6584u), 1508f, 217f, vec4<f32>(360f, 1106f, 286f, 1167f)), Struct_1(vec3<u32>(4294967295u, 0u, 12923u), -1001f, 1096f, vec4<f32>(-340f, -1517f, -938f, 446f)), Struct_1(vec3<u32>(0u, 1u, 4294967295u), 547f, -1000f, vec4<f32>(1316f, 646f, 885f, -661f)), Struct_1(vec3<u32>(3624u, 56234u, 69466u), -744f, 1460f, vec4<f32>(1897f, 223f, 652f, 526f)), Struct_1(vec3<u32>(0u, 1u, 30055u), 1113f, 2947f, vec4<f32>(-595f, 2808f, -1749f, -1143f)), Struct_1(vec3<u32>(4294967295u, 16832u, 0u), -353f, -1386f, vec4<f32>(-1236f, 487f, 1848f, 495f)), Struct_1(vec3<u32>(1u, 21338u, 0u), -548f, -1122f, vec4<f32>(1811f, -1737f, -311f, 1115f)), Struct_1(vec3<u32>(82772u, 9457u, 42222u), -700f, -337f, vec4<f32>(-646f, -923f, 979f, 1237f)), Struct_1(vec3<u32>(4294967295u, 96348u, 48642u), -990f, 824f, vec4<f32>(-294f, -275f, 428f, 1210f)), Struct_1(vec3<u32>(1u, 50773u, 0u), -349f, -874f, vec4<f32>(-102f, 426f, 544f, 342f)), Struct_1(vec3<u32>(0u, 27122u, 60608u), 130f, -957f, vec4<f32>(981f, 520f, -803f, 1000f)), Struct_1(vec3<u32>(98375u, 37795u, 1u), 503f, -1144f, vec4<f32>(222f, -1225f, -1000f, -310f)), Struct_1(vec3<u32>(48269u, 42122u, 6350u), -658f, -113f, vec4<f32>(1650f, -1310f, -1000f, -810f)), Struct_1(vec3<u32>(1u, 1u, 1u), -1000f, 587f, vec4<f32>(-1243f, 1937f, -1323f, -388f)), Struct_1(vec3<u32>(21071u, 1u, 4294967295u), -1000f, -1048f, vec4<f32>(1000f, -1549f, -1698f, -122f)));

var<private> global1: f32;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3) -> vec4<u32> {
    var var_0 = arg_0;
    let var_1 = var_0.a.a;
    let var_2 = _wgslsmith_f_op_f32(exp2(arg_0.b));
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)))));
    var var_4 = arg_0.a;
    return abs(arg_1.a);
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    var var_0 = Struct_3(~vec4<u32>(countOneBits(~4294967295u), ~u_input.a.x >> (0u % 32u), _wgslsmith_sub_u32(u_input.a.x | 0u, 1u), ~6324u));
    var_0 = Struct_3(_wgslsmith_clamp_vec4_u32(abs(func_3(Struct_4(Struct_2(Struct_1(vec3<u32>(var_0.a.x, var_0.a.x, var_0.a.x), 386f, 838f, vec4<f32>(arg_0.x, -1000f, 1052f, arg_0.x)), global0[_wgslsmith_index_u32(u_input.e, 24u)], u_input.b.yw, false), -503f, u_input.b.xzz, Struct_3(var_0.a)), Struct_3(var_0.a))), _wgslsmith_mod_vec4_u32(~(~var_0.a), var_0.a), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(1u, var_0.a.x, 0u, var_0.a.x)), var_0.a, vec4<u32>(u_input.a.x, var_0.a.x, _wgslsmith_sub_u32(2979u, var_0.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 39188u, var_0.a.x, var_0.a.x), var_0.a)))));
    let var_1 = true;
    let var_2 = Struct_2(Struct_1(vec3<u32>(min(u_input.e, ~1u), u_input.e, _wgslsmith_add_u32(15816u, var_0.a.x) << (20994u % 32u)), _wgslsmith_f_op_f32(select(-1220f, arg_0.x, var_1)), arg_0.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(613f, arg_0.x, -244f, -1000f))) - vec4<f32>(arg_0.x, -1406f, 244f, 187f)) * vec4<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -807f), _wgslsmith_f_op_f32(-2179f - arg_0.x)))), global0[_wgslsmith_index_u32(u_input.e, 24u)], -vec2<i32>(abs(u_input.d.x), ~(-2147483647i)), 909f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(2122f))))));
    global0 = array<Struct_1, 24>();
    return var_2.c.x | abs(~min(-2147483647i, var_2.c.x) << (_wgslsmith_clamp_u32(var_2.a.a.x, ~27556u, _wgslsmith_sub_u32(var_0.a.x, var_2.a.a.x)) % 32u));
}

fn func_1() -> Struct_3 {
    let var_0 = !(_wgslsmith_mod_i32(~func_2(vec2<f32>(-582f, 1030f)), 16054i << (select(4294967295u, 11068u, false) % 32u)) >= -u_input.c);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-578f - _wgslsmith_f_op_f32(529f * -1000f))), -1397f));
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(752f)) + _wgslsmith_f_op_f32(abs(-1114f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -352f))));
    return Struct_3(countOneBits(~abs(~vec4<u32>(26215u, 4294967295u, u_input.e, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 24>();
    global0 = array<Struct_1, 24>();
    var var_0 = func_1();
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(72732u, 24u)], Struct_1(~(~vec3<u32>(36423u, var_0.a.x, 9203u)) >> (func_3(Struct_4(Struct_2(global0[_wgslsmith_index_u32(0u, 24u)], Struct_1(var_0.a.yxy, -553f, -956f, vec4<f32>(-1419f, -950f, 614f, -593f)), vec2<i32>(u_input.b.x, 1i), false), -642f, u_input.b.zwy, Struct_3(var_0.a)), func_1()).wzw % vec3<u32>(32u)), _wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(878f, 754f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(237f, -847f, -246f, -1000f) * vec4<f32>(-373f, 1000f, -1990f, -767f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-190f, -1857f, -395f, -320f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 483f, -838f, -2240f) * vec4<f32>(-656f, 356f, -148f, -233f))))))), min(~(u_input.b.yy ^ u_input.b.zw) | u_input.b.zz, u_input.d), false);
    let var_2 = Struct_1(vec3<u32>(1u, abs(var_0.a.x), var_1.a.a.x), var_1.a.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(229f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.c), -245f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.a.d - _wgslsmith_f_op_vec4_f32(var_1.b.d + var_1.a.d)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b.d) - var_1.b.d))));
    let var_3 = Struct_3(select(var_0.a | (max(var_0.a, var_0.a) >> (vec4<u32>(43796u, 1u, 16716u, var_1.b.a.x) % vec4<u32>(32u))), var_0.a, select(!select(vec4<bool>(var_1.d, var_1.d, false, true), vec4<bool>(true, true, true, var_1.d), var_1.d), select(!vec4<bool>(var_1.d, var_1.d, false, true), vec4<bool>(false, false, var_1.d, true), !vec4<bool>(var_1.d, true, var_1.d, var_1.d)), true)));
    let var_4 = Struct_4(Struct_2(Struct_1(~var_1.a.a, var_2.b, 129f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-291f, var_2.d.x, var_2.c, var_2.d.x)))), Struct_1(firstLeadingBit(vec3<u32>(u_input.e, var_2.a.x, u_input.a.x)) ^ ~var_0.a.yxy, var_2.c, -125f, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-634f, var_1.a.c, var_2.d.x, var_1.b.d.x), var_2.d) * _wgslsmith_f_op_vec4_f32(-var_1.b.d))), max(vec2<i32>(-43878i, _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(23255i, u_input.b.x, u_input.b.x, 1i))), _wgslsmith_div_vec2_i32(u_input.d, vec2<i32>(-2147483647i, 12451i))), var_1.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.c * _wgslsmith_f_op_f32(f32(-1f) * -285f)) + -1138f), ~(min(_wgslsmith_mod_vec3_i32(u_input.b.zyx, vec3<i32>(u_input.c, u_input.c, -24919i)), max(u_input.b.yxy, vec3<i32>(var_1.c.x, u_input.b.x, u_input.c))) ^ -vec3<i32>(-40629i, var_1.c.x, -78237i)), var_3);
    let var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a.b, var_4.a.b.d.x))), -597f, var_1.b.d.x)) - var_2.d.wxw);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.a.c - _wgslsmith_f_op_f32(1435f + var_5.x)), vec2<i32>(3986i, countOneBits(-(~var_1.c.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_2.c - var_1.b.b), _wgslsmith_f_op_f32(669f + 588f)) * vec2<f32>(_wgslsmith_f_op_f32(var_1.b.d.x * var_1.a.d.x), -1022f))));
}


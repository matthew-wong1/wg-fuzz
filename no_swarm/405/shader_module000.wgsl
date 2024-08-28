struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(vec3<bool>(false, true, false), vec2<f32>(-164f, -1000f), Struct_2(Struct_1(true), 631f, Struct_1(true), vec2<f32>(1110f, -2082f), Struct_1(false)), true), Struct_3(vec3<bool>(true, false, false), vec2<f32>(681f, 503f), Struct_2(Struct_1(false), -1127f, Struct_1(false), vec2<f32>(189f, -469f), Struct_1(false)), true), Struct_3(vec3<bool>(true, true, true), vec2<f32>(-1995f, 483f), Struct_2(Struct_1(false), 1326f, Struct_1(true), vec2<f32>(800f, -1581f), Struct_1(false)), false), Struct_3(vec3<bool>(true, true, true), vec2<f32>(-504f, 1311f), Struct_2(Struct_1(true), 655f, Struct_1(false), vec2<f32>(-1852f, 862f), Struct_1(true)), true), Struct_3(vec3<bool>(false, false, true), vec2<f32>(-402f, -291f), Struct_2(Struct_1(true), 1332f, Struct_1(true), vec2<f32>(328f, -294f), Struct_1(false)), true), Struct_3(vec3<bool>(true, true, false), vec2<f32>(-244f, -550f), Struct_2(Struct_1(false), -551f, Struct_1(false), vec2<f32>(924f, -1228f), Struct_1(false)), true), Struct_3(vec3<bool>(true, true, false), vec2<f32>(-1261f, 270f), Struct_2(Struct_1(false), 502f, Struct_1(true), vec2<f32>(-947f, -1000f), Struct_1(false)), true), Struct_3(vec3<bool>(false, false, true), vec2<f32>(-501f, -521f), Struct_2(Struct_1(false), 479f, Struct_1(false), vec2<f32>(-227f, -165f), Struct_1(true)), false), Struct_3(vec3<bool>(false, false, false), vec2<f32>(1671f, 438f), Struct_2(Struct_1(true), -119f, Struct_1(true), vec2<f32>(812f, 571f), Struct_1(false)), true), Struct_3(vec3<bool>(false, true, true), vec2<f32>(332f, 623f), Struct_2(Struct_1(true), 290f, Struct_1(false), vec2<f32>(-690f, 265f), Struct_1(false)), false), Struct_3(vec3<bool>(false, false, false), vec2<f32>(494f, -244f), Struct_2(Struct_1(false), 1428f, Struct_1(true), vec2<f32>(808f, 1066f), Struct_1(false)), false), Struct_3(vec3<bool>(false, false, false), vec2<f32>(1467f, -1019f), Struct_2(Struct_1(true), 1938f, Struct_1(true), vec2<f32>(1275f, 664f), Struct_1(true)), false), Struct_3(vec3<bool>(true, false, false), vec2<f32>(1000f, -699f), Struct_2(Struct_1(false), -782f, Struct_1(true), vec2<f32>(-548f, 2569f), Struct_1(true)), true), Struct_3(vec3<bool>(false, false, true), vec2<f32>(143f, 471f), Struct_2(Struct_1(true), 264f, Struct_1(false), vec2<f32>(-583f, -265f), Struct_1(false)), false), Struct_3(vec3<bool>(true, false, true), vec2<f32>(-1740f, 301f), Struct_2(Struct_1(true), 1788f, Struct_1(true), vec2<f32>(113f, -1000f), Struct_1(true)), true), Struct_3(vec3<bool>(false, false, false), vec2<f32>(-246f, 1176f), Struct_2(Struct_1(false), 1839f, Struct_1(false), vec2<f32>(-763f, 615f), Struct_1(true)), true), Struct_3(vec3<bool>(false, true, true), vec2<f32>(-409f, -1000f), Struct_2(Struct_1(true), -1248f, Struct_1(true), vec2<f32>(-345f, -190f), Struct_1(true)), false), Struct_3(vec3<bool>(true, false, false), vec2<f32>(-739f, -493f), Struct_2(Struct_1(false), -1275f, Struct_1(false), vec2<f32>(243f, 798f), Struct_1(true)), true), Struct_3(vec3<bool>(false, false, false), vec2<f32>(1177f, -429f), Struct_2(Struct_1(false), -944f, Struct_1(true), vec2<f32>(587f, -1397f), Struct_1(true)), false), Struct_3(vec3<bool>(false, true, true), vec2<f32>(-303f, -2292f), Struct_2(Struct_1(true), -1298f, Struct_1(true), vec2<f32>(1202f, -2054f), Struct_1(false)), true), Struct_3(vec3<bool>(true, true, false), vec2<f32>(-524f, 812f), Struct_2(Struct_1(false), 302f, Struct_1(false), vec2<f32>(319f, 125f), Struct_1(true)), false), Struct_3(vec3<bool>(true, false, true), vec2<f32>(1203f, -966f), Struct_2(Struct_1(true), -1000f, Struct_1(true), vec2<f32>(587f, -317f), Struct_1(false)), false), Struct_3(vec3<bool>(true, false, true), vec2<f32>(986f, -2162f), Struct_2(Struct_1(true), 106f, Struct_1(true), vec2<f32>(305f, -2115f), Struct_1(true)), true), Struct_3(vec3<bool>(true, false, false), vec2<f32>(-292f, 1625f), Struct_2(Struct_1(false), 1234f, Struct_1(true), vec2<f32>(-149f, -114f), Struct_1(false)), false));

var<private> global1: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(vec3<bool>(false, true, true), vec2<f32>(-547f, -1162f), Struct_2(Struct_1(true), 831f, Struct_1(true), vec2<f32>(262f, 1294f), Struct_1(false)), true), Struct_3(vec3<bool>(true, true, false), vec2<f32>(-866f, -1378f), Struct_2(Struct_1(true), 378f, Struct_1(true), vec2<f32>(1322f, 353f), Struct_1(false)), false), Struct_3(vec3<bool>(false, false, true), vec2<f32>(-2098f, 354f), Struct_2(Struct_1(true), 1000f, Struct_1(true), vec2<f32>(450f, -116f), Struct_1(false)), true), Struct_3(vec3<bool>(true, true, false), vec2<f32>(-108f, 895f), Struct_2(Struct_1(true), -1192f, Struct_1(true), vec2<f32>(830f, -387f), Struct_1(true)), false), Struct_3(vec3<bool>(false, true, true), vec2<f32>(1332f, 687f), Struct_2(Struct_1(true), -1008f, Struct_1(true), vec2<f32>(-1033f, 861f), Struct_1(true)), false), Struct_3(vec3<bool>(true, false, false), vec2<f32>(-650f, 839f), Struct_2(Struct_1(true), 729f, Struct_1(false), vec2<f32>(1591f, 499f), Struct_1(true)), false), Struct_3(vec3<bool>(false, true, false), vec2<f32>(645f, -516f), Struct_2(Struct_1(false), 1015f, Struct_1(true), vec2<f32>(-1545f, -2441f), Struct_1(true)), true), Struct_3(vec3<bool>(true, false, true), vec2<f32>(1106f, 1027f), Struct_2(Struct_1(false), 198f, Struct_1(false), vec2<f32>(-1097f, 1000f), Struct_1(false)), true), Struct_3(vec3<bool>(false, false, true), vec2<f32>(2000f, -412f), Struct_2(Struct_1(true), -790f, Struct_1(true), vec2<f32>(-1581f, -172f), Struct_1(true)), false), Struct_3(vec3<bool>(false, true, true), vec2<f32>(-1090f, -1121f), Struct_2(Struct_1(true), 1034f, Struct_1(true), vec2<f32>(1010f, -1000f), Struct_1(true)), false), Struct_3(vec3<bool>(false, false, true), vec2<f32>(795f, -564f), Struct_2(Struct_1(false), 400f, Struct_1(false), vec2<f32>(2182f, -1565f), Struct_1(false)), true));

var<private> global2: vec2<u32> = vec2<u32>(0u, 61536u);

var<private> global3: Struct_4 = Struct_4(Struct_2(Struct_1(true), 571f, Struct_1(false), vec2<f32>(-1065f, -867f), Struct_1(false)), 4294967295u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    global0 = array<Struct_3, 24>();
    let var_0 = _wgslsmith_dot_vec3_u32(~vec3<u32>(firstLeadingBit(~1u), _wgslsmith_mult_u32(30560u, 4158u), 21611u), u_input.b);
    var var_1 = ~(-25850i);
    global0 = array<Struct_3, 24>();
    let var_2 = Struct_3(vec3<bool>(false, !(all(vec4<bool>(global3.a.c.a, global3.a.c.a, arg_2.c.a, arg_1.a.a)) && (arg_1.a.a && global3.a.a.a)), any(select(vec3<bool>(arg_1.e.a, true, arg_0.a.a), select(vec3<bool>(false, arg_1.c.a, arg_1.a.a), vec3<bool>(false, arg_0.e.a, true), vec3<bool>(false, false, global3.a.c.a)), !vec3<bool>(arg_2.e.a, false, arg_0.e.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.a.d + vec2<f32>(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(arg_0.d.x * 183f)))), Struct_2(arg_0.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.b, global3.a.d.x, global3.a.e.a)) - arg_0.b) + -307f), Struct_1(!(!arg_0.c.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, arg_0.b)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d.x, arg_2.b) * arg_1.d)) + vec2<f32>(-671f, _wgslsmith_f_op_f32(select(504f, 423f, false)))), Struct_1(false)), false);
    return true;
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: u32, arg_3: vec3<u32>) -> bool {
    var var_0 = Struct_2(Struct_1(!global3.a.c.a || !global3.a.a.a), _wgslsmith_f_op_f32(-global3.a.d.x), global3.a.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global3.a.d)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(global3.a.b * 2067f), global3.a.b)))), Struct_1(global3.a.a.a));
    var var_1 = var_0.a;
    var var_2 = 4294967295u;
    var var_3 = ~global2.x ^ (1u ^ firstTrailingBit(global2.x));
    var_2 = 1u;
    return !any(select(vec4<bool>(-17038i < u_input.a, func_3(Struct_2(Struct_1(arg_1.x), var_0.b, global3.a.a, global3.a.d, Struct_1(var_1.a)), global3.a, global3.a), true, false), vec4<bool>(false, any(arg_1), false, !arg_1.x), select(!vec4<bool>(true, false, global3.a.c.a, var_1.a), !vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), select(vec4<bool>(false, global3.a.e.a, arg_1.x, true), vec4<bool>(false, global3.a.e.a, var_1.a, var_1.a), true))));
}

fn func_1(arg_0: Struct_1) -> i32 {
    global3 = Struct_4(Struct_2(Struct_1(true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.d.x + global3.a.b)), Struct_1(select(true, global3.a.c.a, arg_0.a) || func_2(u_input.b.x, vec2<bool>(global3.a.a.a, arg_0.a), global2.x, u_input.b)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(2388f)), _wgslsmith_f_op_f32(global3.a.b * global3.a.d.x)), _wgslsmith_f_op_vec2_f32(global3.a.d * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3.a.d.x, 596f), global3.a.d, global3.a.e.a)))), global3.a.c), select(countOneBits(0u), abs(~abs(18853u)), any(!select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(true, false), global3.a.c.a))));
    var var_0 = 1u;
    global2 = select(vec2<u32>(global2.x, global3.b | global2.x), u_input.b.zx, !vec2<bool>(global3.a.c.a, false)) << (~select(abs(reverseBits(u_input.b.yz)), firstLeadingBit(u_input.b.xx) & vec2<u32>(13932u, global3.b), !func_2(1u, vec2<bool>(global3.a.c.a, false), 0u, vec3<u32>(global3.b, global3.b, 1u))) % vec2<u32>(32u));
    var var_1 = true;
    global1 = array<Struct_3, 11>();
    return 45714i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.a;
    global2 = u_input.b.zz;
    var var_1 = func_1(Struct_1((any(vec3<bool>(false, var_0.c.a, global3.a.a.a)) && !var_0.a.a) | var_0.a.a));
    var_1 = 1i;
    global3 = Struct_4(global3.a, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.a), 22467i, select(~abs(firstLeadingBit(u_input.c)), min(_wgslsmith_clamp_vec2_i32(min(vec2<i32>(0i, u_input.c.x), u_input.c), u_input.c, -u_input.c), vec2<i32>(u_input.a << (16232u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 214i, u_input.c.x), vec3<i32>(u_input.a, -42543i, u_input.c.x)))), select(!vec2<bool>(var_0.e.a, false), vec2<bool>(global3.a.a.a, any(vec3<bool>(true, false, var_0.e.a))), vec2<bool>(true, true))), _wgslsmith_add_i32(u_input.c.x, firstTrailingBit(u_input.c.x) ^ _wgslsmith_clamp_i32(-9386i, u_input.c.x, 1i)) >> (34430u % 32u), u_input.a);
}


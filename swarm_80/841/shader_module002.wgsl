struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec4<f32>(-2371f, 645f, -613f, -494f)), Struct_1(vec4<f32>(940f, 685f, 1474f, -1308f)), Struct_1(vec4<f32>(-2713f, -1016f, 970f, -1265f)), Struct_1(vec4<f32>(-755f, 812f, 2513f, 288f)), Struct_1(vec4<f32>(190f, -648f, 381f, -538f)), Struct_1(vec4<f32>(-146f, -981f, -1025f, -583f)), Struct_1(vec4<f32>(868f, -538f, 1334f, -1137f)), Struct_1(vec4<f32>(1064f, 752f, 268f, 1343f)), Struct_1(vec4<f32>(-365f, -300f, 567f, 1456f)), Struct_1(vec4<f32>(1000f, -843f, 1100f, -1667f)), Struct_1(vec4<f32>(-958f, 231f, -723f, -1567f)), Struct_1(vec4<f32>(-1031f, -286f, 1612f, -252f)), Struct_1(vec4<f32>(1752f, 1014f, -1974f, 875f)), Struct_1(vec4<f32>(-1000f, 580f, -1133f, 1284f)), Struct_1(vec4<f32>(-1000f, -854f, 898f, 1000f)), Struct_1(vec4<f32>(108f, -1000f, 327f, 290f)), Struct_1(vec4<f32>(1000f, -661f, 2557f, -124f)), Struct_1(vec4<f32>(1351f, -1412f, -959f, 1000f)), Struct_1(vec4<f32>(1000f, 181f, -1170f, 1035f)), Struct_1(vec4<f32>(-218f, 521f, 143f, -754f)), Struct_1(vec4<f32>(-1670f, -965f, 999f, -186f)), Struct_1(vec4<f32>(-125f, -406f, -1000f, 644f)), Struct_1(vec4<f32>(-1066f, -499f, -2045f, -1689f)), Struct_1(vec4<f32>(320f, 772f, -2551f, -1000f)), Struct_1(vec4<f32>(407f, 232f, 313f, -1000f)), Struct_1(vec4<f32>(-662f, 1110f, 606f, 996f)), Struct_1(vec4<f32>(-949f, -1119f, 940f, 234f)), Struct_1(vec4<f32>(-1924f, -198f, 1012f, -1610f)), Struct_1(vec4<f32>(-106f, -549f, -334f, -180f)), Struct_1(vec4<f32>(130f, -1000f, -180f, 779f)));

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<f32>(-1165f, 162f, 1011f, -815f)), true, Struct_1(vec4<f32>(778f, 385f, 164f, 713f)), vec3<bool>(true, false, true));

var<private> global2: array<f32, 20>;

var<private> global3: array<bool, 25>;

var<private> global4: i32 = i32(-2147483648);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<i32>) -> bool {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.a.x, global1.c.a.x, -541f, 1217f)))), any(select(vec4<bool>(true, true, true, true), select(arg_0, arg_0, true), all(select(vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.c.x, 25u)], global1.d.x), global1.d, global3[_wgslsmith_index_u32(0u, 25u)])))), Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(499f, -381f, _wgslsmith_f_op_f32(f32(-1f) * -429f), _wgslsmith_f_op_f32(global1.a.a.x - global1.a.a.x))))), !vec3<bool>(any(select(vec4<bool>(arg_0.x, true, arg_0.x, global3[_wgslsmith_index_u32(u_input.c.x, 25u)]), vec4<bool>(false, true, global3[_wgslsmith_index_u32(1u, 25u)], false), vec4<bool>(global1.d.x, true, false, global1.b))), arg_0.x, global1.d.x));
    var_0 = Struct_2(global1.a, false, var_0.c, !select(var_0.d, arg_0.yww, var_0.b));
    var var_1 = false;
    var_1 = true;
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a.x, 1065f, global2[_wgslsmith_index_u32(60041u, 20u)], var_0.a.a.x)), var_0.c.a, !arg_0.x))))), !any(select(select(global1.d, vec3<bool>(global1.d.x, var_0.b, true), vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.c.x, 25u)], var_0.b)), select(vec3<bool>(true, false, true), arg_0.xxz, false), all(vec2<bool>(arg_0.x, var_0.d.x)))), var_0.c, select(!arg_0.wxz, vec3<bool>(true, arg_0.x, true), any(arg_0.xx)));
    return !global3[_wgslsmith_index_u32(max(u_input.c.x, 4294967295u) << (u_input.c.x % 32u), 25u)];
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> vec2<bool> {
    global0 = array<Struct_1, 30>();
    let var_0 = firstTrailingBit(reverseBits(firstTrailingBit(-u_input.a)));
    let var_1 = _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c.x, ~36874u, ~u_input.c.x, ~u_input.c.x), _wgslsmith_sub_vec4_u32(u_input.c, u_input.c) >> (~u_input.c % vec4<u32>(32u)));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(1u, 20u)], 399f, arg_0.b)), _wgslsmith_div_f32(354f, 1259f), _wgslsmith_f_op_f32(ceil(298f)), 594f) * _wgslsmith_f_op_vec4_f32(-global1.c.a))), _wgslsmith_f_op_vec4_f32(ceil(arg_0.a.a)));
    let var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-345f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -353f) + _wgslsmith_f_op_f32(var_2.x - -1108f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.c.a.x)) * arg_0.c.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-399f * arg_0.c.a.x)))));
    return arg_0.d.xx;
}

fn func_2() -> Struct_1 {
    var var_0 = -2147483647i;
    let var_1 = !select(global1.d.yx, func_4(Struct_2(Struct_1(vec4<f32>(-2203f, global1.c.a.x, global2[_wgslsmith_index_u32(u_input.c.x, 20u)], global2[_wgslsmith_index_u32(1u, 20u)])), func_3(vec4<bool>(global1.b, true, global3[_wgslsmith_index_u32(19297u, 25u)], global3[_wgslsmith_index_u32(0u, 25u)]), vec4<i32>(u_input.a.x, u_input.b, u_input.b, 0i)), Struct_1(vec4<f32>(global1.a.a.x, global2[_wgslsmith_index_u32(24567u, 20u)], global1.c.a.x, 793f)), vec3<bool>(false, false, global1.b)), _wgslsmith_clamp_i32(reverseBits(u_input.a.x), u_input.a.x & 0i, _wgslsmith_sub_i32(u_input.b, 2147483647i))), 68428u >= firstTrailingBit(u_input.c.x));
    global2 = array<f32, 20>();
    var var_2 = all(var_1);
    global4 = -u_input.b;
    return global1.a;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: bool) -> u32 {
    var var_0 = Struct_2(func_2(), !(!(!(!global1.d.x))), func_2(), vec3<bool>(true || !global3[_wgslsmith_index_u32(40165u << (arg_0 % 32u), 25u)], any(vec2<bool>(global1.d.x, true)), any(select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 25u)], global3[_wgslsmith_index_u32(1237u, 25u)], true), select(vec3<bool>(true, false, global1.b), global1.d, vec3<bool>(arg_2, false, false)), arg_2))));
    let var_1 = vec4<bool>(all(select(!(!vec4<bool>(true, false, true, global3[_wgslsmith_index_u32(31521u, 25u)])), !vec4<bool>(global1.b, global3[_wgslsmith_index_u32(u_input.c.x, 25u)], true, global3[_wgslsmith_index_u32(45849u, 25u)]), !global1.b)), func_4(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a.x, global2[_wgslsmith_index_u32(arg_0, 20u)], -1321f, global1.c.a.x))), (true & var_0.d.x) || true, Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a.a)), select(vec3<bool>(true, false, global1.b), vec3<bool>(true, var_0.d.x, global3[_wgslsmith_index_u32(u_input.c.x, 25u)]), any(var_0.d))), ~(-(~u_input.b))).x, select(true, all(vec4<bool>(true, var_0.b || true, !global1.b, all(vec4<bool>(global1.d.x, global3[_wgslsmith_index_u32(arg_0, 25u)], true, global3[_wgslsmith_index_u32(u_input.c.x, 25u)])))), !(1i < u_input.a.x) == false), false);
    var var_2 = u_input.c.x;
    var var_3 = var_1.yzw;
    return ~_wgslsmith_mult_u32(~(~_wgslsmith_add_u32(0u, 4294967295u)), countOneBits(_wgslsmith_dot_vec4_u32(select(vec4<u32>(24540u, 85606u, arg_0, 50956u), vec4<u32>(arg_0, arg_0, 8299u, arg_0), false), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, 72847u, 4294967295u), u_input.c))));
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(~abs(arg_0)), select(arg_0, 1u, func_3(vec4<bool>(func_4(Struct_2(Struct_1(vec4<f32>(arg_1.a.x, global2[_wgslsmith_index_u32(1u, 20u)], 948f, global2[_wgslsmith_index_u32(1u, 20u)])), global3[_wgslsmith_index_u32(u_input.c.x, 25u)], Struct_1(vec4<f32>(global2[_wgslsmith_index_u32(arg_0, 20u)], -1416f, global1.a.a.x, 1746f)), vec3<bool>(global1.b, true, global3[_wgslsmith_index_u32(85029u, 25u)])), u_input.a.x).x, global1.d.x, global3[_wgslsmith_index_u32(firstTrailingBit(31794u), 25u)], !global1.d.x), _wgslsmith_mult_vec4_i32(min(vec4<i32>(-15426i, 26234i, 16571i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, -11327i, u_input.b)), vec4<i32>(2147483647i, 1i, 1i, -2147483647i))))), 20u)];
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.a.x * arg_1.a.x) * func_2().a.x));
    var var_3 = global1.d.x;
    var var_4 = _wgslsmith_div_f32(-225f, _wgslsmith_f_op_f32(-431f - global2[_wgslsmith_index_u32(arg_0, 20u)]));
    return Struct_2(arg_1, 0i != _wgslsmith_dot_vec2_i32(abs(u_input.a), (u_input.a << (u_input.c.xx % vec2<u32>(32u))) >> (_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 4306u), u_input.c.yy) % vec2<u32>(32u))), func_2(), select(!(!select(global1.d, global1.d, true)), select(select(vec3<bool>(true, false, true), global1.d, global1.b), vec3<bool>(true, 1822f != var_2, true), vec3<bool>(true, false | global1.b, false)), select(!select(vec3<bool>(global1.d.x, false, true), global1.d, global3[_wgslsmith_index_u32(arg_0, 25u)]), global1.d, select(vec3<bool>(true, true, true), !global1.d, false))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = u_input.b;
    let var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(89798u, ~14509u, firstLeadingBit(~60753u), _wgslsmith_mod_u32(1u, u_input.c.x)), vec4<u32>(u_input.c.x, u_input.c.x, max(_wgslsmith_mult_u32(u_input.c.x, 1u), 9344u), 1u));
    global2 = array<f32, 20>();
    let var_1 = func_5(func_1(var_0.x, 1i, global1.d.x), global1.c);
    global2 = array<f32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(func_5(0u, Struct_1(vec4<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 20u)], _wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.c.x, 20u)], -129f), _wgslsmith_div_f32(1498f, -1851f), -834f))).c.a.x, vec4<i32>(0i, i32(-1i) * -14770i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.a.x, -27231i, u_input.b) << (firstTrailingBit(var_0) % vec4<u32>(32u)), ~(-vec4<i32>(2147483647i, 15345i, 49409i, u_input.b))), u_input.a.x));
}


struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: bool,
    c: vec4<f32>,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 21> = array<Struct_4, 21>(Struct_4(vec4<i32>(23431i, 1i, 1i, -41018i), false, vec4<f32>(721f, -214f, -2695f, -608f), 1u, vec4<f32>(-1796f, 1290f, 317f, -991f)), Struct_4(vec4<i32>(44136i, 9768i, 30848i, -37202i), false, vec4<f32>(-339f, 1149f, 1093f, -530f), 89719u, vec4<f32>(875f, -961f, 278f, 892f)), Struct_4(vec4<i32>(0i, 1i, 21536i, 29501i), true, vec4<f32>(-703f, -412f, 1301f, 1177f), 0u, vec4<f32>(340f, 144f, -945f, -159f)), Struct_4(vec4<i32>(-30177i, -53964i, 50599i, -55960i), true, vec4<f32>(-1157f, 1354f, -1307f, 545f), 0u, vec4<f32>(1000f, 947f, 660f, -1643f)), Struct_4(vec4<i32>(1i, -1i, 9511i, -5504i), false, vec4<f32>(1965f, 2138f, -303f, -1305f), 4294967295u, vec4<f32>(1176f, -960f, -988f, 2652f)), Struct_4(vec4<i32>(-587i, -1i, 69695i, 63404i), true, vec4<f32>(432f, 817f, 870f, 383f), 44272u, vec4<f32>(303f, 232f, -924f, -1000f)), Struct_4(vec4<i32>(-19874i, -8649i, i32(-2147483648), i32(-2147483648)), true, vec4<f32>(542f, 2036f, 1677f, -405f), 1u, vec4<f32>(-889f, 535f, -1107f, -3111f)), Struct_4(vec4<i32>(-10021i, 53612i, i32(-2147483648), -1222i), true, vec4<f32>(-521f, 1384f, 848f, -930f), 6018u, vec4<f32>(936f, -1303f, 576f, -1000f)), Struct_4(vec4<i32>(754i, -12658i, 28679i, 0i), true, vec4<f32>(1000f, 1000f, 559f, -398f), 0u, vec4<f32>(-1179f, 1287f, -569f, 410f)), Struct_4(vec4<i32>(i32(-2147483648), 1i, -1i, 42811i), true, vec4<f32>(-342f, 920f, 1645f, -146f), 1u, vec4<f32>(914f, -106f, 1153f, -181f)), Struct_4(vec4<i32>(-1824i, -2763i, 19891i, 1i), false, vec4<f32>(687f, 592f, -1014f, 832f), 1u, vec4<f32>(-844f, 3444f, -714f, 973f)), Struct_4(vec4<i32>(1i, 9031i, 2147483647i, 1807i), false, vec4<f32>(-677f, -2745f, 1000f, 279f), 4294967295u, vec4<f32>(1442f, 321f, 527f, 2005f)), Struct_4(vec4<i32>(47325i, 0i, 11840i, i32(-2147483648)), true, vec4<f32>(-712f, -608f, 1000f, -1148f), 41201u, vec4<f32>(-175f, 1000f, -532f, 567f)), Struct_4(vec4<i32>(0i, 2147483647i, 0i, 2147483647i), false, vec4<f32>(838f, 1000f, -1613f, -509f), 4294967295u, vec4<f32>(-1507f, 2275f, 596f, 1799f)), Struct_4(vec4<i32>(2147483647i, 0i, i32(-2147483648), 0i), true, vec4<f32>(712f, 446f, 1143f, 133f), 42953u, vec4<f32>(763f, -220f, -262f, -528f)), Struct_4(vec4<i32>(1i, 1i, -1i, 1i), true, vec4<f32>(-1419f, -324f, 1000f, -1175f), 42293u, vec4<f32>(-224f, -1840f, -139f, -709f)), Struct_4(vec4<i32>(0i, 3672i, -1i, -73135i), false, vec4<f32>(994f, -1506f, 1339f, -1000f), 39912u, vec4<f32>(-1253f, -179f, -507f, -557f)), Struct_4(vec4<i32>(1i, i32(-2147483648), 2147483647i, 1i), true, vec4<f32>(-157f, 911f, -782f, 1000f), 98415u, vec4<f32>(-662f, -1132f, 866f, 847f)), Struct_4(vec4<i32>(12689i, i32(-2147483648), 1i, 11679i), false, vec4<f32>(-2181f, -1647f, 513f, -1000f), 4294967295u, vec4<f32>(-642f, 967f, 918f, 626f)), Struct_4(vec4<i32>(32857i, 12892i, -32480i, 934i), true, vec4<f32>(-175f, 1531f, -1061f, 1000f), 10783u, vec4<f32>(1000f, 1100f, 266f, 1301f)), Struct_4(vec4<i32>(47736i, 2147483647i, 11403i, 1i), false, vec4<f32>(-1267f, -870f, -2375f, -165f), 31494u, vec4<f32>(-227f, 700f, -2197f, -965f)));

var<private> global1: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec3<u32>(31783u, 4294967295u, 26848u), vec4<bool>(true, true, true, true), Struct_1(35429u, true), Struct_1(91816u, true)), Struct_2(vec3<u32>(72772u, 30069u, 27153u), vec4<bool>(true, true, false, false), Struct_1(0u, true), Struct_1(1u, true)), Struct_2(vec3<u32>(1u, 36358u, 4294967295u), vec4<bool>(true, true, false, false), Struct_1(38753u, false), Struct_1(1u, true)), Struct_2(vec3<u32>(1u, 23070u, 4294967295u), vec4<bool>(false, false, false, false), Struct_1(50907u, true), Struct_1(31846u, false)));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec4<u32>) -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_dot_vec2_u32(u_input.b, arg_2.yw), arg_0.d.b);
    let var_1 = select(var_0.b, !any(!vec4<bool>(true, true, arg_0.b.x, true)), true & any(arg_0.b)) & (_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -838f)), any(select(vec2<bool>(arg_0.b.x, true), arg_0.b.wx, vec2<bool>(true, arg_0.c.b))))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(430f, -580f, var_0.b)) - 1f)));
    global1 = array<Struct_2, 4>();
    global1 = array<Struct_2, 4>();
    let var_2 = (~11589i >= u_input.c) & true;
    return !arg_0.b.yy;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(1000f)), -758f, _wgslsmith_f_op_f32(-873f - -335f), -509f) * vec4<f32>(-1459f, _wgslsmith_f_op_f32(f32(-1f) * -156f), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -2007f))))));
    var var_1 = select(arg_1.wz, select(arg_2.d.b.ww, select(vec2<bool>(true, 2147483647i < arg_0.b.x), !(!vec2<bool>(arg_0.d.c.b, arg_2.c.b.x)), arg_2.c.c.b), true), ((_wgslsmith_f_op_f32(min(702f, var_0.x)) != _wgslsmith_f_op_f32(min(var_0.x, 403f))) && false) || all(select(vec2<bool>(arg_2.c.b.x, false), arg_2.c.b.yy, arg_0.d.b.wy)));
    let var_2 = -(~_wgslsmith_dot_vec3_i32(~(-vec3<i32>(0i, arg_0.b.x, arg_2.b.x)), vec3<i32>(u_input.a >> (17211u % 32u), -2382i, arg_0.b.x << (0u % 32u))));
    let var_3 = func_3(Struct_2(vec3<u32>(~1u, _wgslsmith_dot_vec3_u32(u_input.d, _wgslsmith_mod_vec3_u32(u_input.d, vec3<u32>(0u, arg_0.c.c.a, 4294967295u))), select(u_input.b.x, u_input.b.x, var_1.x && arg_2.d.b.x)), vec4<bool>(all(vec2<bool>(arg_1.x, arg_1.x)) | true, true, true, arg_2.c.b.x), arg_2.c.c, Struct_1(2800u, all(func_3(global1[_wgslsmith_index_u32(arg_0.c.a.x, 4u)], vec2<u32>(41733u, arg_0.c.a.x), vec4<u32>(4294967295u, 14830u, 22168u, u_input.b.x))))), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(~arg_2.c.a.xy, arg_0.c.a.xz) >> (_wgslsmith_mult_vec2_u32(abs(vec2<u32>(arg_2.d.c.a, u_input.d.x)), ~u_input.d.yx) % vec2<u32>(32u)), ~countOneBits(u_input.b), ~max(arg_0.d.a.yz, abs(arg_0.c.a.xz))), _wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.b.x, abs(arg_2.a >> (1u % 32u)), 1u), ~_wgslsmith_clamp_vec4_u32(select(vec4<u32>(0u, 1u, 3187u, 58945u), vec4<u32>(u_input.b.x, arg_0.d.d.a, u_input.b.x, 4294967295u), vec4<bool>(arg_0.c.c.b, true, arg_1.x, arg_0.d.c.b)), ~vec4<u32>(33451u, arg_0.a, arg_2.c.d.a, u_input.d.x), vec4<u32>(arg_2.c.c.a, arg_0.a, 31902u, arg_0.c.d.a)))).x;
    var var_4 = true;
    return arg_2.d.a.x;
}

fn func_2() -> vec3<bool> {
    var var_0 = ~func_4(Struct_3(0u, select(max(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.c, u_input.c)), -vec2<i32>(u_input.c, -11097i), func_3(global1[_wgslsmith_index_u32(u_input.d.x, 4u)], vec2<u32>(u_input.b.x, u_input.d.x), vec4<u32>(u_input.d.x, 34402u, 45416u, 4294967295u))), global1[_wgslsmith_index_u32(0u, 4u)], Struct_2(reverseBits(vec3<u32>(u_input.b.x, u_input.d.x, 0u)), vec4<bool>(true, true, true, true), Struct_1(u_input.d.x, false), Struct_1(49053u, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), Struct_3(_wgslsmith_div_u32(u_input.d.x, 48693u), ~_wgslsmith_mult_vec2_i32(vec2<i32>(0i, u_input.c), vec2<i32>(2147483647i, -19488i)), global1[_wgslsmith_index_u32(29377u, 4u)], Struct_2(_wgslsmith_clamp_vec3_u32(u_input.d, u_input.d, vec3<u32>(4294967295u, 1u, u_input.b.x)), vec4<bool>(true, true, true, true), Struct_1(u_input.d.x, true), Struct_1(u_input.b.x, false))));
    var_0 = func_4(Struct_3(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 85915u, 41656u, 4294967295u), vec4<u32>(u_input.d.x, u_input.b.x, 77428u, u_input.d.x)), ~_wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.a, u_input.c), countOneBits(vec2<i32>(u_input.a, u_input.a))), global1[_wgslsmith_index_u32(firstLeadingBit(reverseBits(max(834u, u_input.b.x))), 4u)], Struct_2(vec3<u32>(1u, 332u, ~1u), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, true, true), true), Struct_1(u_input.d.x, true), Struct_1(_wgslsmith_add_u32(1u, 0u), false))), vec4<bool>(true & (~u_input.b.x <= func_4(Struct_3(1u, vec2<i32>(u_input.a, 25887i), global1[_wgslsmith_index_u32(22960u, 4u)], global1[_wgslsmith_index_u32(u_input.d.x, 4u)]), vec4<bool>(true, false, true, true), Struct_3(u_input.b.x, vec2<i32>(u_input.a, -1i), global1[_wgslsmith_index_u32(u_input.b.x, 4u)], global1[_wgslsmith_index_u32(u_input.b.x, 4u)]))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), all(vec3<bool>(true, true, true)), true), Struct_3(1u, vec2<i32>(-9604i, -max(2147483647i, u_input.a)), global1[_wgslsmith_index_u32(~21531u, 4u)], global1[_wgslsmith_index_u32(28179u, 4u)]));
    global1 = array<Struct_2, 4>();
    var var_1 = ~(-u_input.a ^ firstTrailingBit(~_wgslsmith_add_i32(u_input.c, u_input.c)));
    var_1 = -abs(1i);
    return vec3<bool>(true, all(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)))), func_3(Struct_2(~(~vec3<u32>(1u, 16496u, 1u)), vec4<bool>(true, true, 8274u > u_input.d.x, true), Struct_1(_wgslsmith_sub_u32(4294967295u, 1u), true), Struct_1(~30046u, true)), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, 50887u), ~u_input.b), _wgslsmith_sub_vec2_u32(u_input.b, abs(u_input.d.xx)), u_input.d.yx >> (~vec2<u32>(0u, 34886u) % vec2<u32>(32u))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 1u, 0u, 34745u) | abs(vec4<u32>(7774u, 15150u, 64313u, u_input.d.x)), ~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.b.x) & (vec4<u32>(1u, u_input.d.x, u_input.b.x, u_input.d.x) ^ vec4<u32>(4294967295u, 54526u, 4294967295u, 1u)), ~vec4<u32>(u_input.b.x, u_input.d.x, 0u, u_input.b.x))).x);
}

fn func_1() -> vec4<bool> {
    global0 = array<Struct_4, 21>();
    var var_0 = ~_wgslsmith_add_vec3_u32(vec3<u32>(~58401u, ~(~u_input.d.x), ~1u), vec3<u32>(u_input.b.x, 76691u, ~65596u));
    var_0 = (~(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, var_0.x, 17759u), vec3<u32>(u_input.d.x, 0u, u_input.b.x)) << (vec3<u32>(u_input.d.x, u_input.d.x, 50567u) % vec3<u32>(32u))) | ~((vec3<u32>(var_0.x, var_0.x, u_input.d.x) << (vec3<u32>(94739u, 32741u, u_input.b.x) % vec3<u32>(32u))) ^ vec3<u32>(58894u, 36783u, 1u))) & u_input.d;
    var var_1 = !select(select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), func_2()), !vec3<bool>(any(vec2<bool>(false, false)), true, true), func_2());
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -844f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(250f, 1694f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(189f, 1868f, var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -576f)))));
    return vec4<bool>(!func_2().x, var_1.x, all(vec4<bool>(func_3(global1[_wgslsmith_index_u32(4294967295u, 4u)], ~vec2<u32>(2372u, 107795u), select(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, var_0.x), vec4<u32>(1u, 0u, 0u, 23788u), false)).x, !(-24060i > u_input.c), true, var_1.x)), true);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: bool) -> f32 {
    var var_0 = Struct_3(arg_0.c.a, firstLeadingBit(_wgslsmith_clamp_vec2_i32(abs(abs(vec2<i32>(u_input.a, -44079i))), ~vec2<i32>(-20873i, u_input.c) << (~arg_0.a.zz % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(~vec2<i32>(1i, -2147483647i), -vec2<i32>(-48138i, u_input.c), -vec2<i32>(u_input.a, u_input.c)))), global1[_wgslsmith_index_u32(~(~(~arg_0.c.a)), 4u)], Struct_2(vec3<u32>(reverseBits(u_input.b.x), 4294967295u, arg_0.a.x) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.b.x, 22425u), u_input.d), arg_1, Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, 834u), vec4<u32>(arg_0.d.a, 0u, 56818u, u_input.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -871f) <= _wgslsmith_f_op_f32(select(1692f, 180f, false))), arg_0.d));
    let var_1 = 1u;
    let var_2 = Struct_3(var_0.c.a.x, -(~_wgslsmith_add_vec2_i32(var_0.b, vec2<i32>(var_0.b.x, var_0.b.x))) >> (vec2<u32>(34241u, u_input.b.x ^ 4294967295u) % vec2<u32>(32u)), arg_0, Struct_2(~(~arg_0.a), func_1(), arg_0.c, arg_0.c));
    let var_3 = !vec2<bool>(func_2().x, true);
    global1 = array<Struct_2, 4>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(413f + 1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(~u_input.d.x, u_input.d.x << (_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(0u, u_input.d.x, 1u | u_input.b.x)) % 32u));
    let var_1 = _wgslsmith_f_op_f32(func_5(Struct_2(~_wgslsmith_clamp_vec3_u32(u_input.d, vec3<u32>(1u, u_input.d.x, var_0), u_input.d) >> (~(~vec3<u32>(11679u, 1u, u_input.b.x)) % vec3<u32>(32u)), select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false))), select(func_1(), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), false), true), vec4<bool>(true, any(vec2<bool>(true, false)), true, true)), Struct_1(~1u, true), Struct_1(~(~u_input.d.x), true || (1u != u_input.b.x))), !select(vec4<bool>(true, true, true, true), func_1(), any(vec3<bool>(false, false, true)) || any(vec2<bool>(true, false))), false));
    global1 = array<Struct_2, 4>();
    let var_2 = Struct_1(4294967295u, true);
    global1 = array<Struct_2, 4>();
    let var_3 = Struct_4(vec4<i32>(-1i) * -vec4<i32>(abs(u_input.c), -9690i, i32(-1i) * -1i, -2147483647i), false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), var_1, var_1, _wgslsmith_f_op_f32(276f * var_1))), max(70670u, var_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, _wgslsmith_f_op_f32(ceil(var_1)), -1510f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-550f, -1364f, var_1, 248f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1475f, 514f, var_1, var_1) * vec4<f32>(var_1, -2309f, var_1, var_1)))))));
    let var_4 = vec3<i32>(-1i) * -abs(_wgslsmith_sub_vec3_i32(select(vec3<i32>(u_input.c, 22613i, 9551i), var_3.a.xzw, vec3<bool>(var_3.b, false, false)), vec3<i32>(31368i, 43639i, -1i) | vec3<i32>(u_input.c, u_input.a, -1i)));
    let var_5 = var_2;
    global1 = array<Struct_2, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_div_u32(~4294967295u, firstTrailingBit(4294967295u)), var_2.a, ~0u << (_wgslsmith_dot_vec3_u32(u_input.d, u_input.d) % 32u), 12505u), reverseBits(select(abs(vec4<u32>(4294967295u, u_input.d.x, 34079u, var_3.d)), select(vec4<u32>(var_3.d, 17752u, 0u, var_5.a), vec4<u32>(var_2.a, var_2.a, 2042u, u_input.d.x), true), func_2().x)), vec4<u32>(var_2.a, ~u_input.b.x, var_0, _wgslsmith_sub_u32(1u, u_input.b.x))), var_5.a << (~var_3.d % 32u), 11466i, firstTrailingBit(i32(-1i) * -_wgslsmith_sub_i32(u_input.a, -15634i)));
}


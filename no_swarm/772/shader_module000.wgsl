struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: Struct_2,
    d: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8> = array<f32, 8>(-432f, 1132f, 750f, -164f, 1097f, 599f, -321f, 841f);

var<private> global1: vec3<i32> = vec3<i32>(-27288i, -24462i, -45632i);

var<private> global2: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(vec3<u32>(0u, 4294967295u, 2221u), true, Struct_2(vec2<u32>(0u, 0u), Struct_1(-2575f, false, i32(-2147483648), false, vec4<f32>(-112f, -1000f, -180f, -844f)), false), vec2<i32>(48907i, 4965i)), Struct_3(vec3<u32>(4294967295u, 29102u, 12093u), false, Struct_2(vec2<u32>(24770u, 0u), Struct_1(-1191f, true, -32554i, false, vec4<f32>(-389f, -1816f, 784f, 1179f)), false), vec2<i32>(2147483647i, -25796i)), Struct_3(vec3<u32>(30600u, 1151u, 32254u), true, Struct_2(vec2<u32>(49938u, 48501u), Struct_1(921f, false, 2147483647i, true, vec4<f32>(181f, -1475f, 990f, -246f)), false), vec2<i32>(80729i, 2832i)), Struct_3(vec3<u32>(23514u, 43283u, 35129u), true, Struct_2(vec2<u32>(3789u, 71898u), Struct_1(332f, false, 0i, true, vec4<f32>(-2053f, -1502f, 1465f, -406f)), true), vec2<i32>(-55484i, 24723i)), Struct_3(vec3<u32>(4294967295u, 0u, 4807u), false, Struct_2(vec2<u32>(4294967295u, 59248u), Struct_1(1663f, true, -1i, true, vec4<f32>(-1773f, 320f, -365f, -756f)), true), vec2<i32>(37726i, 25347i)), Struct_3(vec3<u32>(4294967295u, 37952u, 68579u), false, Struct_2(vec2<u32>(4294967295u, 1u), Struct_1(298f, true, -26624i, false, vec4<f32>(699f, 614f, -554f, 1000f)), false), vec2<i32>(-17421i, -3729i)), Struct_3(vec3<u32>(4294967295u, 10678u, 86360u), false, Struct_2(vec2<u32>(189u, 46694u), Struct_1(-124f, true, 1i, true, vec4<f32>(-682f, -413f, 886f, -507f)), false), vec2<i32>(-14366i, 9258i)), Struct_3(vec3<u32>(69531u, 4255u, 8422u), false, Struct_2(vec2<u32>(1u, 4294967295u), Struct_1(286f, false, 2147483647i, true, vec4<f32>(-1927f, 1153f, -825f, -1461f)), true), vec2<i32>(-1i, 16058i)), Struct_3(vec3<u32>(1u, 26549u, 1426u), false, Struct_2(vec2<u32>(1u, 47103u), Struct_1(476f, false, -25811i, false, vec4<f32>(262f, 1629f, -881f, -1000f)), false), vec2<i32>(-1i, -1i)), Struct_3(vec3<u32>(12505u, 29615u, 0u), true, Struct_2(vec2<u32>(27336u, 3981u), Struct_1(-1000f, true, 48858i, false, vec4<f32>(355f, 1078f, -294f, -568f)), true), vec2<i32>(1i, 2147483647i)), Struct_3(vec3<u32>(35743u, 69963u, 42771u), true, Struct_2(vec2<u32>(1u, 36740u), Struct_1(-1065f, false, 68207i, false, vec4<f32>(1000f, 226f, 664f, 607f)), true), vec2<i32>(-31335i, 1i)), Struct_3(vec3<u32>(4294967295u, 4294967295u, 26832u), false, Struct_2(vec2<u32>(0u, 20799u), Struct_1(1111f, true, 2147483647i, false, vec4<f32>(-107f, 1386f, 1568f, 1641f)), false), vec2<i32>(i32(-2147483648), 6817i)), Struct_3(vec3<u32>(64589u, 4294967295u, 4294967295u), true, Struct_2(vec2<u32>(0u, 4294967295u), Struct_1(721f, false, 17711i, true, vec4<f32>(441f, -608f, -1329f, -754f)), false), vec2<i32>(-64918i, -43643i)), Struct_3(vec3<u32>(22554u, 33556u, 1u), false, Struct_2(vec2<u32>(0u, 1u), Struct_1(-1000f, false, 0i, true, vec4<f32>(290f, -953f, -304f, 2683f)), false), vec2<i32>(-44638i, -1i)), Struct_3(vec3<u32>(4294967295u, 38912u, 28016u), true, Struct_2(vec2<u32>(0u, 0u), Struct_1(1059f, true, 1i, false, vec4<f32>(831f, 1860f, -1480f, 942f)), false), vec2<i32>(0i, -6174i)), Struct_3(vec3<u32>(0u, 1u, 13316u), false, Struct_2(vec2<u32>(25823u, 0u), Struct_1(1134f, true, -1i, false, vec4<f32>(300f, 1452f, -379f, -492f)), false), vec2<i32>(18784i, -7063i)), Struct_3(vec3<u32>(2245u, 74934u, 4294967295u), true, Struct_2(vec2<u32>(44262u, 8877u), Struct_1(315f, false, 2797i, true, vec4<f32>(313f, 321f, 430f, -612f)), true), vec2<i32>(7721i, -19415i)), Struct_3(vec3<u32>(0u, 0u, 13533u), false, Struct_2(vec2<u32>(1u, 5705u), Struct_1(1822f, true, -37533i, false, vec4<f32>(-650f, -866f, 620f, -773f)), false), vec2<i32>(0i, 72032i)), Struct_3(vec3<u32>(4294967295u, 55591u, 0u), false, Struct_2(vec2<u32>(35030u, 48874u), Struct_1(483f, false, -16164i, false, vec4<f32>(1087f, 519f, -1395f, -602f)), false), vec2<i32>(i32(-2147483648), -36851i)), Struct_3(vec3<u32>(0u, 44014u, 26047u), false, Struct_2(vec2<u32>(4294967295u, 33063u), Struct_1(405f, true, i32(-2147483648), false, vec4<f32>(-1865f, -1000f, -500f, 490f)), true), vec2<i32>(i32(-2147483648), -67844i)), Struct_3(vec3<u32>(0u, 0u, 38003u), true, Struct_2(vec2<u32>(7648u, 1u), Struct_1(1957f, false, -43372i, true, vec4<f32>(955f, 722f, 751f, -1179f)), true), vec2<i32>(i32(-2147483648), 0i)), Struct_3(vec3<u32>(51697u, 0u, 1u), true, Struct_2(vec2<u32>(4294967295u, 14409u), Struct_1(-867f, true, 6959i, true, vec4<f32>(2694f, 395f, 887f, 1192f)), true), vec2<i32>(1i, -16403i)), Struct_3(vec3<u32>(42050u, 1u, 0u), true, Struct_2(vec2<u32>(1u, 1u), Struct_1(952f, true, 1i, false, vec4<f32>(298f, -1934f, 537f, -650f)), false), vec2<i32>(2147483647i, 2147483647i)), Struct_3(vec3<u32>(4330u, 31099u, 98780u), true, Struct_2(vec2<u32>(25418u, 0u), Struct_1(127f, false, -13396i, false, vec4<f32>(589f, 1031f, -1334f, 1081f)), true), vec2<i32>(-1i, -34066i)), Struct_3(vec3<u32>(0u, 20384u, 0u), true, Struct_2(vec2<u32>(0u, 0u), Struct_1(686f, true, 0i, false, vec4<f32>(2735f, -282f, 436f, 1203f)), false), vec2<i32>(1i, i32(-2147483648))));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: i32, arg_3: vec2<u32>) -> i32 {
    global0 = array<f32, 8>();
    let var_0 = global2[_wgslsmith_index_u32(1u, 25u)];
    global0 = array<f32, 8>();
    let var_1 = ((_wgslsmith_add_vec3_i32(~vec3<i32>(arg_2, -20940i, 2147483647i), ~vec3<i32>(23657i, -42040i, arg_2)) ^ max(vec3<i32>(1i, 1i, 1i), vec3<i32>(var_0.d.x, global1.x, var_0.d.x))) & -countOneBits(vec3<i32>(global1.x, var_0.d.x, global1.x))) & -vec3<i32>(var_0.d.x, max(62626i, reverseBits(global1.x)), select(_wgslsmith_mod_i32(global1.x, 2147483647i), 2147483647i, !arg_0));
    global1 = var_1;
    return global1.x << (arg_3.x % 32u);
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_3 {
    global2 = array<Struct_3, 25>();
    var var_0 = vec3<f32>(global0[_wgslsmith_index_u32(abs(abs(u_input.a.x)), 8u)], arg_0.a, arg_0.a);
    global1 = vec3<i32>(-35400i << (_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1974u, 0u, 1u), vec3<u32>(u_input.a.x, u_input.b.x, u_input.a.x) ^ vec3<u32>(u_input.a.x, u_input.a.x, 2229u)), 1u) % 32u), abs(0i), -global1.x);
    global1 = vec3<i32>(countOneBits(10235i), func_3(false & !(!arg_0.b), arg_0.e, global1.x, vec2<u32>(0u, 43264u)), arg_0.c | -50064i);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1004f, -300f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2287f) * _wgslsmith_div_f32(1594f, -203f))) - arg_0.e) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, var_0.x, var_0.x, 962f)))))));
    return Struct_3(vec3<u32>(select(_wgslsmith_sub_u32(33795u, countOneBits(4294967295u)), select(4609u << (u_input.a.x % 32u), 1u, false), true), ~_wgslsmith_add_u32(firstLeadingBit(18300u), select(1u, u_input.a.x, true)), 73334u), arg_0.b, Struct_2(~(~(~u_input.a.yw)), arg_0, any(vec3<bool>(arg_0.d, 4294967295u > u_input.a.x, arg_0.d))), global1.yx);
}

fn func_1() -> Struct_3 {
    var var_0 = func_2(Struct_1(-818f, true, 40685i, true, vec4<f32>(1f, global0[_wgslsmith_index_u32((4294967295u >> (u_input.b.x % 32u)) << (u_input.b.x % 32u), 8u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 8u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 8u)] + 1032f) - 1f))), -34546i ^ ~_wgslsmith_mod_i32(global1.x, _wgslsmith_add_i32(-1i, 15624i)));
    var var_1 = Struct_3(~(~(~u_input.a.xwy & _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.a.x, u_input.a.x, 49885u), vec3<u32>(var_0.c.a.x, 4294967295u, var_0.c.a.x), vec3<u32>(1u, u_input.a.x, u_input.b.x)))), any(select(!(!vec2<bool>(false, var_0.c.b.b)), vec2<bool>(var_0.c.b.a >= var_0.c.b.e.x, all(vec3<bool>(var_0.c.b.b, false, var_0.c.b.b))), !(u_input.a.x <= 40392u))), var_0.c, global1.yy);
    let var_2 = Struct_3(vec3<u32>(_wgslsmith_sub_u32(~(var_1.c.a.x ^ 30637u), 1u), var_0.a.x, _wgslsmith_mult_u32(72315u, 1687u)), any(select(select(!vec4<bool>(var_0.b, true, false, var_1.c.b.d), vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, false, var_0.b), vec4<bool>(var_1.c.b.b, true, var_1.b, var_1.c.b.b), var_0.b)), vec4<bool>(global0[_wgslsmith_index_u32(var_0.c.a.x, 8u)] == 341f, all(vec2<bool>(false, true)), var_0.c.c, select(true, true, var_0.c.b.b)), !vec4<bool>(var_1.b, var_0.b, var_0.c.c, var_0.b))), Struct_2(vec2<u32>(4294967295u, 1u), func_2(func_2(func_2(Struct_1(-1231f, var_0.b, var_1.d.x, false, vec4<f32>(-489f, global0[_wgslsmith_index_u32(1u, 8u)], -895f, global0[_wgslsmith_index_u32(var_0.a.x, 8u)])), var_0.d.x).c.b, var_0.c.b.c).c.b, var_0.d.x).c.b, global1.x >= select(global1.x | -1i, global1.x, var_1.c.b.e.x >= global0[_wgslsmith_index_u32(1u, 8u)])), -(max(var_1.d, vec2<i32>(global1.x, -48403i)) & vec2<i32>(i32(-1i) * -1i, -1i)));
    let var_3 = _wgslsmith_mod_i32(global1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(max(var_0.c.b.c, 2147483647i), var_2.c.b.c ^ 16925i, -2147483647i, 37750i), _wgslsmith_mult_vec4_i32(-vec4<i32>(var_2.c.b.c, -2147483647i, var_0.c.b.c, 15456i), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.c.b.c, var_0.c.b.c, -2147483647i, -1917i), vec4<i32>(-1i, var_1.d.x, var_1.c.b.c, 2147483647i))))) < -(-2147483647i & var_1.c.b.c);
    global1 = vec3<i32>(~var_0.d.x, i32(-1i) * -global1.x, -_wgslsmith_mod_i32(var_1.d.x, ~_wgslsmith_add_i32(6903i, -1i)));
    return global2[_wgslsmith_index_u32(20970u, 25u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = global2[_wgslsmith_index_u32(~(~0u), 25u)];
    var var_1 = countOneBits(countOneBits(u_input.a.zz));
    var var_2 = global1.x == (reverseBits(global1.x & 2147483647i) ^ func_1().d.x);
    let var_3 = ~(~u_input.a.xxz);
    let x = u_input.a;
    s_output = StorageBuffer(5015i, 1u | (var_3.x | ~var_0.c.a.x));
}


struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(Struct_1(-855f, vec3<u32>(7745u, 0u, 16683u), true, 157f), Struct_1(901f, vec3<u32>(4294967295u, 59593u, 9948u), false, 1000f), Struct_1(545f, vec3<u32>(68508u, 28450u, 1u), true, 252f), -1099f, Struct_1(893f, vec3<u32>(64u, 1u, 11651u), true, 2032f)));

var<private> global1: Struct_2 = Struct_2(Struct_1(1000f, vec3<u32>(0u, 4294967295u, 65065u), false, 473f), Struct_1(288f, vec3<u32>(4294967295u, 4294967295u, 4294967295u), false, 1108f), Struct_1(-597f, vec3<u32>(15378u, 1u, 45832u), false, 1000f), 460f, Struct_1(101f, vec3<u32>(0u, 26523u, 57953u), false, 455f));

var<private> global2: array<vec4<u32>, 21>;

var<private> global3: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(Struct_1(754f, vec3<u32>(0u, 0u, 10023u), false, 1673f), Struct_1(596f, vec3<u32>(34845u, 1u, 64417u), true, 763f), Struct_1(-647f, vec3<u32>(1u, 4294967295u, 1u), false, -397f), 468f, Struct_1(-1000f, vec3<u32>(4294967295u, 0u, 37794u), false, -1573f)), Struct_2(Struct_1(351f, vec3<u32>(4294967295u, 1u, 1u), true, -1015f), Struct_1(-851f, vec3<u32>(0u, 72656u, 6757u), false, 628f), Struct_1(-101f, vec3<u32>(0u, 45651u, 76478u), false, -1221f), 244f, Struct_1(-1000f, vec3<u32>(4298u, 4294967295u, 36930u), false, -630f)), Struct_2(Struct_1(596f, vec3<u32>(59819u, 1u, 15520u), false, -1000f), Struct_1(-830f, vec3<u32>(21328u, 1u, 36120u), false, -242f), Struct_1(1742f, vec3<u32>(4294967295u, 1u, 11391u), false, -1000f), -1797f, Struct_1(-660f, vec3<u32>(24653u, 41863u, 4294967295u), false, 104f)), Struct_2(Struct_1(225f, vec3<u32>(68512u, 16572u, 0u), false, 1894f), Struct_1(-384f, vec3<u32>(20829u, 13261u, 1u), false, -1000f), Struct_1(307f, vec3<u32>(25483u, 0u, 64552u), false, -344f), -1540f, Struct_1(-472f, vec3<u32>(41211u, 1u, 4294967295u), true, -1213f)), Struct_2(Struct_1(200f, vec3<u32>(1u, 29717u, 4294967295u), true, 1000f), Struct_1(550f, vec3<u32>(24477u, 5728u, 31081u), false, -589f), Struct_1(1393f, vec3<u32>(15090u, 16504u, 4294967295u), false, 1657f), 721f, Struct_1(1000f, vec3<u32>(88878u, 4294967295u, 40059u), true, -677f)), Struct_2(Struct_1(-813f, vec3<u32>(0u, 4294967295u, 37962u), true, 658f), Struct_1(-1000f, vec3<u32>(1u, 0u, 0u), false, -1828f), Struct_1(-507f, vec3<u32>(41479u, 3156u, 19565u), false, 625f), 1195f, Struct_1(146f, vec3<u32>(20211u, 4294967295u, 0u), false, 850f)), Struct_2(Struct_1(-1121f, vec3<u32>(4294967295u, 4294967295u, 81067u), false, -2347f), Struct_1(196f, vec3<u32>(0u, 0u, 46859u), true, 1177f), Struct_1(228f, vec3<u32>(1u, 4294967295u, 1u), true, -1160f), 543f, Struct_1(-1042f, vec3<u32>(9542u, 1u, 0u), false, -758f)), Struct_2(Struct_1(-910f, vec3<u32>(27416u, 17899u, 48274u), false, 1645f), Struct_1(-1255f, vec3<u32>(8899u, 1u, 4294967295u), false, 872f), Struct_1(-349f, vec3<u32>(1u, 0u, 30091u), false, -1000f), 1567f, Struct_1(-381f, vec3<u32>(9254u, 0u, 0u), true, 951f)), Struct_2(Struct_1(605f, vec3<u32>(58046u, 38607u, 1u), false, -1055f), Struct_1(-130f, vec3<u32>(1u, 11122u, 1420u), false, -1939f), Struct_1(1000f, vec3<u32>(0u, 1u, 1u), false, 1299f), -1273f, Struct_1(1360f, vec3<u32>(4294967295u, 0u, 4294967295u), false, -145f)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_4) -> u32 {
    global3 = array<Struct_2, 9>();
    var var_0 = Struct_1(global0.a.a.a, arg_1.a.b, global0.a.a.c, global1.a.a);
    let var_1 = arg_2.x;
    let var_2 = arg_3.d.yyy;
    let var_3 = global1.b.b.x;
    return ~arg_3.a.a.e.b.x >> ((firstTrailingBit(~26318u | global0.a.a.b.x) & 1u) % 32u);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_3, arg_3: u32) -> i32 {
    global3 = array<Struct_2, 9>();
    let var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.a.d - global0.a.a.a))), arg_1))));
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-212f)) * _wgslsmith_f_op_f32(-global0.a.e.a)))), abs(arg_2.a.b.b | vec3<u32>(global1.c.b.x, 4294967295u, global0.a.a.b.x)), any(!(!vec2<bool>(global0.a.c.c, global1.b.c))), arg_2.a.d), global0.a.c, global1.a, var_1, global1.e);
    let var_2 = arg_2.a.e;
    return _wgslsmith_div_i32(u_input.b.x, var_0.x << (select(min(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, global0.a.e.b.x, 1511u), vec4<u32>(u_input.a, global1.c.b.x, 4294967295u, u_input.a)), 1u), func_1(~2147483647i, Struct_2(Struct_1(968f, vec3<u32>(5524u, 329u, 1u), true, 820f), Struct_1(908f, vec3<u32>(arg_3, 1u, 72947u), global1.c.c, 658f), arg_2.a.c, -964f, Struct_1(arg_1, vec3<u32>(global0.a.e.b.x, arg_2.a.b.b.x, 4294967295u), true, arg_2.a.e.a)), vec4<i32>(u_input.b.x, u_input.c, -1i, 2147483647i) & vec4<i32>(-79634i, 23816i, var_0.x, var_0.x), Struct_4(Struct_3(Struct_2(Struct_1(-172f, arg_2.a.e.b, var_2.c, 1466f), Struct_1(1104f, var_2.b, global0.a.e.c, 331f), Struct_1(2544f, vec3<u32>(3389u, global0.a.e.b.x, global0.a.a.b.x), global1.e.c, global0.a.c.d), 1841f, Struct_1(-1331f, var_2.b, true, 429f))), global0.a.a, global0.a.b, vec4<f32>(-1342f, 1000f, var_2.d, arg_2.a.e.d))), true) % 32u));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> Struct_4 {
    let var_0 = _wgslsmith_mult_i32(func_3(~u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-arg_1)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) + _wgslsmith_f_op_f32(1012f * global1.e.a))), Struct_3(Struct_2(global0.a.b, global1.a, arg_2, arg_2.d, Struct_1(1507f, vec3<u32>(arg_2.b.x, arg_2.b.x, 1u), global0.a.a.c, 539f))), ~u_input.a), _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.c, ~(-2147483647i << (global0.a.c.b.x % 32u))), u_input.c));
    global0 = Struct_3(Struct_2(Struct_1(global1.e.d, vec3<u32>(_wgslsmith_div_u32(97040u, u_input.a), 0u, arg_0.b.x), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1292f + arg_1) - arg_2.d)), Struct_1(-288f, vec3<u32>(~1u, abs(1u), global1.b.b.x & u_input.a), arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(868f - arg_0.d))), Struct_1(_wgslsmith_f_op_f32(ceil(global0.a.b.d)), vec3<u32>(81461u, arg_0.b.x, _wgslsmith_mod_u32(0u, arg_2.b.x)), global1.e.c, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_2.a, arg_2.a), global0.a.c.d))), 137f, arg_0));
    var var_1 = arg_2.c;
    var var_2 = Struct_2(global1.b, Struct_1(arg_2.a, vec3<u32>(36326u, ~0u, func_1(_wgslsmith_mult_i32(-75524i, u_input.b.x), Struct_2(arg_2, global1.c, Struct_1(1495f, vec3<u32>(16054u, u_input.a, arg_2.b.x), arg_2.c, -1111f), arg_1, Struct_1(1170f, global1.b.b, true, global1.b.d)), ~vec4<i32>(var_0, u_input.b.x, 1i, -1i), Struct_4(Struct_3(Struct_2(arg_2, Struct_1(arg_0.a, global1.e.b, true, global0.a.c.a), arg_0, 785f, global0.a.a)), Struct_1(global1.a.d, global1.e.b, global0.a.e.c, arg_2.a), global0.a.a, vec4<f32>(2045f, global1.b.d, 429f, 321f)))), 1u == abs(~arg_2.b.x), -1465f), Struct_1(global0.a.b.a, min(vec3<u32>(arg_0.b.x, global0.a.e.b.x, 36063u) << (vec3<u32>(22711u, global0.a.b.b.x, 1u) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(31693u, global1.a.b.x, 0u)) | abs(global0.a.e.b)), all(!(!vec2<bool>(false, global1.b.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.e.a, -1212f)) * arg_2.a)), -674f, arg_2);
    var_2 = global3[_wgslsmith_index_u32(~24286u, 9u)];
    return Struct_4(Struct_3(global3[_wgslsmith_index_u32(var_2.e.b.x, 9u)]), Struct_1(global0.a.c.d, arg_2.b, true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 * 1000f), arg_1)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2387f), arg_0.b, (arg_1 <= arg_1) || select(global1.c.c, !global1.e.c, any(vec4<bool>(true, global0.a.a.c, var_2.b.c, false))), arg_2.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1680f, _wgslsmith_f_op_f32(-505f - -1233f), 1507f, 217f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(978f, -310f, global0.a.c.a, arg_2.d), vec4<f32>(arg_1, -921f, global0.a.e.d, -1659f), true)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d, arg_2.d, arg_1, 966f)))));
}

fn func_4(arg_0: Struct_4) -> Struct_3 {
    global2 = array<vec4<u32>, 21>();
    global1 = func_2(global1.e, global0.a.e.a, arg_0.b).a.a;
    var var_0 = !global1.e.c;
    var var_1 = global0.a;
    let var_2 = func_2(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.d + arg_0.b.a)), func_2(global1.a, _wgslsmith_f_op_f32(ceil(global1.a.a)), Struct_1(func_2(Struct_1(1000f, global0.a.a.b, global1.b.c, var_1.a.a), _wgslsmith_f_op_f32(-arg_0.b.a), global0.a.c).c.a, ~(~var_1.b.b), !any(vec2<bool>(arg_0.c.c, arg_0.c.c)), var_1.c.d)).a.a.c).a.a;
    return arg_0.a;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1) -> Struct_3 {
    global0 = func_2(func_2(arg_0.a.a.b, _wgslsmith_f_op_f32(max(arg_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(611f)) + _wgslsmith_f_op_f32(-global1.d)))), Struct_1(2028f, global1.e.b, (1i >> (u_input.a % 32u)) < u_input.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1168f))).b, 783f, func_2(func_2(func_2(Struct_1(arg_1.d, arg_1.b, global0.a.a.c, global1.b.a), -283f, Struct_1(global0.a.d, vec3<u32>(arg_0.b.b.x, global0.a.a.b.x, 4294967295u), arg_1.c, 428f)).c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(456f * global0.a.a.d) - _wgslsmith_f_op_f32(-global1.c.a)), Struct_1(_wgslsmith_f_op_f32(-798f + arg_0.b.a), func_4(arg_0).a.a.b, true, global0.a.e.d)).c, _wgslsmith_f_op_f32(-func_2(global0.a.a, _wgslsmith_f_op_f32(-arg_0.a.a.a.d), arg_0.c).d.x), global1.c).c).a;
    global2 = array<vec4<u32>, 21>();
    global2 = array<vec4<u32>, 21>();
    let var_0 = abs(~(~countOneBits(0u)));
    let var_1 = vec3<i32>(~(-1i) >> (reverseBits(~(~arg_0.a.a.a.b.x)) % 32u), _wgslsmith_dot_vec4_i32(-_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.c, 23473i, -17768i, u_input.b.x), _wgslsmith_div_vec4_i32(vec4<i32>(7499i, -1i, u_input.c, u_input.b.x), vec4<i32>(u_input.c, -33787i, u_input.c, u_input.c)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, u_input.b.x, u_input.b.x, u_input.c), vec4<i32>(u_input.b.x, 44643i, u_input.c, u_input.c))), _wgslsmith_mod_vec4_i32(countOneBits(~vec4<i32>(12214i, u_input.b.x, u_input.b.x, -2147483647i)), (vec4<i32>(u_input.c, -32532i, u_input.c, 2147483647i) | vec4<i32>(-101932i, u_input.c, u_input.b.x, u_input.c)) << (vec4<u32>(arg_0.c.b.x, 44984u, arg_0.c.b.x, 67010u) % vec4<u32>(32u)))), u_input.b.x);
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(abs(global2[_wgslsmith_index_u32(global0.a.a.b.x, 21u)]), global2[_wgslsmith_index_u32(~max(~3965u, _wgslsmith_div_u32(global1.a.b.x, u_input.a)), 21u)]), vec4<u32>(_wgslsmith_div_u32(47703u, min(global1.e.b.x, global1.a.b.x)) << (37966u % 32u), abs(global1.b.b.x), reverseBits(func_1(u_input.b.x, global0.a, vec4<i32>(u_input.c, -34213i, 5656i, -67595i), Struct_4(Struct_3(global0.a), Struct_1(global0.a.a.d, global1.a.b, true, -327f), global1.a, vec4<f32>(1000f, 629f, global0.a.d, global1.a.a)))) & (u_input.a >> (~global0.a.e.b.x % 32u)), 1u));
    let var_1 = Struct_4(func_5(Struct_4(func_4(func_2(Struct_1(-820f, vec3<u32>(49411u, 0u, global1.e.b.x), false, global1.a.a), global0.a.e.a, global1.b)), func_2(func_2(Struct_1(1229f, vec3<u32>(4294967295u, 25636u, 0u), global1.c.c, 124f), global0.a.d, Struct_1(1128f, var_0.xyz, false, global0.a.b.a)).b, _wgslsmith_f_op_f32(select(global0.a.b.d, -350f, true)), func_2(Struct_1(-498f, vec3<u32>(10489u, global1.b.b.x, var_0.x), true, 1906f), -1412f, global0.a.a).c).c, Struct_1(_wgslsmith_f_op_f32(-global0.a.a.a), ~vec3<u32>(global0.a.c.b.x, 124u, global1.a.b.x), true, _wgslsmith_f_op_f32(round(global1.e.d))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(806f, global0.a.a.a, -570f, 1379f)))), Struct_1(380f, countOneBits(global0.a.b.b), all(vec3<bool>(false, true, global1.e.c)), global1.c.a)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.a.d) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(171f - global0.a.e.a))), var_0.xxx, false, 1f), func_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.c.d) * global1.a.a), ~min(vec3<u32>(u_input.a, 47913u, 120749u), var_0.yww), true, -1551f), 1415f, global1.c).a.a.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -451f) * _wgslsmith_f_op_f32(global0.a.a.d * global0.a.e.a)), 646f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.d - 334f)), global0.a.c.a)));
    let var_2 = _wgslsmith_sub_u32(59454u, func_4(func_2(func_2(Struct_1(global0.a.e.a, vec3<u32>(1u, u_input.a, u_input.a), false, -1490f), -2988f, global1.b).b, var_1.c.a, func_4(Struct_4(var_1.a, Struct_1(global0.a.c.a, global1.c.b, global0.a.e.c, global1.b.a), global0.a.c, var_1.d)).a.a)).a.a.b.x);
    let var_3 = ~var_0.x;
    global1 = func_4(var_1).a;
    let var_4 = _wgslsmith_f_op_f32(330f * 266f);
    global1 = func_2(func_4(Struct_4(var_1.a, Struct_1(_wgslsmith_f_op_f32(-764f - var_1.a.a.c.a), abs(vec3<u32>(var_0.x, var_2, 21758u)), var_1.b.c && global0.a.a.c, _wgslsmith_div_f32(var_1.b.d, global1.a.a)), func_4(func_2(Struct_1(532f, vec3<u32>(var_2, var_0.x, var_3), true, var_1.d.x), global0.a.b.d, Struct_1(-469f, var_1.b.b, global1.c.c, 808f))).a.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-753f, -255f, -134f, 2436f)))).a.e, -553f, func_2(global0.a.b, -1930f, func_4(var_1).a.c).b).a.a;
    var var_5 = Struct_3(var_1.a.a);
    var var_6 = Struct_1(_wgslsmith_div_f32(1164f, _wgslsmith_f_op_f32(ceil(-213f))), _wgslsmith_clamp_vec3_u32(vec3<u32>(select(u_input.a, 45863u, var_1.b.c), 31052u, global0.a.c.b.x), var_1.c.b, reverseBits(_wgslsmith_add_vec3_u32(~vec3<u32>(35970u, 31998u, var_2), var_0.zyy))), var_1.a.a.b.c, -1340f);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(select(min(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.a.b.b.x, 104366u, 1u, u_input.a), vec4<u32>(var_3, var_5.a.e.b.x, var_1.b.b.x, var_3)), global2[_wgslsmith_index_u32(36717u, 21u)]), vec4<u32>(u_input.a, select(global0.a.b.b.x, 1u, global0.a.b.c), 4294967295u, 0u), any(!vec3<bool>(true, false, var_1.a.a.c.c)))), ~(vec4<u32>(~0u, 48610u, 68787u, _wgslsmith_mult_u32(4294967295u, global1.e.b.x)) & countOneBits(select(vec4<u32>(var_5.a.a.b.x, global1.e.b.x, global0.a.b.b.x, 25045u), global2[_wgslsmith_index_u32(var_1.a.a.a.b.x, 21u)], vec4<bool>(global0.a.b.c, false, true, true)))));
}


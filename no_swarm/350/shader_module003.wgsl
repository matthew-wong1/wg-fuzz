struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1> = array<u32, 1>(31491u);

var<private> global1: array<Struct_1, 12>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: f32) -> f32 {
    global1 = array<Struct_1, 12>();
    global0 = array<u32, 1>();
    global1 = array<Struct_1, 12>();
    global0 = array<u32, 1>();
    var var_0 = arg_0;
    return _wgslsmith_f_op_f32(min(-298f, _wgslsmith_f_op_f32(round(-934f))));
}

fn func_3() -> vec2<f32> {
    let var_0 = Struct_2(Struct_1(max(_wgslsmith_div_i32(-44465i, u_input.b), _wgslsmith_add_i32(u_input.c | u_input.a.x, -65625i ^ u_input.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1439f, 835f), vec2<f32>(-123f, 1711f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-119f, 1670f)) * vec2<f32>(-1388f, -402f))), _wgslsmith_div_vec4_f32(vec4<f32>(-1068f, _wgslsmith_f_op_f32(-662f * -2154f), _wgslsmith_f_op_f32(func_1(Struct_1(u_input.c, vec2<f32>(-1911f, -1326f), vec4<f32>(-184f, -112f, -1241f, -810f), vec2<f32>(-705f, 716f)), Struct_2(Struct_1(35983i, vec2<f32>(2164f, 1303f), vec4<f32>(-1447f, 757f, -1467f, -1000f), vec2<f32>(-1400f, 607f)), Struct_1(-2657i, vec2<f32>(-1622f, -242f), vec4<f32>(-223f, 104f, -1693f, 1964f), vec2<f32>(1460f, -1660f)), Struct_1(1i, vec2<f32>(-245f, -1000f), vec4<f32>(1684f, 643f, -301f, -815f), vec2<f32>(-1000f, -1000f)), Struct_1(-1i, vec2<f32>(694f, -631f), vec4<f32>(1000f, 1000f, -1000f, -1528f), vec2<f32>(2325f, -336f)), Struct_1(-4789i, vec2<f32>(1975f, 102f), vec4<f32>(-684f, -856f, -1760f, -1000f), vec2<f32>(1389f, -2230f))), 705f, 1510f)), -239f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-130f, -121f, 1039f, 413f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(1461f)), _wgslsmith_f_op_f32(step(-369f, -667f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1442f, -430f) * vec2<f32>(1000f, 1418f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(2250f, -1069f))))), global1[_wgslsmith_index_u32(select(~global0[_wgslsmith_index_u32(12461u, 1u)] | _wgslsmith_dot_vec3_u32(vec3<u32>(87384u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(72096u, 1u)], 1u)], 1u)], 1u)], 0u), vec3<u32>(global0[_wgslsmith_index_u32(0u, 1u)], 0u, global0[_wgslsmith_index_u32(3747u, 1u)])), 30213u, all(vec3<bool>(false, false, true))) & 1u, 12u)], Struct_1(19732i, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(373f * 2173f)), -1238f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-872f, -1000f, -849f, 384f) + vec4<f32>(263f, -468f, 757f, -1000f)))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(146f, -396f, 1000f, 1000f) + vec4<f32>(905f, -454f, -850f, 2066f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-691f, -542f, -234f, 231f), vec4<f32>(-462f, -933f, -1000f, 532f), true))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(1080f - 483f), _wgslsmith_f_op_f32(f32(-1f) * -193f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1766f, 813f))))), true || all(vec3<bool>(true, false, false))))), global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(15245u, global0[_wgslsmith_index_u32(1u, 1u)] >> (global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3528u, 1u)], 1u)]), 1u)] % 32u))), 12u)], Struct_1(u_input.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-1592f)), -753f) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2191f, -661f) + vec2<f32>(-1258f, -1833f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(700f, 127f, 1327f, -1414f) + vec4<f32>(-534f, 388f, 2471f, -1614f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-358f, 697f) - vec2<f32>(712f, -915f)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(706f, 1007f)))) + vec2<f32>(1f, -490f))));
    let var_1 = firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(~countOneBits(global0[_wgslsmith_index_u32(32697u, 1u)]), ~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25530u, 1u)], 1u)], 1u)] << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)] % 32u)), 15967u), vec3<u32>(1u, 29589u, 26273u)));
    var var_2 = global1[_wgslsmith_index_u32(max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.x, 1u)], 1u)], 9646u), 12u)];
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(312f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1315f * -619f))) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(var_2.b.x + _wgslsmith_f_op_f32(min(var_0.e.d.x, 283f))), _wgslsmith_f_op_f32(-527f * var_2.d.x)))));
    var var_4 = -901f;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.b));
}

fn func_2(arg_0: bool, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = all(select(!(!vec2<bool>(false, arg_0)), vec2<bool>(any(!vec4<bool>(false, arg_0, false, false)), true), false));
    var var_1 = global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~55537u << (global0[_wgslsmith_index_u32(25612u, 1u)] % 32u), 1u)], 12u)];
    let var_2 = !arg_0;
    var var_3 = var_0;
    var var_4 = firstLeadingBit(1u);
    return Struct_2(Struct_1(_wgslsmith_mult_i32(u_input.a.x, -2147483647i), vec2<f32>(var_1.c.x, 714f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(var_1.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(855f, arg_1.x, var_1.b.x, arg_1.x) - var_1.c))))), arg_1.yz), Struct_1(var_1.a, vec2<f32>(_wgslsmith_f_op_f32(ceil(942f)), -269f), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.c.x, _wgslsmith_div_f32(arg_1.x, var_1.d.x), var_1.c.x, -514f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.b.x, -308f, 275f, 692f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.x, -1796f, -926f, arg_1.x) + var_1.c))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(838f))), _wgslsmith_f_op_f32(step(var_1.c.x, var_1.b.x)))), Struct_1(var_1.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-204f, -1524f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, var_1.d.x, arg_1.x, var_1.d.x) - vec4<f32>(var_1.b.x, -915f, var_1.d.x, arg_1.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(141f, var_1.d.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1854f, var_1.b.x)) * vec2<f32>(-1034f, arg_1.x)))), global1[_wgslsmith_index_u32(min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(60588u, global0[_wgslsmith_index_u32(17684u, 1u)]), ~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)])), _wgslsmith_sub_u32(abs(4294967295u), 1u)), 1u)], 1u)], _wgslsmith_mult_u32(98983u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23919u, 1u)], 1u)], 1u)], 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(1u, 1u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)]), vec4<u32>(global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(20207u, 1u)], 1u, 20040u)), abs(vec4<u32>(0u, global0[_wgslsmith_index_u32(1u, 1u)], 1079u, 4294967295u))))), 12u)], Struct_1(var_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.xz * _wgslsmith_div_vec2_f32(vec2<f32>(136f, 1670f), vec2<f32>(-1200f, -292f))) + _wgslsmith_f_op_vec2_f32(func_3())), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(var_1.c * var_1.c))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(var_1.c)))), any(vec3<bool>(true, var_2, var_0)) & false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_1.b, vec2<f32>(759f, 845f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 12>();
    global1 = array<Struct_1, 12>();
    var var_0 = true;
    var var_1 = func_2(any(vec4<bool>(true, any(vec4<bool>(true, true, true, true)), (52302i << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)] % 32u)) >= 27364i, false)), vec3<f32>(_wgslsmith_f_op_f32(1783f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1444f, -781f, false)))), _wgslsmith_f_op_f32(-241f + _wgslsmith_f_op_f32(-685f * -836f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(152f - -1000f) - _wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(1u, 12u)], Struct_2(Struct_1(-2147483647i, vec2<f32>(451f, 1000f), vec4<f32>(-966f, -669f, -760f, -329f), vec2<f32>(-184f, 2009f)), global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(16097u, 12u)], Struct_1(-2147483647i, vec2<f32>(448f, -652f), vec4<f32>(122f, -1062f, -442f, -676f), vec2<f32>(1115f, 898f)), Struct_1(u_input.c, vec2<f32>(-1024f, -672f), vec4<f32>(-1567f, -1418f, 666f, 780f), vec2<f32>(501f, 462f))), 1212f, -1000f))), -2169f)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1153f - var_1.c.b.x), _wgslsmith_f_op_f32(func_1(Struct_1(-var_1.b.a, var_1.a.c.xx, _wgslsmith_f_op_vec4_f32(-var_1.a.c), vec2<f32>(-429f, var_1.e.c.x)), func_2(false, _wgslsmith_f_op_vec3_f32(vec3<f32>(456f, -343f, 1170f) + vec3<f32>(var_1.d.d.x, var_1.e.b.x, var_1.d.c.x))), var_1.b.b.x, var_1.a.d.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-723f)), _wgslsmith_f_op_f32(f32(-1f) * -165f)), var_1.d.b.x, 627f);
    var var_3 = Struct_1(~reverseBits(firstLeadingBit(2147483647i)) << (_wgslsmith_mult_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28152u, 1u)], 1u)], _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)], 1u)], 1u)], 1u)], 1u)], 1u)], 1u)], 1u)], 1u)], 1u, 0u, global0[_wgslsmith_index_u32(4294967295u, 1u)]) >> (vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], 4294967295u) % vec4<u32>(32u)), vec4<u32>(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], global0[_wgslsmith_index_u32(1u, 1u)], 16051u))) % 32u), var_1.d.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_1.a.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(-838f, -567f, var_1.c.c.x, 335f) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.b.b.x, var_1.d.c.x, -408f, var_1.c.c.x), var_1.a.c)))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(193f, -637f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.x - var_2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2184f, 158f)) - var_1.a.d.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1493f))))), ~(~(~(vec4<u32>(23331u, global0[_wgslsmith_index_u32(77279u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11557u, 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)]) & vec4<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u, 0u)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(round(var_2.x))), var_2.x) - var_1.c.c.yw), _wgslsmith_mod_vec3_u32(abs(min(~vec3<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(82009u, 1u)], 1u)]), firstTrailingBit(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(49636u, 1u)], 1u)], 0u, global0[_wgslsmith_index_u32(73740u, 1u)])))), select(_wgslsmith_clamp_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(63104u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)]), ~vec3<u32>(54687u, 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 1u)]), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], 1u)], 1u)), vec3<u32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)]), 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~0u, 1u)], 1u)], 0u), select(var_2.x < 1582f, true, true))));
}


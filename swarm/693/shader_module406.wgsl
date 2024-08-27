struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: i32,
    d: f32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(258f, Struct_2(1u, 1000f, 25747i, -1204f, vec3<bool>(false, false, true))), Struct_3(-194f, Struct_2(0u, -595f, i32(-2147483648), 1000f, vec3<bool>(true, false, false))), Struct_3(-1767f, Struct_2(4294967295u, -1151f, -10235i, 579f, vec3<bool>(false, false, false))), Struct_3(-1512f, Struct_2(14439u, -1644f, i32(-2147483648), -1006f, vec3<bool>(false, true, true))), Struct_3(362f, Struct_2(4294967295u, -1000f, i32(-2147483648), 1000f, vec3<bool>(true, false, true))), Struct_3(1000f, Struct_2(1u, -866f, i32(-2147483648), 1083f, vec3<bool>(true, true, false))), Struct_3(417f, Struct_2(1u, 1708f, -14735i, -210f, vec3<bool>(true, true, true))), Struct_3(158f, Struct_2(1u, 2113f, -1i, -373f, vec3<bool>(true, true, false))), Struct_3(-1000f, Struct_2(30804u, 1157f, -46924i, -1000f, vec3<bool>(false, true, false))), Struct_3(1728f, Struct_2(18696u, -239f, 2147483647i, -482f, vec3<bool>(true, false, true))), Struct_3(782f, Struct_2(0u, 2087f, 20330i, -1000f, vec3<bool>(false, true, false))), Struct_3(1604f, Struct_2(35753u, 2673f, 2120i, 1318f, vec3<bool>(true, true, false))), Struct_3(1011f, Struct_2(115537u, 1405f, 0i, 1525f, vec3<bool>(false, false, true))), Struct_3(-1000f, Struct_2(38802u, 791f, -1i, 241f, vec3<bool>(false, true, true))), Struct_3(-852f, Struct_2(72407u, -599f, -1362i, 388f, vec3<bool>(true, false, true))), Struct_3(-1334f, Struct_2(12867u, -681f, -627i, -1643f, vec3<bool>(false, false, true))), Struct_3(-495f, Struct_2(1u, 957f, 9577i, 266f, vec3<bool>(false, true, false))), Struct_3(1930f, Struct_2(4294967295u, -100f, 18563i, -336f, vec3<bool>(false, false, true))), Struct_3(-200f, Struct_2(9371u, 526f, 925i, 929f, vec3<bool>(false, true, true))), Struct_3(-882f, Struct_2(0u, 953f, 9173i, -549f, vec3<bool>(true, true, false))));

var<private> global1: vec2<f32> = vec2<f32>(-215f, -619f);

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec3<f32>(368f, -338f, -496f)), Struct_1(vec3<f32>(-241f, 373f, 2185f)), Struct_1(vec3<f32>(1813f, 1682f, -550f)), Struct_1(vec3<f32>(861f, 1000f, 147f)), Struct_1(vec3<f32>(-1500f, 1615f, 575f)), Struct_1(vec3<f32>(1648f, 1049f, -1000f)), Struct_1(vec3<f32>(-593f, -747f, -376f)), Struct_1(vec3<f32>(1934f, 1394f, 1707f)), Struct_1(vec3<f32>(-261f, -921f, -2000f)), Struct_1(vec3<f32>(278f, 798f, 3128f)), Struct_1(vec3<f32>(1270f, 1340f, -407f)), Struct_1(vec3<f32>(421f, 344f, 1627f)), Struct_1(vec3<f32>(-132f, 130f, 772f)), Struct_1(vec3<f32>(-797f, -1154f, -187f)), Struct_1(vec3<f32>(1541f, 1027f, -659f)), Struct_1(vec3<f32>(-792f, 1169f, -115f)), Struct_1(vec3<f32>(498f, 284f, 379f)), Struct_1(vec3<f32>(2012f, -1322f, 1158f)), Struct_1(vec3<f32>(-278f, -1452f, -1993f)), Struct_1(vec3<f32>(198f, -602f, -2558f)), Struct_1(vec3<f32>(-1334f, -207f, 2142f)), Struct_1(vec3<f32>(1000f, -1641f, 1219f)), Struct_1(vec3<f32>(1520f, 908f, 166f)), Struct_1(vec3<f32>(-1626f, -654f, -1565f)), Struct_1(vec3<f32>(3303f, -715f, -828f)), Struct_1(vec3<f32>(1239f, 1888f, 556f)), Struct_1(vec3<f32>(396f, -2932f, 176f)), Struct_1(vec3<f32>(-2485f, -1000f, 683f)), Struct_1(vec3<f32>(-907f, -1621f, 726f)));

var<private> global3: vec3<u32> = vec3<u32>(4294967295u, 4294967295u, 0u);

var<private> global4: Struct_3 = Struct_3(-915f, Struct_2(41167u, 753f, -7933i, 1259f, vec3<bool>(false, true, true)));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<f32>) -> u32 {
    var var_0 = 10302u;
    global2 = array<Struct_1, 29>();
    global0 = array<Struct_3, 20>();
    var var_1 = !(!select(select(vec4<bool>(true, arg_0.e.e.x, true, arg_0.e.e.x), select(vec4<bool>(global4.b.e.x, false, arg_0.e.e.x, true), vec4<bool>(false, true, false, global4.b.e.x), arg_0.e.e.x), !vec4<bool>(true, arg_0.e.e.x, false, global4.b.e.x)), vec4<bool>(false, true, any(vec4<bool>(false, global4.b.e.x, true, false)), true), vec4<bool>(true, !global4.b.e.x, false, any(arg_0.e.e.yx))));
    let var_2 = Struct_3(429f, Struct_2(0u, _wgslsmith_f_op_f32(885f * arg_0.e.d), 11455i, 502f, select(select(vec3<bool>(true, global4.b.e.x, true), select(vec3<bool>(var_1.x, var_1.x, arg_0.e.e.x), vec3<bool>(global4.b.e.x, false, true), false), select(global4.b.e, global4.b.e, true)), select(select(var_1.zwz, vec3<bool>(false, var_1.x, arg_0.e.e.x), true), vec3<bool>(true, arg_0.e.e.x, true), select(vec3<bool>(arg_0.e.e.x, var_1.x, false), var_1.zwy, var_1.x)), global4.b.e.x)));
    return global3.x;
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: bool) -> vec2<f32> {
    global4 = global0[_wgslsmith_index_u32(~(~24782u), 20u)];
    var var_0 = abs(~arg_0.d.x);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1871f, _wgslsmith_f_op_f32(trunc(-511f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1188f) * _wgslsmith_div_f32(arg_0.e.d, global4.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1040f)) + 469f))));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_4) -> f32 {
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(arg_1, func_3(Struct_4(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a, global4.b.c), vec2<i32>(arg_1.d.x, global4.b.c)), ~u_input.c, _wgslsmith_div_u32(84367u, 1u), vec2<i32>(-3516i, arg_1.e.c), arg_1.e), vec3<f32>(389f, _wgslsmith_div_f32(-360f, arg_1.e.d), -879f)), !global4.b.e.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.e.d, _wgslsmith_div_f32(-308f, _wgslsmith_f_op_f32(-global1.x))) + vec2<f32>(global1.x, _wgslsmith_f_op_f32(683f * _wgslsmith_f_op_f32(-global1.x)))));
    global4 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(550f)) + 1f), global1.x))), global4.b);
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1047f, 494f), vec2<f32>(arg_1.e.b, _wgslsmith_f_op_f32(round(1454f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.a, -1157f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 1974f) - vec2<f32>(-774f, -202f)))))));
    let var_0 = countOneBits(~arg_1.d.x);
    let var_1 = !(!vec3<bool>(all(arg_1.e.e), false, arg_1.e.e.x));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1468f - _wgslsmith_f_op_f32(-global4.b.b)) - arg_1.e.d)));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_4, arg_3: vec2<u32>) -> bool {
    global1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(arg_0.a.yx, vec2<f32>(arg_2.e.b, _wgslsmith_f_op_f32(-1270f + _wgslsmith_f_op_f32(func_2(vec3<u32>(1u, 0u, global4.b.a), arg_2))))))));
    global4 = global0[_wgslsmith_index_u32(1u, 20u)];
    let var_0 = global2[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(select(~global3.x, arg_3.x ^ arg_2.e.a, select(false, arg_2.e.e.x, true)) & global3.x, 1u), ~reverseBits(arg_2.e.a)), 29u)];
    global3 = ~vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(14842u, 4294967295u << (global4.b.a % 32u)), ~(~1u)), _wgslsmith_mod_u32(~arg_3.x, 4294967295u), ~(~(u_input.d | 1u)));
    let var_1 = vec4<u32>(_wgslsmith_sub_u32(min(u_input.d, ~min(global3.x, 1u)), _wgslsmith_div_u32(countOneBits(_wgslsmith_clamp_u32(global3.x, 0u, 4294967295u)), ~arg_3.x)), global3.x, _wgslsmith_mod_u32(~arg_3.x, ~49890u), _wgslsmith_sub_u32(~(~_wgslsmith_mod_u32(45784u, arg_2.b.x)), ~func_3(arg_2, _wgslsmith_f_op_vec3_f32(arg_0.a * arg_0.a))));
    return false;
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: Struct_4, arg_3: Struct_4) -> Struct_1 {
    let var_0 = Struct_4(firstLeadingBit(i32(-1i) * -1i), u_input.c, arg_2.e.a, ~vec2<i32>(global4.b.c, ~_wgslsmith_dot_vec2_i32(arg_3.d, vec2<i32>(arg_3.e.c, arg_3.d.x))), arg_3.e);
    var var_1 = var_0.e;
    var_1 = var_0.e;
    let var_2 = global4.b.a;
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(vec3<u32>(4294967295u, arg_3.c, arg_2.b.x), Struct_4(-1i, u_input.c, arg_3.b.x, vec2<i32>(var_1.c, -2147483647i), arg_3.e))))), global1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1 - 134f))))));
    return global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_clamp_u32(u_input.a >> (arg_2.e.a % 32u), 1u, countOneBits(~0u))), 29u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(-_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(-1i, global4.b.c, 22918i, global4.b.c)), reverseBits(vec4<i32>(global4.b.c, -54589i, global4.b.c, global4.b.c)))));
    var var_1 = u_input.c.x;
    global3 = vec3<u32>(abs(40101u), 0u, 4294967295u);
    let var_2 = 0u;
    var var_3 = Struct_2(~0u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global4.a))), -(33083i | (~(-57737i) | global4.b.c)), -488f, global4.b.e);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-var_3.d)) + -301f) + _wgslsmith_f_op_f32(sign(644f)));
    let var_5 = u_input.b & vec2<u32>(0u, 29910u);
    var var_6 = func_5(!(!func_1(Struct_1(vec3<f32>(664f, -1000f, -1000f)), -var_0.x, Struct_4(var_3.c, u_input.b, global4.b.a, var_0.yx, Struct_2(5420u, -1677f, -2147483647i, var_3.b, vec3<bool>(var_3.e.x, true, false))), select(vec2<u32>(0u, 74547u), vec2<u32>(u_input.e, 23311u), global4.b.e.x))), _wgslsmith_f_op_f32(floor(266f)), Struct_4(max(_wgslsmith_sub_i32(-2147483647i, global4.b.c), var_3.c | var_3.c) | 11739i, _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(global3.yx & var_5, var_5, _wgslsmith_mod_vec2_u32(var_5, vec2<u32>(var_5.x, 1u))), vec2<u32>(~var_2, 4294967295u)), func_3(Struct_4(1i, ~vec2<u32>(var_3.a, var_2), var_5.x | 0u, vec2<i32>(0i, -55425i), Struct_2(global3.x, var_3.b, var_3.c, -1000f, global4.b.e)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_3.b, var_3.b, global4.b.d), vec3<f32>(var_3.b, var_3.b, var_3.b))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.x, 948f, global1.x))))), vec2<i32>(-(~var_3.c), 2147483647i), global4.b), Struct_4(select(var_0.x, -min(-3842i, global4.b.c), true), abs(u_input.b), u_input.b.x, vec2<i32>(countOneBits(global4.b.c), _wgslsmith_clamp_i32(-var_3.c, var_3.c, ~var_3.c)), Struct_2(1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1132f * 1405f) + _wgslsmith_f_op_f32(-172f * -2112f)), var_3.c, _wgslsmith_f_op_f32(-var_3.d), global4.b.e)));
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 2147483647i, global4.b.c, var_3.c), vec4<i32>(39286i, 18153i, 52505i, var_0.x)))));
}


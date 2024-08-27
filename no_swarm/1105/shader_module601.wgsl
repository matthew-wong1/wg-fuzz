struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: u32,
    d: vec2<i32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec3<u32>;

var<private> global2: i32;

var<private> global3: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(vec4<i32>(-37476i, 2147483647i, 1i, -41274i), vec3<f32>(1000f, 1070f, -442f), 0u, vec2<i32>(35753i, 2147483647i), false), Struct_3(vec4<i32>(i32(-2147483648), 75768i, 2147483647i, i32(-2147483648)), vec3<f32>(1000f, -1187f, -498f), 35715u, vec2<i32>(-17541i, -667i), true), Struct_3(vec4<i32>(546i, 2147483647i, -4669i, 19365i), vec3<f32>(278f, 1421f, -469f), 4294967295u, vec2<i32>(1i, i32(-2147483648)), false), Struct_3(vec4<i32>(13892i, -48792i, 0i, i32(-2147483648)), vec3<f32>(1602f, 1832f, 675f), 20825u, vec2<i32>(29402i, 2147483647i), true), Struct_3(vec4<i32>(58206i, i32(-2147483648), 0i, -21123i), vec3<f32>(211f, -1000f, 642f), 4294967295u, vec2<i32>(18007i, -7506i), true), Struct_3(vec4<i32>(1i, 59976i, 2147483647i, -1i), vec3<f32>(787f, 618f, -334f), 0u, vec2<i32>(36326i, -1i), false), Struct_3(vec4<i32>(-4453i, -1i, 10746i, 0i), vec3<f32>(-301f, -977f, 238f), 4294967295u, vec2<i32>(-1i, -32192i), true), Struct_3(vec4<i32>(2147483647i, 2147483647i, 0i, 2147483647i), vec3<f32>(1128f, 256f, -329f), 30187u, vec2<i32>(0i, -459i), false), Struct_3(vec4<i32>(1200i, -1i, -206i, 26958i), vec3<f32>(1213f, -1176f, -487f), 1u, vec2<i32>(0i, 16450i), true), Struct_3(vec4<i32>(1i, 39664i, 21567i, 37406i), vec3<f32>(-1531f, -1023f, 1025f), 1428u, vec2<i32>(-5074i, 15766i), false), Struct_3(vec4<i32>(22534i, 5618i, 2147483647i, 12582i), vec3<f32>(598f, -1793f, 216f), 1u, vec2<i32>(1i, 10272i), false), Struct_3(vec4<i32>(2147483647i, 0i, 13135i, -37356i), vec3<f32>(-976f, 141f, -367f), 4294967295u, vec2<i32>(-1i, i32(-2147483648)), false));

var<private> global4: vec4<i32> = vec4<i32>(-4808i, -14141i, i32(-2147483648), -1i);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: vec4<f32>) -> i32 {
    var var_0 = arg_3.x;
    let var_1 = global3[_wgslsmith_index_u32(global1.x, 12u)];
    let var_2 = arg_1.b.x;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(260f)))));
    var var_3 = -(~22023i);
    return 2147483647i;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> f32 {
    let var_0 = Struct_1(~vec2<i32>(-1i, _wgslsmith_mod_i32(~arg_2, -13738i)), 1u, 0u, ~(~(~vec2<i32>(20814i, 9025i))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(444f, -1116f, 1530f), vec3<f32>(1993f, -216f, -1379f))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1155f, 1084f, 206f)))))) * vec3<f32>(_wgslsmith_f_op_f32(abs(-924f)), -904f, -1000f)));
    global2 = ~var_0.d.x;
    let var_2 = arg_0.a;
    global4 = ((~_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.c, -38189i, arg_2, 0i), vec4<i32>(35965i, 1i, arg_1.c, -15731i)) ^ _wgslsmith_sub_vec4_i32(~vec4<i32>(var_0.d.x, 25510i, 68947i, -1i), vec4<i32>(-45585i, -2147483647i, 0i, arg_1.c))) | max(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, arg_2, var_0.d.x, global4.x), abs(vec4<i32>(arg_0.c, -1i, -2147483647i, -1i))), select(~vec4<i32>(2147483647i, global4.x, 1i, arg_2), ~vec4<i32>(0i, arg_0.c, 0i, -1i), true))) << (max(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.b, 42917u, 1u, var_0.c) << (u_input.b % vec4<u32>(32u)), u_input.b), u_input.b) % vec4<u32>(32u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(417f, -244f, true))))) - var_1.x);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: f32, arg_3: bool) -> vec4<u32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(739f + _wgslsmith_f_op_f32(floor(1763f))), _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(func_4(Struct_2(false, select(vec3<bool>(arg_3, arg_1.e, arg_1.e), vec3<bool>(true, true, arg_1.e), vec3<bool>(arg_3, arg_3, arg_1.e)), func_3(Struct_2(arg_1.e, vec3<bool>(true, arg_0.e, arg_3), global4.x), Struct_2(arg_3, vec3<bool>(true, false, arg_0.e), 0i), vec4<bool>(false, true, arg_1.e, false), vec4<f32>(223f, arg_0.b.x, 1000f, -255f))), Struct_2(false, select(vec3<bool>(arg_1.e, false, true), vec3<bool>(arg_1.e, false, true), vec3<bool>(arg_3, arg_3, false)), ~arg_0.a.x), _wgslsmith_dot_vec3_i32(firstLeadingBit(global4.xxy), vec3<i32>(arg_1.a.x, arg_0.a.x, 24i))))));
    let var_1 = Struct_2(false, vec3<bool>(select(true, !arg_3, true || arg_0.e) || all(vec2<bool>(arg_1.e, arg_1.e)), arg_0.e, !arg_0.e), -45619i);
    var var_2 = arg_1.a.x;
    let var_3 = global4.x | (i32(-1i) * -arg_0.a.x);
    let var_4 = abs(~u_input.a);
    return u_input.b;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec4<bool>) -> vec2<bool> {
    global2 = 0i;
    var var_0 = ~_wgslsmith_sub_vec4_i32((abs(vec4<i32>(0i, arg_1, -57267i, -2147483647i)) ^ vec4<i32>(global4.x, -21946i, global4.x, 33656i)) << (func_2(global3[_wgslsmith_index_u32(0u, 12u)], global3[_wgslsmith_index_u32(4294967295u, 12u)], _wgslsmith_f_op_f32(max(-1015f, 135f)), false) % vec4<u32>(32u)), vec4<i32>(-(~global4.x), i32(-1i) * -global4.x, 0i, _wgslsmith_sub_i32(global4.x, 0i)));
    let var_1 = _wgslsmith_div_f32(402f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -659f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1272f)), 132f))));
    var_0 = vec4<i32>(_wgslsmith_add_i32(~(-(~43112i)), -arg_1), abs(-8273i), -(reverseBits(-39753i) ^ global4.x), 1i);
    var var_2 = global3[_wgslsmith_index_u32(4294967295u, 12u)];
    return select(select(!(!vec2<bool>(false, var_2.e)), !arg_2.zx, !(var_1 > var_1) && true), arg_2.wx, all(!arg_2.wxw));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(func_1(false, _wgslsmith_dot_vec2_i32(-(~vec2<i32>(-34824i, -34941i)), abs(~global4.yz)), vec4<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), (global4.x | global4.x) > -10659i, any(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), true)));
    global2 = -_wgslsmith_dot_vec4_i32(~abs(_wgslsmith_div_vec4_i32(vec4<i32>(global4.x, global4.x, -43968i, -33529i), vec4<i32>(global4.x, global4.x, 0i, global4.x))), _wgslsmith_sub_vec4_i32(-select(vec4<i32>(1i, 1i, -10449i, global4.x), vec4<i32>(global4.x, global4.x, global4.x, global4.x), true), vec4<i32>(global4.x, global4.x >> (global0.x % 32u), firstTrailingBit(global4.x), 1i)));
    global3 = array<Struct_3, 12>();
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1506f, _wgslsmith_f_op_f32(1214f + -306f), 818f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-492f, -1468f, 2322f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2209f, -215f, -1519f))))))));
    let var_2 = vec3<bool>(!all(vec4<bool>(true, true, true, true)), func_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.x, var_1.x))) <= var_1.x, 0i, select(vec4<bool>(true, true, false, all(vec3<bool>(false, true, false))), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), false && select(false, false, false))).x, true);
    global4 = vec4<i32>(global4.x, _wgslsmith_mult_i32(_wgslsmith_mult_i32(global4.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global4.x, global4.x, -14326i, global4.x), vec4<i32>(global4.x, global4.x, 2147483647i, 22486i))), -1i) ^ _wgslsmith_add_i32(_wgslsmith_mult_i32(-global4.x, firstTrailingBit(-2147483647i)), select(_wgslsmith_clamp_i32(global4.x, 1i, -57190i), global4.x, !var_2.x)), -2147483647i, global4.x);
    var_0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, ~(-1i), ~4294967295u << ((u_input.b.x >> (1u % 32u)) % 32u), _wgslsmith_mult_vec2_u32(vec2<u32>(min(~44279u, ~global1.x), ~select(1u, 30579u, false)), vec2<u32>(abs(global0.x), 0u)), -6593i);
}


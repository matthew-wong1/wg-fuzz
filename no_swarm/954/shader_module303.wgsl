struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(Struct_1(vec3<i32>(-49314i, 74842i, -10891i), true, -6040i), 395f, vec3<f32>(-764f, 1258f, 401f), Struct_1(vec3<i32>(i32(-2147483648), -56729i, -17861i), true, -47244i)), Struct_2(Struct_1(vec3<i32>(-1i, -1i, -1i), false, -25193i), -1238f, vec3<f32>(1495f, 745f, -382f), Struct_1(vec3<i32>(2147483647i, 27530i, 12787i), false, -1i)), Struct_2(Struct_1(vec3<i32>(0i, -26123i, 0i), false, -26702i), -1000f, vec3<f32>(-693f, 217f, -292f), Struct_1(vec3<i32>(1i, -21545i, i32(-2147483648)), true, -24472i)), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -10161i), true, 2147483647i), -2088f, vec3<f32>(-1265f, -863f, -729f), Struct_1(vec3<i32>(-1i, 1i, 3989i), false, i32(-2147483648))), Struct_2(Struct_1(vec3<i32>(-29231i, -1i, -3152i), false, -26613i), -509f, vec3<f32>(-211f, -1854f, -689f), Struct_1(vec3<i32>(-1i, 0i, -1i), true, 0i)), Struct_2(Struct_1(vec3<i32>(-1i, -1i, 16437i), true, 25324i), 964f, vec3<f32>(-2794f, 414f, 1036f), Struct_1(vec3<i32>(2147483647i, -19889i, 2147483647i), false, 1i)), Struct_2(Struct_1(vec3<i32>(0i, 31296i, 0i), true, 0i), -905f, vec3<f32>(284f, -1224f, -1370f), Struct_1(vec3<i32>(-9734i, 50687i, -3525i), true, -15454i)), Struct_2(Struct_1(vec3<i32>(1i, -49430i, i32(-2147483648)), false, -79002i), 1156f, vec3<f32>(-383f, 1101f, 1077f), Struct_1(vec3<i32>(1i, 2147483647i, 20416i), true, -1i)), Struct_2(Struct_1(vec3<i32>(-3483i, 0i, 40871i), false, -1i), 1164f, vec3<f32>(-816f, 444f, -932f), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), true, 7963i)), Struct_2(Struct_1(vec3<i32>(34459i, 0i, i32(-2147483648)), true, i32(-2147483648)), -889f, vec3<f32>(-490f, 175f, 283f), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 0i), false, 35591i)), Struct_2(Struct_1(vec3<i32>(2147483647i, 34165i, 0i), false, 32983i), -399f, vec3<f32>(828f, -848f, -969f), Struct_1(vec3<i32>(0i, 0i, 0i), true, i32(-2147483648))), Struct_2(Struct_1(vec3<i32>(2147483647i, -64149i, 27559i), true, 37312i), 227f, vec3<f32>(1424f, -426f, 613f), Struct_1(vec3<i32>(47083i, 9760i, 1i), true, -34125i)));

var<private> global1: array<u32, 20>;

var<private> global2: array<u32, 20> = array<u32, 20>(0u, 21858u, 4294967295u, 17391u, 0u, 0u, 0u, 64969u, 5374u, 79233u, 0u, 4294967295u, 0u, 37664u, 0u, 0u, 14896u, 16501u, 16354u, 4294967295u);

var<private> global3: u32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<i32>) -> vec3<u32> {
    global0 = array<Struct_2, 12>();
    var var_0 = _wgslsmith_add_i32(arg_0.x, -1i);
    global1 = array<u32, 20>();
    global3 = ~firstTrailingBit(~_wgslsmith_mod_u32(26674u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 20u)], 20u)]) ^ (global2[_wgslsmith_index_u32(~0u, 20u)] >> (0u % 32u)));
    let var_1 = !(!(!(25393i < (2147483647i & arg_1.x))));
    return vec3<u32>(~select(_wgslsmith_dot_vec4_u32(~vec4<u32>(6381u, global2[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(0u, 20u)], 40676u), vec4<u32>(0u, 14735u, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(49177u, 20u)], 20u)])), global1[_wgslsmith_index_u32(~abs(u_input.a), 20u)], false), u_input.c, 28895u);
}

fn func_2(arg_0: u32, arg_1: vec4<bool>) -> f32 {
    global2 = array<u32, 20>();
    global2 = array<u32, 20>();
    var var_0 = _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(~(~u_input.b.x), arg_0, arg_0)), ~min(~vec3<u32>(global2[_wgslsmith_index_u32(22525u, 20u)], arg_0, global1[_wgslsmith_index_u32(4294967295u, 20u)]) & func_3(vec2<i32>(u_input.d, u_input.d), vec2<i32>(u_input.d, 36718i)), _wgslsmith_sub_vec3_u32(vec3<u32>(110406u, 10462u, global1[_wgslsmith_index_u32(arg_0, 20u)]), vec3<u32>(86197u, arg_0, 110314u)) >> (vec3<u32>(1u, arg_0, global1[_wgslsmith_index_u32(1385u, 20u)]) % vec3<u32>(32u))));
    var var_1 = vec4<u32>(arg_0, func_3(vec2<i32>(~u_input.d, u_input.d), vec2<i32>(_wgslsmith_sub_i32(-1i, u_input.d), abs(u_input.d)) >> (u_input.b % vec2<u32>(32u))).x, global1[_wgslsmith_index_u32(4472u, 20u)] & 52877u, ~u_input.b.x);
    global3 = select(u_input.b.x & 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(15058u, ~1u, 0u), reverseBits(min(var_1.yyz, vec3<u32>(global1[_wgslsmith_index_u32(0u, 20u)], 6912u, 6606u)))) << (arg_0 % 32u), 33586u >= (93349u & _wgslsmith_sub_u32(0u, ~arg_0)));
    return -1000f;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32) -> Struct_2 {
    global0 = array<Struct_2, 12>();
    global2 = array<u32, 20>();
    let var_0 = i32(-1i) * -(i32(-1i) * -2147483647i);
    let var_1 = -445f;
    global1 = array<u32, 20>();
    return Struct_2(Struct_1(vec3<i32>(~29157i | max(u_input.d, u_input.d), abs(-19492i) << ((70920u | global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 20u)], 20u)]) % 32u), 539i), arg_0.b, ~0i), _wgslsmith_f_op_f32(var_1 - var_1), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-340f, var_1, arg_1.x)), vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), -988f, _wgslsmith_f_op_f32(trunc(var_1)))))), Struct_1(vec3<i32>(firstLeadingBit(_wgslsmith_sub_i32(-2147483647i, var_0)), arg_2, -44593i), arg_0.b, _wgslsmith_add_i32(~arg_0.c, arg_2)));
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> Struct_2 {
    global2 = array<u32, 20>();
    global1 = array<u32, 20>();
    var var_0 = Struct_1(-vec3<i32>(_wgslsmith_sub_i32(u_input.d, u_input.d), abs(u_input.d) | min(u_input.d, u_input.d), u_input.d), select(all(select(select(vec3<bool>(arg_1.x, arg_0, arg_0), vec3<bool>(false, false, false), false), !arg_1, all(vec4<bool>(true, true, true, arg_1.x)))), any(vec4<bool>(arg_1.x && false, false, arg_1.x || arg_0, true)), select(_wgslsmith_f_op_f32(step(1000f, -122f)) < _wgslsmith_f_op_f32(abs(209f)), false, all(!vec4<bool>(false, arg_0, arg_1.x, true)))), 0i);
    var var_1 = ~(~34754u);
    global0 = array<Struct_2, 12>();
    return func_4(Struct_1(_wgslsmith_mult_vec3_i32(var_0.a, vec3<i32>(u_input.d, 0i, 1i)), ~1i < _wgslsmith_div_i32(reverseBits(u_input.d), _wgslsmith_dot_vec2_i32(var_0.a.zx, vec2<i32>(u_input.d, var_0.c))), 2147483647i), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-589f, _wgslsmith_f_op_f32(floor(973f))), 1472f, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(u_input.a, vec4<bool>(arg_0, var_0.b, arg_0, var_0.b))) + 1457f)) + vec4<f32>(-200f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1953f - -415f))), -1118f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1689f, -477f)), 466f))), ~(-u_input.d << (global2[_wgslsmith_index_u32(~abs(u_input.b.x), 20u)] % 32u)));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    let var_0 = select(select(!(!(!vec4<bool>(arg_0.a.b, arg_0.d.b, arg_0.a.b, true))), !vec4<bool>(any(vec3<bool>(arg_0.d.b, arg_0.a.b, arg_0.d.b)), select(arg_0.a.b, arg_0.a.b, true), true, true), false), select(vec4<bool>(all(!vec3<bool>(false, true, arg_0.d.b)), all(!vec2<bool>(arg_0.a.b, false)), true, !any(vec3<bool>(arg_0.d.b, arg_0.a.b, arg_0.d.b))), vec4<bool>(false, all(!vec3<bool>(arg_0.a.b, arg_0.d.b, arg_0.a.b)), arg_0.a.b, false), vec4<bool>(_wgslsmith_f_op_f32(arg_0.b - arg_0.c.x) >= _wgslsmith_f_op_f32(-arg_0.b), false & arg_0.d.b, arg_0.d.b & !arg_0.a.b, true)), func_1(true, vec3<bool>(!arg_0.d.b, arg_0.a.b, false)).b >= _wgslsmith_f_op_f32(round(func_4(func_4(arg_0.d, vec4<f32>(1549f, -412f, arg_0.c.x, arg_0.c.x), u_input.d).d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, arg_0.b, 1488f, -1052f)), 2147483647i).b)));
    let var_1 = var_0.x;
    let var_2 = ~vec3<u32>(17482u, 4294967295u, abs(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(u_input.c, 20u)], global2[_wgslsmith_index_u32(4294967295u, 20u)], 32764u)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, global1[_wgslsmith_index_u32(u_input.a, 20u)], 4294967295u, u_input.a), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 20u)], 20u)], 1u, 103679u, 4294967295u)))));
    global0 = array<Struct_2, 12>();
    var var_3 = global0[_wgslsmith_index_u32(1u, 12u)];
    return Struct_2(arg_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -512f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b * var_3.b) * var_3.b))), arg_0.c, Struct_1(vec3<i32>(var_3.a.a.x, -func_4(var_3.d, vec4<f32>(arg_0.b, arg_0.b, 837f, 534f), var_3.a.c).d.c, arg_0.d.c), false, -2147483647i));
}

fn func_6(arg_0: bool, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: f32) -> vec4<f32> {
    let var_0 = Struct_2(Struct_1(vec3<i32>(-countOneBits(-34641i), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(arg_1.d.a, vec3<i32>(2147483647i, arg_1.a.a.x, u_input.d)), _wgslsmith_sub_vec3_i32(arg_1.d.a, vec3<i32>(-33013i, 2147483647i, 2147483647i))), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.d, u_input.d, 27577i), countOneBits(vec4<i32>(arg_1.a.c, -2147483647i, arg_1.a.c, u_input.d)))), true, firstTrailingBit(u_input.d)), _wgslsmith_f_op_f32(arg_3 + arg_1.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.b, 1083f, 204f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -451f), func_4(Struct_1(arg_1.a.a, arg_2.x, 0i), vec4<f32>(662f, arg_3, arg_1.b, arg_1.c.x), u_input.d).b, _wgslsmith_f_op_f32(sign(arg_1.b)))) * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(arg_1.c)), _wgslsmith_f_op_vec3_f32(select(arg_1.c, vec3<f32>(-2126f, arg_3, arg_3), false))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, arg_1.b, -297f)))))), arg_1.d);
    global1 = array<u32, 20>();
    global3 = _wgslsmith_dot_vec4_u32(vec4<u32>(abs(~34931u), u_input.c, 1u, ~u_input.a) | _wgslsmith_add_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 20u)], ~18875u, global2[_wgslsmith_index_u32(1u, 20u)] >> (7988u % 32u), func_3(vec2<i32>(31390i, arg_1.d.c), vec2<i32>(-8479i, var_0.d.a.x)).x), ~(~vec4<u32>(global2[_wgslsmith_index_u32(12305u, 20u)], 4294967295u, 19589u, u_input.b.x))), reverseBits(~vec4<u32>(~0u, _wgslsmith_add_u32(global2[_wgslsmith_index_u32(1u, 20u)], u_input.c), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 20u)], 20u)], reverseBits(13220u))));
    global2 = array<u32, 20>();
    global1 = array<u32, 20>();
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1194f, -273f)), _wgslsmith_f_op_f32(trunc(138f))), -238f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-576f - arg_1.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-789f * 436f) + arg_1.c.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    global3 = ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, global1[_wgslsmith_index_u32(47226u, 20u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 20u)], 20u)], 34460u), vec4<u32>(28189u, 7409u, global2[_wgslsmith_index_u32(24231u, 20u)], global1[_wgslsmith_index_u32(0u, 20u)])), 0u) << (51270u % 32u);
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_6(all(vec4<bool>(true, false, false, true)) & true, func_5(func_1(false, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))), vec3<bool>(!any(vec3<bool>(false, true, false)), true | any(vec3<bool>(true, false, false)), !any(vec3<bool>(false, true, true))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-119f - _wgslsmith_f_op_f32(f32(-1f) * -1926f))))))));
    var var_2 = !vec2<bool>(true, true && all(vec2<bool>(true, false)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_mult_vec2_i32((vec2<i32>(-65839i, -2147483647i) >> (u_input.b % vec2<u32>(32u))) | func_1(false, vec3<bool>(false, var_2.x, false)).a.a.zy, vec2<i32>(65902i, func_1(true, vec3<bool>(var_2.x, var_2.x, false)).a.a.x))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(67729u, 1450u, 4294967295u, global1[_wgslsmith_index_u32(0u, 20u)]), _wgslsmith_add_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 20u)], u_input.b.x, 45491u, 20609u), vec4<u32>(global2[_wgslsmith_index_u32(30488u, 20u)], 1u, 1375u, 1u))) & ~max(vec4<u32>(u_input.c, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 20u)], 20u)], 4294967295u, 4294967295u) & vec4<u32>(u_input.a, global2[_wgslsmith_index_u32(u_input.c, 20u)], u_input.b.x, global1[_wgslsmith_index_u32(u_input.a, 20u)]), vec4<u32>(36850u, global2[_wgslsmith_index_u32(53521u, 20u)], u_input.b.x, 17717u)), ~vec3<u32>(0u, 92335u, 1u), func_4(Struct_1(firstTrailingBit(func_1(true, vec3<bool>(false, var_2.x, var_2.x)).a.a), !select(var_2.x, false, var_2.x), 1i), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_0, var_1.x)))), var_0, _wgslsmith_f_op_f32(step(253f, -1163f)), var_1.x), -u_input.d).d.c, ~vec3<i32>(21293i, u_input.d, 1i));
}


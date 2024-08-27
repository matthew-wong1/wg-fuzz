struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_2,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(Struct_1(vec2<u32>(4294967295u, 4294967295u)), vec4<f32>(-510f, 750f, -299f, -644f), Struct_2(-1191f), vec2<bool>(true, true), Struct_1(vec2<u32>(45544u, 0u))), Struct_3(Struct_1(vec2<u32>(4294967295u, 26833u)), vec4<f32>(748f, 209f, 464f, 322f), Struct_2(-682f), vec2<bool>(true, false), Struct_1(vec2<u32>(10671u, 30981u))), Struct_3(Struct_1(vec2<u32>(0u, 4016u)), vec4<f32>(-767f, -1829f, 297f, -1258f), Struct_2(779f), vec2<bool>(false, true), Struct_1(vec2<u32>(4294967295u, 25767u))), Struct_3(Struct_1(vec2<u32>(47927u, 4294967295u)), vec4<f32>(611f, 643f, 267f, -1960f), Struct_2(-717f), vec2<bool>(true, false), Struct_1(vec2<u32>(0u, 0u))), Struct_3(Struct_1(vec2<u32>(33917u, 8492u)), vec4<f32>(250f, -231f, -814f, 462f), Struct_2(396f), vec2<bool>(false, true), Struct_1(vec2<u32>(0u, 4294967295u))), Struct_3(Struct_1(vec2<u32>(4294967295u, 34761u)), vec4<f32>(-423f, 1174f, -2898f, -507f), Struct_2(-569f), vec2<bool>(true, false), Struct_1(vec2<u32>(50653u, 1u))), Struct_3(Struct_1(vec2<u32>(26962u, 4294967295u)), vec4<f32>(3066f, -286f, -776f, -265f), Struct_2(-1000f), vec2<bool>(true, false), Struct_1(vec2<u32>(72852u, 56436u))), Struct_3(Struct_1(vec2<u32>(1u, 0u)), vec4<f32>(-176f, 1273f, 222f, 813f), Struct_2(-256f), vec2<bool>(true, false), Struct_1(vec2<u32>(16772u, 72041u))), Struct_3(Struct_1(vec2<u32>(31291u, 0u)), vec4<f32>(957f, 246f, -231f, -910f), Struct_2(-1240f), vec2<bool>(false, false), Struct_1(vec2<u32>(47986u, 0u))), Struct_3(Struct_1(vec2<u32>(1u, 0u)), vec4<f32>(775f, -1398f, -160f, -1700f), Struct_2(-1012f), vec2<bool>(true, false), Struct_1(vec2<u32>(5254u, 59067u))), Struct_3(Struct_1(vec2<u32>(33768u, 62782u)), vec4<f32>(782f, 1751f, 2565f, 2679f), Struct_2(1312f), vec2<bool>(true, false), Struct_1(vec2<u32>(110447u, 4294967295u))));

var<private> global1: array<Struct_1, 25>;

var<private> global2: Struct_2;

var<private> global3: vec4<u32> = vec4<u32>(0u, 46528u, 19401u, 33257u);

var<private> global4: array<i32, 2> = array<i32, 2>(-25539i, i32(-2147483648));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> i32 {
    var var_0 = Struct_3(global1[_wgslsmith_index_u32(max(4294967295u, global3.x << (~_wgslsmith_mod_u32(global3.x, 4294967295u) % 32u)), 25u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, global2.a, global2.a, 1000f)), Struct_2(-381f), vec2<bool>(true, true), global1[_wgslsmith_index_u32(68276u, 25u)]);
    global0 = array<Struct_3, 11>();
    return -(~(~(-global4[_wgslsmith_index_u32(global3.x, 2u)])) >> (~9043u % 32u));
}

fn func_2(arg_0: f32) -> vec3<f32> {
    var var_0 = global3.x << (1u % 32u);
    let var_1 = Struct_1(~(~global3.zx));
    let var_2 = Struct_2(189f);
    var var_3 = vec3<i32>(u_input.b.x, global4[_wgslsmith_index_u32(var_1.a.x, 2u)], _wgslsmith_add_i32(-2147483647i, func_3()));
    var var_4 = vec2<u32>(countOneBits(select(var_1.a.x, 95548u, true)) << (4294967295u % 32u), 1u) | var_1.a;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -320f) - _wgslsmith_div_f32(-1000f, 1000f))), _wgslsmith_f_op_f32(floor(664f)), arg_0) - vec3<f32>(arg_0, _wgslsmith_f_op_f32(max(1054f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a, arg_0)))), _wgslsmith_f_op_f32(-var_2.a)));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    global4 = array<i32, 2>();
    let var_1 = _wgslsmith_clamp_vec4_i32(select(u_input.b, ~_wgslsmith_mod_vec4_i32(u_input.b, u_input.b) << (select(vec4<u32>(0u, 4294967295u, 5350u, global3.x), vec4<u32>(arg_2.a.x, global3.x, 54324u, arg_2.a.x) >> (vec4<u32>(4294967295u, arg_2.a.x, arg_2.a.x, 17926u) % vec4<u32>(32u)), vec4<bool>(true, true, false, arg_0.x)) % vec4<u32>(32u)), vec4<bool>(arg_0.x, !arg_0.x, true, arg_0.x)), u_input.b, -_wgslsmith_clamp_vec4_i32(select(-u_input.b, ~vec4<i32>(62208i, global4[_wgslsmith_index_u32(1816u, 2u)], 1i, global4[_wgslsmith_index_u32(arg_2.a.x, 2u)]), 40854u <= global3.x), u_input.b, _wgslsmith_div_vec4_i32(~u_input.b, ~u_input.b)));
    var var_2 = _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(~arg_2.a, select(~vec2<u32>(arg_2.a.x, 14693u), ~arg_3.a, true | arg_0.x), ~(~global3.zz)), abs(vec2<u32>(arg_2.a.x, _wgslsmith_dot_vec3_u32(global3.yzy, global3.xyy)))) << (abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(firstLeadingBit(1u), 10629u << (global3.x % 32u)), reverseBits(global3.yw), arg_3.a)) % vec2<u32>(32u));
    let var_3 = Struct_2(global2.a);
    return Struct_1(_wgslsmith_div_vec2_u32(arg_3.a, firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(7085u, 85207u), vec2<u32>(28012u, 93817u) << (vec2<u32>(global3.x, 26743u) % vec2<u32>(32u))))));
}

fn func_1() -> Struct_3 {
    let var_0 = func_4(vec3<bool>(true, !all(vec2<bool>(false, true)), _wgslsmith_sub_i32(u_input.a.x | -2147483647i, -18039i) < reverseBits(-global4[_wgslsmith_index_u32(1u, 2u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(global2.a)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, -1359f, -1579f))))), global1[_wgslsmith_index_u32(~(~global3.x | 1u), 25u)], Struct_1(max(vec2<u32>(global3.x >> (global3.x % 32u), _wgslsmith_mult_u32(global3.x, 2830u)), _wgslsmith_mod_vec2_u32(global3.yz, vec2<u32>(0u, global3.x)))));
    let var_1 = vec4<u32>(_wgslsmith_dot_vec4_u32(~(vec4<u32>(var_0.a.x, global3.x, global3.x, 0u) & _wgslsmith_div_vec4_u32(vec4<u32>(var_0.a.x, 4569u, 1u, 0u), vec4<u32>(global3.x, var_0.a.x, var_0.a.x, 24632u))), vec4<u32>(var_0.a.x, var_0.a.x, _wgslsmith_mod_u32(41192u, var_0.a.x), var_0.a.x) & ~abs(vec4<u32>(global3.x, var_0.a.x, global3.x, 4294967295u))), reverseBits(1u) >> (~(~global3.x) % 32u), 1u, var_0.a.x);
    let var_2 = _wgslsmith_mod_vec4_i32(u_input.b, -u_input.b);
    let var_3 = Struct_2(_wgslsmith_f_op_f32(global2.a + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1731f, -1301f, any(vec3<bool>(false, false, false)))), _wgslsmith_f_op_f32(f32(-1f) * -1308f))));
    var var_4 = firstLeadingBit(select(_wgslsmith_clamp_vec4_u32(abs(var_1) | vec4<u32>(var_1.x, global3.x, var_0.a.x, 32406u), var_1, ~vec4<u32>(global3.x, 2119u, var_1.x, 0u) & firstTrailingBit(var_1)), var_1, !vec4<bool>(false, any(vec4<bool>(false, true, false, true)), true, any(vec3<bool>(false, true, false)))));
    return Struct_3(global1[_wgslsmith_index_u32(global3.x >> ((_wgslsmith_div_u32(46866u, 30294u) | global3.x) % 32u), 25u)], _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-888f, 1000f, -889f, 187f), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, var_3.a, -378f, var_3.a)))))))), var_3, vec2<bool>(all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(exp2(var_3.a)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(162f, var_3.a)))), global1[_wgslsmith_index_u32(firstLeadingBit(0u), 25u)]);
}

fn func_5(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    global3 = _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(~(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 4294967295u, arg_1.x, 21292u), vec4<u32>(1u, 76555u, 6941u, global3.x))), vec4<u32>(countOneBits(4294967295u), _wgslsmith_clamp_u32(global3.x, firstTrailingBit(arg_0.a.a.x), select(15872u, 1114u, arg_0.d.x)), arg_0.e.a.x, ~arg_1.x)), ~abs(~firstLeadingBit(vec4<u32>(0u, 51103u, arg_1.x, 4294967295u))));
    global4 = array<i32, 2>();
    var var_0 = Struct_1(abs(vec2<u32>(1u, _wgslsmith_sub_u32(0u, 0u))));
    global4 = array<i32, 2>();
    global2 = Struct_2(global2.a);
    return arg_0.a;
}

fn func_6(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_3) -> vec2<f32> {
    let var_0 = Struct_1(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(abs(vec2<u32>(1u, global3.x)) | ~vec2<u32>(arg_0.a.x, global3.x), ~arg_0.a), ~vec2<u32>(~arg_2.e.a.x, ~arg_2.a.a.x)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-226f - global2.a), arg_2.b.x)), global2.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.a)))));
    var var_2 = _wgslsmith_sub_vec4_i32(u_input.b, abs(firstLeadingBit(firstLeadingBit(vec4<i32>(1i, global4[_wgslsmith_index_u32(1u, 2u)], global4[_wgslsmith_index_u32(16132u, 2u)], -37945i))) & u_input.b));
    let var_3 = func_1().d.x;
    let var_4 = countOneBits(~vec4<u32>(countOneBits(~var_0.a.x), ~func_5(Struct_3(arg_2.e, vec4<f32>(412f, var_1.a, var_1.a, -564f), arg_2.c, vec2<bool>(true, true), Struct_1(arg_2.a.a)), vec2<u32>(arg_2.a.a.x, 48813u), arg_2.c, arg_2.c).a.x, func_1().a.a.x ^ ~1u, ~18040u));
    return _wgslsmith_f_op_vec2_f32(arg_2.b.zy - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1762f), _wgslsmith_f_op_vec3_f32(func_2(global2.a)).x) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(ceil(arg_2.b.zz)))), _wgslsmith_f_op_vec2_f32(-func_1().b.ww)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_6(func_5(func_1(), global3.zw, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f)), func_1().c), -max(vec2<i32>(u_input.a.x, global4[_wgslsmith_index_u32(39347u, 2u)]), u_input.c), global0[_wgslsmith_index_u32(~50796u, 11u)])));
    var var_2 = (~1i ^ _wgslsmith_sub_i32(u_input.c.x, _wgslsmith_mod_i32(abs(global4[_wgslsmith_index_u32(global3.x, 2u)]), 1i))) << (_wgslsmith_sub_u32(~global3.x, 1u | select(65080u, 29283u, false)) % 32u);
    global1 = array<Struct_1, 25>();
    let var_3 = all(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), firstTrailingBit(1i) >= u_input.b.x), !(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), vec3<bool>(true, false, true)));
    global2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), global2.a, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(u_input.b.zx), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.x + 352f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, 456f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(global2.a * global2.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a))), global2.a));
}


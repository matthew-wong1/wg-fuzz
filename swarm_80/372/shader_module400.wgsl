struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23> = array<i32, 23>(i32(-2147483648), 1i, 0i, 28767i, -1i, 36080i, -10009i, 0i, i32(-2147483648), 38i, i32(-2147483648), 4095i, -17621i, -28700i, -6737i, -1i, -21989i, 0i, i32(-2147483648), 19341i, 59148i, 5622i, 0i);

var<private> global1: vec3<i32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(u_input.a, !(!any(vec3<bool>(false, false, true))), !vec2<bool>(true, all(vec2<bool>(false, false)) & all(vec2<bool>(true, false))), ((firstLeadingBit(global1.x) ^ abs(31549i)) << (u_input.a % 32u)) >> (4294967295u % 32u));
    let var_1 = 1411i;
    let var_2 = all(select(vec4<bool>(all(var_0.c), all(!var_0.c), any(!vec3<bool>(true, var_0.c.x, true)), false), !vec4<bool>(true, true, select(true, true, var_0.c.x), !var_0.c.x), select(false, false, var_0.c.x) & true));
    var_0 = Struct_1(countOneBits(_wgslsmith_sub_u32(u_input.a, ~(~u_input.a))), all(select(var_0.c, !select(var_0.c, vec2<bool>(true, var_0.c.x), var_0.c), select(var_0.c, vec2<bool>(true, true), select(var_0.c, var_0.c, vec2<bool>(var_0.b, true))))), vec2<bool>(var_2, true), var_1);
    global0 = array<i32, 23>();
    return -285f;
}

fn func_2() -> vec4<f32> {
    var var_0 = ~(-1i);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1423f);
    global0 = array<i32, 23>();
    let var_2 = _wgslsmith_clamp_u32(0u, ~(~u_input.a), countOneBits(u_input.a) | 1u);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1, 989f, -982f, var_1))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-985f)), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(max(434f, -331f)), var_1) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 155f, 1108f, -765f) - vec4<f32>(-732f, -1000f, -1096f, 536f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, -420f, var_1)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(254f, var_1, var_1, 1000f)))))));
    return _wgslsmith_f_op_vec4_f32(var_3 - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(var_3 - vec4<f32>(-2180f, var_3.x, var_1, var_1)), _wgslsmith_f_op_vec4_f32(round(var_3)))) + vec4<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(var_1 * var_3.x), _wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(var_3.x, -1047f))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<f32>) -> bool {
    let var_0 = vec3<bool>(arg_1.c.x, false, false);
    let var_1 = vec4<f32>(arg_0.b.x, _wgslsmith_f_op_f32(max(498f, _wgslsmith_f_op_f32(trunc(-405f)))), _wgslsmith_f_op_f32(-1000f * 1435f), _wgslsmith_f_op_f32(-arg_0.b.x));
    global1 = firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(1i, ~(-2147483647i)), global0[_wgslsmith_index_u32(arg_1.a, 23u)], select(0i, global0[_wgslsmith_index_u32(25772u, 23u)], true)), select(select(min(vec3<i32>(73641i, global1.x, global1.x), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 23u)], 5075i, 0i)), vec3<i32>(1i, arg_0.a, -2147483647i), arg_1.c.x), reverseBits(vec3<i32>(-1i, arg_0.a, 33639i) >> (vec3<u32>(22057u, 21814u, 4294967295u) % vec3<u32>(32u))), all(!arg_1.c))));
    let var_2 = vec2<f32>(arg_0.c.x, 2254f);
    global1 = abs(vec3<i32>(~arg_0.a, firstLeadingBit(global0[_wgslsmith_index_u32(arg_1.a, 23u)]) | global0[_wgslsmith_index_u32(arg_1.a, 23u)], 1i));
    return !var_0.x && arg_1.b;
}

fn func_5(arg_0: bool, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = reverseBits(countOneBits(~(~u_input.a)) ^ firstLeadingBit(u_input.a));
    var var_1 = Struct_2(min(arg_1.x & (1i & arg_1.x), _wgslsmith_add_i32(global1.x, _wgslsmith_clamp_i32(-19070i, 66905i, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(36184u, 23u)], global1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(619f, 231f, -1151f, -110f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1280f, 386f, -672f, -633f))), select(vec4<bool>(arg_0, arg_0, true, false), vec4<bool>(arg_0, false, true, true), vec4<bool>(arg_0, true, arg_0, false)))), select(!vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, true, arg_0, arg_0), select(vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(true, arg_0, true, arg_0), arg_0)))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1500f, -636f, 1385f, 180f), _wgslsmith_f_op_vec4_f32(vec4<f32>(623f, -531f, 687f, -414f) - vec4<f32>(717f, -1749f, -574f, 502f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1327f, 1773f, -139f) + vec4<f32>(1055f, 320f, 143f, -450f)))))), vec3<f32>(-227f, -153f, 997f), true);
    var_1 = Struct_2(global1.x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_1.b, var_1.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-511f, var_1.b.x, 670f, 474f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-903f, var_1.b.x, -413f, var_1.b.x) * vec4<f32>(-422f, -1000f, var_1.c.x, var_1.c.x)), _wgslsmith_f_op_vec4_f32(max(var_1.b, vec4<f32>(var_1.c.x, 664f, var_1.c.x, 789f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, var_1.b.x, var_1.c.x, var_1.c.x))))), vec3<f32>(_wgslsmith_f_op_f32(min(var_1.c.x, var_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(408f, _wgslsmith_f_op_f32(-var_1.b.x)))), -398f), var_1.d);
    let var_2 = abs(global0[_wgslsmith_index_u32(var_0, 23u)]);
    var var_3 = _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(arg_1, vec2<i32>(var_1.a, -5990i & -global0[_wgslsmith_index_u32(u_input.a, 23u)])), arg_1 & ~(~vec2<i32>(0i, var_2)));
    return Struct_1(68248u, !(all(select(vec2<bool>(false, true), vec2<bool>(arg_0, true), vec2<bool>(true, var_1.d))) && false), !(!select(!vec2<bool>(false, var_1.d), vec2<bool>(arg_0, var_1.d), all(vec2<bool>(true, arg_0)))), -_wgslsmith_dot_vec4_i32(-vec4<i32>(-16936i, 0i, 2147483647i, 2147483647i), vec4<i32>(-1308i, 74859i, 11455i, _wgslsmith_div_i32(arg_1.x, global1.x))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<bool>) -> vec4<bool> {
    var var_0 = func_5(func_4(Struct_2(-55104i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2())), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(483f, 1023f, -2017f) - vec3<f32>(368f, -1101f, -348f))), false), Struct_1(_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a, 10741u), u_input.a), true, vec2<bool>(false || arg_1.x, arg_1.x), _wgslsmith_div_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 23u)], 0i, 1i, 1i), vec4<i32>(6732i, -66862i, arg_0.x, -2147483647i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-689f, 287f))))), vec2<i32>(_wgslsmith_dot_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.x, -29703i), arg_0), _wgslsmith_sub_vec2_i32(select(vec2<i32>(25672i, global1.x), vec2<i32>(global1.x, -31472i), vec2<bool>(false, arg_1.x)), -vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 23u)], 55447i))), ~_wgslsmith_div_i32(-32319i, firstLeadingBit(2147483647i))));
    var var_1 = arg_1.x;
    global0 = array<i32, 23>();
    return !select(select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(arg_1.x, true, false, arg_1.x), vec4<bool>(false, arg_1.x, false, false)), select(vec4<bool>(true, false, var_0.c.x, false), vec4<bool>(arg_1.x, false, var_0.c.x, arg_1.x), false), !vec4<bool>(arg_1.x, arg_1.x, var_0.b, true)), vec4<bool>(true, false, func_5(var_0.c.x, vec2<i32>(var_0.d, 1i)).b, !arg_1.x), false), select(select(!vec4<bool>(true, arg_1.x, false, false), !vec4<bool>(arg_1.x, false, false, false), !vec4<bool>(false, arg_1.x, var_0.b, var_0.c.x)), select(vec4<bool>(false, false, arg_1.x, false), !vec4<bool>(arg_1.x, var_0.b, false, false), vec4<bool>(false, arg_1.x, false, arg_1.x)), !vec4<bool>(false, false, arg_1.x, true)), vec4<bool>(all(!vec3<bool>(true, arg_1.x, false)), true, arg_1.x, var_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(_wgslsmith_dot_vec3_i32((_wgslsmith_add_vec3_i32(vec3<i32>(24802i, global0[_wgslsmith_index_u32(u_input.a, 23u)], 14775i), vec3<i32>(-44708i, global1.x, -39412i)) | -vec3<i32>(global1.x, global0[_wgslsmith_index_u32(u_input.a, 23u)], 1i)) >> (~select(vec3<u32>(57109u, u_input.a, 432u), vec3<u32>(2368u, u_input.a, u_input.a), true) % vec3<u32>(32u)), vec3<i32>(global0[_wgslsmith_index_u32(firstLeadingBit(~4294967295u), 23u)], -13752i, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(0u, u_input.a)), 23u)])), -1554i);
    global1 = _wgslsmith_div_vec3_i32(vec3<i32>(abs(1i), 1i, -_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.a, 23u)] << (1u % 32u), 73244i)), -_wgslsmith_mod_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(max(55119u, 1u), 23u)], 0i, min(-33119i, 2583i)), -(~vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], 2147483647i, global1.x))));
    global1 = ~vec3<i32>(-_wgslsmith_dot_vec2_i32(var_0, var_0) & global1.x, global0[_wgslsmith_index_u32(u_input.a & u_input.a, 23u)], -var_0.x);
    let var_1 = vec4<bool>(true, !(!(!all(vec3<bool>(true, false, true)))), any(func_1(var_0, vec3<bool>(true, true, true))), firstLeadingBit(u_input.a) <= 1u);
    global1 = _wgslsmith_sub_vec3_i32(-vec3<i32>(1i ^ func_5(var_1.x, global1.xz).d, ~_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, global1.x, 0i), vec3<i32>(global0[_wgslsmith_index_u32(1u, 23u)], 0i, -36736i)), 22356i), vec3<i32>(~global1.x, var_0.x, ~(~var_0.x)));
    let var_2 = Struct_1(u_input.a, var_1.x, func_1(vec2<i32>(~global1.x, _wgslsmith_div_i32(func_5(var_1.x, var_0).d, i32(-1i) * -2147483647i)), !func_1(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.x, 62005i), vec2<i32>(-42512i, global0[_wgslsmith_index_u32(u_input.a, 23u)])), var_1.wyz).zxw).xz, abs(abs(_wgslsmith_add_i32(~0i, var_0.x))));
    global0 = array<i32, 23>();
    global1 = max(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, var_2.d, var_2.d), vec3<i32>(global1.x, var_2.d, -37224i)), vec3<i32>(global1.x, -37568i, -1i)), abs(vec3<i32>(-2147483647i, var_2.d, global1.x))) << ((~reverseBits(vec3<u32>(13523u, 4294967295u, var_2.a)) & vec3<u32>(~var_2.a, 1u, ~38628u)) % vec3<u32>(32u)), ~(-vec3<i32>(min(-1i, 2147483647i), 45372i << (var_2.a % 32u), -var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global1.yy, min(global1.yz, ~_wgslsmith_clamp_vec2_i32(var_0, firstTrailingBit(global1.zx), select(vec2<i32>(0i, -46727i), global1.xy, false))), _wgslsmith_f_op_f32(func_3()), -(~global1.x));
}


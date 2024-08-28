struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(-130f, -1316i, vec3<f32>(-593f, 2281f, 1390f), vec2<bool>(false, false)), Struct_1(1600f, -17732i, vec3<f32>(724f, -543f, -674f), vec2<bool>(false, false)), Struct_1(1066f, -10179i, vec3<f32>(-1643f, -484f, 1000f), vec2<bool>(false, true)), Struct_1(-702f, -13123i, vec3<f32>(2340f, 1146f, -318f), vec2<bool>(true, false)), Struct_1(1273f, 1i, vec3<f32>(180f, -329f, 332f), vec2<bool>(true, true)), Struct_1(-622f, -14502i, vec3<f32>(366f, 1637f, -1165f), vec2<bool>(false, true)), Struct_1(-1526f, -21507i, vec3<f32>(2097f, -1214f, 128f), vec2<bool>(false, true)), Struct_1(1000f, 46336i, vec3<f32>(291f, 1531f, -1119f), vec2<bool>(true, false)), Struct_1(-1109f, -7811i, vec3<f32>(-1000f, -1063f, -362f), vec2<bool>(true, false)), Struct_1(-889f, 22586i, vec3<f32>(1105f, -108f, 156f), vec2<bool>(true, false)), Struct_1(667f, 1i, vec3<f32>(546f, 1170f, -958f), vec2<bool>(true, false)), Struct_1(-1660f, 0i, vec3<f32>(-1606f, 690f, 265f), vec2<bool>(true, true)), Struct_1(-469f, 28098i, vec3<f32>(-1357f, -282f, 443f), vec2<bool>(false, false)), Struct_1(2166f, -39095i, vec3<f32>(-1592f, -506f, 504f), vec2<bool>(true, false)));

var<private> global2: array<u32, 1>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = vec2<bool>(true, true);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-530f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_dot_vec2_i32(vec2<i32>(min(arg_0.b, 1i), firstLeadingBit(arg_0.b) >> (~u_input.d.x % 32u)), _wgslsmith_div_vec2_i32(countOneBits(u_input.e), vec2<i32>(u_input.a.x, -2147483647i) ^ u_input.e) << (~(vec2<u32>(global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 1u)], 1u)]) & vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(63348u, 1u)], 1u)], 48068u)) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(826f, 568f, arg_0.c.x), arg_0.c)))), select(vec2<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 0u, global2[_wgslsmith_index_u32(0u, 1u)], u_input.d.x), vec4<u32>(3318u, 7609u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 1u)], 1u)], 0u)) >= _wgslsmith_clamp_u32(u_input.b.x, global2[_wgslsmith_index_u32(4294967295u, 1u)], global2[_wgslsmith_index_u32(u_input.d.x, 1u)]), var_0.x), vec2<bool>(!arg_0.d.x, false | (true & arg_0.d.x)), var_0.x));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-var_1.c.x), ~(~(-29033i) & firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b, -2147483647i), vec2<i32>(-1i, var_1.b)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1945f, var_1.a), arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(882f, 613f, false)) - _wgslsmith_f_op_f32(-369f - arg_0.c.x))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.c.x, -1225f, arg_0.a), _wgslsmith_f_op_vec3_f32(-var_1.c)))), select(!arg_0.d, vec2<bool>(false, !(!arg_0.d.x)), true));
    global0 = ~firstLeadingBit(select(~21274u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.d.x, global2[_wgslsmith_index_u32(47952u, 1u)]), vec3<u32>(u_input.b.x, global2[_wgslsmith_index_u32(1u, 1u)], u_input.d.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.d.x, 4294967295u) << (vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(52643u, 1u)], 1u)], 1u, 11532u) % vec3<u32>(32u)), ~vec3<u32>(global2[_wgslsmith_index_u32(16663u, 1u)], 18067u, 49269u)), !(var_2.b > 2147483647i)));
    var var_3 = select(u_input.e, vec2<i32>(reverseBits(select(arg_0.b, _wgslsmith_dot_vec2_i32(u_input.a.yy, u_input.e), true)), ~30341i), !(var_2.c.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c.x + var_1.c.x) + -518f)));
    return _wgslsmith_mod_i32(-2147483647i, -(-8212i ^ u_input.a.x));
}

fn func_2(arg_0: Struct_1) -> vec2<i32> {
    global1 = array<Struct_1, 14>();
    var var_0 = Struct_1(arg_0.a, func_3(global1[_wgslsmith_index_u32((~8511u >> (~u_input.b.x % 32u)) >> (8175u % 32u), 14u)]), vec3<f32>(1479f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(arg_0.a, _wgslsmith_f_op_f32(-2105f * arg_0.a))))), arg_0.a), select(vec2<bool>(all(vec3<bool>(true, true, true)), !(false || arg_0.d.x)), !arg_0.d, any(vec4<bool>(true, true, -372f > arg_0.c.x, true))));
    let var_1 = min(~_wgslsmith_add_vec4_i32(abs(vec4<i32>(arg_0.b, -2147483647i, u_input.a.x, arg_0.b) | vec4<i32>(23164i, u_input.c, 2147483647i, u_input.a.x)), vec4<i32>(_wgslsmith_div_i32(u_input.e.x, u_input.c), _wgslsmith_add_i32(2147483647i, u_input.c), firstTrailingBit(u_input.e.x), _wgslsmith_mod_i32(var_0.b, 0i))), max(-(vec4<i32>(arg_0.b, u_input.a.x, 31372i, 4474i) ^ vec4<i32>(var_0.b, var_0.b, var_0.b, -2147483647i)), max(vec4<i32>(var_0.b, arg_0.b, var_0.b, -2147483647i), ~vec4<i32>(u_input.a.x, 0i, -2147483647i, -1i))) >> ((~vec4<u32>(u_input.b.x, 1u, u_input.d.x, 1u) >> (~min(vec4<u32>(3131u, global2[_wgslsmith_index_u32(15102u, 1u)], 4294967295u, u_input.d.x), vec4<u32>(4294967295u, 49909u, u_input.b.x, 132619u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global2 = array<u32, 1>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-301f * arg_0.a)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c.x, -1027f)), 1347f, true)), 1f));
    return ~select(vec2<i32>(~min(2147483647i, var_1.x), abs(~var_0.b)), _wgslsmith_div_vec2_i32(select(var_1.yw, u_input.a.yx, true), var_1.zx) | vec2<i32>(arg_0.b, firstLeadingBit(-1i)), true);
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_mult_i32(-_wgslsmith_mult_i32(u_input.e.x, -42007i) >> ((max(23514u, global2[_wgslsmith_index_u32(reverseBits(global2[_wgslsmith_index_u32(38130u, 1u)]), 1u)]) << (_wgslsmith_mult_u32(~u_input.b.x, u_input.b.x) % 32u)) % 32u), _wgslsmith_sub_i32(~(~2147483647i) | u_input.c, _wgslsmith_dot_vec2_i32(countOneBits(func_2(global1[_wgslsmith_index_u32(1u, 14u)])), _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, u_input.a.x), _wgslsmith_sub_vec2_i32(u_input.e, vec2<i32>(-2147483647i, u_input.c)), vec2<i32>(28182i, u_input.e.x)))));
    var var_1 = 4294967295u;
    global2 = array<u32, 1>();
    var_1 = ~(~4294967295u);
    var var_2 = 1187f;
    return _wgslsmith_clamp_i32(-var_0, _wgslsmith_add_i32(firstTrailingBit(_wgslsmith_div_i32(-26158i, u_input.e.x)) << (countOneBits(u_input.b.x) % 32u), 1i), var_0);
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: f32, arg_3: vec3<u32>) -> vec2<f32> {
    let var_0 = global1[_wgslsmith_index_u32((15162u & arg_3.x) ^ (0u >> (~_wgslsmith_sub_u32(firstTrailingBit(arg_3.x), 1163u) % 32u)), 14u)];
    global0 = _wgslsmith_mult_u32(u_input.d.x >> (44170u % 32u), _wgslsmith_div_u32(~u_input.d.x, 23546u));
    var var_1 = ~u_input.a.yx;
    global1 = array<Struct_1, 14>();
    var var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-120f)), _wgslsmith_f_op_f32(arg_2 + 1633f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1867f))))))), var_0.a);
    return vec2<f32>(_wgslsmith_f_op_f32(164f - 1971f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, -973f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 1>();
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(0i > func_1(), _wgslsmith_mod_i32(u_input.a.x ^ ~(-69636i), 1i), _wgslsmith_div_f32(1000f, 1138f), _wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, 0u, u_input.b.x), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, global2[_wgslsmith_index_u32(352u, 1u)], u_input.d.x), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)], 1u)], global2[_wgslsmith_index_u32(21231u, 1u)], 1u))) | _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], u_input.d.x), vec3<u32>(1u, 1u, 67658u) | vec3<u32>(global2[_wgslsmith_index_u32(46540u, 1u)], 4294967295u, global2[_wgslsmith_index_u32(u_input.b.x, 1u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1760f, -223f) - vec2<f32>(-1857f, 441f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1348f, 839f) - vec2<f32>(-1000f, 438f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-960f, 461f), vec2<f32>(-391f, -1000f)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-782f, -378f, var_0.x, -1000f) - vec4<f32>(-1000f, -1553f, var_0.x, 993f)), vec4<f32>(-700f, _wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(abs(-566f)), _wgslsmith_div_f32(1452f, var_0.x)))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(374f - -1000f), _wgslsmith_f_op_f32(-var_0.x), var_0.x, -419f)))));
    var var_2 = var_0.x;
    global1 = array<Struct_1, 14>();
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, -1530f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_0.x, var_0.x)))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.x, var_0.x, 568f))));
    global1 = array<Struct_1, 14>();
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-933f)), 1f))))), -962f, -1000f, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_4) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, var_1.x, 398f, var_1.x) + var_4))))), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(-18883i, 0i)), -(~vec2<i32>(u_input.a.x, u_input.e.x)), u_input.e), countOneBits(~u_input.e) >> (countOneBits(~u_input.d) % vec2<u32>(32u))), ~_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.e.x, -21417i, 37900i, u_input.c), vec4<i32>(u_input.a.x, 4467i, u_input.e.x, u_input.a.x)) | (~vec4<i32>(2147483647i, -810i, u_input.a.x, u_input.e.x) << (max(~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(20960u, 1u)], 1u)], 4957u, 0u, global2[_wgslsmith_index_u32(u_input.b.x, 1u)]), ~vec4<u32>(4294967295u, 1227u, global2[_wgslsmith_index_u32(u_input.d.x, 1u)], 17171u)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec2_f32(func_4(false, u_input.c, 632f, select(vec3<u32>(global2[_wgslsmith_index_u32(46099u, 1u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 1u)], 1u)], global2[_wgslsmith_index_u32(u_input.b.x, 1u)]), abs(vec3<u32>(global2[_wgslsmith_index_u32(0u, 1u)], 1u, 0u)), true))).x)), ~vec4<i32>(_wgslsmith_mult_i32(reverseBits(u_input.a.x), u_input.e.x), _wgslsmith_div_i32(-8062i, _wgslsmith_clamp_i32(0i, 36327i, -54709i)), _wgslsmith_mod_i32(u_input.e.x, -u_input.e.x), 10622i));
}


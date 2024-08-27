struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 13407u);

var<private> global1: array<vec4<i32>, 25>;

var<private> global2: Struct_1;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec2<u32>) -> vec2<u32> {
    var var_0 = vec4<u32>(u_input.d, 3355u, _wgslsmith_clamp_u32(abs(~(26277u >> (arg_0.x % 32u))), ~u_input.e | 4294967295u, firstTrailingBit(_wgslsmith_div_u32(u_input.e, 31855u))), global0.x);
    let var_1 = Struct_1(vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, global2.a.x, -28671i), vec3<i32>(38096i, global2.a.x, global2.a.x)), ~firstTrailingBit(global2.a.x), u_input.b));
    var var_2 = vec2<bool>(all(!select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), 38120u < global0.x)), true);
    global0 = reverseBits(select(vec2<u32>(_wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(70123u, u_input.c)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, u_input.d, 43763u), vec4<u32>(0u, arg_0.x, global0.x, u_input.d))) & vec2<u32>(~u_input.c, var_0.x & var_0.x), ~(~(~var_0.wz)), vec2<bool>(!var_2.x, true)));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f + -522f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1939f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -758f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1055f)))));
    return arg_0;
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1) -> vec4<f32> {
    global2 = Struct_1(~arg_2.a);
    global0 = min(func_3(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, global0.x), ~vec2<u32>(u_input.d, global0.x), ~vec2<u32>(54249u, 0u)) ^ vec2<u32>(4294967295u, _wgslsmith_sub_u32(global0.x, global0.x))), ~(~vec2<u32>(1u, 1u)));
    var var_0 = Struct_1(countOneBits(vec3<i32>(~(-37148i), global2.a.x, 0i)));
    var_0 = Struct_1(_wgslsmith_sub_vec3_i32(select(-var_0.a, reverseBits(arg_2.a), !arg_0.x), ~global2.a) ^ vec3<i32>(_wgslsmith_clamp_i32(-global2.a.x, i32(-1i) * -2147483647i, 2147483647i), -1i, u_input.a));
    var var_1 = false;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1224f, -715f, -618f, 819f) + vec4<f32>(200f, 1546f, -316f, -461f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1101f, 901f, -1587f, 917f))), vec4<bool>(arg_0.x, true, arg_0.x, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-298f, 1384f, 1027f, 492f)))), false))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<u32>) -> vec3<i32> {
    var var_0 = i32(-1i) * -u_input.b;
    let var_1 = Struct_1(-select(~global2.a, ~(-global2.a), 812f >= _wgslsmith_f_op_f32(-arg_0.x)));
    global1 = array<vec4<i32>, 25>();
    var var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(92001i, _wgslsmith_sub_i32(firstTrailingBit(var_1.a.x) << (arg_1.x % 32u), -_wgslsmith_mod_i32(var_1.a.x, -2147483647i)), ~(global2.a.x >> ((31019u | global0.x) % 32u))), global2.a);
    global2 = var_1;
    return vec3<i32>(_wgslsmith_dot_vec4_i32(~firstTrailingBit(global1[_wgslsmith_index_u32(0u, 25u)] & vec4<i32>(var_1.a.x, 0i, -24162i, var_2.x)), vec4<i32>(-12274i, var_2.x, -var_1.a.x, var_1.a.x)), _wgslsmith_sub_i32(var_2.x, _wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_sub_i32(var_1.a.x, 1i), 9169i), 26226i)), ~var_1.a.x);
}

fn func_1() -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(global2.a.x, -u_input.b, global2.a.x), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(573f, -2663f, -600f, 199f)) - _wgslsmith_f_op_vec4_f32(func_2(vec2<bool>(true, true), global2.a.x, Struct_1(vec3<i32>(global2.a.x, u_input.b, 2147483647i))))), ~(~vec2<u32>(u_input.d, global0.x)))));
    let var_1 = Struct_1(_wgslsmith_clamp_vec3_i32(-(~(vec3<i32>(-2147483647i, u_input.a, var_0.a.x) ^ global2.a)), -vec3<i32>(select(var_0.a.x, 0i, true), u_input.a | -775i, global2.a.x), global2.a));
    let var_2 = ~12201i;
    var var_3 = vec3<u32>(_wgslsmith_sub_u32(u_input.e, _wgslsmith_mod_u32(_wgslsmith_div_u32(3357u, u_input.e), u_input.e)) << (87161u % 32u), _wgslsmith_add_u32(1u, 1u & u_input.c), min(firstTrailingBit(global0.x) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(72448u, 1u, 0u, global0.x), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 4294967295u, global0.x, global0.x), vec4<u32>(76525u, global0.x, global0.x, 21024u))) % 32u), 0u));
    let var_4 = var_3.x;
    return select(select(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(false, false))), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), abs(17571i) <= var_0.a.x), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), 4294967295u > var_3.x), select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), false), firstLeadingBit(var_0.a.x) > var_0.a.x)), select(select(vec3<bool>(u_input.e >= var_3.x, true, global0.x > global0.x), vec3<bool>(true, false, false), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), vec3<bool>(any(vec2<bool>(true, false)), true | (4294967295u >= var_3.x), !any(vec4<bool>(false, false, false, true))), false), !(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), true)));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_2, arg_2)))), _wgslsmith_f_op_f32(156f - -1000f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2 * arg_2))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), arg_2)))));
    let var_1 = Struct_1(vec3<i32>(22641i, ~(-2147483647i), ~select(u_input.a << (2558u % 32u), global2.a.x, u_input.b >= -1i)));
    var var_2 = arg_1;
    var var_3 = _wgslsmith_sub_i32(firstTrailingBit(-5912i), 0i);
    return 335f >= _wgslsmith_f_op_f32(trunc(var_0.x));
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    global1 = array<vec4<i32>, 25>();
    let var_0 = arg_1.a.x;
    var var_1 = Struct_1(abs(global2.a));
    var var_2 = any(!vec2<bool>(any(vec2<bool>(false, false)), true)) & true;
    global0 = vec2<u32>(u_input.d, u_input.d | u_input.d);
    return Struct_1(var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 25>();
    global2 = func_6(!vec2<bool>(true, func_5(func_1(), Struct_1(vec3<i32>(global2.a.x, 3801i, u_input.b)), -1110f, ~u_input.c)), Struct_1(_wgslsmith_mult_vec3_i32(-select(vec3<i32>(-45631i, u_input.a, u_input.b), vec3<i32>(u_input.a, 1i, 2147483647i), false), vec3<i32>(abs(0i), 1i, ~u_input.b))));
    let var_0 = max((vec4<i32>(global2.a.x, 58051i, 26518i, global2.a.x) & (vec4<i32>(global2.a.x, 6453i, global2.a.x, 2147483647i) | global1[_wgslsmith_index_u32(u_input.c, 25u)])) ^ vec4<i32>(u_input.b, ~2147483647i, u_input.a, -global2.a.x), global1[_wgslsmith_index_u32(global0.x, 25u)] ^ min(_wgslsmith_mult_vec4_i32(global1[_wgslsmith_index_u32(7637u, 25u)], vec4<i32>(9810i, u_input.a, 8736i, global2.a.x)), -global1[_wgslsmith_index_u32(global0.x, 25u)])) ^ ~global1[_wgslsmith_index_u32(u_input.d, 25u)];
    let var_1 = vec2<u32>(select(func_3(_wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(9223u, 56692u)), vec2<u32>(u_input.e, global0.x))).x, global0.x, true), 1u);
    let var_2 = _wgslsmith_add_i32(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-343f, 871f, -184f, -668f) - vec4<f32>(701f, 381f, -1184f, -1844f)))), vec2<u32>(_wgslsmith_dot_vec2_u32(var_1 << (vec2<u32>(4294967295u, global0.x) % vec2<u32>(32u)), ~var_1), var_1.x)).x, u_input.a);
    global1 = array<vec4<i32>, 25>();
    global2 = Struct_1(-_wgslsmith_mod_vec3_i32(~(~vec3<i32>(var_2, 84210i, global2.a.x)), vec3<i32>(var_0.x, _wgslsmith_mod_i32(global2.a.x, var_0.x), global2.a.x)));
    let var_3 = func_6(vec2<bool>(select(!func_5(vec3<bool>(false, false, false), Struct_1(vec3<i32>(16079i, 2147483647i, global2.a.x)), -871f, 59473u), false, true), all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), true))), Struct_1(abs(vec3<i32>(-2147483647i, var_0.x, 9685i) << (vec3<u32>(u_input.d, 48815u, 19463u) % vec3<u32>(32u)))));
    var var_4 = vec2<bool>(true, !any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, ~vec2<i32>(-firstTrailingBit(var_3.a.x), 1848i), vec3<f32>(497f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -106f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-975f)))), vec4<u32>(~(~(~global0.x)), 2050u, global0.x, 31995u), 22233i);
}


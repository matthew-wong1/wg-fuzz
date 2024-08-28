struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: vec3<i32>,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32 = 2147483647i;

var<private> global2: array<f32, 7>;

var<private> global3: u32 = 15390u;

var<private> global4: array<vec2<i32>, 10> = array<vec2<i32>, 10>(vec2<i32>(43056i, 20192i), vec2<i32>(i32(-2147483648), -26400i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-37775i, 0i), vec2<i32>(-1i, -57184i), vec2<i32>(-62372i, -59676i), vec2<i32>(3922i, -1i), vec2<i32>(16879i, 2147483647i), vec2<i32>(10146i, -1i), vec2<i32>(20720i, -64191i));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> vec2<i32> {
    global2 = array<f32, 7>();
    var var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 7u)], arg_3, -1000f, global2[_wgslsmith_index_u32(17124u, 7u)])) * vec4<f32>(arg_3, 1258f, 278f, -881f)) + vec4<f32>(_wgslsmith_f_op_f32(-arg_3), -552f, _wgslsmith_f_op_f32(f32(-1f) * -1228f), global2[_wgslsmith_index_u32(~u_input.b.x, 7u)])), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(5810u, 7u)], -378f, global2[_wgslsmith_index_u32(u_input.c, 7u)], -1000f), vec4<f32>(-1469f, -1339f, arg_3, arg_3)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(682f, arg_3, arg_3, global2[_wgslsmith_index_u32(u_input.c, 7u)]), vec4<f32>(1000f, global2[_wgslsmith_index_u32(u_input.c, 7u)], arg_3, -1000f), vec4<bool>(false, false, true, true)))))), !vec4<bool>(any(vec2<bool>(true, false)), u_input.b.x >= 0u, false, true))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(340f * 1567f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1679f)))), arg_3, _wgslsmith_f_op_f32(610f - -476f), 2142f)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(138f, var_0.x, 235f, global2[_wgslsmith_index_u32(u_input.b.x, 7u)]) + vec4<f32>(2777f, -338f, 687f, 391f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2[_wgslsmith_index_u32(1u, 7u)], 1923f, global2[_wgslsmith_index_u32(1u, 7u)], 914f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(577f, var_0.x, global2[_wgslsmith_index_u32(u_input.b.x, 7u)], var_0.x))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_3, var_0.x, var_0.x, -282f), vec4<f32>(var_0.x, var_0.x, arg_3, -1000f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-885f, -1112f, global2[_wgslsmith_index_u32(u_input.c, 7u)], var_0.x))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 7u)], arg_3, -2001f, 1108f)))), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), true)))));
    let var_1 = 8918u;
    var var_2 = !select(select(select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false))), select(vec4<bool>(true, all(vec3<bool>(true, false, true)), any(vec4<bool>(true, true, true, true)), true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(false, true, true, false)), select(true, all(vec2<bool>(true, false)), u_input.b.x < u_input.c)), false);
    return ~_wgslsmith_clamp_vec2_i32(select(select(global4[_wgslsmith_index_u32(5853u, 10u)], vec2<i32>(arg_1, 1i), vec2<bool>(true, true)), select(arg_2.a.yz, vec2<i32>(global0.a.x, arg_2.a.x), var_2.wy), var_2.ww), vec2<i32>(-1i) * -global0.a.zx, -global4[_wgslsmith_index_u32(~var_1, 10u)]) ^ select(-global0.a.xw, min(_wgslsmith_clamp_vec2_i32(global4[_wgslsmith_index_u32(54199u, 10u)], vec2<i32>(-2147483647i, arg_1), vec2<i32>(u_input.a, 1i)), _wgslsmith_sub_vec2_i32(arg_2.a.zw, global4[_wgslsmith_index_u32(4294967295u, 10u)])) & -_wgslsmith_mult_vec2_i32(arg_2.a.wx, vec2<i32>(-4195i, global0.a.x)), true);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2) -> u32 {
    let var_0 = global0.a;
    let var_1 = 1191f;
    var var_2 = func_3(var_0.x, _wgslsmith_dot_vec4_i32(~global0.a, ~(-vec4<i32>(-10800i, 8953i, u_input.a, 0i))), Struct_1(-_wgslsmith_clamp_vec4_i32(global0.a, global0.a, global0.a) | global0.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -875f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1243f), var_1, !arg_1.e))))));
    let var_3 = Struct_1(global0.a);
    let var_4 = arg_1;
    return firstLeadingBit(~_wgslsmith_clamp_u32(u_input.b.x | u_input.c, u_input.b.x ^ firstLeadingBit(u_input.c), u_input.c));
}

fn func_1(arg_0: vec2<f32>) -> vec4<i32> {
    var var_0 = Struct_1(abs(_wgslsmith_div_vec4_i32(vec4<i32>(-14698i, global0.a.x, u_input.a, 1i), vec4<i32>(u_input.a, global0.a.x, global0.a.x, u_input.a))) ^ vec4<i32>(_wgslsmith_div_i32(-global0.a.x, u_input.a), ~countOneBits(-1i), i32(-1i) * -22105i, u_input.a << (u_input.c % 32u)));
    let var_1 = !((true || any(vec4<bool>(true, true, true, true))) && (0u != (select(4294967295u, 36539u, true) | firstLeadingBit(0u))));
    let var_2 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, 0u & u_input.c), countOneBits(~84236u)), ~vec3<u32>(~57068u, u_input.b.x, ~5899u)), 4969u);
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(722f, 113f, global2[_wgslsmith_index_u32(u_input.c, 7u)], global2[_wgslsmith_index_u32(31062u, 7u)]))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1491f, arg_0.x, global2[_wgslsmith_index_u32(0u, 7u)], 144f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-365f, 179f, -739f, global2[_wgslsmith_index_u32(func_2(vec4<bool>(var_1, var_1, var_1, true), Struct_2(vec4<f32>(global2[_wgslsmith_index_u32(37014u, 7u)], 1158f, 1078f, global2[_wgslsmith_index_u32(0u, 7u)]), arg_0.x, vec3<i32>(-2147483647i, 1i, 44228i), arg_0.x, var_1)), 7u)])) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2[_wgslsmith_index_u32(u_input.c, 7u)], -470f, -1807f, 1000f), vec4<f32>(-357f, -901f, 375f, -124f))), vec4<f32>(946f, 123f, 614f, arg_0.x)))))), any(!vec4<bool>(true, all(vec4<bool>(var_1, true, true, false)), true, true))));
    global3 = select(~u_input.b.x, var_2.x, any(vec2<bool>(!var_1, var_1)) || all(select(select(vec3<bool>(false, var_1, var_1), vec3<bool>(var_1, false, var_1), vec3<bool>(true, var_1, var_1)), vec3<bool>(false, true, false), vec3<bool>(var_1, true, false))));
    return select(var_0.a, reverseBits(global0.a & ~global0.a), vec4<bool>(true, true, true, true));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<u32>) -> vec4<i32> {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_add_i32(-10271i, -(~func_1(vec2<f32>(-404f, arg_2.b)).x));
    var var_2 = select(vec4<u32>(~u_input.c, ~_wgslsmith_add_u32(0u, arg_3.x), ~_wgslsmith_add_u32(0u, ~21739u), _wgslsmith_mult_u32(firstTrailingBit(arg_3.x | 34081u), ~arg_3.x)), ~(~max(select(vec4<u32>(arg_3.x, 71670u, 4294967295u, arg_3.x), vec4<u32>(19257u, 29283u, u_input.c, 0u), vec4<bool>(arg_2.e, true, false, false)), vec4<u32>(u_input.c, u_input.b.x, u_input.b.x, arg_3.x))), true);
    global1 = u_input.a;
    let var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(-_wgslsmith_sub_i32(arg_1.a.x << (arg_3.x % 32u), _wgslsmith_clamp_i32(45940i, 2147483647i, -14549i)), u_input.a, _wgslsmith_sub_i32(~_wgslsmith_div_i32(-2147483647i, -2147483647i), 66405i)), _wgslsmith_div_vec3_i32(vec3<i32>(~1i, var_1, ~(-u_input.a)), ~vec3<i32>(-19823i, -1i, 1i) & firstLeadingBit(vec3<i32>(arg_1.a.x, 81245i, -2153i))));
    return vec4<i32>(1i, 1i, func_3(-(~(-2147483647i)), 28154i, func_4(arg_1, arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b))).x, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(2147483647i, var_1) >> (u_input.b % vec2<u32>(32u))), vec2<i32>(_wgslsmith_clamp_i32(var_0.a.x, -2147483647i, 2147483647i), 1249i)), arg_2.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(356f)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(15965u, u_input.c), abs(69401u)), 7u)])));
    let var_1 = Struct_1(func_5(Struct_1(-vec4<i32>(-25767i, global0.a.x, global0.a.x, u_input.a)), func_4(Struct_1(func_1(var_0)), Struct_2(vec4<f32>(1484f, global2[_wgslsmith_index_u32(u_input.b.x, 7u)], 606f, -1083f), var_0.x, _wgslsmith_sub_vec3_i32(vec3<i32>(global0.a.x, -1i, u_input.a), vec3<i32>(0i, u_input.a, global0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -989f), any(vec4<bool>(false, true, false, true)))), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(u_input.b.x, 7u)])), _wgslsmith_div_f32(2053f, global2[_wgslsmith_index_u32(u_input.b.x, 7u)]), _wgslsmith_f_op_f32(f32(-1f) * -1102f)), var_0.x, func_1(var_0).xyx, var_0.x, true), ~vec3<u32>(firstLeadingBit(0u), ~u_input.b.x, u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(min(~(~(~vec3<u32>(u_input.b.x, 15983u, 1u))), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.c << (u_input.c % 32u), ~u_input.c), (vec3<u32>(u_input.c, u_input.b.x, 53657u) >> (vec3<u32>(56787u, u_input.c, u_input.b.x) % vec3<u32>(32u))) & _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), vec3<u32>(0u, u_input.c, u_input.b.x)))), ~u_input.b, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 937f, -941f) * vec3<f32>(450f, 2153f, global2[_wgslsmith_index_u32(41568u, 7u)])) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, var_0.x, 351f))))))));
}


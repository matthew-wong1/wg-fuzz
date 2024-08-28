struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(10376u), Struct_1(4294967295u), Struct_1(0u), Struct_1(1u), Struct_1(0u), Struct_1(1u), Struct_1(4294967295u), Struct_1(4742u), Struct_1(1u), Struct_1(1u), Struct_1(78499u), Struct_1(19070u), Struct_1(4294967295u), Struct_1(46980u), Struct_1(0u), Struct_1(10584u), Struct_1(0u), Struct_1(0u), Struct_1(4294967295u), Struct_1(2438u), Struct_1(1u), Struct_1(143020u), Struct_1(1u));

var<private> global1: array<Struct_1, 14>;

var<private> global2: vec2<u32> = vec2<u32>(1326u, 5422u);

var<private> global3: vec3<f32> = vec3<f32>(-156f, 1286f, 1058f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<f32>) -> vec3<f32> {
    var var_0 = ~vec2<u32>(86453u, global2.x) & ~u_input.a.xz;
    global0 = array<Struct_1, 25>();
    let var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(1i, firstTrailingBit(i32(-1i) * -66632i)), 1i, 45046i), select(select(abs(vec3<i32>(1i, 1i, 1i)), vec3<i32>(_wgslsmith_sub_i32(9260i, 0i), -2147483647i, i32(-1i) * -1869i), !(71411u <= var_0.x)), vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-595i, -25561i, 0i, -44413i), vec4<i32>(-2147483647i, -31924i, -1i, -2147483647i)), ~(~(-1i)), 1i), false));
    let var_2 = arg_1.x == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_0.x, -2310f)), _wgslsmith_f_op_f32(min(arg_0.x, 654f))));
    let var_3 = all(select(vec3<bool>(var_2 || var_2, true, !any(vec3<bool>(var_2, true, false))), select(!(!vec3<bool>(true, var_2, var_2)), select(!vec3<bool>(var_2, false, true), !vec3<bool>(var_2, false, var_2), true), true), false));
    return _wgslsmith_f_op_vec3_f32(trunc(arg_1.yxw));
}

fn func_2() -> Struct_1 {
    var var_0 = firstLeadingBit(vec3<i32>(1i, 1i, 1i));
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1676f, 511f, -1349f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(679f, -279f, 1187f), vec3<f32>(global3.x, -416f, -1494f)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3.x, global3.x, -554f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global3.x, global3.x, -1000f))))) * _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-209f, global3.x, -607f) * vec3<f32>(407f, global3.x, -750f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 1259f, global3.x, global3.x)))))) * vec3<f32>(_wgslsmith_f_op_f32(sign(497f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-993f * _wgslsmith_f_op_f32(step(global3.x, 340f))) * global3.x), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global3.x, global3.x, -1158f), vec3<f32>(1000f, 238f, global3.x))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-262f, -618f, global3.x, global3.x), vec4<f32>(global3.x, -604f, 1071f, -723f), vec4<bool>(false, false, false, false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, 1417f, global3.x, global3.x) * vec4<f32>(global3.x, -1443f, 608f, 1473f)))))).x));
    global3 = vec3<f32>(494f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1130f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1077f)))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_div_f32(global3.x, global3.x)))), _wgslsmith_f_op_vec3_f32(func_3(vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, -677f, global3.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(402f, global3.x, 299f, -1105f)))).x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1647f * global3.x), 1638f), _wgslsmith_f_op_f32(f32(-1f) * -294f)), vec4<f32>(496f, _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, -1343f, global3.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3.x, global3.x, global3.x, global3.x), vec4<f32>(-1084f, global3.x, -739f, global3.x))))).x, 186f, _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(floor(-327f)))))).x);
    var_0 = _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(_wgslsmith_div_i32(var_0.x, ~0i), _wgslsmith_mult_i32(-2147483647i, 0i), var_0.x)), ~max(vec3<i32>(-1i) * -vec3<i32>(-28409i, 24482i, var_0.x), countOneBits(-vec3<i32>(var_0.x, var_0.x, var_0.x))), vec3<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(52436i, 2147483647i, -48987i) ^ vec3<i32>(9035i, 532i, var_0.x)), vec3<i32>(var_0.x, ~var_0.x, 1i << (u_input.a.x % 32u))), 55397i, abs(~_wgslsmith_add_i32(-2147483647i, var_0.x))));
    let var_1 = _wgslsmith_clamp_u32(~abs(u_input.a.x), global2.x, u_input.a.x);
    return Struct_1(var_1);
}

fn func_1() -> i32 {
    let var_0 = -665f;
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1755f + -1219f), _wgslsmith_f_op_f32(abs(269f)), true)), select(false, false, 966f >= var_0))), 1f, -1273f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-836f, -366f, var_0, 2062f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(1398f, var_0, global3.x, -207f), vec4<f32>(598f, var_0, var_0, var_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, global3.x, global3.x, 192f) + vec4<f32>(838f, 1540f, global3.x, var_0)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1060f), _wgslsmith_f_op_f32(step(global3.x, -977f)), _wgslsmith_f_op_f32(903f + -1529f), -1058f) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3.x, 994f, -1263f, global3.x)))), any(vec3<bool>(true, true, true)))));
    let var_2 = func_2();
    var var_3 = func_2();
    var var_4 = func_2();
    return _wgslsmith_mod_i32(14024i, _wgslsmith_div_i32(i32(-1i) * -countOneBits(1i), ~(~_wgslsmith_clamp_i32(-7755i, 2147483647i, 2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(-1i, func_1(), false);
    var var_1 = !vec3<bool>(true, !(all(vec4<bool>(true, false, true, false)) && all(vec4<bool>(false, true, false, false))), any(vec2<bool>(true, true)));
    let var_2 = vec3<bool>(all(vec3<bool>(false, var_1.x, true)) | select(true, var_1.x, var_1.x), true, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(max(max(_wgslsmith_clamp_vec4_i32(min(vec4<i32>(-1i, var_0, 29030i, 54683i), vec4<i32>(-2147483647i, 35865i, 0i, -1i)), _wgslsmith_add_vec4_i32(vec4<i32>(var_0, var_0, -37040i, var_0), vec4<i32>(65150i, var_0, var_0, var_0)), vec4<i32>(var_0, var_0, var_0, -63974i)), abs(select(vec4<i32>(0i, var_0, -2147483647i, 2147483647i), vec4<i32>(var_0, 1i, var_0, var_0), false))), vec4<i32>(firstLeadingBit(_wgslsmith_div_i32(-2147483647i, var_0)), firstLeadingBit(var_0), ~(i32(-1i) * -61664i), -_wgslsmith_clamp_i32(47561i, 13313i, var_0))));
}


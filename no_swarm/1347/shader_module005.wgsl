struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec2<f32>,
    d: f32,
    e: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(vec3<f32>(1156f, 211f, 1088f)), Struct_3(vec3<f32>(-1044f, 1083f, 761f)), Struct_3(vec3<f32>(-863f, 177f, 1638f)), Struct_3(vec3<f32>(-196f, 692f, 552f)), Struct_3(vec3<f32>(-1019f, -995f, 1000f)), Struct_3(vec3<f32>(-123f, -302f, 266f)), Struct_3(vec3<f32>(162f, -1249f, 835f)), Struct_3(vec3<f32>(707f, 1312f, 2083f)), Struct_3(vec3<f32>(-1829f, -586f, 937f)), Struct_3(vec3<f32>(492f, -270f, -1346f)), Struct_3(vec3<f32>(306f, 260f, -1611f)), Struct_3(vec3<f32>(2511f, 105f, -660f)), Struct_3(vec3<f32>(368f, -1000f, 1645f)), Struct_3(vec3<f32>(341f, 370f, 917f)), Struct_3(vec3<f32>(-641f, -489f, -635f)), Struct_3(vec3<f32>(640f, 762f, 469f)));

var<private> global1: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(4365u, 4294967295u, 32319u, 84442u), vec4<u32>(4294967295u, 0u, 15703u, 98901u), vec4<u32>(40962u, 0u, 0u, 26099u), vec4<u32>(25352u, 29859u, 4294967295u, 1u), vec4<u32>(1u, 0u, 4294967295u, 19867u), vec4<u32>(0u, 31726u, 0u, 0u), vec4<u32>(12222u, 1539u, 4294967295u, 0u), vec4<u32>(1u, 32349u, 4294967295u, 0u), vec4<u32>(50710u, 0u, 3768u, 37398u), vec4<u32>(1u, 25172u, 0u, 0u), vec4<u32>(128027u, 5803u, 32305u, 12862u), vec4<u32>(0u, 37368u, 1u, 16326u), vec4<u32>(0u, 79377u, 4294967295u, 4294967295u), vec4<u32>(52377u, 41347u, 1u, 0u), vec4<u32>(75395u, 4294967295u, 17945u, 29846u), vec4<u32>(4294967295u, 83627u, 56929u, 12792u), vec4<u32>(4576u, 1u, 0u, 1u), vec4<u32>(4294967295u, 0u, 4294967295u, 41105u), vec4<u32>(103435u, 4294967295u, 63566u, 1u), vec4<u32>(25689u, 1u, 4294967295u, 1u), vec4<u32>(4294967295u, 102564u, 3136u, 0u), vec4<u32>(0u, 0u, 4294967295u, 1u), vec4<u32>(33339u, 159817u, 4294967295u, 0u), vec4<u32>(27300u, 34818u, 4722u, 42675u));

var<private> global2: array<f32, 21> = array<f32, 21>(344f, 1000f, 2608f, 486f, 1093f, 640f, -1000f, -1000f, -2494f, -777f, 1172f, 355f, -2710f, 228f, 1298f, -824f, -906f, -465f, -459f, -1381f, -1152f);

var<private> global3: vec3<u32> = vec3<u32>(1u, 0u, 4294967295u);

var<private> global4: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(121f, global2[_wgslsmith_index_u32(69211u, 21u)], global2[_wgslsmith_index_u32(1u, 21u)], 1029f))))), vec4<f32>(-1209f, -974f, global2[_wgslsmith_index_u32(max(global3.x, 4294967295u), 21u)], 1000f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(20902u, 21u)], 1020f, global2[_wgslsmith_index_u32(1u, 21u)], 228f), vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 21u)], global2[_wgslsmith_index_u32(70448u, 21u)], global2[_wgslsmith_index_u32(18869u, 21u)], -1978f)) * vec4<f32>(701f, global2[_wgslsmith_index_u32(21422u, 21u)], global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(4294967295u, 21u)])) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(global3.x, 21u)], -1000f, -227f, global2[_wgslsmith_index_u32(global3.x, 21u)]) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(global3.x, 21u)], 1331f, global2[_wgslsmith_index_u32(36744u, 21u)], 1105f) * vec4<f32>(842f, global2[_wgslsmith_index_u32(61298u, 21u)], -224f, global2[_wgslsmith_index_u32(global3.x, 21u)]))))), Struct_1(any(vec3<bool>(-1i < u_input.a, true, true)), -(i32(-1i) * -u_input.a), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-291f, -512f), _wgslsmith_div_vec2_f32(vec2<f32>(1000f, global2[_wgslsmith_index_u32(global3.x, 21u)]), vec2<f32>(global2[_wgslsmith_index_u32(global3.x, 21u)], global2[_wgslsmith_index_u32(global3.x, 21u)])), vec2<bool>(true, true))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(2110f, global2[_wgslsmith_index_u32(global3.x, 21u)]), vec2<f32>(246f, global2[_wgslsmith_index_u32(global3.x, 21u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(global3.x, 21u)], global2[_wgslsmith_index_u32(global3.x, 21u)])), select(true, false, false))))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u << (0u % 32u), 21u)])))), ~(~34u));
    let var_1 = Struct_5(Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(var_0.e, 21u)], _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(28845u, 21u)])), global2[_wgslsmith_index_u32(var_0.e, 21u)]))), 1660f, _wgslsmith_add_vec3_u32(~countOneBits(reverseBits(vec3<u32>(var_0.e, var_0.e, var_0.e))), _wgslsmith_mult_vec3_u32(~vec3<u32>(global3.x, var_0.e, var_0.e), select(select(vec3<u32>(var_0.e, 1u, global3.x), vec3<u32>(global3.x, global3.x, global3.x), var_0.b.c.xwx), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 92107u, 0u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(43706u, 0u, global3.x)), !vec3<bool>(true, true, var_0.b.c.x)))));
    var var_2 = Struct_3(var_0.a.wyx);
    var var_3 = 4294967295u;
    var var_4 = ((_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(max(var_1.c.x, 4294967295u), 21u)]) == _wgslsmith_f_op_f32(f32(-1f) * -1000f)) != var_0.b.a) & true;
    return global3.x;
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: Struct_4, arg_3: vec2<f32>) -> vec2<u32> {
    let var_0 = !(!select(!(!arg_0.b.c.ywz), select(vec3<bool>(arg_2.b.a, arg_0.b.c.x, true), select(arg_0.b.c.ywx, vec3<bool>(arg_0.b.a, false, false), false), !arg_0.b.c.yyz), !select(arg_0.b.c.zyw, vec3<bool>(arg_0.b.c.x, false, false), arg_2.b.c.yzx)));
    return ~global3.xx;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<u32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -962f);
    var var_1 = min(1i, ~(-27106i >> (_wgslsmith_add_u32(~global3.x, arg_0.x ^ global3.x) % 32u)));
    let var_2 = 73731u;
    let var_3 = func_4(Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0, global2[_wgslsmith_index_u32(0u, 21u)], global2[_wgslsmith_index_u32(var_2, 21u)], global2[_wgslsmith_index_u32(1u, 21u)]))) - vec4<f32>(1000f, 313f, var_0, -146f))), Struct_1(!any(vec2<bool>(false, true)), ~u_input.a, select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(33591u, 21u)]))), _wgslsmith_f_op_f32(max(var_0, _wgslsmith_div_f32(952f, var_0)))), _wgslsmith_f_op_f32(-1208f * var_0), func_3()), global2[_wgslsmith_index_u32(5718u, 21u)], Struct_4(vec4<f32>(-258f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(1u, 21u)], -1093f)))), global2[_wgslsmith_index_u32(12428u, 21u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + -1307f) - -1394f)), Struct_1(~1u > ~var_2, 1i | ~u_input.a, vec4<bool>(all(vec4<bool>(true, true, true, true)), true, true, false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1036f - global2[_wgslsmith_index_u32(arg_0.x, 21u)]), _wgslsmith_f_op_f32(sign(324f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2065f, global2[_wgslsmith_index_u32(4294967295u, 21u)]), vec2<f32>(global2[_wgslsmith_index_u32(var_2, 21u)], var_0), vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1457f, var_0)))), -961f, ~arg_0.x | var_2), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, global2[_wgslsmith_index_u32(10815u, 21u)]), vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 21u)], 418f), vec2<bool>(false, true))))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(267f, global2[_wgslsmith_index_u32(var_2, 21u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -852f) - vec2<f32>(-1044f, var_0)), global2[_wgslsmith_index_u32(1u, 21u)] <= -257f)))));
    let var_4 = Struct_1(!all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), false)), u_input.a ^ abs(select(_wgslsmith_clamp_i32(u_input.a, 46609i, u_input.a), 26627i, true)), !vec4<bool>(all(vec3<bool>(false, false, true)), !all(vec2<bool>(true, false)), true | select(true, false, true), all(vec3<bool>(true, false, true))));
    return !select(vec3<bool>(all(select(var_4.c, vec4<bool>(true, true, true, false), var_4.c)), true, all(!vec4<bool>(true, var_4.c.x, true, var_4.c.x))), select(vec3<bool>(all(vec4<bool>(var_4.a, var_4.c.x, var_4.c.x, true)), var_4.b <= var_4.b, true), vec3<bool>(var_4.c.x, true, false), true), var_4.c.x);
}

fn func_1(arg_0: bool) -> u32 {
    global1 = array<vec4<u32>, 24>();
    var var_0 = global3.x;
    global0 = array<Struct_3, 16>();
    let var_1 = !(!select(vec3<bool>(all(vec2<bool>(false, arg_0)), arg_0, false), func_2(~vec4<u32>(global3.x, global3.x, global3.x, global3.x), vec2<u32>(57458u, 59992u)), !select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, true, true), false)));
    global2 = array<f32, 21>();
    return ~func_4(Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2[_wgslsmith_index_u32(global3.x, 21u)], global2[_wgslsmith_index_u32(global3.x, 21u)], -209f, global2[_wgslsmith_index_u32(global3.x, 21u)]), vec4<f32>(577f, global2[_wgslsmith_index_u32(global3.x, 21u)], 719f, global2[_wgslsmith_index_u32(0u, 21u)]), false)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-724f, global2[_wgslsmith_index_u32(57308u, 21u)], global2[_wgslsmith_index_u32(global3.x, 21u)], -1500f))), Struct_1(all(vec4<bool>(var_1.x, arg_0, var_1.x, true)), ~90176i, select(vec4<bool>(var_1.x, false, arg_0, false), vec4<bool>(arg_0, var_1.x, var_1.x, var_1.x), false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, -736f)))), -1443f, ~countOneBits(global3.x)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(81942u, 21u)]), Struct_4(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(global3.x, 21u)], -1436f, -299f, -882f)))), Struct_1(all(vec3<bool>(var_1.x, false, arg_0)), u_input.a, select(vec4<bool>(arg_0, var_1.x, var_1.x, arg_0), vec4<bool>(false, arg_0, true, arg_0), arg_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 21u)], global2[_wgslsmith_index_u32(1u, 21u)]) * vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 21u)], 118f))), global2[_wgslsmith_index_u32(0u, 21u)], ~(~58363u)), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(40942u, 21u)]), -894f)), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, ~global3.x), 21u)])).x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(select(select(vec4<i32>(u_input.a, u_input.a, 2147483647i, 1i), vec4<i32>(-1i, 0i, u_input.a, 0i), vec4<bool>(true, false, false, true)), select(vec4<i32>(36667i, 1i, 5158i, u_input.a), vec4<i32>(2147483647i, 1i, 6319i, u_input.a), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), false)), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, u_input.a, 2147483647i, u_input.a), vec4<i32>(-5655i, 30301i, -2147483647i, u_input.a), vec4<i32>(u_input.a, u_input.a, -2147483647i, -14014i)), vec4<i32>(u_input.a, u_input.a, 0i, u_input.a))) ^ _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a, _wgslsmith_add_i32(u_input.a, -33569i)), -1i & _wgslsmith_mod_i32(u_input.a, -1791i)), _wgslsmith_div_i32(_wgslsmith_div_i32(~u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -41586i, 2147483647i, 0i), vec4<i32>(u_input.a, -6002i, -2147483647i, u_input.a))), ~firstTrailingBit(u_input.a)) & -37662i);
    global2 = array<f32, 21>();
    let var_1 = false;
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~global3.x, 21u)] + -1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1290f))), global2[_wgslsmith_index_u32(func_1(!var_1), 21u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(203f)) * _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(206u, 21u)])))))), Struct_1(var_1, var_0.x, select(select(!vec4<bool>(var_1, true, var_1, true), !vec4<bool>(var_1, var_1, false, var_1), var_1), vec4<bool>(false, true, 4294967295u > global3.x, any(vec2<bool>(false, true))), vec4<bool>(true, false, var_1 | var_1, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(global3.x, 21u)], 1488f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(820f, global2[_wgslsmith_index_u32(29015u, 21u)])))) - vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global3.x, 21u)] - -738f), 1f), -2643f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1395f, global2[_wgslsmith_index_u32(73205u, 21u)])), global3.x);
    let var_3 = vec4<bool>(true, -2353f < global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(global3.x, 1u), _wgslsmith_dot_vec2_u32(global3.yy, global3.yy)) | (0u << (var_2.e % 32u)), 21u)], any(vec3<bool>(var_1 & true, var_1, (1i | var_0.x) > reverseBits(1i))), var_1);
    let var_4 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-492f, -428f))), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3.x, var_2.e), 21u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -337f), var_2.d) + 934f)), vec3<f32>(696f, -548f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 21u)]), global2[_wgslsmith_index_u32(~5580u, 21u)])));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_0.x, min(1i, _wgslsmith_div_i32(-19507i, _wgslsmith_mult_i32(31182i, -38858i))), -2918i, ~max(i32(-1i) * -42746i, var_2.b.b)), var_4.x, var_2.e);
}


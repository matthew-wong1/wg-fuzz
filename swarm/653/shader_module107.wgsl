struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14> = array<i32, 14>(-14486i, 0i, 7520i, -63442i, i32(-2147483648), -1446i, i32(-2147483648), i32(-2147483648), -53563i, -1i, -1i, -10959i, 1i, 1i);

var<private> global1: array<f32, 25>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> vec4<bool> {
    global1 = array<f32, 25>();
    let var_0 = Struct_1(!select(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 25u)] < -1146f, false), vec3<bool>(true, true, true), any(select(vec2<bool>(false, false), vec2<bool>(false, true), false))), true, ~_wgslsmith_div_i32(-global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, 1u), 14u)], 1i));
    var var_1 = (~_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(-7137i, global0[_wgslsmith_index_u32(21477u, 14u)], 24628i, 700i)), vec4<i32>(-25155i, global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(u_input.b, 14u)], -24100i)) ^ _wgslsmith_mod_vec4_i32(-vec4<i32>(var_0.c, 0i, var_0.c, var_0.c) >> (vec4<u32>(55097u, 4294967295u, u_input.b, 1u) % vec4<u32>(32u)), vec4<i32>(select(-46801i, 42143i, false), global0[_wgslsmith_index_u32(u_input.b, 14u)] >> (u_input.b % 32u), 25987i, countOneBits(var_0.c)))) << (vec4<u32>(u_input.b, ~19111u, u_input.b, 0u) % vec4<u32>(32u));
    let var_2 = ~81764u;
    let var_3 = all(select(!vec4<bool>(!var_0.a.x, false, !var_0.a.x, true), !(!select(vec4<bool>(true, var_0.a.x, true, false), vec4<bool>(true, true, var_0.b, var_0.a.x), false)), vec4<bool>(!var_0.a.x, all(!vec4<bool>(false, false, var_0.a.x, true)), var_0.a.x, true)));
    return vec4<bool>(u_input.a == firstTrailingBit(global0[_wgslsmith_index_u32(u_input.b, 14u)]), false, var_0.b | (true == all(select(vec4<bool>(false, var_0.a.x, var_3, true), vec4<bool>(var_3, false, false, true), vec4<bool>(var_3, false, var_0.a.x, true)))), _wgslsmith_f_op_f32(floor(-227f)) == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(1u, 25u)]))))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: i32) -> vec2<i32> {
    global1 = array<f32, 25>();
    let var_0 = vec3<u32>(~min(~1u, ~(~1u)), ~1u, 4294967295u);
    global1 = array<f32, 25>();
    return abs(abs(~(~(~vec2<i32>(36331i, 35173i)))));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: i32, arg_3: bool) -> vec2<i32> {
    global0 = array<i32, 14>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(813f, _wgslsmith_f_op_f32(round(151f)))));
    var var_1 = arg_2;
    let var_2 = Struct_1(vec3<bool>(arg_3, false, true), !any(func_2()), -18502i);
    var var_3 = -(~func_3(var_2, func_2(), -(~(-64730i))));
    return ~vec2<i32>(47441i, min(countOneBits(i32(-1i) * -1i), -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, arg_2, -1i), vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(5839u, 14u)], 2147483647i))));
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: vec2<i32>, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_1(vec3<bool>(arg_3, any(!(!vec3<bool>(arg_3, false, true))), select(arg_1, func_2().x, any(vec2<bool>(arg_1, false)))), global1[_wgslsmith_index_u32(u_input.b, 25u)] == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(27210u, 25u)]))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-2023f, global1[_wgslsmith_index_u32(u_input.b, 25u)])), 673f, true))), _wgslsmith_mod_i32(~(-2147483647i) ^ max(1i, arg_2.x << (1u % 32u)), _wgslsmith_mod_i32(-6270i, i32(-1i) * -arg_2.x)));
    global0 = array<i32, 14>();
    let var_1 = u_input.b;
    var_0 = Struct_1(vec3<bool>(!select(arg_1, true, true), all(!func_2().xx), !all(var_0.a) || any(select(vec2<bool>(true, arg_1), var_0.a.xz, arg_3))), !(!any(!vec2<bool>(true, arg_3))), max(1i, 2147483647i));
    let var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1277f, global1[_wgslsmith_index_u32(arg_0.x, 25u)]))), vec2<f32>(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.b, 25u)])), _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(var_1, 25u)]))))) * _wgslsmith_div_vec2_f32(vec2<f32>(370f, _wgslsmith_f_op_f32(-2025f - global1[_wgslsmith_index_u32(35926u, 25u)])), vec2<f32>(_wgslsmith_f_op_f32(min(1435f, global1[_wgslsmith_index_u32(1818u, 25u)])), _wgslsmith_f_op_f32(f32(-1f) * -521f)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f)))));
    return Struct_1(func_2().zyz, any(func_2().xw) | true, arg_2.x);
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2778f + global1[_wgslsmith_index_u32(select(u_input.b, u_input.b, select(arg_2.x, true, false)), 25u)]), 1946f));
    global0 = array<i32, 14>();
    let var_1 = ~(~_wgslsmith_add_vec3_i32(abs(firstLeadingBit(vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 14u)], 12494i, global0[_wgslsmith_index_u32(u_input.b, 14u)]))), vec3<i32>(65400i, 2147483647i, arg_3.c) | vec3<i32>(0i, -1i, 2147483647i)));
    var var_2 = true;
    return Struct_1(vec3<bool>(all(!(!vec4<bool>(true, arg_3.b, false, false))), (all(arg_3.a) == true) && arg_1, !all(vec3<bool>(arg_2.x, arg_2.x, false))), u_input.b > _wgslsmith_add_u32(_wgslsmith_mod_u32(4998u, _wgslsmith_sub_u32(u_input.b, u_input.b)), u_input.b), arg_3.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 14>();
    let var_0 = func_5(firstLeadingBit(-(i32(-1i) * -4352i)), true, select(select(vec2<bool>(any(vec2<bool>(true, true)), false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(all(vec3<bool>(false, true, false)), any(vec3<bool>(true, true, true))), _wgslsmith_sub_i32(_wgslsmith_sub_i32(0i, u_input.a), i32(-1i) * -2147483647i) == ~u_input.a), func_4(~countOneBits(reverseBits(vec3<u32>(u_input.b, u_input.b, u_input.b))), false, func_1(878f, u_input.b, select(u_input.a, ~0i, true), false), true));
    global1 = array<f32, 25>();
    global1 = array<f32, 25>();
    var var_1 = max(var_0.c, 0i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>((select(1i, 10493i, var_0.a.x) ^ ~var_0.c) >> (~10648u % 32u), u_input.a, max(u_input.a, min(_wgslsmith_clamp_i32(u_input.a, var_0.c, u_input.a), 1i)), _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-58544i, 44428i), 2289i), min(var_0.c, abs(8967i)))), vec4<u32>(u_input.b, _wgslsmith_mult_u32(firstLeadingBit(~0u), 16530u), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 5762u, 35390u, 1u), ~vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u)), 1u), vec3<i32>(var_0.c, _wgslsmith_mod_i32(var_0.c, 0i), _wgslsmith_sub_i32(u_input.a, var_0.c)), global1[_wgslsmith_index_u32(1u, 25u)], _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(21457u, 1u), 25u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(64272u, 25u)])))), _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(min(u_input.b, u_input.b), 25u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 25u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 25u)], global1[_wgslsmith_index_u32(u_input.b, 25u)], global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(u_input.b, 25u)]))), vec4<f32>(-658f, global1[_wgslsmith_index_u32(u_input.b, 25u)], 1456f, global1[_wgslsmith_index_u32(49052u, 25u)]))))));
}


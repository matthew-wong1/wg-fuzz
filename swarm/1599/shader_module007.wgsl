struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> bool {
    let var_0 = _wgslsmith_sub_u32(23611u, 0u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1280f + 1450f));
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    return !all(!(!select(vec4<bool>(false, arg_3.a.x, arg_1.a.x, true), vec4<bool>(false, arg_3.a.x, arg_1.a.x, arg_3.a.x), arg_1.a.x)));
}

fn func_2() -> bool {
    var var_0 = Struct_1(vec2<bool>(true & ((global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(55047u, 10u)], 10u)], 10u)], 10u)] & 15230u) <= _wgslsmith_div_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(1u, 10u)])), any(vec2<bool>(true, func_3(u_input.a.xy, Struct_1(vec2<bool>(true, false)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], Struct_1(vec2<bool>(true, false)))))));
    var_0 = Struct_1(var_0.a);
    let var_1 = Struct_1(var_0.a);
    var_0 = Struct_1(var_1.a);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-2207f, 431f, -1000f), vec3<f32>(884f, -1467f, 1215f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1107f, -266f, 1703f) * vec3<f32>(304f, -1254f, 1346f)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-306f, 826f, -341f)))), var_0.a.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-907f, 1294f, 664f) - vec3<f32>(-1000f, 1089f, -611f)))))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(452f, 1709f, 172f), vec3<f32>(673f, 919f, 1077f)))), vec3<f32>(_wgslsmith_f_op_f32(floor(-165f)), -1317f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 345f) + _wgslsmith_f_op_f32(ceil(862f)))))));
    return any(!select(vec3<bool>(true, !var_0.a.x, true), !select(vec3<bool>(true, true, var_1.a.x), vec3<bool>(var_1.a.x, false, false), vec3<bool>(var_0.a.x, var_1.a.x, var_0.a.x)), all(select(vec4<bool>(var_1.a.x, true, false, var_1.a.x), vec4<bool>(var_0.a.x, false, var_0.a.x, var_1.a.x), vec4<bool>(var_0.a.x, true, var_1.a.x, var_0.a.x)))));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: vec3<i32>) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0), -1591f)) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1365f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-875f)) + _wgslsmith_div_f32(arg_0, -1623f)))));
    global0 = array<u32, 10>();
    let var_1 = u_input.b;
    global0 = array<u32, 10>();
    let var_2 = ~(-(~(-select(vec4<i32>(13606i, 1i, 2147483647i, 5626i), vec4<i32>(arg_2.x, 1i, 20710i, arg_2.x), vec4<bool>(false, false, true, true)))));
    return _wgslsmith_sub_vec2_i32(select(vec2<i32>(-(~14280i), abs(2147483647i)), arg_2.yy, false), _wgslsmith_mod_vec2_i32(min(min(u_input.a.xx, var_2.zy) | vec2<i32>(arg_2.x, u_input.e), vec2<i32>(0i, _wgslsmith_div_i32(-24415i, arg_2.x))), _wgslsmith_mult_vec2_i32(select(arg_2.yx, reverseBits(vec2<i32>(-42564i, -67187i)), func_2()), -arg_2.xz)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))) && !any(vec2<bool>(false, false));
    let var_1 = true;
    let var_2 = u_input.a.yz & (func_1(-678f, ~(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)], 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], global0[_wgslsmith_index_u32(1u, 10u)])), -(vec3<i32>(1i, u_input.e, 19386i) ^ vec3<i32>(-28918i, 2147483647i, -2147483647i))) ^ u_input.a.xz);
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    let var_3 = abs(1u) << (~abs(~_wgslsmith_sub_u32(46393u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)], 10u)])) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~(global0[_wgslsmith_index_u32(~var_3, 10u)] ^ countOneBits(15419u)) ^ _wgslsmith_mult_u32(var_3, _wgslsmith_clamp_u32(~0u, _wgslsmith_add_u32(0u, global0[_wgslsmith_index_u32(0u, 10u)]), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)] & 38533u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.e, ~(var_2.x | u_input.e), func_1(354f, countOneBits(vec3<u32>(var_3, global0[_wgslsmith_index_u32(21486u, 10u)], 4071u)), u_input.a).x, var_2.x ^ _wgslsmith_add_i32(23391i, 0i)), vec4<i32>(_wgslsmith_sub_i32(var_2.x, var_2.x), 42179i, -47851i & var_2.x, _wgslsmith_mod_i32(-13467i, u_input.e)) << (_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(143220u, 19788u, 41681u, 29505u), vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)], 49215u, 0u)), vec4<u32>(21182u, var_3, 9795u, global0[_wgslsmith_index_u32(var_3, 10u)])) % vec4<u32>(32u)), select(-vec4<i32>(-41953i, var_2.x, 0i, -1i) ^ max(vec4<i32>(29579i, var_2.x, -26180i, u_input.c), vec4<i32>(-1i, u_input.d, 0i, var_2.x)), countOneBits(vec4<i32>(-1i, 34279i, u_input.d, var_2.x)), vec4<bool>(func_2(), true, var_1, var_1 || false))), vec4<u32>(~global0[_wgslsmith_index_u32(~(global0[_wgslsmith_index_u32(0u, 10u)] ^ 64198u), 10u)], 0u, global0[_wgslsmith_index_u32(~abs(1u), 10u)], ~(~4294967295u) << (~(~global0[_wgslsmith_index_u32(1u, 10u)]) % 32u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1463f)))))), ~5929u | ~(_wgslsmith_sub_u32(4294967295u, 0u) & countOneBits(global0[_wgslsmith_index_u32(var_3, 10u)])));
}


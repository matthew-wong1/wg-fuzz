struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<f32> {
    let var_0 = Struct_1(true);
    let var_1 = select(true & all(!vec4<bool>(var_0.a, var_0.a, var_0.a, false)), all(vec2<bool>(var_0.a, ~u_input.b >= u_input.b)), var_0.a);
    global0 = countOneBits(select(select(~vec4<i32>(global0.x, global0.x, global0.x, 2147483647i), ~select(vec4<i32>(global0.x, global0.x, -43353i, -2147483647i), vec4<i32>(global0.x, global0.x, global0.x, global0.x), var_0.a), !select(vec4<bool>(false, false, var_0.a, false), vec4<bool>(var_1, false, var_1, false), var_0.a)), countOneBits(~vec4<i32>(-2147483647i, -39348i, 22204i, global0.x)), var_0.a));
    let var_2 = Struct_1(!(!any(vec2<bool>(true, true))));
    let var_3 = 1111f;
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3, -316f, var_3) * vec3<f32>(var_3, -712f, var_3)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_3, var_3, 294f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1354f, 718f, var_3) - vec3<f32>(-772f, -705f, var_3))), vec3<bool>(true, all(vec2<bool>(false, false)), true))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, 377f, -1356f)) + vec3<f32>(_wgslsmith_f_op_f32(var_3 * var_3), _wgslsmith_f_op_f32(max(var_3, -531f)), _wgslsmith_f_op_f32(-var_3))))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<bool>) -> bool {
    let var_0 = Struct_1(all(vec3<bool>(!(arg_1.x & true), false, _wgslsmith_clamp_u32(u_input.a.x, 16603u, u_input.a.x) >= u_input.a.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1406f, -658f, -831f) * vec3<f32>(-1603f, 808f, 749f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-551f, -403f, 187f) * vec3<f32>(-459f, 1000f, -269f)), select(vec3<bool>(arg_1.x, true, var_0.a), vec3<bool>(true, arg_1.x, true), false))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1510f, -636f, 1308f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1048f, 768f, 1814f) + vec3<f32>(-949f, 1726f, -137f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(606f, 453f, -386f) - vec3<f32>(1640f, 1000f, 527f)) * vec3<f32>(1459f, -1590f, -813f))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(ceil(697f)), _wgslsmith_f_op_f32(f32(-1f) * -1446f), _wgslsmith_f_op_f32(round(-438f)))))), select(!(!vec3<bool>(false, false, arg_1.x)), !select(!vec3<bool>(var_0.a, var_0.a, false), select(vec3<bool>(true, false, false), vec3<bool>(false, var_0.a, arg_1.x), vec3<bool>(var_0.a, var_0.a, var_0.a)), all(vec4<bool>(false, false, true, true))), all(vec3<bool>(true, true, var_0.a)) && any(arg_1))));
    global0 = ~_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, arg_0.x, 1i, -8471i), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, global0.x, arg_0.x, -414i), vec4<i32>(-20130i, 1i, arg_0.x, arg_0.x)), ~vec4<i32>(-67753i, global0.x, -1i, 2147483647i)), select(vec4<i32>(global0.x, arg_0.x, arg_0.x, -2147483647i), vec4<i32>(2147483647i, 4357i, 0i, arg_0.x), vec4<bool>(true, arg_1.x, true, true)) << (vec4<u32>(4294967295u, 0u, 33590u, 668u) % vec4<u32>(32u))), ~countOneBits(vec4<i32>(arg_0.x, 0i, global0.x, -2147483647i)));
    global0 = abs((vec4<i32>(global0.x, _wgslsmith_div_i32(arg_0.x, arg_0.x), 1i >> (u_input.a.x % 32u), 33494i) | reverseBits(vec4<i32>(36654i, -53677i, global0.x, 48569i))) & ~_wgslsmith_div_vec4_i32(vec4<i32>(9397i, 0i, 17534i, -2147483647i) >> (vec4<u32>(u_input.a.x, u_input.b, 18230u, u_input.a.x) % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(0i, global0.x, 52116i, 24091i))));
    let var_2 = var_0;
    return true;
}

fn func_1(arg_0: u32) -> vec2<f32> {
    var var_0 = Struct_1(true);
    let var_1 = Struct_1(all(select(vec2<bool>(func_2(vec2<i32>(global0.x, -20731i), vec2<bool>(false, true)), var_0.a), !(!vec2<bool>(var_0.a, var_0.a)), true)));
    var var_2 = Struct_1(all(select(select(select(vec3<bool>(false, var_0.a, false), vec3<bool>(false, var_0.a, var_0.a), vec3<bool>(true, true, true)), select(vec3<bool>(var_0.a, var_1.a, var_0.a), vec3<bool>(true, false, var_0.a), false), var_0.a), !(!vec3<bool>(false, var_0.a, var_1.a)), true)));
    let var_3 = var_1;
    global0 = ~abs(-(~vec4<i32>(-1i, global0.x, global0.x, global0.x)));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(146f * -736f)))), _wgslsmith_f_op_f32(f32(-1f) * -604f)));
}

fn func_4(arg_0: vec2<f32>, arg_1: bool) -> vec4<i32> {
    let var_0 = Struct_1(arg_1);
    var var_1 = Struct_1(select(!arg_1, true, var_0.a));
    let var_2 = _wgslsmith_mod_u32(~_wgslsmith_mult_u32(firstTrailingBit(u_input.b), u_input.b) << (u_input.a.x % 32u), ~(~min(min(u_input.b, 37264u), u_input.a.x >> (u_input.b % 32u))));
    var var_3 = vec3<f32>(1080f, -870f, _wgslsmith_f_op_f32(-2790f + _wgslsmith_f_op_vec2_f32(func_1(1u)).x));
    var var_4 = _wgslsmith_f_op_f32(min(arg_0.x, var_3.x));
    return -abs(-(select(vec4<i32>(-31060i, global0.x, 1i, global0.x), vec4<i32>(2147483647i, -2147483647i, -6813i, -10089i), arg_1) & -vec4<i32>(global0.x, global0.x, 2147483647i, global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~vec4<i32>(71487i, -2723i, _wgslsmith_clamp_i32(-2147483647i, -21487i, global0.x | (i32(-1i) * -41485i)), -_wgslsmith_mult_i32(2147483647i, global0.x));
    global0 = func_4(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(1u, u_input.a.x)), max(vec2<u32>(68276u, 7869u), vec2<u32>(u_input.b, 2976u))))), true);
    var var_0 = Struct_1(29765i == _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, global0.x, 19228i, 25227i) & max(vec4<i32>(-1i, global0.x, 1i, global0.x), vec4<i32>(0i, 1328i, global0.x, global0.x)), select(countOneBits(vec4<i32>(0i, -17937i, 0i, global0.x)), reverseBits(vec4<i32>(global0.x, global0.x, global0.x, 1i)), true)));
    var var_1 = select(!vec2<bool>(any(!vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a)), var_0.a), !select(vec2<bool>(func_2(vec2<i32>(-15324i, 0i), vec2<bool>(var_0.a, var_0.a)), false), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, var_0.a)), vec2<bool>(var_0.a || var_0.a, !var_0.a)), select(!select(!vec2<bool>(true, var_0.a), vec2<bool>(false, true), vec2<bool>(false, false)), !select(!vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, var_0.a), 5366u < u_input.b), !select(select(vec2<bool>(var_0.a, true), vec2<bool>(var_0.a, var_0.a), var_0.a), select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, false), var_0.a), vec2<bool>(false, false))));
    var_0 = Struct_1(!(!all(vec2<bool>(true, var_0.a))) || !(_wgslsmith_f_op_f32(trunc(1708f)) <= -319f));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1659f) - _wgslsmith_div_f32(-480f, 889f)) - 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_1(max(u_input.a.x, 1u))).x * _wgslsmith_f_op_f32(f32(-1f) * -641f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(953f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2, _wgslsmith_f_op_f32(floor(var_2)), _wgslsmith_f_op_f32(round(-351f))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_2, var_2)), 877f), _wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-159f, 279f))))))));
}


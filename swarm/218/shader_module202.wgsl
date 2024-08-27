struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: f32,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec2<bool>) -> bool {
    var var_0 = 70723u;
    var var_1 = Struct_1(any(select(vec3<bool>(arg_0.x && arg_0.x, arg_0.x, arg_0.x), vec3<bool>(true, false, false), !select(vec3<bool>(false, true, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(true, true, true)))), arg_0.x, vec4<bool>(all(vec3<bool>(true, any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), true)), any(vec4<bool>(false, arg_0.x, any(vec2<bool>(false, true)), !arg_0.x)), any(select(!arg_0, !vec2<bool>(arg_0.x, false), true)), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -564f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(243f - -379f)))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d, 1000f)))))));
    var_1 = Struct_1(2147483647i <= max(i32(-1i) * -u_input.a, 1i), var_1.b, vec4<bool>(_wgslsmith_f_op_f32(-var_2.x) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(f32(-1f) * -349f))), true, u_input.b < _wgslsmith_sub_u32(38428u, reverseBits(u_input.c)), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1256f))));
    var var_3 = u_input.b;
    return select(~min(0i, ~u_input.a), ~u_input.a, arg_0.x) > (u_input.a | -2147483647i);
}

fn func_2(arg_0: bool, arg_1: bool) -> f32 {
    let var_0 = Struct_1(func_3(!(!(!vec2<bool>(arg_1, false)))), all(!vec4<bool>(!arg_1, 0u <= u_input.c, arg_1, true)), !(!vec4<bool>(select(arg_1, false, false), true, 2147483647i >= u_input.d.x, all(vec4<bool>(false, true, arg_0, true)))), _wgslsmith_f_op_f32(step(504f, -136f)));
    var var_1 = !(u_input.b >= min(32163u, 4294967295u)) && (0u >= _wgslsmith_mult_u32(41307u, u_input.c));
    var var_2 = var_0;
    var var_3 = var_0;
    let var_4 = arg_0;
    return _wgslsmith_f_op_f32(-var_2.d);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1225f, arg_1.b, arg_1.c, arg_1.d.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_1.c, arg_1.e, -615f) - vec4<f32>(arg_1.c, 435f, arg_1.d.x, arg_1.e))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1091f, arg_1.c, arg_1.d.x, arg_1.d.x) - vec4<f32>(arg_1.b, 396f, arg_1.d.x, arg_1.b)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.d.x, -139f, -261f, 432f), vec4<f32>(-2239f, arg_1.e, arg_1.e, arg_1.e))))))));
    var_0 = vec4<f32>(var_0.x, arg_1.e, 1685f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(true, false)))), 543f)));
    let var_1 = Struct_1(true, select(!all(vec2<bool>(true, true)), any(vec2<bool>(true, true)), func_3(vec2<bool>(true, true))) | all(vec4<bool>(any(vec4<bool>(true, false, true, false)), any(vec3<bool>(true, true, false)), arg_1.e >= -208f, func_3(vec2<bool>(true, false)))), select(vec4<bool>(select(all(vec3<bool>(false, true, true)), true, true), select(true, all(vec3<bool>(false, false, false)), true), any(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true))), vec4<bool>(false, true, false, 1u >= _wgslsmith_div_u32(u_input.c, u_input.c)), -14587i != ~_wgslsmith_add_i32(arg_1.a, 1483i)), arg_1.c);
    let var_2 = var_1;
    var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1487f, var_1.d, var_2.d, var_2.d) * vec4<f32>(780f, var_0.x, var_0.x, -1000f))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2095f, var_1.d, var_1.b))), var_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.d, -1006f))), 958f))));
    return Struct_2(u_input.d.x, _wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(abs(var_2.d)), var_0.wyx, -1084f);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = Struct_1(false, !(firstTrailingBit(select(27340u, u_input.c, true)) <= ~reverseBits(u_input.c)), !vec4<bool>(true, any(vec2<bool>(true, true)), true, true), -1050f);
    var var_1 = var_0;
    var var_2 = Struct_1(false, var_0.a, var_1.c, _wgslsmith_f_op_f32(-arg_1.c));
    let var_3 = func_1(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_0, _wgslsmith_add_vec3_i32(u_input.d, -vec3<i32>(arg_1.a, u_input.a, u_input.d.x)), vec3<i32>(-arg_1.a, 1i, arg_1.a)), vec3<i32>(_wgslsmith_clamp_i32(arg_1.a, arg_0.x, _wgslsmith_add_i32(u_input.a, arg_0.x)), firstLeadingBit(u_input.d.x) >> (u_input.c % 32u), firstLeadingBit(arg_0.x))), arg_1);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c * func_1(~arg_0, arg_1).c) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(361f - _wgslsmith_f_op_f32(-var_3.d.x)), _wgslsmith_f_op_f32(step(-422f, var_3.e)), !(!var_2.a)))));
    return Struct_2(arg_0.x, var_0.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.c), _wgslsmith_f_op_f32(var_4 * var_1.d))))), var_3.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(368f, 219f, var_2.a)), _wgslsmith_f_op_f32(abs(var_3.d.x))) * _wgslsmith_f_op_f32(f32(-1f) * -525f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(~vec3<i32>(~13520i, 1821i, i32(-1i) * -1i), func_1(-u_input.d, Struct_2(max(u_input.d.x, max(u_input.a, u_input.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1042f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1425f * -692f), -538f), _wgslsmith_div_vec3_f32(vec3<f32>(2402f, 1222f, -372f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, -606f, 416f)))), -249f)));
    let var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(0i, -firstLeadingBit(max(1i, u_input.d.x))), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(2147483647i, 1i), _wgslsmith_div_i32(0i ^ u_input.a, -18128i)), _wgslsmith_add_i32(u_input.d.x, u_input.d.x)));
    let var_2 = 1i;
    var var_3 = !(!select(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, false)));
    let var_4 = _wgslsmith_f_op_f32(-var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.c, 4294967295u ^ ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 20128u, u_input.b), vec3<u32>(1u, 48835u, u_input.c)), u_input.b, u_input.b), _wgslsmith_mod_vec2_u32(vec2<u32>(~u_input.b, 1u), vec2<u32>(u_input.c << (u_input.c % 32u), firstLeadingBit(u_input.b))) ^ firstTrailingBit(vec2<u32>(~22979u, firstTrailingBit(u_input.c))), var_0.d.x, ~_wgslsmith_clamp_u32(4294967295u, _wgslsmith_add_u32(u_input.c, 9233u), 21856u));
}


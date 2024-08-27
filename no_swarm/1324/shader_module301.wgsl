struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2382f, -117f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1138f, -136f) + vec2<f32>(-915f, 910f)))))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3) -> vec4<i32> {
    return -vec4<i32>(u_input.a.x ^ _wgslsmith_clamp_i32(-21253i, arg_1.c.x & u_input.a.x, u_input.a.x), _wgslsmith_sub_i32(-arg_1.c.x, _wgslsmith_clamp_i32(select(u_input.a.x, u_input.a.x, false), -arg_1.c.x, min(-2147483647i, arg_1.c.x))), u_input.a.x, -u_input.a.x);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(sign(arg_1.a.x));
    var var_1 = Struct_3(vec4<bool>(!any(vec2<bool>(true, true)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), false, true), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.a) + arg_1.a)), func_3(vec4<u32>(_wgslsmith_clamp_u32(u_input.b.x, ~u_input.d, ~u_input.d), u_input.c.x, u_input.c.x, abs(4294967295u)), Struct_3(vec4<bool>(true, false, false, true), Struct_1(_wgslsmith_f_op_vec2_f32(abs(arg_1.a))), arg_3.a, func_2(reverseBits(u_input.d)), vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0)), 650f, _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(trunc(var_0))))).yy, Struct_1(arg_1.a), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, arg_0, -562f, var_0) * vec4<f32>(-1000f, arg_0, 1479f, 592f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, 486f, arg_0, 1176f) + vec4<f32>(var_0, 440f, arg_1.a.x, -373f))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-761f, -1724f, arg_0, var_0))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0, arg_1.a.x))), _wgslsmith_f_op_f32(-arg_0), var_0, 1039f))));
    var var_2 = 0u;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, arg_1.a.x)), _wgslsmith_div_vec2_f32(vec2<f32>(313f, -1000f), var_1.b.a))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-742f, 586f), arg_1.a, var_1.a.xy))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-363f, -374f)) + _wgslsmith_f_op_vec2_f32(arg_1.a * vec2<f32>(var_0, var_0))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -261f)) - _wgslsmith_f_op_vec2_f32(max(var_1.e.zw, arg_1.a))))));
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -475f);
    return ~abs(_wgslsmith_dot_vec2_u32(~(~u_input.b), vec2<u32>(0u, 19356u)));
}

fn func_1() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2462f - 1163f))))));
    var var_1 = ~36857u >> (_wgslsmith_mod_u32(_wgslsmith_div_u32(0u, u_input.c.x), u_input.d) % 32u);
    var_1 = _wgslsmith_mult_u32(~1u, 0u);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * var_0)))));
    var_1 = func_4(var_2, func_2(~81702u), _wgslsmith_clamp_vec4_i32(countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 0i, u_input.a.x, u_input.a.x), vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -11672i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 9470i, u_input.a.x)))), max(abs(~vec4<i32>(-1i, u_input.a.x, u_input.a.x, 55359i)), func_3(vec4<u32>(65680u, u_input.d, u_input.b.x, u_input.b.x), Struct_3(vec4<bool>(true, true, true, true), Struct_1(vec2<f32>(-257f, -1000f)), u_input.a.yz, Struct_1(vec2<f32>(1872f, 1116f)), vec4<f32>(var_0, var_0, var_2, var_2)))), -reverseBits(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i))), Struct_2(select(vec2<i32>(_wgslsmith_mod_i32(27738i, u_input.a.x), -1i ^ u_input.a.x), -vec2<i32>(2147483647i, u_input.a.x), false)));
    return _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -462f) - _wgslsmith_f_op_f32(1863f - -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1731f - _wgslsmith_f_op_f32(var_2 - 1836f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 - var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - -869f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), false)));
    let var_1 = _wgslsmith_f_op_vec4_f32(func_1());
    let var_2 = Struct_3(vec4<bool>(!var_0.x && var_0.x, true, all(select(!vec4<bool>(var_0.x, var_0.x, true, var_0.x), !vec4<bool>(true, true, var_0.x, false), select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(false, var_0.x, false, true), var_0.x))), false), func_2(26922u), ~u_input.a.yx, Struct_1(_wgslsmith_div_vec2_f32(var_1.wy, vec2<f32>(_wgslsmith_div_f32(-597f, 141f), _wgslsmith_f_op_f32(step(1000f, 696f))))), var_1);
    var var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(~(-21799i), ~(~2147483647i)), countOneBits(u_input.a.x)), var_2.c);
    let var_4 = _wgslsmith_mult_i32(max(var_2.c.x, -1i), abs(-var_2.c.x));
    let var_5 = Struct_2(~(~_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a.zy, vec2<i32>(var_2.c.x, -7037i)), -vec2<i32>(-1i, -2147483647i))));
    var_3 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(select(_wgslsmith_add_vec2_i32(vec2<i32>(1i, var_4), var_5.a), ~vec2<i32>(u_input.a.x, u_input.a.x), !var_2.a.x), _wgslsmith_mult_vec2_i32(vec2<i32>(var_2.c.x, var_4), u_input.a.zz)), ~_wgslsmith_sub_i32(-1i, var_5.a.x)), var_5.a.x);
    var var_6 = ~u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_4, _wgslsmith_f_op_vec3_f32(-var_2.e.wyx), _wgslsmith_add_vec3_u32(~select(~vec3<u32>(67332u, u_input.d, 26158u), vec3<u32>(4294967295u, u_input.b.x, 1u), all(vec2<bool>(var_0.x, var_0.x))), u_input.c | u_input.c));
}


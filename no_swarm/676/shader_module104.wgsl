struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = arg_0;
    let var_1 = Struct_2(1i | -_wgslsmith_clamp_i32(u_input.b, _wgslsmith_div_i32(34098i, u_input.a.x), i32(-1i) * -1i));
    var var_2 = 691f;
    var_2 = -682f;
    var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-499f, var_0, false))))))));
    return min(_wgslsmith_dot_vec4_u32(vec4<u32>(min(18047u, u_input.c.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x) & vec2<u32>(1u, u_input.c.x), vec2<u32>(3472u, 1u) >> (u_input.c.yx % vec2<u32>(32u))), u_input.c.x, 0u), firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 11540u, u_input.c.x), firstTrailingBit(u_input.c)))), 71089u);
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_2) -> f32 {
    let var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -291f))), -1675f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1267f, 1084f)));
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-204f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(493f, _wgslsmith_f_op_f32(min(var_1.x, var_1.x)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)))))))));
    var var_2 = -select(abs(~u_input.a), ~vec3<i32>(u_input.b, arg_3.a, -u_input.b), select(vec3<bool>(u_input.c.x < 42375u, all(vec3<bool>(false, false, true)), true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), 433f, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-723f, -831f))) * 483f) + -790f)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(func_4(~1677u, arg_1.a, vec3<u32>(func_3(arg_0.x), u_input.c.x, ~u_input.c.x), arg_1)))));
    var var_1 = -1069f;
    let var_2 = ~4294967295u;
    let var_3 = select(~countOneBits(~vec4<i32>(arg_1.a, 27084i, 1i, 27426i)) | ((vec4<i32>(3056i, arg_1.a, -1i, arg_1.a) | _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 29632i, u_input.a.x, arg_1.a), vec4<i32>(arg_1.a, u_input.a.x, -39337i, -8395i))) ^ ((vec4<i32>(arg_1.a, 7480i, arg_1.a, -1i) | vec4<i32>(u_input.b, -10172i, u_input.a.x, -16880i)) << (u_input.c % vec4<u32>(32u)))), vec4<i32>(0i, u_input.a.x, 18803i, _wgslsmith_dot_vec3_i32(-(u_input.a & vec3<i32>(0i, u_input.a.x, -34203i)), u_input.a)), !(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(select(var_0.a, var_0.a, true))) > -271f));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(func_4(var_2, arg_1.a, select(vec3<u32>(~14020u, 27826u >> (u_input.c.x % 32u), 1u), ~(~u_input.c.www), !vec3<bool>(arg_2.x, arg_2.x, true)), arg_1)));
    return Struct_2(min(var_3.x, -u_input.a.x) << (1u % 32u));
}

fn func_5(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = arg_3;
    var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -710f));
    var var_1 = Struct_1(-550f);
    let var_2 = _wgslsmith_f_op_f32(floor(-1109f)) < _wgslsmith_f_op_f32(exp2(var_0.a));
    var_0 = arg_3;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1432f, var_0.a, var_0.a) * _wgslsmith_div_vec3_f32(vec3<f32>(-553f, 1294f, var_0.a), vec3<f32>(var_0.a, 165f, 363f)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1025f, _wgslsmith_f_op_f32(-778f + 299f), _wgslsmith_f_op_f32(ceil(var_0.a)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -543f, 981f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1244f, -684f, var_0.a)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a, arg_3.a, 177f), vec3<f32>(var_1.a, 1508f, -217f), var_2))))));
}

fn func_6(arg_0: vec2<i32>, arg_1: bool, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_2(-(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), u_input.a.xy))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(675f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(201f)), arg_2.x, false))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-355f + arg_2.x))));
    var var_3 = vec4<bool>(all(!vec3<bool>(arg_1, false, arg_1)) && any(vec3<bool>(all(vec4<bool>(true, true, true, arg_1)), false, any(vec2<bool>(true, arg_1)))), arg_1, true, u_input.c.x <= (_wgslsmith_dot_vec3_u32(u_input.c.xxy, u_input.c.wyw) & ~u_input.c.x));
    var var_4 = Struct_2(_wgslsmith_clamp_i32(-2147483647i, arg_0.x, ~_wgslsmith_sub_i32(arg_0.x >> (u_input.c.x % 32u), ~arg_0.x)));
    return Struct_1(var_1.a);
}

fn func_1() -> f32 {
    let var_0 = Struct_1(-809f);
    let var_1 = func_6(vec2<i32>(u_input.a.x, -max(2147483647i, -13217i)), true, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-313f * var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + -436f)), _wgslsmith_f_op_f32(-288f * _wgslsmith_f_op_f32(step(var_0.a, var_0.a)))), _wgslsmith_f_op_vec3_f32(func_5(~u_input.c.x, vec2<u32>(u_input.c.x, countOneBits(u_input.c.x)), func_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a, 515f), vec2<f32>(var_0.a, -950f), true)), Struct_2(u_input.b), vec2<bool>(true, true)), Struct_1(1f))))));
    let var_2 = vec2<i32>(27192i, u_input.b);
    let var_3 = Struct_2(var_2.x);
    let var_4 = 56636u;
    return _wgslsmith_f_op_f32(func_4(_wgslsmith_mod_u32(var_4, reverseBits(_wgslsmith_div_u32(_wgslsmith_mod_u32(11702u, var_4), min(var_4, 1u)))), u_input.b, ~u_input.c.xyx & u_input.c.zwy, var_3));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.c.x | 32351u;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(step(-553f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1()))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(func_1()));
    var var_3 = 19780i;
    var var_4 = 769f;
    let var_5 = vec4<bool>(false, false, !any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), (func_3(var_1.a) >= ~1u) && true);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_dot_vec2_u32(~u_input.c.yx, vec2<u32>(0u, u_input.c.x)), 4294967295u), vec2<u32>(1u, 4294967295u), 4294967295u, ~vec2<i32>(u_input.a.x, -(~(-2147483647i))));
}


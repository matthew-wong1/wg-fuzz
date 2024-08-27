struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: f32,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_5 {
    a: i32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec2<i32>) -> vec4<f32> {
    let var_0 = arg_1.a;
    let var_1 = u_input.e;
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(975f * arg_1.a.c)))))));
    var var_3 = vec4<bool>(any(vec2<bool>(var_0.d.x, arg_1.a.b)), false, true, !(!((u_input.c & 0u) == ~57210u)));
    var_3 = arg_1.a.d;
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.e, 684f)))), var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.a.a.x))), var_0.e);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<f32>) -> f32 {
    let var_0 = ~select(u_input.c, ~4294967295u, true);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_0))));
    var_1 = arg_0;
    var var_2 = firstTrailingBit(vec2<u32>(var_0, var_0));
    var_2 = ~vec2<u32>(0u, ~_wgslsmith_div_u32(u_input.c, 28621u));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(true, true), Struct_2(Struct_1(vec3<f32>(935f, -577f, arg_0.x), false, 594f, vec4<bool>(false, false, true, false), arg_1.x), true), vec2<i32>(u_input.d, u_input.d))).x)))));
}

fn func_2() -> f32 {
    var var_0 = -60097i;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1055f - -882f) + 490f)), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(369f, -1262f, 319f, 263f) + vec4<f32>(-1343f, 780f, 1295f, 439f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-136f, -1751f, -1478f, -1000f), vec4<f32>(304f, 1201f, 1052f, -554f)) - _wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(true, false), Struct_2(Struct_1(vec3<f32>(1847f, 881f, -1000f), false, -282f, vec4<bool>(false, true, false, true), -1280f), true), vec2<i32>(-1i, 1i))))), _wgslsmith_div_vec3_f32(vec3<f32>(-603f, 213f, _wgslsmith_f_op_f32(floor(-317f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-534f, -1050f, 539f) - vec3<f32>(-269f, 1061f, 186f)), vec3<f32>(1f, 1f, 1f))))))));
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = -_wgslsmith_mult_i32(u_input.d, (u_input.d & -2147483647i) | (18236i >> (~u_input.c % 32u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(696f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1265f, -1097f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(269f + -538f) + -963f)))));
    let var_2 = Struct_5(var_0, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-347f)), _wgslsmith_f_op_f32(824f - 624f))))));
    let var_3 = ~(u_input.c | arg_0);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-509f, var_2.b.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))));
    return _wgslsmith_dot_vec3_i32(-(~_wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(u_input.d, var_2.a, -16132i), u_input.a)) & countOneBits(vec3<i32>(2147483647i, 45834i, _wgslsmith_clamp_i32(var_2.a, var_2.a, var_0))), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 37939i;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec3_i32(select(_wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(-18031i, 2147483647i, 26733i)), vec3<i32>(-1i, 1i, u_input.a.x), 22156u >= u_input.c), vec3<i32>(func_1(u_input.c), u_input.e.x, u_input.d)), firstLeadingBit(-vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, 2147483647i), vec2<i32>(1i, u_input.d)), -63559i, i32(-1i) * -1i)), 62737u, 33909u);
}


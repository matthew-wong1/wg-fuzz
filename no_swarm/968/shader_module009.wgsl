struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> i32 {
    return firstTrailingBit(~_wgslsmith_mult_i32(countOneBits(abs(u_input.c)), -32094i));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1) -> bool {
    global0 = u_input.a;
    global0 = func_3();
    global0 = ~(-(~(arg_1.a & u_input.c) ^ -(~u_input.c)));
    var var_0 = Struct_1(~_wgslsmith_mod_i32(-arg_1.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.a, u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(47477i, arg_1.a, 2147483647i), vec3<i32>(arg_1.a, -44395i, 22056i)))), _wgslsmith_f_op_f32(floor(1536f)));
    let var_1 = Struct_1(u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1420f - _wgslsmith_f_op_f32(step(var_0.b, var_0.b)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(770f, arg_1.b))))));
    return (!any(vec3<bool>(true, true, true)) | all(vec2<bool>(true, true))) & true;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<u32>) -> i32 {
    var var_0 = arg_1;
    var var_1 = select(~select(_wgslsmith_clamp_vec3_u32(vec3<u32>(38295u, 0u, 5732u), u_input.b.yxy, u_input.b.yyx), vec3<u32>(arg_2.x, u_input.b.x, u_input.b.x), true), u_input.b.yxz, select(!all(vec4<bool>(true, true, true, true)), true, func_2(~vec3<u32>(11458u, u_input.b.x, 60505u), Struct_1(-2147483647i, 749f)))) << (arg_2.yxy % vec3<u32>(32u));
    let var_2 = select(vec4<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true))) || false, all(vec3<bool>(true, true, true)), any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true))), !(!all(vec4<bool>(false, true, false, false)))), select(select(vec4<bool>(true, any(vec3<bool>(true, true, true)), false, true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), false)), true), vec4<bool>(!(arg_1.a >= -1i), all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), false)), false, true), !all(vec3<bool>(true, true, true))), 23712i >= min(var_0.a, _wgslsmith_mult_i32(var_0.a << (var_1.x % 32u), 2147483647i)));
    let var_3 = Struct_1(-1802i, _wgslsmith_f_op_f32(step(-306f, arg_0.x)));
    let var_4 = ~(vec2<i32>(~arg_1.a, firstLeadingBit(~31446i)) ^ select(_wgslsmith_div_vec2_i32(vec2<i32>(-4476i, var_0.a), abs(vec2<i32>(13459i, 2147483647i))), ~_wgslsmith_add_vec2_i32(vec2<i32>(var_3.a, 1i), vec2<i32>(-1i, var_3.a)), var_2.x));
    return var_4.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(708f, _wgslsmith_f_op_f32(377f + _wgslsmith_f_op_f32(min(-478f, 1322f))), _wgslsmith_f_op_f32(f32(-1f) * -629f))), Struct_1(u_input.a & u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(646f + -679f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -322f)))), ~(~_wgslsmith_add_vec4_u32(u_input.b, u_input.b) & _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, u_input.b.x, u_input.b.x, 34283u), vec4<u32>(u_input.b.x, 0u, u_input.b.x, 4294967295u))));
    global0 = -24687i;
    var var_0 = select(!vec4<bool>(false, false, true, !(39425u < u_input.b.x)), !vec4<bool>(true, any(vec2<bool>(true, false)) && (u_input.c != -80777i), false, false), any(select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true))), vec4<bool>(true, true, true, true))));
    global0 = _wgslsmith_add_i32(-42340i, u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.c, min(max(~u_input.c, 2922i), ~min(u_input.c, 0i)), false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-817f, -370f, -922f, 270f)))) - vec4<f32>(_wgslsmith_f_op_f32(select(1414f, 288f, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -784f), _wgslsmith_f_op_f32(-1266f + 1885f), _wgslsmith_f_op_f32(-904f + 283f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-862f)), 1f, 732f, 716f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2904f, 565f, -404f, -1284f) + vec4<f32>(761f, 1292f, 831f, -672f)) - vec4<f32>(-212f, -409f, 620f, -980f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-930f, -1073f, -252f, -351f) * vec4<f32>(-1283f, 2400f, -914f, -319f))))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-219f, 1362f), _wgslsmith_f_op_f32(sign(293f)), _wgslsmith_f_op_f32(trunc(-1138f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1014f, -790f, -571f), vec3<f32>(-1622f, -291f, 174f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(262f - 177f) - -475f), -1675f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(668f))))));
}


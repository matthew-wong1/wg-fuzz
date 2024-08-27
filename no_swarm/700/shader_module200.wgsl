struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> vec3<i32> {
    let var_0 = arg_0;
    global0 = -50267i;
    global0 = arg_3.a.x;
    global0 = ~(-arg_3.a.x);
    var var_1 = arg_2;
    return arg_3.a.zzz;
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: bool) -> vec2<i32> {
    let var_0 = ~(~(u_input.b >> ((_wgslsmith_clamp_u32(0u, u_input.a.x, u_input.a.x) & u_input.a.x) % 32u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(329f + -2411f)) + 202f)));
    return arg_1.a.yw;
}

fn func_3() -> u32 {
    global0 = 0i;
    global0 = ~abs(max(19098i, -min(-10341i, 1i)));
    global0 = firstLeadingBit(func_2(2147483647i, Struct_2(vec4<i32>(i32(-1i) * -1i, -2147483647i, _wgslsmith_mod_i32(-38282i, -1i), min(-16184i, -15743i))), any(vec2<bool>(false, false)) | any(vec2<bool>(false, false))).x);
    var var_0 = Struct_1(5278u, u_input.b, u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(773f * 113f), 255f, true))) * _wgslsmith_f_op_f32(min(-894f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(711f - 915f))))));
    let var_1 = true;
    return countOneBits(u_input.a.x) | ((var_0.b & _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_0.a, u_input.b, 0u, 1u)), ~vec4<u32>(4294967295u, var_0.a, var_0.c, u_input.a.x))) << (var_0.b % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -2147483647i;
    let var_0 = ~min(u_input.a.x, _wgslsmith_clamp_u32(0u, ~select(u_input.a.x, 51285u, true), u_input.b));
    var var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(-max(func_1(vec4<u32>(u_input.a.x, var_0, var_0, u_input.b), true, Struct_1(u_input.b, var_0, 1u, 1000f), Struct_2(vec4<i32>(46053i, -37391i, -1i, 36072i))), vec3<i32>(69030i, -34791i, -9905i)), vec3<i32>(-1i, 13675i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(-1i, 15119i)))), ~abs(~(-36344i)));
    var_1 = _wgslsmith_div_vec2_i32(firstTrailingBit(~(func_2(-46119i, Struct_2(vec4<i32>(0i, var_1.x, var_1.x, var_1.x)), false) >> (select(u_input.a.xy, u_input.a.zy, true) % vec2<u32>(32u)))), vec2<i32>(8242i, -_wgslsmith_sub_i32(abs(-1i), -var_1.x)));
    var var_2 = Struct_1(15763u, ~(abs(var_0) & _wgslsmith_sub_u32(~var_0, 4294967295u)), ~u_input.b, -1291f);
    var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(var_1.x, 0i) >> (22382u % 32u), -min(var_1.x, var_1.x)), min(~(var_1.x & var_1.x), func_2(-2164i, Struct_2(vec4<i32>(-2147483647i, -40827i, var_1.x, var_1.x)), true).x)), firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.x, abs(-14664i)), ~_wgslsmith_div_vec2_i32(vec2<i32>(var_1.x, var_1.x), vec2<i32>(var_1.x, -2147483647i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_2.d)), _wgslsmith_f_op_f32(min(var_2.d, -1940f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(815f, var_2.d)))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-232f, -1024f), vec2<f32>(var_2.d, -739f)))))), firstLeadingBit(u_input.a), u_input.a.yy, _wgslsmith_f_op_f32(round(982f)), abs(func_3()) ^ ~(firstTrailingBit(74271u) ^ 1u));
}


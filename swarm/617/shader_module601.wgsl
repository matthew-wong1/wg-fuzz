struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 31>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec2<u32> {
    global0 = array<vec4<f32>, 31>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(arg_0.a))));
    global0 = array<vec4<f32>, 31>();
    global0 = array<vec4<f32>, 31>();
    var var_1 = !vec2<bool>(all(vec3<bool>(true, true, true)), any(vec4<bool>(true, false, true, all(vec3<bool>(true, false, true)))));
    return _wgslsmith_add_vec2_u32(abs(u_input.a.xw), u_input.a.wy);
}

fn func_2(arg_0: vec4<i32>, arg_1: bool, arg_2: vec3<u32>, arg_3: i32) -> vec3<bool> {
    let var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(firstLeadingBit(0u), max(u_input.a.x, 36277u)), func_3(Struct_1(vec3<f32>(-1170f, 1397f, 553f)), abs(u_input.c))) ^ vec2<u32>(_wgslsmith_mod_u32(arg_2.x, 31543u), ~(_wgslsmith_mult_u32(59795u, 1u) | arg_2.x));
    let var_1 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-187f * 470f)), -1237f, -1722f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-142f, 1000f, -2383f) - vec3<f32>(915f, -826f, -388f)))))));
    global0 = array<vec4<f32>, 31>();
    global0 = array<vec4<f32>, 31>();
    global0 = array<vec4<f32>, 31>();
    return !vec3<bool>(all(vec4<bool>(arg_1 | arg_1, !arg_1, arg_1 || arg_1, true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-922f - var_1.a.x))) > _wgslsmith_f_op_f32(-var_1.a.x), arg_1);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> u32 {
    var var_0 = vec2<bool>(true, any(func_2(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1, 24137i, 6273i, arg_1), vec4<i32>(arg_1, arg_1, u_input.c, 47491i)), any(vec2<bool>(true, true)), ~u_input.a.yxw, _wgslsmith_add_i32(-27971i, -1i))) != any(vec4<bool>(true, true, true, true)));
    var var_1 = arg_0;
    let var_2 = var_1.a.x < arg_0.a.x;
    global0 = array<vec4<f32>, 31>();
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.a.x - var_1.a.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1996f, -1128f)))) * _wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2064f)));
    return firstLeadingBit(4294967295u) >> (u_input.a.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(select(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(false, -2147483647i > u_input.c, false), vec3<bool>(any(vec3<bool>(false, true, false)), true, select(false, false, false))), vec3<bool>(true, !all(vec3<bool>(false, false, false)), all(vec3<bool>(true, true, true))), vec3<bool>(true, false, select(true, all(vec4<bool>(false, false, false, true)), any(vec4<bool>(true, true, false, true))))), select(!vec3<bool>(true, any(vec4<bool>(false, false, false, true)), any(vec2<bool>(true, true))), vec3<bool>(!all(vec2<bool>(false, false)), true, true), true), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, func_1(Struct_1(vec3<f32>(331f, -1481f, -952f)), u_input.c), 4414u, u_input.a.x), ~min(u_input.a, u_input.a)) > ~abs(_wgslsmith_add_u32(u_input.a.x, u_input.a.x)));
    global0 = array<vec4<f32>, 31>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 2587f, -230f), vec3<f32>(-864f, -1586f, 1395f))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1179f, 1251f, -1000f)) + _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 854f, -549f), vec3<f32>(1000f, 1739f, -795f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-577f, -948f, 621f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-225f, 841f, -1000f), vec3<f32>(-1736f, 752f, -926f), var_0))), reverseBits(94671u) < ~u_input.a.x))));
    var var_2 = any(select(vec3<bool>(var_0.x, var_0.x, true), var_0, all(vec4<bool>(true, true, !var_0.x, true))));
    let var_3 = u_input.a;
    let var_4 = vec3<u32>(_wgslsmith_add_u32(min(~countOneBits(13878u), ~var_3.x >> (_wgslsmith_mod_u32(u_input.a.x, var_3.x) % 32u)), _wgslsmith_mod_u32(var_3.x, 1u ^ u_input.a.x)), ~(~_wgslsmith_sub_u32(10722u, 1u)), ~0u);
    var var_5 = _wgslsmith_sub_i32(-u_input.c, -19695i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(2129f, var_1.a.x), var_1.a.yz)) + _wgslsmith_f_op_vec2_f32(abs(var_1.a.zx))), var_1.a.zx)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1760f), _wgslsmith_f_op_f32(f32(-1f) * -1151f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a) * vec3<f32>(_wgslsmith_f_op_f32(-819f + -1000f), 534f, _wgslsmith_f_op_f32(abs(var_1.a.x))))), _wgslsmith_mod_u32(func_1(var_1, -42023i), u_input.a.x));
}


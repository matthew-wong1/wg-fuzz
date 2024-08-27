struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: i32) -> f32 {
    var var_0 = -_wgslsmith_clamp_vec3_i32(~(vec3<i32>(-1i, 2147483647i, arg_0) ^ vec3<i32>(-6355i, 38990i, arg_0)), _wgslsmith_add_vec3_i32(-vec3<i32>(arg_0, arg_0, 1i), vec3<i32>(0i, arg_0, 7991i) << (vec3<u32>(1u, u_input.a.x, 0u) % vec3<u32>(32u))), vec3<i32>(-1421i, -9271i, 0i) ^ max(vec3<i32>(-2147483647i, arg_1, arg_0), vec3<i32>(arg_1, arg_1, arg_0))) | select(-reverseBits(abs(vec3<i32>(-6545i, 0i, -1i))), ~vec3<i32>(~73733i, 25123i, ~2147483647i), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(any(vec3<bool>(true, true, true)), true, true), vec3<bool>(false, true, all(vec3<bool>(false, false, true)))));
    var_0 = -vec3<i32>(2147483647i, _wgslsmith_add_i32(_wgslsmith_div_i32(arg_0, -1i), i32(-1i) * -12460i), abs(1i));
    let var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(613f, 385f, -2184f), vec3<f32>(-2483f, -962f, 1118f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1077f, -923f, _wgslsmith_f_op_f32(round(1000f))))));
    let var_2 = Struct_2(Struct_1(vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(step(var_1.a.x, 285f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(329f, var_1.a.x)), var_1.a.x))));
    var_0 = min(vec3<i32>(-2147483647i, 11237i << (~u_input.a.x % 32u), i32(-1i) * -arg_1), vec3<i32>(_wgslsmith_sub_i32(57336i, min(var_0.x, 1i)) & var_0.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(arg_1, 58967i), var_0.yy), 11259i));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-2522f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-509f - -610f))))));
}

fn func_2() -> bool {
    let var_0 = ~1300i;
    var var_1 = -831f;
    let var_2 = ~vec4<u32>(firstLeadingBit(39637u), u_input.a.x, u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_add_u32(u_input.a.x, _wgslsmith_add_u32(1u, 0u))));
    var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-683f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -319f) + _wgslsmith_f_op_f32(func_3(var_0 | var_0, -1i >> (u_input.a.x % 32u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_0, -38493i ^ abs(var_0))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -469f))));
    let var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -366f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(660f, -414f)) - -768f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1044f * 1f)), -1221f));
    return !select(true, true, true);
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-697f + -1000f)))), _wgslsmith_f_op_f32(-566f - _wgslsmith_f_op_f32(f32(-1f) * -1184f)))));
    let var_1 = func_2();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1052f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -325f)))))));
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1613f)) - _wgslsmith_f_op_f32(func_3(-16855i, 1i))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1042f, 378f, var_1)), -847f)), abs(u_input.a.x) <= u_input.a.x))) < 1095f;
    return var_1;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(447f, arg_1), vec2<f32>(-1000f, arg_1))))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + -1767f)), -377f);
    var_0 = vec2<f32>(arg_1, arg_1);
    var var_1 = _wgslsmith_clamp_u32(_wgslsmith_div_u32(~firstLeadingBit(abs(14854u)), 29814u), countOneBits(u_input.a.x), reverseBits(_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), u_input.a.xzy), reverseBits(~14026u))));
    let var_2 = 4294967295u;
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, arg_1)) - arg_1)), arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var_0 = _wgslsmith_div_vec4_u32(abs(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 0u), u_input.a)), vec4<u32>(~8304u, ~(~0u), var_0.x, _wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 4294967295u, 1u, var_0.x), u_input.a)))) ^ ~min(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 46212u, 0u), _wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(27097u, 0u, var_0.x, var_0.x)), u_input.a >> (u_input.a % vec4<u32>(32u))), vec4<u32>(u_input.a.x, ~u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(u_input.a.x, var_0.x)), abs(0u)));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2309f)))), _wgslsmith_f_op_f32(648f + -643f), 1000f));
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-550f * _wgslsmith_div_f32(692f, var_1.a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a.x), -1387f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) * _wgslsmith_f_op_f32(var_1.a.x * -915f)))));
    let var_2 = ~(-(~firstLeadingBit(_wgslsmith_clamp_i32(7391i, 18958i, 0i))));
    var var_3 = Struct_2(func_4(~(~_wgslsmith_sub_i32(-32017i, var_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 635f))), select(any(vec3<bool>(true, true, false)), func_1(), true) | any(vec4<bool>(true, false, false, false))));
    var_1 = func_4(0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(439f - -1000f), _wgslsmith_f_op_f32(-var_3.a.a.x)))) * _wgslsmith_f_op_f32(floor(-801f))), (((var_0.x | 12486u) ^ ~1u) > 0u) && any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(-(abs(reverseBits(vec4<i32>(var_2, var_2, var_2, var_2))) << (_wgslsmith_div_vec4_u32(vec4<u32>(47670u, var_0.x, u_input.a.x, var_0.x), u_input.a << (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u))));
}


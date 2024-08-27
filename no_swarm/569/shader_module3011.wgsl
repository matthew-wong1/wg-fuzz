struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32) -> vec3<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(869f)), -644f, -851f)), vec2<u32>(_wgslsmith_add_u32(u_input.a >> (countOneBits(2818u) % 32u), (arg_0 << (31707u % 32u)) ^ (u_input.b.x & arg_0)), ~min(0u, _wgslsmith_sub_u32(arg_0, arg_0))));
    var_0 = Struct_1(var_0.a, vec2<u32>(var_0.b.x, var_0.b.x));
    let var_1 = var_0.a.x != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * -466f) - -946f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1052f)), -2822f))));
    var_0 = Struct_1(vec3<f32>(766f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_f32(-685f - var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -873f), var_1)))), firstTrailingBit(select(~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.b.x, 0u), vec2<u32>(4294967295u, 4294967295u), u_input.b.xy), select(~vec2<u32>(21058u, 4294967295u), vec2<u32>(1u, 1u), !vec2<bool>(true, var_1)), vec2<bool>(!var_1, true))));
    var var_2 = any(!vec3<bool>(false, all(vec3<bool>(false, var_1, false)), false));
    return vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x * -775f), var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x));
}

fn func_2(arg_0: vec4<bool>) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(555f, 233f, 1796f))))), ~countOneBits(_wgslsmith_add_vec2_u32(u_input.b.yz ^ u_input.b.xx, ~vec2<u32>(u_input.b.x, 13117u))));
    var var_1 = u_input.b;
    var_1 = u_input.b;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1357f, var_0.a.x, var_0.a.x, 1285f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1139f, -484f, var_0.a.x, 250f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, 1756f, var_0.a.x, var_0.a.x) * vec4<f32>(-813f, var_0.a.x, var_0.a.x, var_0.a.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 517f, 2726f, _wgslsmith_f_op_f32(floor(var_0.a.x))))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(661f - var_0.a.x)), -1069f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x), _wgslsmith_f_op_f32(var_0.a.x - 1252f)), _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(abs(-1562f)), var_0.a.x, 145f)), arg_0)));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(func_3(var_1.x)), vec2<u32>(~_wgslsmith_mod_u32(var_1.x, 1u), ~_wgslsmith_clamp_u32(var_1.x, 0u, 74048u)));
    return Struct_2(Struct_1(var_0.a, u_input.b.xz), _wgslsmith_add_vec4_i32(vec4<i32>(-9765i, ~(-30114i), min(-11231i, 0i), 1i) >> ((~vec4<u32>(59936u, var_1.x, 1u, var_1.x) & ~vec4<u32>(0u, 74724u, 0u, 4294967295u)) % vec4<u32>(32u)), -vec4<i32>(_wgslsmith_clamp_i32(45685i, 0i, 26785i), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 6281i, 45409i), vec3<i32>(-2147483647i, 26473i, 74567i)), -9538i, _wgslsmith_div_i32(39122i, 29351i))));
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = true;
    var var_1 = Struct_2(Struct_1(arg_1.a.a, arg_1.a.b), vec4<i32>(arg_1.b.x, -49528i, func_2(select(select(vec4<bool>(var_0, true, false, false), vec4<bool>(true, true, false, false), false), !vec4<bool>(var_0, var_0, var_0, var_0), var_0)).b.x, arg_1.b.x));
    let var_2 = 14165u;
    var var_3 = reverseBits(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(var_2, 6814u, var_1.a.b.x)) ^ u_input.a, ~(4294967295u & u_input.a), ~func_2(vec4<bool>(true, false, var_0, false)).a.b.x, ~(~var_2) ^ _wgslsmith_dot_vec2_u32(arg_1.a.b | var_1.a.b, vec2<u32>(21430u, arg_1.a.b.x))));
    var var_4 = vec2<f32>(arg_0, _wgslsmith_f_op_f32(select(arg_0, arg_1.a.a.x, false)));
    return func_2(!select(select(select(vec4<bool>(true, true, var_0, true), vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(false, false, var_0, false)), select(vec4<bool>(false, var_0, true, false), vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(var_0, false, true, var_0)), false), select(!vec4<bool>(true, var_0, true, var_0), select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(false, var_0, true, false), false), !vec4<bool>(var_0, true, false, true)), var_0)).a;
}

fn func_1(arg_0: vec3<f32>, arg_1: i32) -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 380f, arg_0.x))), arg_0)))), u_input.b.zy);
    let var_1 = func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-617f)))), func_2(select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_0.a.x < -267f, true, var_0.a.x > 880f), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), false), true))));
    var_0 = func_4(_wgslsmith_f_op_f32(step(-249f, _wgslsmith_f_op_f32(arg_0.x + 1423f))), func_2(select(vec4<bool>(any(vec4<bool>(false, true, true, true)), true, true, false), vec4<bool>(all(vec4<bool>(true, true, true, true)), any(vec4<bool>(false, false, false, false)), any(vec2<bool>(true, true)), all(vec4<bool>(false, true, true, false))), vec4<bool>(any(vec4<bool>(true, true, false, false)), select(false, false, false), false, all(vec3<bool>(false, false, true))))));
    let var_2 = select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), vec2<bool>(113f < _wgslsmith_f_op_f32(-1276f - arg_0.x), true)), vec2<bool>(any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, false)))), -475f < var_0.a.x), !(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(false, true))));
    var var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1670f, _wgslsmith_f_op_f32(min(831f, 770f)), _wgslsmith_f_op_f32(f32(-1f) * -642f), -445f)) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-382f, -758f, false))), _wgslsmith_f_op_f32(min(666f, var_0.a.x)), _wgslsmith_div_f32(func_2(vec4<bool>(true, false, true, false)).a.a.x, _wgslsmith_f_op_f32(var_1.a.x - var_0.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.x, -1103f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1784f, -877f, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 591f, var_0.a.x, arg_0.x)), !vec4<bool>(false, var_2.x, var_2.x, var_2.x)))))));
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec2<i32>(-min(-53798i, _wgslsmith_sub_i32(0i, -406i)), 1i));
    var var_1 = vec3<f32>(896f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(396f, -825f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(695f)), -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))))) - -281f));
    var var_2 = Struct_1(vec3<f32>(256f, -1843f, 1675f), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -1091f, var_1.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-145f, var_1.x, -2224f) + vec3<f32>(var_1.x, var_1.x, -1332f)))), -var_0.x));
    var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(func_4(_wgslsmith_f_op_f32(sign(var_2.a.x)), func_2(vec4<bool>(true, true, true, true))).a.x, _wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(1960f * _wgslsmith_f_op_f32(ceil(830f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.a))), abs(~(~u_input.b.zz) | vec2<u32>(var_2.b.x, var_2.b.x)));
    let var_3 = -398f;
    var var_4 = true | ((_wgslsmith_dot_vec4_i32(vec4<i32>(-32120i, var_0.x, var_0.x, -1i), vec4<i32>(var_0.x, var_0.x, var_0.x, 1i) << (vec4<u32>(4294967295u, 13613u, 4294967295u, 127607u) % vec4<u32>(32u))) >= var_0.x) & select(!all(vec3<bool>(true, false, false)), all(vec2<bool>(true, true)), 0u < var_2.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(~0u, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-var_3), -912f, var_3, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(floor(162f))))))));
}


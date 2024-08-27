struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32) -> f32 {
    let var_0 = select(true, false, !(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(562f * arg_0.x))) <= _wgslsmith_f_op_f32(step(2453f, arg_0.x))));
    var var_1 = vec2<i32>(-2147483647i, abs(_wgslsmith_add_i32(u_input.a.x, 1i)));
    var_1 = min(firstTrailingBit(vec2<i32>(arg_1, -1i)), -u_input.a >> (_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_div_u32(47154u, 4294967295u), ~0u), vec2<u32>(1u, 1u)) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_0.x + -791f), -355f) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.x, arg_0.x, 1591f), arg_0)))))));
    var var_3 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x));
}

fn func_3() -> vec3<f32> {
    let var_0 = Struct_1(vec2<bool>(any(vec4<bool>(true, true, true, true)), (~u_input.b.x >= -2147483647i) && true));
    var var_1 = Struct_1(var_0.a);
    var_1 = var_0;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1290f, -210f, 993f))) - vec3<f32>(1f, 1f, 1f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(462f)) - _wgslsmith_f_op_f32(min(244f, 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-493f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<f32>(-1003f, -1071f, -268f), 0i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(160f + -431f) * -1063f)));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) + _wgslsmith_f_op_f32(sign(arg_0))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(556f, arg_0)) - arg_0)), reverseBits(u_input.b.x))));
    let var_1 = Struct_1(!(!select(arg_1.a, vec2<bool>(arg_1.a.x, false), !arg_1.a.x)));
    var_0 = _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3())) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 304f, arg_0) + vec3<f32>(arg_0, 759f, -247f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0))) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, 891f, -1717f), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, 703f) + vec3<f32>(2072f, arg_0, arg_0))))), u_input.b.x));
    var var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-1296f - _wgslsmith_f_op_f32(func_1(vec3<f32>(-796f, -241f, -426f), _wgslsmith_sub_i32(u_input.b.x, u_input.a.x))))));
    return vec3<bool>(any(select(var_1.a, vec2<bool>(var_2.a.x, true), vec2<bool>(true, true))), all(!(!vec3<bool>(var_2.a.x, var_1.a.x, false))), var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<bool>(!(!any(vec2<bool>(false, true))), !any(vec2<bool>(true, true))));
    var var_1 = 14912i;
    var_1 = _wgslsmith_clamp_i32(~(~_wgslsmith_div_i32(u_input.a.x, u_input.b.x)), _wgslsmith_mod_i32(~23531i | u_input.b.x, -43898i), u_input.a.x) | u_input.a.x;
    let var_2 = abs(min(~firstTrailingBit(vec3<u32>(17489u, 1002u, 19757u)) & max(vec3<u32>(1u, 23696u, 47586u), ~vec3<u32>(12858u, 100931u, 17902u)), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(20712u, 27394u, 78534u), min(vec3<u32>(29972u, 73665u, 1u), vec3<u32>(4294967295u, 86558u, 53288u))), _wgslsmith_add_vec3_u32(min(vec3<u32>(1u, 62887u, 44069u), vec3<u32>(4294967295u, 88798u, 0u)), select(vec3<u32>(4294967295u, 57876u, 4294967295u), vec3<u32>(16458u, 48087u, 1u), var_0.a.x)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(708f, _wgslsmith_f_op_f32(f32(-1f) * -959f), -361f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -106f) - 1f)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(190f * -467f) * _wgslsmith_f_op_f32(select(-1000f, 1746f, var_0.a.x))), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1246f, 1611f, -1422f) * vec3<f32>(-283f, 1064f, 1077f)), -u_input.a.x))), _wgslsmith_f_op_f32(step(-252f, _wgslsmith_f_op_f32(f32(-1f) * -320f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(430f + -241f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -565f)) + -553f))));
    let var_4 = select(select(func_2(1000f, var_0), select(func_2(_wgslsmith_f_op_f32(1614f * var_3.x), Struct_1(var_0.a)), select(!vec3<bool>(var_0.a.x, var_0.a.x, true), !vec3<bool>(true, var_0.a.x, true), !vec3<bool>(var_0.a.x, true, var_0.a.x)), vec3<bool>(var_0.a.x, var_0.a.x, true)), true), select(vec3<bool>(var_0.a.x, var_0.a.x, false), vec3<bool>(any(select(vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x), vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, false, false, true))), true, func_2(_wgslsmith_f_op_f32(round(-343f)), Struct_1(var_0.a)).x), !any(var_0.a)), vec3<bool>(false, all(!vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true)), select(all(vec2<bool>(var_0.a.x, var_0.a.x)), !all(vec2<bool>(var_0.a.x, false)), false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1512f, -915f, -1236f, -2050f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, 802f, 375f, 1656f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.x, var_3.x, -233f, var_3.x), vec4<f32>(var_3.x, var_3.x, 979f, var_3.x), vec4<bool>(var_0.a.x, var_4.x, false, var_4.x))))))), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, 2147483647i, -31176i, u_input.a.x), vec4<i32>(-u_input.b.x, 1i, -1i, u_input.b.x)), vec2<i32>(abs(u_input.b.x), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.b.x, u_input.b.x), vec3<i32>(u_input.a.x, u_input.b.x, 2147483647i)))) << (countOneBits(vec2<u32>(var_2.x << (var_2.x % 32u), 20022u)) % vec2<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(1379f + var_3.x), 720f, -2244f));
}


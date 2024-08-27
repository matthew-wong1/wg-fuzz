struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    let var_0 = ~select(~(vec4<u32>(4294967295u, arg_2.c.x, 27729u, 34759u) << (~vec4<u32>(arg_2.c.x, 83873u, arg_2.c.x, arg_2.c.x) % vec4<u32>(32u))), vec4<u32>(~arg_2.c.x, 1u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.c.x, arg_2.c.x, arg_2.c.x), vec3<u32>(arg_2.c.x, arg_2.c.x, arg_2.c.x)), 35090u), arg_2.c.x), !all(vec4<bool>(true, true, true, false)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.b)) * _wgslsmith_f_op_f32(arg_0.x + 745f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a.x, -1305f) * _wgslsmith_f_op_f32(min(arg_2.a.x, arg_0.x)))) * 315f), -123f);
    var var_2 = arg_2;
    var_1 = _wgslsmith_f_op_f32(floor(-805f));
    let var_3 = arg_2;
    return _wgslsmith_div_f32(var_2.b, 1000f);
}

fn func_2() -> vec4<bool> {
    let var_0 = 4294967295u;
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec4<f32>(-1000f, -453f, -934f, 332f), Struct_1(vec3<i32>(u_input.a, 0i, 1i)), Struct_2(vec4<f32>(-839f, 740f, -707f, 837f), 1570f, vec2<u32>(var_0, var_0), Struct_1(vec3<i32>(-6839i, -2147483647i, 1i))))), 364f)), -325f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(894f + 616f))))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(325f, var_1.x, var_1.x, 1896f))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(1516f, var_1.x), _wgslsmith_f_op_f32(1363f + 493f)), -986f, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-222f + var_1.x))), any(vec2<bool>(true, any(vec2<bool>(false, true)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-427f, -850f)) * -2060f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1751f))))), vec2<u32>(var_0, var_0), Struct_1(countOneBits(abs(vec3<i32>(1i, u_input.a, 1i))) << (_wgslsmith_add_vec3_u32(vec3<u32>(var_0, 17811u, 1u) ^ vec3<u32>(var_0, var_0, 1u), vec3<u32>(29728u, 16794u, 49884u)) % vec3<u32>(32u))));
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, var_2.b, -1079f, var_2.b)))) - vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), var_2.a.x, -620f)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, -467f, 1517f, 1539f))))))), _wgslsmith_f_op_f32(var_2.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1343f - var_1.x))), vec2<u32>((abs(var_2.c.x) ^ _wgslsmith_clamp_u32(4294967295u, 0u, 4294967295u)) << ((~var_2.c.x >> (~var_0 % 32u)) % 32u), var_0), var_2.d);
    var var_4 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, -1000f) - vec4<f32>(var_1.x, -1132f, -765f, -197f)), var_3.d, Struct_2(vec4<f32>(670f, -1000f, var_2.a.x, -371f), -214f, var_2.c, var_3.d)))), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 398f), 1656f, false)), min(var_3.c, var_2.c), var_3.d);
    return vec4<bool>(all(vec3<bool>(true, true, true)), false, select(18467u <= var_3.c.x, all(vec2<bool>(true, true)), !(!any(vec4<bool>(true, true, true, true)))), !select(!select(true, true, true), true, any(vec4<bool>(true, true, true, true))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = u_input.a;
    let var_1 = arg_2;
    let var_2 = countOneBits(-reverseBits(var_1.a.x ^ _wgslsmith_mult_i32(0i, -25519i)));
    var var_3 = ~_wgslsmith_dot_vec4_u32(~min(vec4<u32>(17765u, 62177u, 4294967295u, 102139u), vec4<u32>(4294967295u, 26290u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)) << (~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(65971u, 24330u, 29565u, 50794u)), ~(~0u)) % 32u);
    let var_4 = Struct_1(arg_2.a);
    return Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-832f, 980f, 438f, -1960f) + vec4<f32>(-483f, -1938f, 257f, 609f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(727f, -529f, 640f, 1029f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1259f, -362f, 756f, -725f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -139f)), ~vec2<u32>(4294967295u, 1u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), Struct_1(~(-(vec3<i32>(472i, -2649i, var_0) | var_4.a))));
}

fn func_1(arg_0: bool) -> Struct_2 {
    return func_4(!select(func_2(), !vec4<bool>(false, false, arg_0, arg_0), false), func_2().xxw, Struct_1(_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.a, u_input.a, 6447i) ^ select(vec3<i32>(66822i, -16104i, 30419i), vec3<i32>(u_input.a, u_input.a, 6068i), vec3<bool>(true, arg_0, true)), firstTrailingBit(-vec3<i32>(15125i, -8098i, u_input.a)))));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: vec2<i32>) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-arg_1.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(531f))), _wgslsmith_f_op_f32(-arg_1.b)), (vec2<u32>(_wgslsmith_dot_vec2_u32(arg_1.c, vec2<u32>(88608u, 38592u)), ~4294967295u) | countOneBits(arg_1.c)) | arg_1.c, func_1(all(vec4<bool>(false, false, true, false)) & func_2().x).d);
    var_0 = func_4(!(!vec4<bool>(any(vec3<bool>(false, false, true)), false, true, true)), vec3<bool>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1103f + var_0.b))) != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_div_f32(966f, var_0.b), any(vec4<bool>(true, false, false, true)))), any(vec2<bool>(any(vec2<bool>(true, true)), true)), ((-653f > var_0.b) && true) == func_2().x), var_0.d);
    return func_4(vec4<bool>(false, all(vec2<bool>(true, true)), true, true), vec3<bool>(true, true, true), func_4(select(func_2(), vec4<bool>(false, false, true, any(vec2<bool>(true, false))), false), vec3<bool>(all(vec3<bool>(false, false, false)), select(true, -21268i < u_input.a, true), false), func_1(true).d).d).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec4<f32>(1176f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_5(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 68117u, 0u), vec3<u32>(1u, 4294967295u, 0u)), func_1(true), vec2<i32>(u_input.a, 1i))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-852f + _wgslsmith_f_op_f32(-474f - 418f)) + _wgslsmith_f_op_f32(sign(-419f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1436f, -183f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1778f)), _wgslsmith_f_op_f32(abs(-783f)))))), vec2<u32>(_wgslsmith_add_u32(~firstLeadingBit(0u), 1u), 45562u), Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a ^ 25784i, -1i, _wgslsmith_add_i32(u_input.a, -2147483647i)), ~vec3<i32>(0i, 23243i, 0i))));
    var var_1 = u_input.a >> (var_0.c.x % 32u);
    var_1 = abs(func_1(true).d.a.x);
    var_1 = ~max(u_input.a, u_input.a);
    var var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.a - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, 179f, 138f, var_0.b) + vec4<f32>(-825f, var_0.a.x, -2088f, var_2.a.x))))), ~(~_wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, 16964i, u_input.a, var_0.d.a.x), vec4<i32>(-7064i, u_input.a, var_0.d.a.x, var_2.d.a.x) << (vec4<u32>(22004u, var_2.c.x, var_2.c.x, var_2.c.x) % vec4<u32>(32u)))));
}


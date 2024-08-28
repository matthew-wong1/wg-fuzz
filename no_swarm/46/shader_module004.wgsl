struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: vec2<bool>) -> f32 {
    var var_0 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b & 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 17951u, 1u), vec4<u32>(0u, 4294967295u, 4294967295u, 24012u)), _wgslsmith_add_u32(11734u, u_input.b), abs(7047u)), vec4<u32>(_wgslsmith_sub_u32(0u, 0u), u_input.b ^ u_input.b, countOneBits(50167u), _wgslsmith_mod_u32(u_input.b, u_input.b))), ~4294967295u) | _wgslsmith_clamp_u32(_wgslsmith_div_u32(74103u, _wgslsmith_dot_vec4_u32(vec4<u32>(61708u, 4294967295u, u_input.b, u_input.b), vec4<u32>(u_input.b, 38709u, u_input.b, u_input.b))), select(~18317u, 1u, (u_input.a.x != u_input.a.x) || any(arg_0.yx)), u_input.b);
    let var_1 = arg_2.x && any(select(!(!vec4<bool>(true, false, arg_2.x, arg_0.x)), !(!vec4<bool>(true, true, true, arg_2.x)), !any(arg_0)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.x, -886f, 1247f))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(218f, arg_1.x, arg_1.x)))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -365f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + arg_1.x)), 334f)));
    let var_3 = _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(30356i, u_input.a.x, -2147483647i), vec3<i32>(u_input.a.x, u_input.a.x, -42852i)), ~select(vec3<i32>(u_input.a.x, u_input.a.x, 22230i), vec3<i32>(-304i, -7743i, u_input.a.x), arg_0)), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 16793i, u_input.a.x), vec3<i32>(-2147483647i, 1i, -6362i)), min(~vec3<i32>(u_input.a.x, 18361i, -64651i), -vec3<i32>(u_input.a.x, -1i, 1i)))) << (~(~vec3<u32>(~52106u, _wgslsmith_sub_u32(55347u, 13631u), 2761u)) % vec3<u32>(32u));
    let var_4 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + arg_1.x) * var_2.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_f_op_f32(397f * -1811f))), -136f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - var_2.x) - _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(sign(var_2.x))))));
    return var_2.x;
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_1(arg_1.x);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1461f - _wgslsmith_f_op_f32(var_0.a - var_0.a)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(vec3<bool>(false, false, false), arg_1.yy, vec2<bool>(false, false))))))), 1000f, -248f);
    var_1 = arg_1;
    var_1 = _wgslsmith_f_op_vec3_f32(arg_1 + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1 - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -784f), var_1.x, -1397f)), arg_1));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(step(1083f, -1387f)), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a + arg_1.x))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-108f)), _wgslsmith_f_op_f32(round(420f)))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x))))));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2(1i, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1612f, -1652f, arg_0) + vec3<f32>(-701f, -560f, 696f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(264f, -1571f, arg_0) - vec3<f32>(arg_1.a, 1652f, arg_0)))), arg_1)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.a - 950f), _wgslsmith_div_f32(1443f, arg_0))))), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.a, -686f, arg_3)) * _wgslsmith_f_op_f32(step(106f, arg_0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(222f * _wgslsmith_f_op_f32(trunc(-952f))) + 742f)) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.a, -1203f, 704f, arg_1.a))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_1.a)), _wgslsmith_f_op_f32(-690f + arg_1.a), arg_0, arg_1.a)))));
    let var_1 = abs(_wgslsmith_clamp_vec2_u32(~firstLeadingBit(vec2<u32>(11178u, 1u) & vec2<u32>(arg_2, arg_2)), vec2<u32>(~(~1u), ~_wgslsmith_mod_u32(87414u, 50314u)), select(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(4294967295u, arg_2)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(u_input.b, u_input.b)) ^ (vec2<u32>(1u, arg_2) >> (vec2<u32>(u_input.b, 0u) % vec2<u32>(32u))), any(select(vec4<bool>(true, false, arg_3, true), vec4<bool>(true, false, true, true), arg_3)))));
    let var_2 = arg_1;
    let var_3 = vec3<u32>(~1u, 0u, u_input.b);
    return min(vec3<u32>(~var_3.x, reverseBits(u_input.b), 1u), var_3);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~((~(vec3<u32>(u_input.b, u_input.b, 1u) << (vec3<u32>(51148u, 25525u, u_input.b) % vec3<u32>(32u))) & ~vec3<u32>(100711u, 0u, 48215u)) << (~func_1(_wgslsmith_f_op_f32(max(330f, 422f)), Struct_1(1000f), firstTrailingBit(29114u), false) % vec3<u32>(32u)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(u_input.a.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1146f, -623f, -758f) - vec3<f32>(-576f, -955f, 584f)), Struct_1(168f)))))));
    let var_2 = Struct_1(1192f);
    var var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_2.a, var_2.a)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-405f, var_2.a, 818f) + vec3<f32>(var_1.a, 1087f, -1445f))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a, var_1.a, var_1.a), vec3<f32>(var_1.a, 591f, -514f), true))))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(292f, 1720f, var_2.a)))))));
    var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1321f + var_3.x)), var_1.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_3.x, var_1.a))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(-var_2.a), 595f), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_3.x, var_3.x, var_2.a))))), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), true))), vec3<f32>(var_1.a, _wgslsmith_f_op_f32(-var_2.a), -385f)), vec3<bool>(any(select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), all(vec2<bool>(true, true)))), false, true)));
    var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.a, var_3.x, var_1.a), vec3<f32>(-593f, var_1.a, var_1.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, 890f, var_1.a)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, -260f, -462f) + vec3<f32>(var_1.a, 329f, var_1.a)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, var_1.a, var_1.a) + vec3<f32>(var_2.a, 1704f, -504f))))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-458f, 1232f, var_2.a)))))), vec3<f32>(_wgslsmith_f_op_f32(-var_1.a), var_3.x, _wgslsmith_f_op_f32(func_2(-2147483647i, _wgslsmith_f_op_vec3_f32(vec3<f32>(1053f, 296f, -1804f) * vec3<f32>(-1872f, -569f, -468f)), var_1))))));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1331f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-607f))))));
    var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(362f, var_2.a, -146f))))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(select(var_0, var_0, true), ~var_0), firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, 4294967295u, u_input.b), var_0))), var_0.x, min(~firstLeadingBit(var_0.x), ~u_input.b), min(var_0.x, _wgslsmith_add_u32(4294967295u, var_0.x) | ~var_0.x)), _wgslsmith_f_op_f32(ceil(-250f)), abs(max(~(-vec2<i32>(u_input.a.x, u_input.a.x)), ~countOneBits(vec2<i32>(-1i, -1i)))));
}


struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<f32> {
    var var_0 = u_input.a.x;
    var_0 = ~select(~(~abs(u_input.a.x)), _wgslsmith_mult_i32(~u_input.a.x, 1i) | ~(~u_input.a.x), true);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-944f * _wgslsmith_f_op_f32(trunc(991f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -534f)))), vec2<u32>(53359u, ~39925u));
    var var_2 = select(vec4<u32>(var_1.b.x, _wgslsmith_mod_u32(41013u, _wgslsmith_dot_vec2_u32(u_input.c, var_1.b)), u_input.e.x, u_input.b.x), vec4<u32>(1u, firstLeadingBit(u_input.b.x), 0u, ~u_input.b.x), vec4<bool>(true, true, true, true));
    let var_3 = Struct_2(u_input.a.xwz);
    return _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-408f + 528f)), _wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(-var_1.a)))), 846f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(324f, var_1.a, var_1.a, var_1.a), vec4<f32>(var_1.a, -340f, -547f, -2232f), false)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(190f, 2409f, var_1.a, -1498f), vec4<f32>(-1948f, var_1.a, var_1.a, 2443f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.a, var_1.a, var_1.a, 872f), vec4<f32>(var_1.a, -2194f, -819f, 1000f))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(select(-1435f, -1795f, true)), _wgslsmith_f_op_f32(var_1.a * 1023f), 1086f, 377f))), true)), vec4<bool>(1u >= var_1.b.x, !all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), true, all(vec3<bool>(true, true, true)))));
}

fn func_2() -> vec3<i32> {
    let var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1067f, 2372f, _wgslsmith_f_op_f32(620f - -281f), 691f)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(506f, -464f, 109f, 829f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-431f, -633f, -1370f, 1155f))))))));
    let var_2 = 4294967295u;
    var var_3 = vec2<u32>((_wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.d.x, u_input.e.x, var_2), vec3<u32>(48303u, 4294967295u, u_input.c.x)), _wgslsmith_mod_vec3_u32(u_input.e, vec3<u32>(var_2, 53074u, 7750u))) << (var_2 % 32u)) >> (1u % 32u), u_input.d.x);
    var var_4 = Struct_2(select(firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(14614i, var_0, 63602i), u_input.a.xyw) ^ ~vec3<i32>(0i, u_input.a.x, -16125i)), max(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, -10243i, 0i), u_input.a.www), u_input.a.zyx & vec3<i32>(1i, u_input.a.x, u_input.a.x)) & ~_wgslsmith_mult_vec3_i32(u_input.a.wwz, u_input.a.wyw), !vec3<bool>(true, var_1.x > var_1.x, any(vec2<bool>(false, false)))));
    return _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, var_4.a.x, ~(-44132i)) & ~_wgslsmith_clamp_vec3_i32(max(var_4.a, var_4.a), _wgslsmith_div_vec3_i32(vec3<i32>(-1415i, 33988i, var_4.a.x), vec3<i32>(-1i, var_0, var_4.a.x)), vec3<i32>(-6087i, var_4.a.x, -38794i) << (vec3<u32>(77755u, var_3.x, u_input.c.x) % vec3<u32>(32u))), countOneBits(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, var_4.a.x, u_input.a.x), vec3<i32>(u_input.a.x, 24008i, u_input.a.x)), vec3<i32>(var_4.a.x, var_4.a.x, 19262i))) & ~vec3<i32>(var_4.a.x, 2147483647i >> (0u % 32u), ~var_4.a.x));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: Struct_2) -> f32 {
    let var_0 = abs(-max(firstLeadingBit(arg_0) & arg_2.a, vec3<i32>(12146i, -18956i, arg_1.x) | vec3<i32>(1i, u_input.a.x, arg_0.x)));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(934f)))))))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<bool>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(564f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1666f)))));
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(-abs(-arg_1.a), _wgslsmith_add_vec3_i32(min(u_input.a.yyx, vec3<i32>(2147483647i, arg_1.a.x, arg_0.a.x)) & _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, arg_0.a.x, u_input.a.x), arg_1.a), arg_1.a), Struct_2(-arg_1.a & func_2()))) * _wgslsmith_div_f32(var_0.x, var_0.x));
    let var_3 = arg_0.a;
    var_2 = var_0.x;
    return reverseBits(abs(firstLeadingBit(u_input.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = ~u_input.d.xz;
    let var_2 = -(~_wgslsmith_sub_i32(60170i, 1i));
    var var_3 = reverseBits(_wgslsmith_div_vec4_u32(~u_input.d, ~func_1(Struct_2(vec3<i32>(1i, 3752i, -2147483647i)), Struct_2(u_input.a.wzw), vec2<bool>(true, false))));
    var var_4 = Struct_2(vec3<i32>(max(min(var_2, 1i), -_wgslsmith_add_i32(18298i, 7039i)), -33075i >> (func_1(Struct_2(u_input.a.xzy), Struct_2(u_input.a.zyz), select(vec2<bool>(false, false), vec2<bool>(false, true), false)).x % 32u), -var_2));
    var_4 = Struct_2(u_input.a.xwx);
    let var_5 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(261f * 2614f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1330f)) + _wgslsmith_f_op_f32(f32(-1f) * -551f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1515f * -326f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-508f)), _wgslsmith_f_op_f32(-188f - 550f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 967f) - vec2<f32>(var_5, var_5)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5, 543f)))))), max(vec4<u32>(var_3.x, 56418u, u_input.e.x, ~1u), select(~firstTrailingBit(u_input.d), ~vec4<u32>(u_input.d.x, var_1.x, var_3.x, 26651u), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), true), vec4<bool>(true, false, false, false)))));
}


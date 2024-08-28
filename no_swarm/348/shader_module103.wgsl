struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    var var_0 = Struct_1(select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true))), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), true), vec3<bool>(true, any(vec4<bool>(true, false, true, false)), select(true, true, all(vec4<bool>(false, false, true, false)))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)));
    var_0 = Struct_1(select(select(var_0.a, var_0.a, var_0.a.x), var_0.a, !any(vec3<bool>(var_0.a.x, var_0.a.x, true))));
    var_0 = Struct_1(!select(select(select(var_0.a, vec3<bool>(true, false, false), true), !vec3<bool>(var_0.a.x, true, false), var_0.a.x), !var_0.a, var_0.a.x));
    var var_1 = Struct_1(select(!var_0.a, vec3<bool>(all(!vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x)), var_0.a.x, var_0.a.x), select(select(!vec3<bool>(false, var_0.a.x, false), var_0.a, var_0.a.x), var_0.a, !var_0.a)));
    let var_2 = Struct_1(vec3<bool>(select(true, false, any(var_0.a)), true, true));
    return u_input.a;
}

fn func_2(arg_0: f32) -> vec4<f32> {
    var var_0 = arg_0;
    var var_1 = -374f;
    var var_2 = Struct_1(vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 349f) * arg_0) <= arg_0, true, false));
    var var_3 = _wgslsmith_div_i32(abs(-_wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, u_input.a, u_input.a, u_input.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, -1i, u_input.a), vec4<i32>(0i, u_input.a, -9443i, -1i)))), func_3());
    let var_4 = vec3<bool>(var_2.a.x || (any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, var_2.a.x, true, true), vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, false))) & false), var_2.a.x, any(select(vec2<bool>(true, var_2.a.x), var_2.a.yz, true)) & false);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-564f, -401f, -165f, arg_0), vec4<f32>(-1465f, arg_0, arg_0, arg_0)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1376f, arg_0, arg_0, arg_0))))), !(!select(vec4<bool>(var_2.a.x, var_4.x, false, true), vec4<bool>(var_2.a.x, var_4.x, true, var_4.x), false)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: f32) -> vec4<bool> {
    return !(!select(select(vec4<bool>(arg_1.a.x, false, true, true), vec4<bool>(true, false, false, true), any(vec4<bool>(true, true, false, false))), !vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x), arg_1.a.x));
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: vec4<f32>) -> vec3<u32> {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(arg_2.x)) + arg_2), Struct_1(!(!vec3<bool>(false, arg_1.x, true))), arg_2.zx, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(arg_2.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - 638f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_2.x, arg_2.x))))))));
    var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -486f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1122f)) - _wgslsmith_f_op_f32(select(-131f, -2119f, var_0.x)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(arg_2.yy - vec2<f32>(arg_2.x, 342f))))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.yy - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2.x, var_1.x), vec2<f32>(arg_2.x, -1763f))))), vec2<f32>(_wgslsmith_f_op_f32(select(-445f, _wgslsmith_f_op_f32(f32(-1f) * -448f), true)), _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(sign(arg_2.x)), func_4(arg_2, Struct_1(arg_1.yww), vec2<f32>(1000f, 997f), -1000f).x))))));
    let var_2 = arg_0;
    return ~vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(var_2, var_2), select(vec2<u32>(19028u, 4294967295u), vec2<u32>(arg_0, arg_0), arg_1.x)), min(~vec2<u32>(1u, var_2), vec2<u32>(var_2, var_2))), _wgslsmith_sub_u32(var_2 ^ var_2, 1u), max(var_2, ~(61823u | arg_0)));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_1(!select(!arg_0.a, func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-729f, -403f, -1310f, -1256f)), Struct_1(vec3<bool>(false, false, false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(387f, 554f)), -850f).yxy, arg_0.a));
    let var_1 = arg_0;
    var_0 = Struct_1(arg_0.a);
    var var_2 = _wgslsmith_div_vec2_i32(max(select(min(-vec2<i32>(15313i, u_input.a), -vec2<i32>(u_input.a, 11787i)), ~firstLeadingBit(vec2<i32>(u_input.a, u_input.a)), true), countOneBits(_wgslsmith_mult_vec2_i32(abs(vec2<i32>(u_input.a, u_input.a)), countOneBits(vec2<i32>(-1771i, u_input.a))))), vec2<i32>(-1i, -1i));
    var var_3 = arg_1.x;
    return Struct_1(vec3<bool>(true, arg_1.x > arg_1.x, func_4(vec4<f32>(_wgslsmith_f_op_f32(round(737f)), _wgslsmith_f_op_f32(-1000f - -1090f), _wgslsmith_f_op_f32(ceil(268f)), _wgslsmith_f_op_f32(ceil(332f))), Struct_1(vec3<bool>(false, arg_0.a.x, var_0.a.x)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -686f), _wgslsmith_f_op_f32(-595f * -2281f)), _wgslsmith_f_op_f32(444f * _wgslsmith_f_op_vec4_f32(func_2(1877f)).x)).x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2179f))));
    var var_1 = -2147483647i;
    var var_2 = func_5(Struct_1(!vec3<bool>(true, all(vec4<bool>(false, true, true, true)), all(vec3<bool>(false, true, false)))), func_1(1u, vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-156f, 143f, 932f, 673f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-459f, 809f, -1000f, 2381f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-225f, -1311f, -172f, -419f))))));
    var var_3 = !select(select(!vec4<bool>(true, var_2.a.x, var_2.a.x, false), func_4(vec4<f32>(1000f, -1115f, 550f, 403f), func_5(Struct_1(var_2.a), vec3<u32>(1u, 4294967295u, 35856u)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1210f, -274f))), 1367f), vec4<bool>(!var_2.a.x, all(vec2<bool>(true, var_2.a.x)), var_2.a.x, false)), vec4<bool>(true, true, true, true), all(!(!var_2.a.zx)));
    var var_4 = Struct_1(!select(var_2.a, var_2.a, !select(true, var_3.x, var_3.x)));
    let var_5 = countOneBits(min(-firstLeadingBit(vec2<i32>(2147483647i, u_input.a) >> (vec2<u32>(4294967295u, 97412u) % vec2<u32>(32u))), ~(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-62377i, u_input.a), vec2<i32>(-14192i, u_input.a), vec2<i32>(u_input.a, -2147483647i)))));
    var_3 = vec4<bool>(true, var_4.a.x, !var_3.x, !var_2.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(func_2(-1848f)).x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(487f + -106f)))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(firstTrailingBit(0u), 51336u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 4329u)), ~15973u), _wgslsmith_mod_vec4_u32(vec4<u32>(9938u, 0u, 0u, 26021u), _wgslsmith_mod_vec4_u32(vec4<u32>(5499u, 1u, 5352u, 4294967295u), vec4<u32>(22257u, 115407u, 4294967295u, 93453u))), abs(vec4<u32>(119878u, 0u, 0u, 0u))), 28081u);
}


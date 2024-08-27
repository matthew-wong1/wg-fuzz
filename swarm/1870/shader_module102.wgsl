struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    var var_0 = vec3<bool>(any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true))), false, true);
    var_0 = select(vec3<bool>(true, true, false), !select(select(!vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(var_0.x, true, false), !vec3<bool>(true, var_0.x, true)), select(select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, var_0.x, false)), select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, var_0.x, true)), var_0.x), false), vec3<bool>(false, any(vec3<bool>(true, true, true)), !(all(vec3<bool>(var_0.x, var_0.x, var_0.x)) && true)));
    var_0 = select(!(!(!select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(false, var_0.x, true), vec3<bool>(false, false, false)))), select(!(!select(vec3<bool>(true, true, var_0.x), vec3<bool>(false, var_0.x, false), var_0.x)), !(!vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x), !(!var_0.x & !(var_0.x || false)));
    var_0 = !(!select(!(!vec3<bool>(true, var_0.x, var_0.x)), select(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, false, var_0.x)), vec3<bool>(false, false, true), any(vec4<bool>(true, var_0.x, var_0.x, false))), !var_0.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1266f - 1810f)), 571f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(749f, -425f))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(871f, 2681f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -935f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-641f))))));
    return select(select(select(select(select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true), var_0.x), select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, false, false), var_0.x), select(vec3<bool>(true, true, var_0.x), vec3<bool>(var_0.x, var_0.x, true), false)), !vec3<bool>(var_0.x, true, false), select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, false), vec3<bool>(true, var_0.x, var_0.x)), vec3<bool>(true, false, var_0.x), any(var_0.xz))), select(select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(false, var_0.x, var_0.x)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, false, var_0.x)), !vec3<bool>(false, var_0.x, var_0.x)), select(!vec3<bool>(var_0.x, false, false), !vec3<bool>(var_0.x, false, var_0.x), true), true), !(!vec3<bool>(false, var_0.x, var_0.x))), !vec3<bool>(!var_0.x, var_0.x, select(all(vec3<bool>(var_0.x, var_0.x, var_0.x)), select(var_0.x, true, var_0.x), false)), var_0.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> f32 {
    var var_0 = arg_1;
    var_0 = arg_1;
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(761f, _wgslsmith_f_op_f32(arg_1.a.x + var_0.a.x), var_0.a.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.a.x)), -1600f, _wgslsmith_f_op_f32(abs(-431f))))), -1756f, all(!select(vec3<bool>(arg_1.c, arg_1.c, arg_1.c), func_3(), !vec3<bool>(true, false, arg_1.c))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) - _wgslsmith_f_op_f32(737f - -1723f)))) - var_0.a.x));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * _wgslsmith_f_op_f32(step(var_0.b, 1000f))), -1441f))));
    return _wgslsmith_f_op_f32(-2232f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), 445f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a.x, var_0.b)) - _wgslsmith_f_op_f32(f32(-1f) * -572f))));
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-479f, -1359f, 2660f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-315f, 1408f, 100f)))))), _wgslsmith_div_f32(-130f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-vec4<i32>(14290i, -2064i, 20098i, 2147483647i), Struct_1(vec3<f32>(919f, 1192f, 660f), 358f, true))))), all(vec4<bool>(!(!arg_0.x), arg_0.x, true, arg_0.x)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-563f, -251f, _wgslsmith_f_op_f32(var_0.a.x + var_0.a.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(vec4<i32>(1i, 1i, 1i, 1i), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-513f, 1244f, var_0.b)), _wgslsmith_f_op_f32(-823f - var_0.a.x), var_0.c != false))), _wgslsmith_f_op_f32(-1233f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * var_0.b))))), var_0.c);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1.a.x * var_1.a.x), _wgslsmith_f_op_f32(step(-279f, var_0.a.x)), var_0.b)), _wgslsmith_f_op_vec3_f32(-var_1.a), select(select(vec3<bool>(var_1.c, var_1.c, true), !arg_0.wxy, func_3().x), !select(arg_0.wxz, vec3<bool>(var_1.c, var_0.c, var_0.c), vec3<bool>(false, arg_0.x, true)), false))), 316f, any(arg_0.xyw));
    var var_3 = var_1;
    let var_4 = vec2<bool>(any(select(arg_0.zwz, !arg_0.wyz, false)) | var_3.c, true);
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec2<bool>) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_2.a, arg_0.a))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.a + vec3<f32>(arg_0.b, arg_2.b, arg_2.b)) * _wgslsmith_f_op_vec3_f32(-arg_0.a)))), -1551f, !all(!(!vec3<bool>(false, arg_0.c, arg_3.x))));
    let var_1 = arg_3;
    var var_2 = !(!(!arg_3.x && all(vec4<bool>(true, arg_3.x, true, var_1.x))) & true);
    var var_3 = func_1(!vec4<bool>(false, ~54084u == abs(u_input.c), true, true));
    var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_3.a), var_3.b, -354f < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(211f + arg_0.a.x)))));
    return _wgslsmith_f_op_f32(func_2(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 19067i, -2147483647i, 11199i) << (vec4<u32>(u_input.b, u_input.c, 0u, 32025u) % vec4<u32>(32u)), vec4<i32>(-27920i, -48868i, 2147483647i, 24814i) >> (vec4<u32>(u_input.b, u_input.c, 26344u, u_input.a.x) % vec4<u32>(32u))), min(vec4<i32>(-43917i, 42161i, 0i, 5564i), vec4<i32>(-1i, 30077i, 1i, 5822i))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, var_3.b, var_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a.x, var_0.b)) * _wgslsmith_f_op_f32(-arg_1)), any(select(vec4<bool>(true, arg_3.x, false, true), vec4<bool>(var_0.c, false, arg_2.c, true), var_0.c))))) < -116f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec3<bool>(true, true, true), vec3<bool>(true, all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false)), all(vec3<bool>(true, true, true))), vec3<bool>(!any(vec4<bool>(true, true, false, false)), !(40038u > u_input.a.x), func_4(Struct_1(vec3<f32>(1399f, 540f, 1000f), -1262f, true), -859f, func_1(vec4<bool>(false, true, false, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))))), func_3(), !select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), func_1(vec4<bool>(true, false, true, true)).c != true));
    let var_1 = u_input.a.x;
    let var_2 = 1u;
    let var_3 = _wgslsmith_mult_u32(select(u_input.c, u_input.b, !(~var_1 != ~0u)), u_input.a.x);
    let var_4 = func_1(select(vec4<bool>(any(var_0.xz), all(vec4<bool>(false, var_0.x, true, var_0.x)), var_0.x | func_1(vec4<bool>(var_0.x, var_0.x, var_0.x, false)).c, all(var_0)), select(vec4<bool>(false, var_0.x, true, any(vec4<bool>(var_0.x, true, var_0.x, false))), !vec4<bool>(var_0.x, false, true, var_0.x), var_0.x), var_0.x || var_0.x));
    var var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_4.a.x, _wgslsmith_f_op_f32(-var_4.a.x), _wgslsmith_f_op_f32(round(736f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1193f, -152f, var_4.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_4.a) * vec3<f32>(var_4.b, var_4.b, -1296f)), !func_1(vec4<bool>(var_0.x, true, true, var_4.c)).c)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(246f, var_4.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_4.a.x, -764f)))))));
    let var_6 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a.xz, vec2<u32>(19132u, 27188u)), var_3, ~var_1, u_input.a.x) << (select(~vec4<u32>(4294967295u, var_3, 27205u, 20685u), reverseBits(vec4<u32>(var_3, var_2, 418u, var_1)), select(vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(true, var_0.x, var_0.x, true), var_4.c)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(~abs(vec4<u32>(var_2, 0u, 7661u, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(59428u, 54730u, var_1, var_3), ~vec4<u32>(56914u, var_1, var_2, var_3), vec4<u32>(var_2, var_2, 1u, var_2))));
    var var_7 = func_1(select(vec4<bool>(_wgslsmith_f_op_f32(sign(var_5.x)) != 238f, var_0.x, func_3().x, !(var_0.x & var_0.x)), !vec4<bool>(var_4.a.x >= 2277f, 4294967295u != var_6, true, true), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(~min(firstTrailingBit(u_input.a), u_input.a), _wgslsmith_div_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_6, 38188u, var_1), vec3<u32>(var_3, var_1, var_6)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, var_2, 8464u), ~vec3<u32>(51573u, 10466u, var_2)))), _wgslsmith_div_f32(-1000f, var_7.a.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(81959u, var_6, 2457u), u_input.a), _wgslsmith_sub_u32(0u, u_input.b), var_2, 4294967295u), ~(vec4<u32>(var_2, 65521u, var_2, 0u) & vec4<u32>(var_6, u_input.a.x, 28477u, var_2)), min(vec4<u32>(var_1, 1u, 37946u, 0u) & vec4<u32>(var_1, 1u, var_6, var_3), vec4<u32>(38562u, 47386u, 0u, var_2) ^ vec4<u32>(var_6, 0u, var_3, var_2))) << (firstLeadingBit(reverseBits(vec4<u32>(56887u, 0u, 111121u, var_1))) % vec4<u32>(32u)));
}


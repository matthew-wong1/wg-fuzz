struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_2, arg_3: vec4<u32>) -> f32 {
    let var_0 = -vec3<i32>(arg_0.x, 1i, u_input.a);
    var var_1 = arg_2.b.a;
    var_1 = true;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(arg_1 + arg_1), arg_1, arg_1);
    let var_3 = _wgslsmith_f_op_f32(ceil(var_2.x));
    return arg_1;
}

fn func_2() -> Struct_1 {
    var var_0 = false;
    var_0 = !(!all(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(false, true, false))));
    var_0 = any(vec2<bool>(_wgslsmith_f_op_f32(func_3(vec3<i32>(0i, u_input.a, -2147483647i) << (vec3<u32>(37804u, u_input.b, u_input.b) % vec3<u32>(32u)), _wgslsmith_div_f32(-1272f, 615f), Struct_2(Struct_1(true, true), Struct_1(true, true)), vec4<u32>(u_input.b, u_input.b, u_input.b, 7668u) << (vec4<u32>(4294967295u, 4294967295u, u_input.b, 25758u) % vec4<u32>(32u)))) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1010f))), countOneBits(u_input.b >> (1u % 32u)) != _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.b, 4294967295u, 0u), ~vec4<u32>(u_input.b, 0u, 36498u, u_input.b))));
    var var_1 = Struct_1(true, false);
    var var_2 = !(!(!all(select(vec2<bool>(true, true), vec2<bool>(true, var_1.a), var_1.b))));
    return Struct_1(!(reverseBits(u_input.b) < 1282u), any(vec4<bool>(var_1.b, all(select(vec3<bool>(var_1.a, var_1.b, true), vec3<bool>(true, false, true), vec3<bool>(var_1.a, true, var_1.b))), all(vec4<bool>(true, var_1.a, var_1.b, true)), true)));
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_mult_u32(abs(~(~_wgslsmith_mod_u32(1911u, u_input.b))), 63629u);
    var_1 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(47530u, ~u_input.b), abs(~u_input.b));
    let var_2 = vec2<bool>(_wgslsmith_mult_i32(reverseBits(14803i | u_input.a), _wgslsmith_sub_i32(0i, -22173i)) <= 2147483647i, var_0.b);
    var_1 = 72566u;
    return Struct_2(Struct_1(true, var_0.b), Struct_1(2147483647i >= max(_wgslsmith_add_i32(u_input.a, 2147483647i), _wgslsmith_clamp_i32(40209i, u_input.a, -2147483647i)), !var_0.b));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> f32 {
    var var_0 = firstLeadingBit(select(min(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(35653u, u_input.b), vec2<u32>(u_input.b, u_input.b)), u_input.b, 20360u, u_input.b << (u_input.b % 32u)), ~vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b) | vec4<u32>(1u, u_input.b, 0u, u_input.b)), vec4<u32>(722u, u_input.b >> (u_input.b % 32u), 87599u, 14220u) | abs(min(vec4<u32>(6280u, 4294967295u, 0u, 13462u), vec4<u32>(4294967295u, u_input.b, 1u, 41274u))), any(select(select(vec3<bool>(arg_2.b.b, true, true), vec3<bool>(true, false, arg_0.a), vec3<bool>(true, false, false)), !vec3<bool>(false, arg_0.b, false), !vec3<bool>(arg_0.a, arg_1, false)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
}

fn func_5(arg_0: f32, arg_1: bool) -> Struct_2 {
    let var_0 = vec2<i32>(_wgslsmith_div_i32(1i, ~(~(-u_input.a))), -u_input.a);
    var var_1 = abs(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(~abs(vec3<u32>(0u, 4294967295u, u_input.b)), abs(vec3<u32>(31606u, 0u, 0u)) ^ _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 35845u, u_input.b), vec3<u32>(u_input.b, 1u, u_input.b))), vec3<u32>(firstLeadingBit(u_input.b >> (0u % 32u)), ~0u << (u_input.b % 32u), u_input.b)));
    var_1 = ~countOneBits(_wgslsmith_add_vec3_u32(abs(vec3<u32>(98819u, var_1.x, var_1.x)), vec3<u32>(1u, 4294967295u, 60866u)) | _wgslsmith_clamp_vec3_u32(~vec3<u32>(var_1.x, 19206u, 22908u), ~vec3<u32>(u_input.b, 1u, var_1.x), vec3<u32>(u_input.b, 4294967295u, u_input.b) ^ vec3<u32>(13467u, u_input.b, 39251u)));
    var var_2 = u_input.b;
    var_2 = abs(_wgslsmith_mod_u32(min(abs(~u_input.b), firstTrailingBit(1u)), ~(~22165u)));
    return func_1(vec2<f32>(arg_0, 303f));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1180f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(892f - _wgslsmith_f_op_f32(f32(-1f) * -193f))), 477f));
    var var_1 = select(vec4<u32>(reverseBits(u_input.b), abs(u_input.b), u_input.b, 1u | u_input.b), min(firstTrailingBit(~(~vec4<u32>(u_input.b, u_input.b, 24340u, 1u))), ~(~(vec4<u32>(u_input.b, 1u, 17254u, 104756u) << (vec4<u32>(4294967295u, 0u, u_input.b, 60693u) % vec4<u32>(32u))))), vec4<bool>(true, all(!vec4<bool>(arg_1.b, arg_0.b.b, true, true)), func_2().b, arg_1.b));
    var var_2 = vec3<f32>(-1190f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1077f)), 809f)), 613f);
    var var_3 = 0i | ~(~(-u_input.a));
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(var_2.x + var_0.x), _wgslsmith_f_op_f32(var_2.x - var_0.x), -2525f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1019f, var_0.x, var_2.x))) * _wgslsmith_div_vec3_f32(vec3<f32>(-1647f, var_0.x, var_2.x), vec3<f32>(-330f, var_2.x, -1000f))))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_0.x, var_0.x) + vec3<f32>(var_2.x, 2235f, var_2.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-795f, -488f, -1158f) * vec3<f32>(var_0.x, var_2.x, var_0.x)))))));
    return func_5(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_2.x)) + _wgslsmith_f_op_f32(func_3(select(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, -2043i, u_input.a), true), var_0.x, Struct_2(Struct_1(arg_2.b, arg_1.a), arg_0.a), ~vec4<u32>(49513u, 1u, var_1.x, u_input.b)))))), false).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -46407i;
    let var_1 = func_6(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1130f + -136f) * _wgslsmith_f_op_f32(func_4(Struct_1(true, true), false, func_1(vec2<f32>(167f, -161f))))), false), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(3013f - -164f), 352f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(802f, -623f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1825f, 719f) - vec2<f32>(-953f, 867f))))).a, func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -538f)), true).b, func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-323f + -1193f), _wgslsmith_f_op_f32(f32(-1f) * -533f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-111f, -348f), vec2<f32>(-477f, -348f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(602f, -257f), vec2<f32>(-784f, -604f), false))))).b.b);
    var_0 = _wgslsmith_sub_i32(u_input.a, ~(u_input.a | u_input.a));
    var var_2 = Struct_1(var_1.a, _wgslsmith_f_op_f32(func_3(vec3<i32>(u_input.a, -1i, -61854i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1328f + 786f) - _wgslsmith_f_op_f32(-696f + -1439f)), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(497f, -997f))), vec4<u32>(~u_input.b, reverseBits(u_input.b), u_input.b, u_input.b << (u_input.b % 32u)))) >= 1859f);
    let var_3 = func_5(_wgslsmith_f_op_f32(-301f * _wgslsmith_f_op_f32(-279f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1204f))))), any(!vec4<bool>(var_2.b, var_1.a, var_2.b, var_2.b)) & func_6(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-397f, 440f) + vec2<f32>(-2834f, -604f))), Struct_1(false, !var_2.b), func_2(), func_2().b).a);
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(669f, -554f))) - _wgslsmith_f_op_f32(select(-562f, _wgslsmith_f_op_f32(floor(1551f)), any(vec3<bool>(var_3.a.b, var_2.b, var_3.a.b))))), 1000f) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-2707f, 460f, 771f)))))));
    var var_5 = min(_wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(u_input.a), u_input.a, _wgslsmith_div_i32(i32(-1i) * -1951i, u_input.a), u_input.a), -(~(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) | vec4<i32>(-3466i, u_input.a, -38687i, u_input.a)))), u_input.a);
    var var_6 = Struct_1(!(all(!vec4<bool>(false, var_2.a, var_1.b, false)) || var_3.b.a), !var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(291f, -max(max(vec2<i32>(17997i, u_input.a), vec2<i32>(u_input.a, u_input.a)), vec2<i32>(-2147483647i, u_input.a)) << (_wgslsmith_mult_vec2_u32(max(_wgslsmith_add_vec2_u32(vec2<u32>(22691u, 4294967295u), vec2<u32>(u_input.b, u_input.b)), max(vec2<u32>(u_input.b, 1u), vec2<u32>(u_input.b, 1u))), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(50538u, u_input.b), vec2<u32>(4294967295u, 33921u)), ~vec2<u32>(13749u, 34793u))) % vec2<u32>(32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(-5722i, u_input.a & u_input.a, _wgslsmith_div_i32(-2147483647i, 17883i), -2147483647i) | vec4<i32>(-14537i, 16708i, u_input.a, u_input.a), select(-vec4<i32>(-28794i, u_input.a, u_input.a, u_input.a), -vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), !vec4<bool>(true, true, false, var_1.a)) << (~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, 371f, var_4.x, -666f)), vec4<f32>(var_4.x, 573f, 175f, 1519f)) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_4.x, var_4.x, var_4.x, 1686f), vec4<f32>(342f, var_4.x, var_4.x, 775f)))))) + vec4<f32>(var_4.x, var_4.x, var_4.x, -312f)));
}


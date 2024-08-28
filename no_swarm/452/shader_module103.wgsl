struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = Struct_2(~(-arg_1), countOneBits(u_input.a.x), 19968i ^ _wgslsmith_mod_i32(reverseBits(u_input.a.x), u_input.a.x));
    let var_1 = -1000f;
    let var_2 = ~4918u & countOneBits(_wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, 44770u, 56368u)), vec4<u32>(u_input.b.x, 1u, ~57310u, arg_0.x)));
    let var_3 = abs(vec3<i32>(-((u_input.a.x | var_0.c) | -var_0.a.x), -48924i << (u_input.b.x % 32u), var_0.c));
    let var_4 = 22668i;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-3083f, _wgslsmith_f_op_f32(-var_1)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)))) * vec2<f32>(_wgslsmith_f_op_f32(-var_1), -427f)));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: vec2<f32>) -> vec4<f32> {
    let var_0 = -1260f;
    var var_1 = 370f;
    let var_2 = Struct_3(Struct_2(arg_2.a, min(u_input.a.x, u_input.a.x), countOneBits(-(i32(-1i) * -1i))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_3.x, 1518f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_0.x, arg_3.x)))), -829f))), Struct_1(!arg_1.x), true);
    var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(271f, _wgslsmith_f_op_f32(-arg_0.x))));
    var var_3 = vec3<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.b.x * -670f))) > var_0, !(-1i <= var_2.a.b), any(select(!vec3<bool>(false, arg_1.x, true), vec3<bool>(true, any(vec2<bool>(false, var_2.d)), false), select(2147483647i, arg_2.b, var_2.d) >= u_input.a.x)));
    return vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(846f)))))), -1127f, -668f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) + 217f));
}

fn func_2() -> f32 {
    var var_0 = Struct_3(Struct_2(vec4<i32>(-2147483647i, u_input.a.x, _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.a.x, 0i), u_input.a.xx, false), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(7079i, u_input.a.x))), u_input.a.x), u_input.a.x, -u_input.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-283f, 863f, -489f, -1000f), vec4<f32>(359f, -459f, 875f, 493f))))) * _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(u_input.b, vec4<i32>(2147483647i, -63695i, 0i, -39163i), Struct_1(true)))), vec2<bool>(true, u_input.b.x > u_input.b.x), Struct_2(~vec4<i32>(1i, 1i, u_input.a.x, u_input.a.x), ~u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(vec2<f32>(573f, 412f) * vec2<f32>(1015f, -450f))))))), Struct_1(false), true);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b.x, -262f))) - _wgslsmith_f_op_f32(round(var_0.b.x))));
    let var_2 = Struct_2(~_wgslsmith_add_vec4_i32(var_0.a.a, var_0.a.a), u_input.a.x, _wgslsmith_sub_i32(u_input.a.x ^ ~u_input.a.x, -2147483647i) & countOneBits(reverseBits(u_input.a.x)));
    let var_3 = abs(var_2.a.wx);
    var var_4 = -588f;
    return _wgslsmith_f_op_f32(max(-835f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(203f - var_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -653f))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(470f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(step(904f, 623f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -986f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(210f - 341f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(362f, 1024f))))));
    let var_1 = min(27236u, _wgslsmith_div_u32(u_input.b.x, ~_wgslsmith_add_u32(arg_2, 1u)));
    var var_2 = vec3<bool>(arg_3.a, any(select(vec4<bool>(true, true, false, true), vec4<bool>(var_0.x >= var_0.x, true, arg_3.a, !arg_3.a), arg_3.a)), select(true, arg_3.a, select(arg_3.a, all(vec3<bool>(true, arg_3.a, arg_3.a)) || false, true)));
    let var_3 = ~arg_0.x;
    let var_4 = -u_input.a.x;
    return ~(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -arg_1, -_wgslsmith_add_vec4_i32(arg_1, vec4<i32>(var_3, var_3, 882i, -1i)), max(_wgslsmith_div_vec4_i32(vec4<i32>(833i, var_4, 1i, u_input.a.x), arg_1), ~vec4<i32>(2147483647i, var_3, -86425i, arg_1.x))));
}

fn func_5(arg_0: i32, arg_1: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1565f - -1163f), _wgslsmith_f_op_f32(f32(-1f) * -549f)), vec2<f32>(_wgslsmith_f_op_f32(1173f - 557f), 926f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1290f, 1156f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-628f, -551f), vec2<f32>(-1499f, 1042f))), all(vec3<bool>(false, false, true))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -181f))))), !(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), Struct_2(func_1(vec2<i32>(-16113i, -1i), arg_1.a, ~u_input.b.x, Struct_1(false)), 26728i, -(~(-2147483647i))), vec2<f32>(_wgslsmith_div_f32(var_0.x, -726f), 252f))).wy - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_0.x) * vec2<f32>(var_0.x, 704f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec4_f32(func_4(vec2<f32>(var_0.x, -1105f), vec2<bool>(true, false), Struct_2(vec4<i32>(arg_0, 1i, u_input.a.x, -1i), 1i, 21757i), vec2<f32>(-395f, -307f))).wy + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-258f, var_0.x))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(808f, 1944f)))))));
    let var_1 = 4294967295u & _wgslsmith_clamp_u32(~select(u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b, u_input.b), true), select(~select(27645u, 24642u, false), 1u, !all(vec4<bool>(true, true, false, false))), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 4294967295u, 65527u), ~vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)) | _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.b.x, 4294967295u, u_input.b.x), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)));
    let var_2 = var_0.x;
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(611f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2221f))))));
    return Struct_3(arg_1, vec4<f32>(-1332f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(trunc(-474f)))), _wgslsmith_f_op_f32(func_2())), Struct_1(false), any(vec3<bool>(any(vec2<bool>(true, true)) & any(vec3<bool>(false, false, false)), true, select(true, any(vec3<bool>(true, false, true)), true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(-firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(-12693i, u_input.a.x), firstLeadingBit(u_input.a.zy))));
    let var_1 = func_5(u_input.a.x, Struct_2(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, -5316i, var_0.x)), vec4<i32>(u_input.a.x, var_0.x, u_input.a.x, 15578i), vec4<i32>(u_input.a.x, 2147483647i, var_0.x, 1i)), func_1(~u_input.a.xz, -vec4<i32>(var_0.x, var_0.x, u_input.a.x, u_input.a.x), u_input.b.x, Struct_1(true))), ~(~(-26666i)), var_0.x));
    var var_2 = Struct_1(true);
    var var_3 = func_5(~(-67744i), func_5(_wgslsmith_dot_vec4_i32(var_1.a.a, var_1.a.a), var_1.a).a).a;
    let var_4 = select(select(vec3<bool>(true, !var_1.d, var_1.d), select(select(select(vec3<bool>(var_2.a, false, false), vec3<bool>(var_2.a, var_1.d, var_2.a), var_1.c.a), select(vec3<bool>(false, true, false), vec3<bool>(true, var_2.a, false), vec3<bool>(var_2.a, var_1.d, true)), true), !(!vec3<bool>(var_2.a, true, false)), var_1.c.a), select(!(!vec3<bool>(var_1.d, var_1.c.a, false)), !select(vec3<bool>(true, var_2.a, false), vec3<bool>(var_1.c.a, true, var_2.a), true), !select(vec3<bool>(false, true, var_1.c.a), vec3<bool>(var_2.a, false, false), vec3<bool>(true, true, true)))), !vec3<bool>(var_1.c.a, !(!var_2.a), true), vec3<bool>(true, true, all(!select(vec3<bool>(false, var_2.a, var_2.a), vec3<bool>(var_1.d, false, false), var_2.a))));
    var var_5 = Struct_1(var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, 83924u, func_5(1i, func_5(2147483647i, var_1.a).a).a.b);
}


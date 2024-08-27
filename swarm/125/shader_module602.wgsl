struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
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

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec4<u32> {
    var var_0 = true;
    var_0 = !(!(!((0u != u_input.e) | false)));
    var_0 = !(true && any(vec4<bool>(true, true, true, true)));
    var_0 = any(select(vec4<bool>(!all(vec3<bool>(false, true, true)), true, false, false), vec4<bool>(true, true, true, true), true | any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))));
    var_0 = true;
    return ~(~vec4<u32>(~0u, 16384u, u_input.a.x, u_input.a.x));
}

fn func_2() -> f32 {
    let var_0 = Struct_1(_wgslsmith_add_vec4_u32(func_3(), ~vec4<u32>(u_input.e, _wgslsmith_div_u32(4294967295u, u_input.e), ~u_input.a.x, u_input.e)), -1i);
    let var_1 = 0u;
    var var_2 = _wgslsmith_f_op_f32(min(-206f, _wgslsmith_f_op_f32(sign(-1015f))));
    var var_3 = var_0.a.xww;
    let var_4 = !select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(u_input.d != 2147483647i, false, all(vec3<bool>(true, true, false))), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false)), select(vec3<bool>(all(vec4<bool>(true, true, false, false)), true, any(vec3<bool>(false, false, true))), vec3<bool>(true, -1i > var_0.b, true), vec3<bool>(true, false, true)));
    return -567f;
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(139f)), _wgslsmith_f_op_f32(-467f * -741f), 297f, _wgslsmith_f_op_f32(func_2()))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -436f), _wgslsmith_f_op_f32(step(-1561f, -550f)), _wgslsmith_f_op_f32(abs(-211f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-888f + 397f)))));
    let var_1 = Struct_1(vec4<u32>(~u_input.e, 25163u, ~firstLeadingBit(_wgslsmith_sub_u32(74555u, u_input.a.x)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(586u, 4294967295u)), 1u) << (~firstTrailingBit(u_input.e) % 32u)), _wgslsmith_sub_i32(-1i, u_input.c.x ^ ~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1i, u_input.c.x), vec3<i32>(-2147483647i, 40180i, u_input.d))));
    var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(530f, var_0.x, var_0.x, var_0.x)))))));
    var var_2 = Struct_1(vec4<u32>(1u, select(abs(u_input.e), u_input.a.x, _wgslsmith_f_op_f32(max(1000f, var_0.x)) <= -410f), _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_1.a.x, 10851u, var_1.a.x), vec4<u32>(1u, 4294967295u, 39160u, var_1.a.x)), vec4<u32>(0u, max(37874u, u_input.e), u_input.a.x, u_input.e)), abs(0u)), min(_wgslsmith_mult_i32(u_input.d, arg_0 & (var_1.b ^ var_1.b)), 0i));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-163f, -823f)), _wgslsmith_f_op_f32(var_0.x + var_0.x)), _wgslsmith_f_op_f32(130f - _wgslsmith_f_op_f32(var_0.x * var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -728f) + _wgslsmith_f_op_f32(-var_0.x)), var_0.x))) - vec4<f32>(-903f, _wgslsmith_f_op_f32(sign(910f)), -123f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x)))));
    return i32(-1i) * -(~_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, arg_0, -1i), vec4<i32>(24644i, -35379i, -48314i, u_input.b)), ~0i));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = 86442u;
    let var_1 = _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.x))), false)), abs(~_wgslsmith_div_i32(u_input.b, u_input.d)) != ~1i));
    var_0 = 4214u;
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(arg_2 * _wgslsmith_f_op_vec4_f32(max(arg_2, arg_2))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1660f, var_1, arg_2.x, 1000f)), arg_2, any(vec2<bool>(false, false))))))));
    return Struct_1(_wgslsmith_clamp_vec4_u32(arg_0.a, ~select(select(arg_0.a, arg_0.a, vec4<bool>(false, false, true, true)), max(var_2.a, vec4<u32>(u_input.a.x, 1u, 4294967295u, arg_0.a.x)), true), min(~_wgslsmith_div_vec4_u32(arg_0.a, arg_0.a), var_2.a)), firstLeadingBit(_wgslsmith_mod_i32(1i, -(~arg_0.b))));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = func_4(arg_0, reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.e, 11461u, arg_0.a.x), vec4<u32>(37670u, arg_0.a.x, 4294967295u, arg_2.a.x)) << (u_input.a.x % 32u)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -607f, arg_1.x, arg_1.x)), vec4<f32>(arg_1.x, 716f, arg_1.x, arg_1.x), vec4<bool>(true, true, true, true)))))));
    var_0 = arg_0;
    var var_1 = arg_0.b;
    var_0 = Struct_1(vec4<u32>(4667u, reverseBits(1u ^ arg_2.a.x), var_0.a.x, arg_2.a.x), max(_wgslsmith_dot_vec3_i32(vec3<i32>(-arg_0.b, firstTrailingBit(arg_0.b), _wgslsmith_dot_vec4_i32(vec4<i32>(-40715i, arg_2.b, u_input.b, 9791i), vec4<i32>(var_0.b, var_0.b, arg_2.b, -33628i))), vec3<i32>(4288i, func_1(u_input.b), u_input.d)), ~(~u_input.d)));
    let var_2 = Struct_1(vec4<u32>(firstTrailingBit(70802u) >> (_wgslsmith_add_u32(arg_0.a.x, var_0.a.x) % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.a.x, 84766u, arg_0.a.x), vec3<u32>(var_0.a.x, 0u, 0u)), vec3<u32>(arg_0.a.x, 14821u, var_0.a.x)), _wgslsmith_div_u32(0u, u_input.a.x >> (u_input.a.x % 32u)), _wgslsmith_add_u32(u_input.a.x, select(var_0.a.x, 18438u, false))) & ~(~(~vec4<u32>(var_0.a.x, var_0.a.x, 4294967295u, 1u))), firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(20491i, u_input.b), abs(23260i)), -(~var_0.b))));
    return ~(~vec4<u32>(_wgslsmith_sub_u32(select(u_input.a.x, 32368u, false), arg_0.a.x), 27301u, _wgslsmith_div_u32(4294967295u, 44296u), ~1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_5(func_4(Struct_1(max(vec4<u32>(1u, u_input.a.x, 0u, 2384u), vec4<u32>(1u, 0u, 0u, u_input.a.x)), func_1(u_input.d)), firstLeadingBit(81639u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-871f, -1000f, 1810f, 973f) * vec4<f32>(-1447f, 330f, -1770f, 2186f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1243f, 1641f, 2167f, -157f))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1806f + -1072f), _wgslsmith_f_op_f32(ceil(-670f)), _wgslsmith_f_op_f32(779f * -664f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-495f, 799f, 618f)) - _wgslsmith_div_vec3_f32(vec3<f32>(469f, 973f, 208f), vec3<f32>(167f, -649f, 1048f))), vec3<bool>(true, true, true))), Struct_1(abs(vec4<u32>(u_input.a.x, u_input.e, u_input.e, 1u)) >> (~vec4<u32>(77780u, 4294967295u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), 0i & -u_input.d)), 0i | ~_wgslsmith_dot_vec4_i32(abs(vec4<i32>(30457i, 2147483647i, u_input.c.x, 33503i)), _wgslsmith_add_vec4_i32(vec4<i32>(-13858i, u_input.c.x, 18285i, u_input.d), vec4<i32>(u_input.c.x, 2147483647i, -2147483647i, u_input.d))));
    let var_1 = vec3<bool>(true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(841f, _wgslsmith_f_op_f32(max(-197f, 1089f)), true)))) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -128f) * 1838f), -479f)), false);
    let var_2 = _wgslsmith_mult_u32(~_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a.x, _wgslsmith_sub_u32(var_0.a.x, var_0.a.x)), 4294967295u), var_0.a.x);
    var var_3 = func_4(Struct_1(~vec4<u32>(abs(0u), ~4294967295u, ~var_0.a.x, ~1u), ~52009i), var_0.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-830f, 390f, -1000f, 1228f)), vec4<f32>(716f, -346f, 815f, 989f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-780f, -120f, 1097f, -1533f)))));
    var_0 = Struct_1(vec4<u32>(select(_wgslsmith_clamp_u32(4294967295u, ~6257u, 1u), 102293u, true), var_3.a.x, var_3.a.x, 4294967295u), _wgslsmith_div_i32(_wgslsmith_mult_i32(var_3.b, -(~(-1i))), 2147483647i));
    var var_4 = !var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a);
}


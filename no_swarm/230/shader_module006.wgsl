struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: f32,
    e: vec2<f32>,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: vec3<u32>) -> f32 {
    var var_0 = max(~1i, abs(countOneBits(_wgslsmith_sub_i32(1i, -1i))));
    var var_1 = abs(_wgslsmith_div_i32(-2147483647i, ~(-11205i)) ^ countOneBits(firstLeadingBit(1i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-15605i, 5150i, -43547i), vec3<i32>(2147483647i, 2147483647i, -1i))));
    var_0 = _wgslsmith_add_i32(firstTrailingBit(countOneBits(_wgslsmith_add_i32(38390i, 1i))), -34778i);
    var_0 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -1i, -42304i), reverseBits(vec3<i32>(2147483647i, 0i, 0i))), vec3<i32>(~(-2147483647i), _wgslsmith_div_i32(~(-2147483647i), ~(-7296i)), 0i)), 1i);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1232f)) * _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0))))));
    return arg_0;
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(-325f, vec3<u32>(u_input.d, u_input.a, 0u))))), _wgslsmith_f_op_f32(-1592f * -230f)), ~39135u), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-715f, -667f) - vec2<f32>(206f, -619f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-211f, 114f))))), _wgslsmith_add_u32(6991u ^ firstLeadingBit(u_input.b.x), _wgslsmith_add_u32(u_input.a, ~0u))), Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(332f, 564f), vec2<f32>(1443f, -1000f))))))), 3801u), firstTrailingBit(~(-(~12180i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-798f + 328f) * _wgslsmith_f_op_f32(f32(-1f) * -212f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-3081f * -788f) + _wgslsmith_div_f32(332f, 606f)))));
    var_0 = Struct_2(var_0.a, var_0.b, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-892f, var_0.a.a.x), var_0.a.a, vec2<bool>(true, false))))), u_input.d), ~_wgslsmith_add_i32(~1i, ~(var_0.d | -2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-731f)) - _wgslsmith_f_op_f32(sign(323f))) + _wgslsmith_f_op_f32(f32(-1f) * -2701f)));
    let var_1 = ~var_0.b.b;
    var_0 = Struct_2(var_0.b, Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f))), ~select(~var_1, ~3482u, true)), var_0.a, 2845i, var_0.e);
    let var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.d, -22303i, i32(-1i) * -firstTrailingBit(var_0.d), var_0.d), reverseBits(select(firstLeadingBit(vec4<i32>(var_0.d, var_0.d, var_0.d, var_0.d)), ~vec4<i32>(2147483647i, 0i, -39473i, -2147483647i), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))));
    return vec4<bool>(false & !any(vec2<bool>(true, true)), all(!vec4<bool>(true, false, all(vec3<bool>(false, false, true)), any(vec4<bool>(true, false, true, false)))), true, true);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = arg_1;
    var_0 = Struct_2(var_0.c, arg_2, var_0.a, arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.e - -1272f))))));
    var_0 = arg_1;
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(arg_2.a)))), 4294967295u), Struct_1(_wgslsmith_div_vec2_f32(var_0.b.a, arg_2.a), arg_1.a.b), Struct_1(arg_0.ww, var_0.b.b), arg_3 << (1u % 32u), _wgslsmith_f_op_f32(f32(-1f) * -914f));
    let var_1 = -select(~(-vec4<i32>(0i, arg_1.d, 2147483647i, 2147483647i)), -(~vec4<i32>(1i, 2147483647i, -1i, 8580i)), vec4<bool>(true, true, var_0.c.a.x >= arg_1.c.a.x, false)) ^ (vec4<i32>(_wgslsmith_sub_i32(min(var_0.d, var_0.d), max(1i, var_0.d)), -abs(0i), ~_wgslsmith_mult_i32(arg_3, arg_3), -64458i) & vec4<i32>(-1i, arg_1.d, arg_1.d, reverseBits(-1i)));
    return arg_2;
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-257f, 890f, -666f, 1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-645f, -1000f, 131f, 758f) * vec4<f32>(-328f, 294f, 2585f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1448f, 452f, -1661f, -311f))))), func_2())), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-188f, -117f))), ~(104371u ^ u_input.a)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-757f, 417f) - vec2<f32>(296f, -163f))), ~u_input.b.x), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(985f, -1676f), vec2<f32>(-1233f, 1967f))), 40142u), arg_0.x, _wgslsmith_f_op_f32(sign(-1142f))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-2733f)), 1f)), min(u_input.c.x << (29569u % 32u), u_input.a) << (_wgslsmith_dot_vec2_u32(~u_input.b, vec2<u32>(4294967295u, 0u)) % 32u)), ~_wgslsmith_sub_i32(_wgslsmith_div_i32(~arg_0.x, 27990i), ~arg_0.x ^ 1i));
    var var_1 = vec2<u32>(_wgslsmith_mult_u32((var_0.b & ~var_0.b) & var_0.b, 0u), 0u);
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(526f, _wgslsmith_f_op_f32(-344f - _wgslsmith_f_op_f32(select(-514f, -233f, false))))), ~4294967295u);
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, 1000f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, var_0.a.x, 2521f, 1000f), vec4<f32>(-488f, var_0.a.x, var_0.a.x, 559f), true)), all(vec3<bool>(true, true, true)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(426f, var_0.a.x, 2057f, 324f)))))));
    var var_3 = _wgslsmith_clamp_i32(arg_0.x, _wgslsmith_dot_vec3_i32(arg_0.xzw, abs(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(arg_0.x, 28244i, -11762i)), vec3<i32>(2147483647i, 87977i, 25671i)))), 1i);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-600f * -639f))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(select(528f, var_0.a.x, false)), vec3<u32>(var_0.b, 65983u, 23443u))))), 34857u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(~vec4<i32>(2147483647i, -1i, 0i, -2147483647i) << ((~vec4<u32>(u_input.b.x, u_input.d, u_input.a, u_input.c.x) << (vec4<u32>(6153u, 223u, 4294967295u, u_input.b.x) % vec4<u32>(32u))) % vec4<u32>(32u))), func_1(~vec4<i32>(1i, 1i, 1i, 1i)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-2041f, 971f, true)), -1000f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(236f, -1320f), vec2<f32>(1174f, -393f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1179f, 380f)))), ~(~112179u)), reverseBits(-min(i32(-1i) * -56151i, -2725i)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1199f)))));
    var var_1 = func_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) + _wgslsmith_f_op_f32(trunc(var_0.b.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(753f * -2189f)), _wgslsmith_f_op_f32(f32(-1f) * -526f))), var_0.c.a.x, _wgslsmith_f_op_f32(min(var_0.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e) + _wgslsmith_f_op_f32(-var_0.b.a.x))))), Struct_2(func_1(~(~vec4<i32>(var_0.d, var_0.d, var_0.d, 2446i))), var_0.c, func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, 371f, var_0.c.a.x, -1000f), vec4<f32>(var_0.b.a.x, -1000f, var_0.a.a.x, 678f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1080f, var_0.a.a.x, -1038f, var_0.b.a.x))), Struct_2(func_4(vec4<f32>(var_0.b.a.x, -428f, 287f, var_0.b.a.x), Struct_2(Struct_1(var_0.b.a, var_0.a.b), var_0.b, var_0.b, var_0.d, -127f), Struct_1(vec2<f32>(var_0.b.a.x, -244f), 0u), -29735i), Struct_1(vec2<f32>(var_0.c.a.x, 1299f), 1u), var_0.c, ~2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -208f)), Struct_1(var_0.c.a, ~var_0.b.b), -22915i), var_0.d, _wgslsmith_f_op_f32(var_0.c.a.x - 1088f)), func_1(firstTrailingBit(_wgslsmith_div_vec4_i32(select(vec4<i32>(var_0.d, -14445i, -2147483647i, 0i), vec4<i32>(var_0.d, var_0.d, var_0.d, var_0.d), vec4<bool>(true, true, false, false)), vec4<i32>(0i, 2147483647i, 0i, var_0.d)))), -_wgslsmith_add_i32(-33483i, 562i));
    var_0 = Struct_2(func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-555f, -1057f, -1616f, -2013f)), _wgslsmith_div_vec4_f32(vec4<f32>(-958f, -494f, var_0.a.a.x, var_1.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(646f, var_1.a.x, var_1.a.x, -1245f)))), Struct_2(func_4(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.a.a.x, -573f, var_0.e, -627f), vec4<f32>(840f, 721f, var_0.e, 1000f))), Struct_2(var_0.a, var_0.c, var_0.a, -12104i, 516f), func_4(vec4<f32>(var_0.e, var_1.a.x, var_1.a.x, 127f), Struct_2(Struct_1(var_1.a, var_0.c.b), Struct_1(var_1.a, var_0.b.b), Struct_1(var_0.a.a, 4294967295u), -21807i, var_1.a.x), Struct_1(vec2<f32>(var_0.c.a.x, var_1.a.x), 1u), var_0.d), -1i), var_0.a, var_0.b, -var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -1000f))), var_0.a, ~var_0.d), func_1(vec4<i32>(var_0.d << (var_0.b.b % 32u), var_0.d, -19164i, var_0.d) << ((reverseBits(vec4<u32>(0u, 11135u, u_input.b.x, u_input.d)) << (~vec4<u32>(1u, var_0.c.b, var_1.b, 37477u) % vec4<u32>(32u))) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(var_0.c.a.x, var_1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -235f))), u_input.c.x), 1i, 305f);
    var_1 = var_0.a;
    var_1 = func_4(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, var_0.e, -1837f, 829f)))) * vec4<f32>(var_0.b.a.x, _wgslsmith_f_op_f32(abs(495f)), _wgslsmith_f_op_f32(var_1.a.x * -730f), var_0.b.a.x)))), Struct_2(var_0.c, var_0.a, func_4(vec4<f32>(-927f, _wgslsmith_f_op_f32(abs(-471f)), 430f, _wgslsmith_f_op_f32(abs(-913f))), Struct_2(var_0.c, func_4(vec4<f32>(-1309f, var_0.e, var_0.b.a.x, var_1.a.x), Struct_2(var_0.c, Struct_1(var_1.a, var_1.b), var_0.c, var_0.d, 441f), var_0.a, var_0.d), Struct_1(var_1.a, var_0.c.b), -var_0.d, var_0.b.a.x), var_0.a, -firstLeadingBit(1i)), ~var_0.d, _wgslsmith_f_op_f32(-var_1.a.x)), Struct_1(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-751f + _wgslsmith_f_op_f32(-1000f * 186f))), ~var_0.a.b), ~41089i);
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.a), 17090u), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -817f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, -224f)))), _wgslsmith_mult_u32(~(~20489u), 1u)), Struct_1(_wgslsmith_div_vec2_f32(var_0.b.a, _wgslsmith_f_op_vec2_f32(round(var_0.c.a))), 7303u), var_0.d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1007f))));
    var_1 = func_4(vec4<f32>(_wgslsmith_f_op_f32(var_0.b.a.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, var_0.e))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(199f)))), var_1.a.x, var_0.e), Struct_2(var_0.b, var_0.c, var_0.b, 11680i, -900f), var_0.b, ~var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.a.x, vec3<i32>(firstTrailingBit(_wgslsmith_mult_i32(76455i, 17427i) << (var_1.b % 32u)), var_0.d, -4984i), select(vec3<u32>(_wgslsmith_dot_vec3_u32(max(vec3<u32>(61561u, var_1.b, var_0.a.b), vec3<u32>(u_input.b.x, 1u, 4102u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, 0u, var_1.b), vec3<u32>(26337u, var_0.c.b, 4294967295u))), ~firstTrailingBit(var_0.b.b), select(~var_1.b, u_input.b.x, true)), ~vec3<u32>(~33435u, min(4294967295u, 40868u), _wgslsmith_dot_vec3_u32(vec3<u32>(13695u, 4294967295u, 40849u), vec3<u32>(var_1.b, 13130u, 55520u))), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(var_0.c.a.x - -616f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.b.a.x + 778f))), var_0.b.a.x))));
}


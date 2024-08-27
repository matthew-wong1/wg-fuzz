struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<i32>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1429f, -1244f))), -525f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(672f * 1247f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(870f)))))), vec4<u32>(18187u, _wgslsmith_mult_u32(95516u, 1u), 1u, _wgslsmith_add_u32(1u, max(1u, ~71391u))), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(330f)))), _wgslsmith_f_op_f32(round(-436f)))), true, _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.a, 2147483647i, 2147483647i), vec4<i32>(-2147483647i, u_input.a, -9911i, u_input.a)) & vec4<i32>(u_input.a, u_input.a, u_input.a, 36009i), select(-vec4<i32>(2147483647i, 1i, -7851i, -59275i), vec4<i32>(37630i, u_input.a, u_input.a, u_input.a), all(vec4<bool>(true, false, true, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-682f, -1223f, -1416f, 211f), vec4<f32>(-422f, -256f, -899f, 368f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-517f, 2181f, -2076f, -1958f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, 411f, 464f, 266f))))), 1u), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) + _wgslsmith_f_op_f32(315f + -433f)) - _wgslsmith_div_f32(1173f, _wgslsmith_f_op_f32(f32(-1f) * -2060f))), false, vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 79127i, u_input.a, -2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(19731i, u_input.a, u_input.a, 1i), vec4<i32>(u_input.a, u_input.a, 1896i, 1i))), 2147483647i, -(u_input.a | u_input.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-414f)), -1037f, _wgslsmith_f_op_f32(f32(-1f) * -892f), -372f) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1399f, -921f, 1031f, -626f)))), abs(abs(_wgslsmith_div_u32(7489u, 72039u)))), Struct_1(-1526f, ~(~(-2147483647i)) >= _wgslsmith_mult_i32(u_input.a ^ 44731i, -36675i), vec4<i32>(50925i, -1i, 1i, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-16693i, u_input.a, -47276i)), vec3<i32>(58579i, u_input.a, u_input.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1681f, 688f, -375f, 803f)), vec4<f32>(-1829f, -633f, -490f, 1131f))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-1106f, -252f, 932f, 1174f), vec4<f32>(663f, -145f, -553f, -569f))))), 1u));
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_0.d.d))))) - _wgslsmith_f_op_vec4_f32(var_0.d.d - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.e.d, var_0.c.d)))), vec4<u32>(var_0.e.e, 0u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0.d.e, var_0.e.e) & ~6229u, ~var_0.b.x), _wgslsmith_dot_vec4_u32(var_0.b, _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0.c.e, 22923u, var_0.b.x, var_0.b.x), var_0.b, select(vec4<u32>(var_0.b.x, 0u, var_0.b.x, var_0.e.e), vec4<u32>(27116u, var_0.b.x, 15667u, 36047u), vec4<bool>(true, false, false, var_0.c.b))))), Struct_1(1167f, true, vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(var_0.e.c, vec4<i32>(u_input.a, u_input.a, var_0.d.c.x, -2147483647i), var_0.d.c), firstLeadingBit(var_0.c.c)), 1i, _wgslsmith_mult_i32(var_0.c.c.x, min(2147483647i, 1i)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(80479i, u_input.a), reverseBits(u_input.a), _wgslsmith_add_i32(var_0.e.c.x, -33020i))), vec4<f32>(var_0.a.x, 1171f, var_0.d.d.x, -1450f), 43488u), var_0.d, Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(-171f, -1041f)))), any(vec3<bool>(true, !var_0.e.b, true)), vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.e.c.wx, var_0.d.c.wz), u_input.a, -2147483647i, -1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.e.d), _wgslsmith_f_op_vec4_f32(exp2(var_0.a)))), var_0.c.e));
    var var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(step(var_0.c.d.x, -152f)), var_0.d.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1250f), var_0.d.a), var_0.b, Struct_1(var_0.a.x, true, var_0.e.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a, var_0.e.a, -400f, 410f)) - _wgslsmith_f_op_vec4_f32(var_0.a + _wgslsmith_div_vec4_f32(vec4<f32>(var_0.d.d.x, var_0.e.d.x, var_0.a.x, var_0.d.d.x), vec4<f32>(var_0.e.a, var_0.a.x, 688f, -672f)))), _wgslsmith_add_u32(countOneBits(var_0.e.e << (var_0.d.e % 32u)), _wgslsmith_div_u32(28155u, var_0.d.e))), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2097f)) * var_0.d.a), var_0.a.x, true)), false, reverseBits(var_0.d.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_0.a, var_0.e.d)))), ~_wgslsmith_dot_vec2_u32(var_0.b.xw, vec2<u32>(var_0.e.e, 64767u))), var_0.d);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1285f)));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.d.a), _wgslsmith_f_op_f32(958f - _wgslsmith_f_op_f32(floor(var_0.c.a))));
    return -1446f;
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> vec3<u32> {
    var var_0 = arg_0;
    var_0 = arg_0;
    let var_1 = arg_0.c;
    var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_0.a))))))), any(!select(select(vec4<bool>(arg_0.b, arg_0.b, var_0.b, arg_0.b), vec4<bool>(var_0.b, arg_0.b, arg_0.b, var_0.b), vec4<bool>(true, false, arg_0.b, false)), !vec4<bool>(arg_0.b, false, arg_0.b, arg_0.b), all(vec3<bool>(arg_0.b, false, arg_0.b)))), ~(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, var_1.x, 38908i, var_0.c.x), abs(var_1))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-var_0.d.x), var_0.a, var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(var_0.a * 1012f), arg_0.d.x, var_0.a, _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.a, var_0.d.x, 520f, var_0.a))), select(var_0.b, any(vec4<bool>(false, arg_0.b, true, var_0.b)), all(vec3<bool>(arg_0.b, arg_0.b, arg_0.b))))))), 46682u);
    return ~_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, var_0.e, 0u) & vec3<u32>(49442u, arg_1, arg_0.e), ~vec3<u32>(arg_0.e, var_0.e, 7379u)), ~abs(vec3<u32>(arg_1, arg_0.e, arg_0.e))), _wgslsmith_mod_vec3_u32(max(~vec3<u32>(4294967295u, 4549u, 61777u), vec3<u32>(var_0.e, var_0.e, arg_0.e) << (vec3<u32>(45028u, var_0.e, 12263u) % vec3<u32>(32u))), firstTrailingBit(~vec3<u32>(arg_1, arg_1, 0u))), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(arg_1, var_0.e, 60597u) | vec3<u32>(arg_0.e, arg_1, 0u)), vec3<u32>(1u | arg_0.e, 102406u, arg_1 | 16237u)));
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = func_4(Struct_1(841f, any(!(!vec3<bool>(arg_0.b, true, arg_0.b))), vec4<i32>(~(-u_input.a), 2147483647i, ~countOneBits(-2147483647i), -18862i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(959f, arg_0.d.x, 1244f, arg_0.d.x), arg_0.d, 290f <= arg_0.d.x)) * vec4<f32>(151f, _wgslsmith_f_op_f32(arg_0.a + -161f), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), abs(34878u) << (abs(~arg_0.e) % 32u)), arg_0.e);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3()))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(-arg_0.a)))), true != (1i == ~(-arg_0.c.x)), arg_0.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.d.x, -1136f, -200f, arg_0.d.x), vec4<f32>(436f, arg_0.d.x, 478f, arg_0.a))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-arg_0.d))))) - arg_0.d), 41764u);
    var var_2 = firstTrailingBit(max(i32(-1i) * -1i, countOneBits(_wgslsmith_sub_i32(u_input.a, ~(-11967i)))));
    return vec3<bool>((arg_0.c.x | -19118i) > max(_wgslsmith_sub_i32(_wgslsmith_div_i32(70583i, 2147483647i), _wgslsmith_mult_i32(var_1.c.x, -15392i)), -32112i), !arg_0.b, arg_0.b);
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = !select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), select(vec3<bool>(true, true, true), func_2(Struct_1(1000f, false, vec4<i32>(0i, u_input.a, arg_0, 19384i), vec4<f32>(510f, -1214f, -722f, -1646f), 1u)), true), false), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(true, true, false)), vec3<bool>(false, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), any(func_2(Struct_1(1244f, true, vec4<i32>(arg_0, u_input.a, -1i, -5883i), vec4<f32>(-606f, 1766f, -1601f, -1410f), 3356u)).yz));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1247f, -1010f, -108f, 374f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(925f, -1000f, -1945f, -1023f)), vec4<bool>(true, false, true, var_0.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(406f, -1939f, 1487f, 669f) + vec4<f32>(824f, 300f, -804f, -136f))))), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), select(countOneBits(vec4<u32>(0u, 96255u, 4294967295u, 7944u)), vec4<u32>(0u, 4294967295u, 41934u, 0u), true)) & firstTrailingBit(firstLeadingBit(select(vec4<u32>(1u, 4294967295u, 0u, 26470u), vec4<u32>(33619u, 4294967295u, 19093u, 0u), vec4<bool>(true, true, var_0.x, var_0.x)))), Struct_1(_wgslsmith_f_op_f32(1093f * _wgslsmith_f_op_f32(max(643f, _wgslsmith_f_op_f32(ceil(-397f))))), false, ~vec4<i32>(arg_0, -63235i, ~arg_0, 2147483647i), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -332f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -541f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1264f + 2539f)), 934f), ~0u), Struct_1(-1000f, true | var_0.x, _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(55286i, u_input.a, arg_0, u_input.a)), vec4<i32>(-1i) * -vec4<i32>(0i, u_input.a, u_input.a, 15238i), vec4<i32>(-48829i, _wgslsmith_mod_i32(arg_0, 0i), firstLeadingBit(-22061i), firstTrailingBit(arg_0))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1425f, -732f, 167f, -1123f), vec4<f32>(646f, -163f, 410f, -186f))))), ~(~_wgslsmith_mod_u32(1u, 114090u))), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-164f - 1347f) * -292f))), true, abs(max(vec4<i32>(2147483647i, -1i, u_input.a, -29629i), vec4<i32>(20582i, u_input.a, 2147483647i, u_input.a)) ^ vec4<i32>(u_input.a, u_input.a, -13118i, u_input.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-801f, -190f, _wgslsmith_f_op_f32(min(-422f, 509f)), -1992f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-419f, -1961f, 1598f, -1360f), vec4<f32>(-1901f, 1885f, 315f, 618f))))), ~1u));
    let var_2 = select(select(vec4<bool>(true, func_2(var_1.e).x, true, var_1.d.e >= var_1.c.e), vec4<bool>(true, ~1u > (4294967295u | var_1.d.e), (false & var_0.x) || var_0.x, 4294967295u != firstLeadingBit(var_1.b.x)), !(!select(false, var_0.x, true))), !vec4<bool>(select(false, false, !var_0.x), any(var_0), false, select(true, var_1.e.b, true) & var_1.c.b), !vec4<bool>(-508f >= _wgslsmith_f_op_f32(var_1.a.x + 169f), var_1.d.b, true, var_1.d.b));
    var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(select(var_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a)), var_2)), firstTrailingBit(var_1.b ^ ~(vec4<u32>(1u, var_1.e.e, 4294967295u, 1502u) ^ vec4<u32>(var_1.c.e, var_1.c.e, 0u, var_1.e.e))), var_1.e, var_1.c, var_1.e);
    var var_3 = !(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(421f - -601f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.d.x) + var_1.c.a)) | var_1.c.b;
    return var_1.d;
}

fn func_5(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = ~4294967295u;
    let var_1 = true;
    var_0 = abs(20006u << (~select(arg_0.e, ~arg_0.e, true) % 32u));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_0.d.xw)) - _wgslsmith_f_op_vec2_f32(-arg_0.d.zw)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-149f, arg_0.a)) + vec2<f32>(arg_0.d.x, arg_0.a)), vec2<bool>((arg_0.d.x == arg_0.a) | true, false))) - arg_0.d.yz);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-246f * _wgslsmith_f_op_f32(trunc(-1133f))) - var_2.x));
    return !select(!select(vec2<bool>(true, arg_0.b), func_2(Struct_1(214f, false, vec4<i32>(-68511i, arg_0.c.x, 0i, arg_0.c.x), vec4<f32>(-723f, var_2.x, arg_0.d.x, arg_0.d.x), arg_0.e)).yx, var_1), select(vec2<bool>(var_1 || var_1, !arg_0.b), select(select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(true, false), vec2<bool>(arg_0.b, arg_0.b)), select(vec2<bool>(true, true), vec2<bool>(true, true), var_1), var_1), func_2(func_1(-39478i)).zz), select(vec2<bool>(select(arg_0.b, var_1, arg_0.b), !arg_0.b), vec2<bool>(arg_0.b, true), select(vec2<bool>(arg_0.b, arg_0.b), func_2(arg_0).zz, select(vec2<bool>(false, var_1), vec2<bool>(var_1, var_1), true))));
}

fn func_6(arg_0: u32, arg_1: vec2<bool>) -> vec4<i32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1731f, -139f, -128f, 654f)))) * vec4<f32>(-897f, _wgslsmith_f_op_f32(step(1448f, -972f)), _wgslsmith_f_op_f32(abs(516f)), func_1(-13457i).d.x))), ~(~firstLeadingBit(~vec4<u32>(117464u, arg_0, 29941u, arg_0))), Struct_1(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(297f * -1389f))), true, vec4<i32>(u_input.a, 13935i, _wgslsmith_clamp_i32(-1i, u_input.a, u_input.a), u_input.a << (arg_0 % 32u)) >> (countOneBits(vec4<u32>(arg_0, arg_0, arg_0, 4294967295u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), arg_0), func_1(~(-29435i)), func_1(u_input.a >> (arg_0 % 32u)));
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(875f, -1398f, -884f, var_0.d.a))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-604f, -1052f, 801f, var_0.c.a), var_0.e.d)))))), _wgslsmith_clamp_vec4_u32(vec4<u32>(~arg_0, ~var_0.c.e, _wgslsmith_add_u32(var_0.d.e, arg_0), var_0.c.e), vec4<u32>(59294u, ~0u, func_4(var_0.d, 0u).x ^ ~arg_0, firstLeadingBit(countOneBits(var_0.b.x))), _wgslsmith_add_vec4_u32(vec4<u32>(1u, arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(3495u, var_0.e.e, var_0.d.e, 0u), vec4<u32>(1u, var_0.e.e, var_0.b.x, 1u)), var_0.c.e | var_0.e.e), var_0.b)), var_0.c, var_0.d, var_0.e);
    let var_1 = arg_1;
    return var_0.c.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1325f), -112f))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1141f, 1936f))))))), true, func_6(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(_wgslsmith_mod_u32(34975u, 4294967295u), ~1u, 1u)), func_5(func_1(u_input.a & 0i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(func_1(-16873i).d.x)), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(select(-393f, _wgslsmith_div_f32(-294f, 1037f), all(vec2<bool>(false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(541f))))), ~(~abs(24134u)));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_1.a)), var_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.d.x)) * _wgslsmith_f_op_f32(var_1.a * var_1.a)), -344f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a))))), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, ~var_1.e, 4294967295u, 10868u), abs(~vec4<u32>(var_1.e, 4294967295u, 4294967295u, 4294967295u))), countOneBits(~(vec4<u32>(40445u, var_1.e, var_1.e, var_1.e) >> (vec4<u32>(var_1.e, var_1.e, var_1.e, var_1.e) % vec4<u32>(32u))))), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.d.x, var_1.a, false)) * _wgslsmith_f_op_f32(trunc(453f))))), true, -_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.c.x, 63616i, u_input.a, 2147483647i), var_1.c), max(var_1.c, vec4<i32>(-5189i, -2806i, -2147483647i, -2147483647i))), _wgslsmith_f_op_vec4_f32(var_1.d * vec4<f32>(577f, _wgslsmith_f_op_f32(var_1.a * -624f), var_1.d.x, var_1.a)), 4294967295u | var_1.e), func_1(var_1.c.x), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - var_1.a), true, vec4<i32>(~(-1i), ~(-1i), firstLeadingBit(-2773i), _wgslsmith_div_i32(u_input.a, -24532i)) << (firstTrailingBit(vec4<u32>(var_1.e, var_1.e, 30455u, 42236u) << (vec4<u32>(var_1.e, var_1.e, 43322u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a, var_1.a)) * _wgslsmith_div_f32(var_1.a, 1989f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_f32(max(402f, 1446f)))), _wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(-var_1.a)), 408f), var_1.e));
    let var_3 = _wgslsmith_div_f32(1219f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(1i).a + _wgslsmith_div_f32(var_2.d.d.x, 1000f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_1(var_2.e.c.x).a) * 227f)));
    let var_4 = abs(select(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(var_2.c.e, 3651u), var_2.b.xy, true), ~var_2.b.zy), ~(36570u >> (var_2.e.e % 32u))), 4294967295u, any(select(vec4<bool>(false, var_2.d.b, true, true), vec4<bool>(false, true, var_1.b, var_2.d.b), vec4<bool>(true, true, var_1.b, false))) && all(vec4<bool>(var_2.c.b, false, var_1.b, var_1.b))));
    let var_5 = select(countOneBits(vec4<u32>(var_1.e, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b.x, var_2.c.e, var_4), vec3<u32>(var_2.e.e, var_4, 1u)), var_4, _wgslsmith_mult_u32(var_1.e, countOneBits(4294967295u)))), var_2.b, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(var_2.b, var_2.b, vec4<u32>(var_1.e, var_4, var_4, var_4)) ^ firstLeadingBit(vec4<u32>(var_1.e, 49722u, 4294967295u, var_4)), ~vec4<u32>(var_4, var_1.e, 64030u, var_1.e) ^ var_2.b) == firstLeadingBit(1u));
    var_2 = Struct_2(var_2.d.d, ~var_2.b, var_2.d, func_1(-max(_wgslsmith_dot_vec2_i32(var_2.e.c.xz, vec2<i32>(var_1.c.x, u_input.a)), -var_2.c.c.x)), Struct_1(-1000f, !(!(179f < var_3)), max(vec4<i32>(_wgslsmith_clamp_i32(-9701i, 5459i, -2147483647i), _wgslsmith_mult_i32(var_2.d.c.x, -24237i), 2147483647i, var_2.e.c.x), var_1.c), var_1.d, 57530u));
    var var_6 = var_2.e.b;
    let var_7 = Struct_2(func_1(var_1.c.x).d, var_2.b, Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a * 575f)))), true, ~vec4<i32>(-2147483647i, 2147483647i, -7259i, var_1.c.x) << (_wgslsmith_sub_vec4_u32(~vec4<u32>(var_5.x, var_1.e, 4294967295u, 4294967295u), select(var_2.b, var_5, var_1.b)) % vec4<u32>(32u)), func_1(-25229i).d, func_1(0i).e), Struct_1(_wgslsmith_f_op_f32(var_3 - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.d.x)))), true, vec4<i32>(9291i, min(var_1.c.x, 2147483647i), i32(-1i) * -var_1.c.x, firstLeadingBit(0i)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, -1710f, -606f, 101f), var_2.c.d)))))), 4294967295u), func_1(_wgslsmith_add_i32(_wgslsmith_sub_i32(-30976i, _wgslsmith_mod_i32(u_input.a, -1i)), max(2147483647i, -35342i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_dot_vec2_i32(var_2.e.c.xw, reverseBits(-var_1.c.yz)), _wgslsmith_sub_i32(~var_7.e.c.x, max(u_input.a, ~(-1i))), u_input.a), reverseBits(reverseBits(~(~var_7.d.c.x))), reverseBits(var_5.x), vec3<u32>(4294967295u, var_7.b.x, var_7.c.e), 12133u);
}


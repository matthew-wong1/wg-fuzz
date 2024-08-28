struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: f32,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<f32>,
    c: u32,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> i32 {
    let var_0 = Struct_2(Struct_1(-(abs(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)) & (vec4<i32>(u_input.a, u_input.a, -1i, 13792i) >> (vec4<u32>(0u, 0u, 35795u, 8149u) % vec4<u32>(32u))))), Struct_1(~(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1i, u_input.a), vec4<i32>(0i, -7535i, u_input.a, 0i)))), _wgslsmith_mult_vec2_u32(~vec2<u32>(~27758u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 74782u, 1u), vec3<u32>(0u, 19110u, 71754u))), ~vec2<u32>(1u, 1u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-989f, _wgslsmith_f_op_f32(sign(171f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1082f * -1693f) - _wgslsmith_f_op_f32(floor(117f)))) + 754f));
    let var_1 = vec3<u32>(~1u, 26263u, firstTrailingBit(~var_0.c.x));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d, _wgslsmith_f_op_f32(ceil(var_0.d))));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -857f) + -800f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.d)) * var_0.d));
    let var_3 = Struct_5(Struct_3(_wgslsmith_f_op_f32(sign(1140f)), !vec2<bool>(true, var_0.c.x != 71872u), Struct_2(Struct_1(var_0.b.a), Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 0i, u_input.a, u_input.a), vec4<i32>(u_input.a, -1i, u_input.a, -27410i))), var_0.c, var_0.d), -70625i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.d, var_0.d), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.d, 465f)))))), var_0.c.x, Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, -1815f, -199f, var_0.d)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2030f, -1226f, -1048f, -605f)))))));
    return var_3.a.c.a.a.x;
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: u32, arg_3: i32) -> vec4<f32> {
    var var_0 = ~arg_2;
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1590f + -305f), _wgslsmith_f_op_f32(select(-688f, 1000f, false)), _wgslsmith_f_op_f32(f32(-1f) * -161f), _wgslsmith_f_op_f32(-683f + 1764f)))));
    var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(42912u, arg_2, arg_2), vec3<u32>(arg_2, 24752u << (0u % 32u), arg_2));
    var var_2 = Struct_3(var_1.a.x, select(select(arg_1, vec2<bool>(true, true), any(!vec4<bool>(arg_1.x, true, false, arg_1.x))), vec2<bool>(true, !arg_1.x), arg_1.x), Struct_2(Struct_1(~(vec4<i32>(3251i, u_input.a, 18125i, u_input.a) & vec4<i32>(1i, arg_0, arg_3, -2147483647i))), Struct_1(countOneBits(~vec4<i32>(-38367i, -5019i, u_input.a, -1i))), vec2<u32>(0u >> (_wgslsmith_div_u32(arg_2, arg_2) % 32u), arg_2), _wgslsmith_f_op_f32(-var_1.a.x)), countOneBits(_wgslsmith_div_i32(91236i, ~arg_0)));
    let var_3 = -1026f;
    return vec4<f32>(var_3, _wgslsmith_f_op_f32(trunc(675f)), 951f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1343f, var_3))));
}

fn func_5(arg_0: vec4<f32>, arg_1: f32, arg_2: vec2<i32>) -> u32 {
    var var_0 = Struct_5(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1 + arg_1)))), vec2<bool>(true, true), Struct_2(Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.x, 2147483647i, 0i, 1i), vec4<i32>(-11643i, 1i, u_input.a, -2147483647i))), Struct_1(~vec4<i32>(u_input.a, arg_2.x, arg_2.x, arg_2.x)), ~vec2<u32>(1u, 1u), _wgslsmith_f_op_f32(sign(-649f))), 22774i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec4_f32(func_4(639i, vec2<bool>(false, true), 21046u, 2147483647i)).wy - arg_0.xy)))), abs(1u), Struct_4(_wgslsmith_f_op_vec4_f32(round(arg_0))));
    var_0 = Struct_5(Struct_3(-2377f, !var_0.a.b, var_0.a.c, _wgslsmith_sub_i32(~1i, -u_input.a)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, -1774f), vec2<f32>(arg_1, 396f))))), _wgslsmith_f_op_vec2_f32(trunc(var_0.b)))), var_0.c, var_0.d);
    var_0 = Struct_5(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.d.a.x - var_0.d.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1713f)))), select(!vec2<bool>(true, var_0.a.b.x), vec2<bool>(var_0.a.b.x, true), select(true, true, var_0.a.b.x)), Struct_2(var_0.a.c.b, var_0.a.c.a, var_0.a.c.c, _wgslsmith_f_op_f32(trunc(-515f))), u_input.a << (max(~1u, ~4294967295u) % 32u)), arg_0.wz, select(33410u, ~10119u, false), var_0.d);
    var_0 = Struct_5(var_0.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))), _wgslsmith_mod_u32(_wgslsmith_sub_u32(var_0.c, 0u) & 7388u, abs(~var_0.c)) & abs(var_0.a.c.c.x), var_0.d);
    var_0 = Struct_5(var_0.a, var_0.d.a.xz, var_0.c, Struct_4(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_0.d.a.x)), _wgslsmith_f_op_f32(max(arg_0.x, 347f)), var_0.a.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1622f), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -785f)))));
    return firstTrailingBit(_wgslsmith_add_u32(~_wgslsmith_mod_u32(~var_0.a.c.c.x, select(55891u, 7130u, false)), _wgslsmith_div_u32(var_0.c, ~_wgslsmith_mod_u32(4230u, 4294967295u))));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(-1000f, -541f);
    var var_1 = abs(-((abs(vec4<i32>(-4862i, 11478i, u_input.a, 25269i)) & _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, -4329i, 1i), vec4<i32>(-1i, u_input.a, -2147483647i, u_input.a))) << (~(~vec4<u32>(66609u, 0u, 10205u, 1u)) % vec4<u32>(32u))));
    var_1 = ~select(abs(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(1i, u_input.a, -2147483647i, var_1.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, var_1.x, 25718i, var_1.x), vec4<i32>(var_1.x, 2147483647i, 1i, var_1.x)), -vec4<i32>(-30056i, 0i, var_1.x, -20039i))), min(-vec4<i32>(var_1.x, 10277i, var_1.x, var_1.x) >> (vec4<u32>(1u, 4294967295u, 0u, 1u) % vec4<u32>(32u)), max(vec4<i32>(1562i, u_input.a, var_1.x, -1i) & vec4<i32>(var_1.x, 22548i, var_1.x, 1i), -vec4<i32>(var_1.x, var_1.x, 1i, -68713i))), select(true, (var_0 == var_0) || any(vec3<bool>(true, false, true)), true));
    var_1 = _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, 2147483647i, u_input.a, var_1.x), vec4<i32>(31577i, var_1.x, var_1.x, 4125i) & vec4<i32>(-1i, var_1.x, -2147483647i, var_1.x), -vec4<i32>(-3407i, 16861i, -1i, -7230i)), _wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(var_1.x, var_1.x, 0i, -2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -23955i, var_1.x, u_input.a), vec4<i32>(-2147483647i, var_1.x, var_1.x, -39930i)), vec4<i32>(-2147483647i, 2147483647i, var_1.x, -27108i) >> (vec4<u32>(0u, 1u, 4294967295u, 1u) % vec4<u32>(32u)))), _wgslsmith_mod_vec4_i32(min(vec4<i32>(var_1.x, u_input.a, u_input.a, 0i) & vec4<i32>(49020i, 1i, 1i, -36109i), ~vec4<i32>(-47653i, 45409i, 2147483647i, -2147483647i)), firstTrailingBit(vec4<i32>(var_1.x, 17286i, 62564i, var_1.x)))) << (vec4<u32>(firstLeadingBit(1u), func_5(_wgslsmith_f_op_vec4_f32(func_4(func_3(), select(vec2<bool>(true, true), vec2<bool>(true, false), false), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 35384u, 51976u, 1u), vec4<u32>(49742u, 4294967295u, 1u, 15377u)), 38318i)), 764f, vec2<i32>(var_1.x, countOneBits(u_input.a))), _wgslsmith_dot_vec2_u32(~abs(vec2<u32>(14826u, 1u)), vec2<u32>(1u, 1u)), 19387u) % vec4<u32>(32u));
    let var_2 = Struct_3(var_0, vec2<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), any(vec4<bool>(true, true, false, true))), Struct_2(Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -1i, var_1.x, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, var_1.x, -2147483647i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, var_1.x)), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 0i, u_input.a, -10626i), vec4<i32>(var_1.x, u_input.a, var_1.x, var_1.x)))), Struct_1(vec4<i32>(var_1.x, -2147483647i, reverseBits(35608i), ~u_input.a)), vec2<u32>(~(~1u), ~(~17515u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(656f, -1307f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-289f, 345f))))), ~(~min(countOneBits(87355i), i32(-1i) * -1i)));
    return Struct_1(max(-vec4<i32>(-2451i, _wgslsmith_mod_i32(var_2.c.a.a.x, 24154i), ~37320i, -var_2.d), var_2.c.a.a));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: i32) -> vec4<f32> {
    var var_0 = arg_1.xx;
    var_0 = ~_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, -1i), arg_1.wy), vec2<i32>(arg_1.x, min(u_input.a, arg_0) >> (21312u % 32u)));
    let var_1 = abs(countOneBits(_wgslsmith_mod_u32(~37203u, 1u)));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-157f)))), 1f, false)), !vec2<bool>(any(vec2<bool>(false, false)), false), Struct_2(func_2(), Struct_1(arg_1), ~(~vec2<u32>(30080u, 52553u)), _wgslsmith_f_op_f32(f32(-1f) * -434f)), _wgslsmith_sub_i32(arg_1.x & u_input.a, var_0.x));
    let var_3 = ~vec2<u32>(_wgslsmith_mod_u32(0u, var_1), ~(~(~var_2.c.c.x)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.c.d)) * _wgslsmith_f_op_f32(f32(-1f) * -1065f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a), var_2.a), _wgslsmith_f_op_f32(step(1245f, var_2.a)), var_2.a), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(var_2.c.d - var_2.c.d), var_2.c.d, _wgslsmith_f_op_f32(f32(-1f) * -1614f), _wgslsmith_f_op_f32(var_2.c.d + -402f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(arg_1.x, var_2.b, min(var_3.x, var_1), u_input.a & -3736i)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.a, var_2.c.d, var_2.c.d, -1819f))), _wgslsmith_div_vec4_f32(vec4<f32>(450f, 1308f, var_2.c.d, -1955f), vec4<f32>(var_2.c.d, var_2.c.d, var_2.c.d, var_2.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2949f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-661f))))));
    var var_1 = true;
    var var_2 = ~vec2<u32>(1u, 1u);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(228f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1473f)), _wgslsmith_div_f32(-618f, -462f))), 1230f, -949f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1625f, 694f, -240f, 773f), vec4<f32>(-233f, -189f, -2318f, -766f), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-356f, 2301f, 684f, 1250f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(812f, 1000f, 1191f, -207f))) - _wgslsmith_f_op_vec4_f32(func_1(-21337i, vec4<i32>(58020i, 16119i, -31402i, u_input.a), u_input.a))), vec4<bool>(true, true, true, true))), select(vec4<bool>(true, false, select(true, false, true), true), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(322f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -213f)), _wgslsmith_f_op_f32(select(1173f, _wgslsmith_f_op_f32(max(128f, 255f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(675f * 1000f))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(2146f, 753f, 870f, 1012f), vec4<f32>(-1000f, 1389f, -1299f, -700f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -453f, -1000f, 396f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1296f, -900f, -542f, 1438f), vec4<f32>(-1753f, 299f, 1260f, -190f)) * vec4<f32>(483f, -358f, -296f, -1523f))))));
    let var_4 = ~firstTrailingBit(vec2<u32>(abs(1u), 79948u));
    var var_5 = _wgslsmith_add_vec4_i32(~(((vec4<i32>(u_input.a, u_input.a, -2533i, u_input.a) | vec4<i32>(2147483647i, u_input.a, -11778i, 22411i)) | (vec4<i32>(u_input.a, u_input.a, -33793i, u_input.a) ^ vec4<i32>(u_input.a, u_input.a, 1063i, u_input.a))) | vec4<i32>(2147483647i, -63800i, firstTrailingBit(u_input.a), ~2147483647i)), (_wgslsmith_sub_vec4_i32(min(vec4<i32>(2147483647i, u_input.a, u_input.a, 11386i), vec4<i32>(u_input.a, 26554i, 1i, 35i)), ~vec4<i32>(u_input.a, -1i, -2147483647i, 27625i)) ^ ~(-vec4<i32>(u_input.a, u_input.a, 1i, u_input.a))) ^ vec4<i32>(u_input.a >> (_wgslsmith_mult_u32(var_4.x, var_4.x) % 32u), _wgslsmith_sub_i32(-71385i, ~u_input.a), 0i, ~_wgslsmith_div_i32(u_input.a, u_input.a)));
    let var_6 = !(!any(vec2<bool>(true, true)));
    var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_mult_i32(u_input.a, abs(u_input.a)) ^ func_3(), ~firstLeadingBit(-u_input.a), u_input.a), countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(0i, u_input.a, -6704i, var_5.x), vec4<i32>(u_input.a >> (17607u % 32u), _wgslsmith_mod_i32(-49524i, var_5.x), _wgslsmith_mod_i32(1i, u_input.a), i32(-1i) * -14728i), reverseBits(firstLeadingBit(vec4<i32>(u_input.a, -11392i, var_5.x, u_input.a))))));
}


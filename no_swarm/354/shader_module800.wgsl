struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec2<f32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_4) -> f32 {
    let var_0 = 484f;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-785f, arg_0.d, arg_0.d))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, arg_0.d, 101f) * vec3<f32>(arg_0.d, 677f, 777f))))));
    let var_2 = select(vec2<bool>(!(!all(vec4<bool>(true, false, false, true))), any(vec2<bool>(true, true))), select(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))), vec2<bool>(true, true), select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), ~u_input.b >= 4294967295u)), select(vec2<bool>(true, true), vec2<bool>(true, all(select(vec2<bool>(false, true), vec2<bool>(false, true), true))), !select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), true)));
    var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-344f)), _wgslsmith_f_op_f32(var_1.x + -229f), var_2.x)), _wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1870f, 259f, -646f) - vec3<f32>(arg_0.d, var_0, var_0)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_0, var_0) - vec3<f32>(897f, var_1.x, 561f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1856f, var_1.x, 775f) * vec3<f32>(1052f, 1727f, 499f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, -488f, var_1.x), _wgslsmith_div_vec3_f32(vec3<f32>(-1537f, 725f, 182f), vec3<f32>(160f, var_0, -1331f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d, 877f, var_0))), false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_1.x, arg_0.d) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_0, 928f) + vec3<f32>(548f, 903f, -296f))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 285f, arg_0.d)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1681f, arg_0.d, var_1.x) * vec3<f32>(823f, -448f, arg_0.d))))), !var_2.x)), select(!select(!vec3<bool>(true, var_2.x, false), !vec3<bool>(var_2.x, var_2.x, var_2.x), select(vec3<bool>(true, true, var_2.x), vec3<bool>(true, true, false), var_2.x)), vec3<bool>(63136u > _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 3076u, u_input.b), vec4<u32>(arg_0.b.x, u_input.b, u_input.b, 41166u)), !all(vec2<bool>(var_2.x, var_2.x)), !var_2.x), !var_2.x)));
    let var_3 = 1729f;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-887f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) + _wgslsmith_f_op_f32(222f - 410f)) + 1998f))));
}

fn func_2() -> Struct_3 {
    let var_0 = select((true & any(vec3<bool>(true, true, true))) | true, true, true);
    var var_1 = Struct_1(_wgslsmith_clamp_vec4_i32(u_input.c, -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, u_input.a.x, 0i, u_input.a.x), abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -26247i))), ~(-u_input.c) | -u_input.c), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1082f, 2081f, false)) - _wgslsmith_f_op_f32(f32(-1f) * -767f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_4(1i, vec2<u32>(1u, 4294967295u), vec3<i32>(1i, u_input.c.x, -2147483647i), -114f))) - 1537f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2533f * -530f), _wgslsmith_f_op_f32(select(-674f, -1000f, var_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-831f + 406f)))));
    var var_2 = !select(!(!select(vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(var_0, false, false, var_0), vec4<bool>(var_0, var_0, var_0, false))), select(vec4<bool>(var_1.a.x < 30369i, select(var_0, var_0, false), var_0, var_0), vec4<bool>(true, true, true, true), all(vec4<bool>(false, var_0, false, var_0))), !vec4<bool>(true, var_0, var_0 || true, true));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.b, var_1.b))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, var_1.b) * vec2<f32>(-339f, var_1.b)))))));
    let var_4 = select(var_2.zww, var_2.zyw, 44084u != u_input.b);
    return Struct_3(_wgslsmith_div_vec3_u32(firstLeadingBit(countOneBits(vec3<u32>(35849u, u_input.b, u_input.b))) | min(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 49719u, 0u), vec3<u32>(u_input.b, 4294967295u, u_input.b)), min(vec3<u32>(0u, u_input.b, 23911u), vec3<u32>(u_input.b, 20118u, 18745u))), ~min(~vec3<u32>(84801u, 1u, 49701u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 56499u, u_input.b), vec3<u32>(u_input.b, u_input.b, 118547u)))), var_4, _wgslsmith_f_op_vec2_f32(-var_3.a), -(~vec4<i32>(-var_1.a.x, firstLeadingBit(1i), -var_1.a.x, ~(-16198i))), _wgslsmith_add_vec4_i32(firstTrailingBit(_wgslsmith_add_vec4_i32(-vec4<i32>(var_1.a.x, var_1.a.x, var_1.a.x, -16567i), abs(vec4<i32>(var_1.a.x, u_input.c.x, 1i, var_1.a.x)))), ~u_input.c | (var_1.a ^ (vec4<i32>(0i, -23050i, 13709i, var_1.a.x) >> (vec4<u32>(u_input.b, 0u, u_input.b, 88242u) % vec4<u32>(32u))))));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec3<u32>) -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_sub_vec3_u32(vec3<u32>(firstTrailingBit(firstLeadingBit(0u)), _wgslsmith_clamp_u32(0u, arg_1.a.x, u_input.b), 1u), _wgslsmith_add_vec3_u32(~(vec3<u32>(arg_1.a.x, u_input.b, 4294967295u) & vec3<u32>(arg_3.x, arg_2.a.x, u_input.b)), _wgslsmith_mult_vec3_u32(reverseBits(arg_3), ~arg_3))), vec3<bool>(false, arg_2.b.x, true), func_2().c, arg_1.d, vec4<i32>(-28798i, abs(-u_input.c.x ^ max(2147483647i, arg_2.d.x)), _wgslsmith_dot_vec2_i32(arg_1.d.xy, max(arg_1.e.wy, reverseBits(arg_2.e.yw))), ~_wgslsmith_add_i32(arg_2.d.x, ~4396i)));
    var var_1 = arg_2.a.x;
    let var_2 = ~max(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.a.x, 20031u, 21474u, arg_2.a.x), vec4<u32>(arg_3.x, 2334u, 0u, arg_2.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.a.x, 4294967295u, arg_2.a.x, 26175u), vec4<u32>(u_input.b, 31776u, u_input.b, 4294967295u))) ^ abs(~vec4<u32>(arg_1.a.x, var_0.a.x, 4294967295u, 1u)), abs(vec4<u32>(4294967295u, ~0u, arg_3.x, 0u)));
    var_1 = _wgslsmith_sub_u32(~0u >> (var_2.x % 32u), 10690u);
    let var_3 = reverseBits(_wgslsmith_add_u32(u_input.b, abs(0u)));
    return Struct_3(firstLeadingBit(arg_2.a) ^ (~arg_3 | ~vec3<u32>(arg_3.x, 42304u, 54157u)), !(!vec3<bool>(var_3 < arg_2.a.x, true, false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-970f, arg_0)) + arg_2.c), ~(_wgslsmith_mult_vec4_i32(u_input.c, max(vec4<i32>(2147483647i, -24753i, 12114i, arg_1.e.x), vec4<i32>(-2147483647i, arg_1.d.x, var_0.d.x, 2147483647i))) ^ _wgslsmith_div_vec4_i32(u_input.c, arg_1.e)), vec4<i32>(-1i, firstTrailingBit(firstTrailingBit(-57765i)), 1i, ~(~(u_input.a.x & 0i))));
}

fn func_1(arg_0: vec3<i32>) -> Struct_4 {
    var var_0 = func_4(947f, func_2(), Struct_3(countOneBits(vec3<u32>(76340u, ~u_input.b, ~u_input.b)), vec3<bool>(true, all(vec3<bool>(true, false, false)), all(vec4<bool>(true, true, false, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(func_2().c, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1470f, 2528f) + vec2<f32>(813f, -130f))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1103f, -103f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1755f, 459f)))))), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(49478i, u_input.a.x, 58430i, u_input.c.x), u_input.c) & -vec4<i32>(arg_0.x, 8052i, 1i, u_input.c.x), vec4<i32>(~58213i, arg_0.x, 1i, func_2().e.x)), max(vec4<i32>(1i, -101481i, arg_0.x, arg_0.x), vec4<i32>(u_input.a.x, arg_0.x, arg_0.x, -32321i) >> (vec4<u32>(1u, 85932u, u_input.b, 69467u) % vec4<u32>(32u))) << (~vec4<u32>(0u, 27480u, 1u, u_input.b) % vec4<u32>(32u))), vec3<u32>(~0u, 17808u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, 1u), ~vec3<u32>(u_input.b, 1u, u_input.b))));
    var_0 = func_4(var_0.c.x, func_2(), Struct_3(abs(vec3<u32>(3552u, 32229u, var_0.a.x)), !var_0.b, var_0.c, _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(var_0.e.x, u_input.a.x, arg_0.x, arg_0.x), _wgslsmith_div_vec4_i32(var_0.d, vec4<i32>(0i, arg_0.x, u_input.a.x, 7573i))), func_4(617f, Struct_3(vec3<u32>(var_0.a.x, u_input.b, var_0.a.x), vec3<bool>(var_0.b.x, var_0.b.x, true), var_0.c, vec4<i32>(1i, u_input.c.x, u_input.a.x, u_input.a.x), u_input.c), func_4(729f, Struct_3(vec3<u32>(u_input.b, u_input.b, u_input.b), var_0.b, vec2<f32>(-2190f, 295f), var_0.d, vec4<i32>(u_input.c.x, 2147483647i, u_input.a.x, 35452i)), Struct_3(vec3<u32>(var_0.a.x, var_0.a.x, u_input.b), vec3<bool>(var_0.b.x, var_0.b.x, true), var_0.c, vec4<i32>(var_0.d.x, -1i, 6431i, arg_0.x), vec4<i32>(-1i, var_0.e.x, 0i, 2147483647i)), vec3<u32>(4611u, u_input.b, var_0.a.x)), ~vec3<u32>(u_input.b, 19144u, 17185u)).d), u_input.c), max(vec3<u32>(_wgslsmith_mod_u32(u_input.b, 67430u), reverseBits(u_input.b), 15853u), ~func_4(-2228f, Struct_3(vec3<u32>(var_0.a.x, 4294967295u, 5961u), var_0.b, var_0.c, u_input.c, vec4<i32>(17719i, 0i, arg_0.x, -43411i)), Struct_3(var_0.a, vec3<bool>(var_0.b.x, var_0.b.x, true), var_0.c, var_0.e, var_0.d), var_0.a).a) | ~var_0.a);
    let var_1 = true;
    var_0 = func_4(_wgslsmith_f_op_f32(var_0.c.x + func_4(_wgslsmith_f_op_f32(-var_0.c.x), func_4(-116f, func_4(-604f, Struct_3(vec3<u32>(u_input.b, u_input.b, var_0.a.x), var_0.b, vec2<f32>(314f, var_0.c.x), vec4<i32>(-1i, 2147483647i, 26796i, u_input.a.x), u_input.c), Struct_3(vec3<u32>(u_input.b, 1u, var_0.a.x), var_0.b, var_0.c, vec4<i32>(1i, u_input.c.x, arg_0.x, var_0.e.x), var_0.d), vec3<u32>(1u, var_0.a.x, 20777u)), func_4(var_0.c.x, Struct_3(vec3<u32>(u_input.b, 1u, 0u), vec3<bool>(true, false, var_1), var_0.c, u_input.c, var_0.e), Struct_3(vec3<u32>(97993u, var_0.a.x, 3646u), vec3<bool>(var_1, var_0.b.x, true), var_0.c, u_input.c, u_input.c), var_0.a), vec3<u32>(u_input.b, u_input.b, var_0.a.x)), Struct_3(~vec3<u32>(27863u, var_0.a.x, 0u), select(vec3<bool>(true, false, var_0.b.x), vec3<bool>(true, var_0.b.x, var_0.b.x), false), _wgslsmith_f_op_vec2_f32(sign(var_0.c)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 12072i, 52931i, -15426i), vec4<i32>(-1i, var_0.e.x, 2147483647i, -2147483647i)), var_0.e), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, 33387u), ~var_0.a)).c.x), func_2(), func_2(), var_0.a);
    var_0 = func_4(var_0.c.x, func_4(510f, Struct_3(firstTrailingBit(var_0.a), var_0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_0.c, vec2<f32>(var_0.c.x, 404f)))), vec4<i32>(arg_0.x, 1i, func_2().d.x, var_0.e.x), firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -38377i, 0i, var_0.d.x), vec4<i32>(0i, var_0.d.x, 2147483647i, var_0.d.x)))), Struct_3(var_0.a >> (var_0.a % vec3<u32>(32u)), var_0.b, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1966f, var_0.c.x)))), ~select(vec4<i32>(arg_0.x, 1i, -7585i, var_0.e.x), vec4<i32>(-16276i, var_0.d.x, 0i, -1i), true), vec4<i32>(1i, _wgslsmith_mod_i32(-15472i, -2147483647i), -27055i, var_0.e.x << (4294967295u % 32u))), var_0.a), Struct_3(~var_0.a, !var_0.b, vec2<f32>(var_0.c.x, 1559f), select(~(vec4<i32>(var_0.d.x, arg_0.x, -27320i, 0i) << (vec4<u32>(68868u, 90273u, u_input.b, var_0.a.x) % vec4<u32>(32u))), vec4<i32>(arg_0.x >> (7443u % 32u), arg_0.x, 33146i, _wgslsmith_dot_vec3_i32(u_input.c.wzz, vec3<i32>(19778i, u_input.c.x, 23118i))), func_4(var_0.c.x, Struct_3(var_0.a, vec3<bool>(var_0.b.x, true, false), var_0.c, var_0.d, vec4<i32>(38821i, var_0.d.x, -26951i, var_0.d.x)), func_4(1474f, Struct_3(var_0.a, vec3<bool>(true, false, var_0.b.x), vec2<f32>(1000f, var_0.c.x), vec4<i32>(u_input.c.x, u_input.c.x, var_0.e.x, var_0.d.x), vec4<i32>(-2147483647i, var_0.d.x, 1i, var_0.e.x)), Struct_3(vec3<u32>(u_input.b, u_input.b, var_0.a.x), var_0.b, vec2<f32>(var_0.c.x, var_0.c.x), u_input.c, var_0.e), vec3<u32>(23833u, u_input.b, 35483u)), abs(vec3<u32>(42154u, var_0.a.x, 0u))).b.x), ~vec4<i32>(u_input.c.x, -arg_0.x, -1i, u_input.c.x)), var_0.a);
    return Struct_4(~0i, ~_wgslsmith_div_vec2_u32(firstTrailingBit(~vec2<u32>(3254u, 1u)), ~var_0.a.yy), vec3<i32>(~(1i ^ var_0.e.x), _wgslsmith_clamp_i32(_wgslsmith_add_i32(arg_0.x << (874u % 32u), u_input.c.x), _wgslsmith_add_i32(firstTrailingBit(var_0.d.x), 34328i), u_input.a.x), ~abs(select(13277i, 36140i, var_1))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(876f, 847f, false))))))));
}

fn func_5(arg_0: Struct_4) -> vec3<bool> {
    let var_0 = vec3<u32>(firstTrailingBit(71822u), 0u, firstTrailingBit(u_input.b));
    var var_1 = _wgslsmith_mod_u32(func_1(vec3<i32>(-1i) * -abs(vec3<i32>(arg_0.a, u_input.c.x, u_input.c.x))).b.x, ~1u);
    var var_2 = 12296u;
    var_1 = 1u;
    var_2 = abs(54467u << (_wgslsmith_clamp_u32(u_input.b | var_0.x, arg_0.b.x, max(~u_input.b, var_0.x)) % 32u));
    return vec3<bool>(arg_0.a <= func_1(vec3<i32>(0i, ~0i, abs(arg_0.a))).a, any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), arg_0.d > arg_0.d)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(~reverseBits(~(~vec3<u32>(u_input.b, 4294967295u, u_input.b))), !(!func_5(func_1(vec3<i32>(2147483647i, u_input.c.x, u_input.c.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(807f - -858f) - -513f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -458f) * _wgslsmith_f_op_f32(round(1000f))))), abs(-vec4<i32>(~(-2147483647i), 406i, _wgslsmith_add_i32(u_input.c.x, u_input.c.x), min(u_input.c.x, 2147483647i))), _wgslsmith_add_vec4_i32(-vec4<i32>(-7336i, -92314i, u_input.a.x << (0u % 32u), u_input.a.x << (u_input.b % 32u)), -u_input.c));
    var var_1 = Struct_1(vec4<i32>(select(~(1i << (u_input.b % 32u)), 1i, true), -_wgslsmith_sub_i32(_wgslsmith_add_i32(var_0.d.x, u_input.c.x), u_input.c.x & -23353i), select(_wgslsmith_mod_i32(-22932i, 1i), ~(~var_0.e.x), all(vec2<bool>(var_0.b.x, var_0.b.x))), func_1(select(~var_0.d.wzw, vec3<i32>(u_input.a.x, var_0.e.x, 11255i), func_5(Struct_4(u_input.c.x, vec2<u32>(u_input.b, 0u), vec3<i32>(43838i, u_input.c.x, var_0.e.x), 556f)))).a), -498f);
    var_0 = func_2();
    var var_2 = vec4<bool>(true, false, func_4(_wgslsmith_f_op_f32(f32(-1f) * -1687f), Struct_3(vec3<u32>(16032u, u_input.b, 34724u) >> (var_0.a % vec3<u32>(32u)), !vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), _wgslsmith_f_op_vec2_f32(-var_0.c), ~vec4<i32>(1i, var_1.a.x, -1i, var_1.a.x), ~vec4<i32>(-15407i, var_1.a.x, var_0.e.x, -10276i)), Struct_3(~vec3<u32>(u_input.b, var_0.a.x, 1u), select(vec3<bool>(true, var_0.b.x, true), var_0.b, vec3<bool>(true, var_0.b.x, true)), _wgslsmith_f_op_vec2_f32(var_0.c + var_0.c), vec4<i32>(var_0.e.x, 1423i, 1i, var_1.a.x) ^ vec4<i32>(u_input.a.x, u_input.c.x, var_1.a.x, 78901i), u_input.c), var_0.a).c.x == var_1.b, !(-2147483647i != -firstTrailingBit(var_1.a.x)));
    var_2 = select(!vec4<bool>(select(func_5(Struct_4(-44336i, vec2<u32>(u_input.b, 1u), var_1.a.yyx, var_0.c.x)).x, false, !var_0.b.x), !any(vec4<bool>(true, var_0.b.x, var_2.x, var_2.x)), var_0.b.x & false, false), !vec4<bool>(true, any(vec2<bool>(var_2.x, false)), ~u_input.c.x >= var_0.d.x, true), true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec4<u32>(u_input.b, ~(~4294967295u), var_0.a.x, ~(~0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), var_0.a);
}


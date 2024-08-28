struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec2<f32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec2<bool>) -> vec4<u32> {
    let var_0 = Struct_2(Struct_1(vec3<bool>(!(!arg_2.x), arg_2.x, all(vec3<bool>(true, false, arg_1))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1251f, -1525f, 526f), vec3<f32>(-1000f, 607f, -1711f)))), select(select(vec3<bool>(true, true, true), vec3<bool>(arg_1, false, arg_1), arg_1), vec3<bool>(true, true, true), vec3<bool>(arg_1 & true, arg_2.x, any(arg_2))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1320f, -2309f, 260f), vec3<f32>(1511f, -1055f, 459f)) * vec3<f32>(1836f, -1000f, 903f)))), Struct_1(!select(!vec3<bool>(arg_2.x, arg_1, true), vec3<bool>(arg_1, true, true), false), vec3<f32>(1f, 1f, 1f), select(!vec3<bool>(arg_1, true, true), select(vec3<bool>(arg_2.x, true, arg_1), vec3<bool>(arg_1, true, true), vec3<bool>(false, arg_2.x, arg_1)), u_input.b <= _wgslsmith_div_i32(u_input.b, -57985i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(644f - 330f), -2158f, _wgslsmith_f_op_f32(select(-500f, 704f, arg_1))))), -1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(max(-315f, 370f)), _wgslsmith_f_op_f32(f32(-1f) * -1001f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-663f, 584f), vec2<f32>(-319f, -257f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1342f, -854f), vec2<f32>(826f, 1736f))))))), vec3<u32>(0u, ~25421u, ~(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, u_input.c)) & _wgslsmith_dot_vec4_u32(vec4<u32>(64932u, 4294967295u, arg_0, arg_0), vec4<u32>(u_input.c, 0u, arg_0, 4294967295u)))));
    let var_1 = _wgslsmith_div_vec2_u32(firstTrailingBit(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.e.x, var_0.e.x), _wgslsmith_mod_vec2_u32(var_0.e.yy, var_0.e.xz)))), _wgslsmith_add_vec2_u32(max(~firstLeadingBit(var_0.e.yz), ~(~vec2<u32>(311u, u_input.c))), firstLeadingBit(var_0.e.xy)));
    var var_2 = Struct_2(Struct_1(vec3<bool>(true, any(select(vec4<bool>(false, arg_1, false, true), vec4<bool>(var_0.b.a.x, var_0.a.c.x, arg_2.x, false), vec4<bool>(var_0.b.c.x, var_0.a.c.x, true, false))), !var_0.b.a.x), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.b.x), 1000f, _wgslsmith_f_op_f32(floor(var_0.a.d.x))))), select(var_0.a.c, var_0.a.a, arg_1), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_0.b.b), var_0.a.d)))), Struct_1(!var_0.b.a, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(var_0.a.b, vec3<f32>(var_0.a.b.x, var_0.a.b.x, var_0.d.x)))), var_0.b.d)), vec3<bool>(!any(vec4<bool>(var_0.b.c.x, true, true, arg_1)), 1i > firstTrailingBit(var_0.c), var_0.c >= _wgslsmith_mult_i32(u_input.b, 0i)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(783f, var_0.d.x, -1262f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.b.x, var_0.a.d.x, var_0.b.b.x)))), _wgslsmith_dot_vec4_i32(reverseBits(abs(vec4<i32>(u_input.b, var_0.c, 0i, var_0.c))), vec4<i32>(~u_input.b << (u_input.c % 32u), -var_0.c, -_wgslsmith_div_i32(-1i, -2339i), var_0.c)), vec2<f32>(-1237f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b.d.x), _wgslsmith_f_op_f32(exp2(var_0.b.d.x)), arg_2.x)), 1036f))), _wgslsmith_mult_vec3_u32(vec3<u32>(~var_1.x, _wgslsmith_dot_vec3_u32(~var_0.e, vec3<u32>(var_0.e.x, 4294967295u, arg_0)), ~1u), vec3<u32>(~var_1.x, 14988u, abs(~4294967295u))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.b.x, var_0.b.b.x, -1000f, 145f)))))));
    var var_4 = true;
    return _wgslsmith_mult_vec4_u32(~vec4<u32>(var_1.x, 4294967295u, ~firstTrailingBit(64202u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 14129u, var_0.e.x, 10782u), vec4<u32>(4294967295u, 4294967295u, u_input.c, 4294967295u))), max(vec4<u32>(var_1.x, arg_0, ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 15429u), var_0.e.yx), u_input.c), ~reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, 18121u, 25548u), vec4<u32>(0u, var_1.x, u_input.c, var_2.e.x)))));
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1312f)), -1291f);
    var var_1 = ~_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(min(abs(vec4<u32>(4294967295u, u_input.c, 0u, u_input.c)), ~vec4<u32>(54380u, u_input.c, u_input.c, 1u)), vec4<u32>(u_input.c, _wgslsmith_mod_u32(u_input.c, u_input.c), _wgslsmith_add_u32(4294967295u, u_input.c), u_input.c), firstLeadingBit(vec4<u32>(u_input.c, u_input.c, 0u, u_input.c) >> (vec4<u32>(u_input.c, 64873u, 1u, 71093u) % vec4<u32>(32u)))), _wgslsmith_add_vec4_u32(func_3(u_input.c, !arg_0, vec2<bool>(false, false)), vec4<u32>(_wgslsmith_div_u32(39304u, 4294967295u), _wgslsmith_div_u32(u_input.c, u_input.c), 57160u, ~u_input.c)));
    let var_2 = -firstTrailingBit(_wgslsmith_clamp_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, u_input.a, 2147483647i), vec3<i32>(u_input.a, u_input.a, -24924i)), ~abs(vec3<i32>(2147483647i, 44577i, u_input.b)), select(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 26420i, u_input.b), vec3<i32>(-1i, u_input.b, u_input.a)), vec3<i32>(u_input.a, u_input.a, 0i) << (vec3<u32>(var_1.x, var_1.x, 26658u) % vec3<u32>(32u)), vec3<bool>(arg_0, arg_0, arg_0))));
    let var_3 = vec4<u32>(_wgslsmith_dot_vec4_u32(min(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 26070u), vec3<u32>(var_1.x, u_input.c, 9762u)), _wgslsmith_div_u32(0u, 64376u), 6522u, u_input.c), vec4<u32>(countOneBits(u_input.c), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 2056u), var_1.wy), countOneBits(6808u), abs(u_input.c))), ~vec4<u32>(u_input.c, 4294967295u, ~32848u, _wgslsmith_dot_vec2_u32(vec2<u32>(25943u, 0u), vec2<u32>(46587u, 35900u)))), abs(firstLeadingBit(u_input.c)), 9514u | abs(_wgslsmith_mult_u32(reverseBits(var_1.x), ~5047u)), select(firstLeadingBit(1u), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 13912u, 32577u, u_input.c), vec4<u32>(u_input.c, var_1.x, u_input.c, var_1.x))), arg_0));
    var var_4 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-856f, 2552f, -1204f) - vec3<f32>(-451f, var_0, var_0))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -898f, 952f) + vec3<f32>(446f, var_0, -1000f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -937f, 462f) + vec3<f32>(var_0, var_0, var_0)))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -859f), _wgslsmith_f_op_f32(-var_4.x), arg_0)), var_4.x))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    let var_0 = vec2<u32>(~_wgslsmith_add_u32(u_input.c, 119350u), u_input.c);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(arg_1.a.b.x * arg_1.d.x), arg_1.d.x))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(509f, arg_1.a.b.x, arg_0.b.x)) * arg_0.b), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) + _wgslsmith_f_op_f32(-arg_1.d.x)), arg_0.d.x, -2336f))));
    let var_2 = Struct_2(arg_1.b, Struct_1(vec3<bool>(all(!vec4<bool>(false, false, arg_1.a.a.x, arg_0.a.x)), all(vec4<bool>(false, arg_0.a.x, true, true)), arg_0.c.x), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(step(arg_0.b.x, arg_0.b.x)), -1197f, _wgslsmith_div_f32(-170f, -266f)))), arg_1.a.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(-784f, arg_1.a.d.x, var_1.x) * _wgslsmith_f_op_vec3_f32(arg_0.b - arg_1.a.d))), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(arg_1.c, -1i), vec2<i32>(arg_1.c, u_input.a) & vec2<i32>(arg_1.c, 1i)), vec2<i32>(-11746i << (arg_1.e.x % 32u), arg_1.c)), u_input.a), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.x, arg_0.d.x)))))), countOneBits(firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.c, 1u), vec3<u32>(var_0.x, 75229u, 9583u)) >> (reverseBits(arg_1.e) % vec3<u32>(32u)))));
    var var_3 = Struct_3(select(~1u, _wgslsmith_mult_u32(u_input.c ^ var_2.e.x, 4294967295u), all(vec2<bool>(var_2.b.c.x, arg_0.c.x))) | ~max(var_0.x, ~var_2.e.x), Struct_2(Struct_1(vec3<bool>(true, 222f < var_1.x, all(arg_1.a.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.b.b)), var_2.a.a, vec3<f32>(_wgslsmith_f_op_f32(arg_0.b.x * 1000f), _wgslsmith_f_op_f32(-1623f - 611f), _wgslsmith_div_f32(var_2.b.b.x, 881f))), Struct_1(select(select(arg_0.a, vec3<bool>(true, arg_0.c.x, var_2.b.a.x), var_2.a.a), vec3<bool>(true, arg_1.b.c.x, arg_0.a.x), vec3<bool>(arg_1.b.c.x, false, true)), vec3<f32>(_wgslsmith_f_op_f32(ceil(3110f)), -160f, _wgslsmith_f_op_f32(f32(-1f) * -384f)), vec3<bool>(arg_0.a.x | arg_1.a.a.x, arg_1.c < 0i, true), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_2.a.b), _wgslsmith_div_vec3_f32(var_2.b.d, arg_1.a.d), vec3<bool>(false, arg_0.c.x, arg_0.a.x)))), 2147483647i, _wgslsmith_f_op_vec2_f32(var_2.d + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(407f, arg_0.d.x), vec2<f32>(2173f, arg_1.b.d.x), true))), var_2.e), 187f, vec3<i32>(u_input.b, select(~(u_input.b ^ var_2.c), _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-9475i, var_2.c, 0i)), ~vec3<i32>(arg_1.c, 0i, -1i)), any(!vec4<bool>(true, arg_0.a.x, arg_1.a.c.x, arg_1.a.c.x))), countOneBits(arg_1.c)), 63330u);
    var_3 = Struct_3(u_input.c, var_2, 552f, firstTrailingBit(var_3.d), 30452u);
    return Struct_1(vec3<bool>(true, _wgslsmith_mod_i32(-4511i, min(var_2.c, var_2.c)) > 1i, arg_1.a.a.x & true), arg_1.a.b, !vec3<bool>(!arg_0.c.x, arg_0.a.x | !var_3.b.a.c.x, true), vec3<f32>(_wgslsmith_f_op_f32(-422f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -206f) + arg_1.b.d.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_3.b.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(486f, var_3.b.b.b.x, true))), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.a.b.x))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = func_4(Struct_1(arg_1.b.a.a, arg_0.a.b, select(arg_1.b.a.c, vec3<bool>(all(arg_0.b.a.yz), true == arg_0.a.a.x, true), !select(vec3<bool>(arg_3.c.x, false, arg_0.b.c.x), arg_3.a, arg_2.a.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-730f, _wgslsmith_f_op_f32(func_2(arg_0.b.c.x)), _wgslsmith_f_op_f32(sign(arg_2.d.x))) + vec3<f32>(_wgslsmith_f_op_f32(select(-1536f, 360f, true)), arg_0.a.d.x, arg_3.b.x))), arg_0);
    let var_1 = Struct_2(arg_1.b.a, arg_0.a, select(u_input.a, ~(-9924i), arg_3.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_0.b.d.xz))), ~arg_1.b.e);
    var var_2 = select(arg_1.b.b.a.x & var_1.b.a.x, !any(vec4<bool>(true, var_1.a.c.x, true, false)), false);
    var var_3 = ~select(~vec4<i32>(arg_1.b.c, 54699i, -1i, var_1.c) >> (~vec4<u32>(16738u, var_1.e.x, 65081u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(max(vec4<i32>(var_1.c, 1i, 1i, var_1.c), vec4<i32>(u_input.b, -7912i, arg_1.d.x, u_input.b)) ^ vec4<i32>(arg_0.c, 0i, arg_0.c, -2147483647i), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.d.x, arg_2.c, 0i, 16521i), vec4<i32>(arg_2.c, arg_0.c, 1003i, 7587i)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, arg_2.c, -1i, arg_2.c), vec4<i32>(-2147483647i, -8334i, u_input.b, -1i)))), vec4<bool>(false, true, true, var_0.c.x));
    var_3 = _wgslsmith_div_vec4_i32(~((-vec4<i32>(var_1.c, -83332i, 0i, u_input.a) >> (countOneBits(vec4<u32>(arg_0.e.x, var_1.e.x, 63069u, 64867u)) % vec4<u32>(32u))) << (~_wgslsmith_add_vec4_u32(vec4<u32>(1u, arg_0.e.x, 1u, 0u), vec4<u32>(4294967295u, arg_0.e.x, 9365u, arg_0.e.x)) % vec4<u32>(32u))), -(~vec4<i32>(u_input.a, 1i, var_1.c, arg_1.d.x) | min(select(vec4<i32>(0i, var_3.x, arg_0.c, u_input.a), vec4<i32>(arg_1.b.c, u_input.a, var_1.c, -13510i), vec4<bool>(var_1.a.c.x, true, false, false)), vec4<i32>(-355i, arg_2.c, -15006i, arg_0.c))));
    return countOneBits(select(vec4<u32>(~3106u << (_wgslsmith_dot_vec2_u32(arg_0.e.xy, arg_2.e.xz) % 32u), arg_2.e.x, var_1.e.x, 1178u), ~(~vec4<u32>(0u, 4294967295u, arg_0.e.x, arg_1.e)), !arg_1.b.b.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(abs(vec4<u32>(1u, 34346u, u_input.c, u_input.c)) | (vec4<u32>(u_input.c, 106037u, 30694u, u_input.c) | func_1(Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<f32>(-266f, 1504f, 2120f), vec3<bool>(true, true, true), vec3<f32>(200f, -410f, 741f)), Struct_1(vec3<bool>(true, true, true), vec3<f32>(-677f, -645f, -392f), vec3<bool>(false, false, true), vec3<f32>(675f, 1000f, -1902f)), u_input.a, vec2<f32>(-1947f, 1179f), vec3<u32>(u_input.c, 0u, u_input.c)), Struct_3(u_input.c, Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<f32>(476f, -634f, -1372f), vec3<bool>(false, true, false), vec3<f32>(-2107f, -1994f, 436f)), Struct_1(vec3<bool>(true, true, false), vec3<f32>(-808f, 522f, 681f), vec3<bool>(true, false, true), vec3<f32>(-1149f, 544f, 415f)), -2147483647i, vec2<f32>(1030f, 554f), vec3<u32>(8815u, 7897u, 50814u)), -501f, vec3<i32>(1i, u_input.a, u_input.b), u_input.c), Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<f32>(1000f, 119f, -438f), vec3<bool>(true, false, false), vec3<f32>(657f, 795f, 1000f)), Struct_1(vec3<bool>(false, false, true), vec3<f32>(356f, 1450f, 1356f), vec3<bool>(true, false, true), vec3<f32>(-1000f, -1000f, -1561f)), u_input.b, vec2<f32>(1452f, -995f), vec3<u32>(0u, u_input.c, u_input.c)), Struct_1(vec3<bool>(false, true, false), vec3<f32>(-712f, 1493f, -148f), vec3<bool>(true, true, true), vec3<f32>(1212f, -324f, 490f))))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-418f, -900f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -692f))), !(!any(vec4<bool>(false, true, false, true))))), -256f, 303f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1200f))) - func_4(func_4(Struct_1(vec3<bool>(false, false, false), vec3<f32>(663f, 456f, 532f), vec3<bool>(false, true, true), vec3<f32>(1433f, -312f, 892f)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<f32>(-180f, -2047f, 1484f), vec3<bool>(true, false, false), vec3<f32>(319f, 1139f, 419f)), Struct_1(vec3<bool>(false, true, true), vec3<f32>(-1241f, 271f, 1000f), vec3<bool>(true, false, false), vec3<f32>(-655f, 129f, -329f)), u_input.b, vec2<f32>(-624f, 551f), var_0.ywx)), Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<f32>(-600f, 138f, -1117f), vec3<bool>(true, true, true), vec3<f32>(1343f, -2215f, -371f)), Struct_1(vec3<bool>(false, false, true), vec3<f32>(912f, -1412f, -861f), vec3<bool>(true, true, true), vec3<f32>(-100f, 1179f, -510f)), u_input.a, vec2<f32>(-614f, 1143f), vec3<u32>(u_input.c, 0u, 14857u))).b.x)));
    var var_2 = var_1.x;
    let var_3 = _wgslsmith_f_op_f32(-var_1.x);
    var var_4 = Struct_2(func_4(func_4(Struct_1(func_4(Struct_1(vec3<bool>(false, false, true), vec3<f32>(var_3, var_3, -194f), vec3<bool>(false, true, true), var_1.xzy), Struct_2(Struct_1(vec3<bool>(true, true, true), var_1.zyx, vec3<bool>(true, true, true), vec3<f32>(755f, 2323f, 295f)), Struct_1(vec3<bool>(true, false, true), var_1.xwy, vec3<bool>(false, false, true), vec3<f32>(var_1.x, var_1.x, var_1.x)), u_input.a, vec2<f32>(var_3, var_3), var_0.xzy)).c, var_1.wxw, vec3<bool>(false, false, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_3, 122f) + vec3<f32>(var_1.x, -1423f, var_3))), Struct_2(Struct_1(vec3<bool>(true, false, true), var_1.yxy, vec3<bool>(true, true, false), var_1.wyw), Struct_1(vec3<bool>(true, true, false), var_1.xzx, vec3<bool>(true, false, true), var_1.wxx), -u_input.a, _wgslsmith_f_op_vec2_f32(ceil(var_1.xz)), ~vec3<u32>(1u, 33102u, 29338u))), Struct_2(func_4(Struct_1(vec3<bool>(true, true, false), vec3<f32>(1391f, var_1.x, 133f), vec3<bool>(false, false, true), var_1.wxz), Struct_2(Struct_1(vec3<bool>(false, false, false), var_1.yww, vec3<bool>(true, true, false), vec3<f32>(146f, var_1.x, var_3)), Struct_1(vec3<bool>(false, false, true), vec3<f32>(var_3, var_3, var_3), vec3<bool>(true, false, true), vec3<f32>(-1683f, var_3, var_1.x)), 8119i, var_1.xy, var_0.xzx)), Struct_1(vec3<bool>(true, true, true), _wgslsmith_div_vec3_f32(var_1.zzw, var_1.yzx), vec3<bool>(false, true, false), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_3, 1221f, var_3)))), 1i, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -439f), _wgslsmith_f_op_f32(156f - var_3)), ~(~vec3<u32>(u_input.c, var_0.x, u_input.c)))), func_4(Struct_1(vec3<bool>(-574f == var_1.x, true, any(vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(-func_4(Struct_1(vec3<bool>(true, false, false), vec3<f32>(122f, 1000f, 417f), vec3<bool>(true, false, false), vec3<f32>(-1516f, 196f, 283f)), Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<f32>(var_1.x, 1096f, -1000f), vec3<bool>(false, true, true), vec3<f32>(var_1.x, var_3, 462f)), Struct_1(vec3<bool>(false, false, false), var_1.ywx, vec3<bool>(false, true, false), vec3<f32>(var_1.x, 470f, -2197f)), -30179i, vec2<f32>(1249f, 876f), vec3<u32>(32326u, 0u, u_input.c))).b), vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(var_1.xwy, var_1.xzw))))), Struct_2(Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(exp2(var_1.yyy)), vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(-var_1.xxx)), func_4(func_4(Struct_1(vec3<bool>(false, false, false), vec3<f32>(-204f, var_1.x, 1295f), vec3<bool>(false, false, false), vec3<f32>(var_3, 1000f, -477f)), Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<f32>(-655f, var_3, var_3), vec3<bool>(true, true, false), vec3<f32>(-151f, -117f, -553f)), Struct_1(vec3<bool>(false, false, false), vec3<f32>(311f, 473f, var_3), vec3<bool>(false, false, false), var_1.yxy), -1i, vec2<f32>(var_1.x, -384f), vec3<u32>(0u, 4294967295u, 0u))), Struct_2(Struct_1(vec3<bool>(true, false, true), vec3<f32>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, true, false), vec3<f32>(var_1.x, var_1.x, -219f)), Struct_1(vec3<bool>(false, true, true), vec3<f32>(var_1.x, var_3, var_3), vec3<bool>(true, true, false), var_1.xxx), u_input.a, vec2<f32>(var_3, 985f), vec3<u32>(1u, var_0.x, var_0.x))), reverseBits(min(u_input.a, u_input.b)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_1.yx))), var_0.zyx)), u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1.xw), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-639f, -2086f)), true)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-995f, var_3)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(414f, 684f))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_1.zz + var_1.yw), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-803f, var_3)))))), vec3<u32>(~var_0.x, 1u & _wgslsmith_add_u32(min(u_input.c, var_0.x), ~u_input.c), 50442u));
    var_4 = Struct_2(Struct_1(!vec3<bool>(true, false, any(vec3<bool>(false, var_4.b.c.x, false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_4.b.b.x * 286f), -444f, 1140f)), var_4.a.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-587f, 1349f, 879f), var_4.a.d)))))), var_4.a, firstTrailingBit(var_4.c), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.zx))))), ~var_4.e);
    let var_5 = Struct_2(func_4(func_4(func_4(func_4(Struct_1(var_4.a.c, var_1.yyz, var_4.a.c, var_4.a.b), Struct_2(Struct_1(vec3<bool>(true, true, var_4.a.a.x), var_1.yxw, vec3<bool>(false, var_4.b.a.x, true), vec3<f32>(-1067f, var_3, var_4.d.x)), Struct_1(var_4.a.c, vec3<f32>(var_3, var_3, -1000f), var_4.a.a, vec3<f32>(var_4.d.x, 1351f, 734f)), -15381i, var_1.yx, vec3<u32>(u_input.c, u_input.c, 0u))), Struct_2(var_4.a, var_4.a, 98376i, var_4.a.d.xx, vec3<u32>(var_4.e.x, 10968u, 4294967295u))), Struct_2(func_4(var_4.b, Struct_2(Struct_1(vec3<bool>(false, var_4.a.a.x, true), vec3<f32>(-743f, var_1.x, -416f), var_4.b.c, var_4.b.d), var_4.a, u_input.b, var_1.zz, var_4.e)), func_4(Struct_1(var_4.b.a, var_1.www, var_4.b.c, vec3<f32>(869f, 627f, -1168f)), Struct_2(Struct_1(var_4.a.a, var_1.wyz, vec3<bool>(true, true, false), var_4.a.d), var_4.a, -7346i, var_1.xw, vec3<u32>(var_0.x, 0u, 9598u))), -1i, _wgslsmith_f_op_vec2_f32(ceil(var_1.xx)), var_4.e)), Struct_2(Struct_1(var_4.a.a, vec3<f32>(461f, var_1.x, -337f), vec3<bool>(true, true, true), var_1.xxz), var_4.a, -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 29495i), vec2<i32>(u_input.b, 2147483647i)), _wgslsmith_f_op_vec2_f32(sign(func_4(var_4.a, Struct_2(Struct_1(vec3<bool>(false, var_4.a.a.x, var_4.b.a.x), vec3<f32>(var_3, var_3, 1000f), var_4.a.a, var_1.zwz), Struct_1(var_4.a.a, vec3<f32>(635f, var_3, var_3), vec3<bool>(false, true, false), vec3<f32>(378f, var_4.a.d.x, var_4.a.b.x)), u_input.a, var_1.wz, var_4.e)).d.yy)), var_0.zzy)), func_4(func_4(Struct_1(vec3<bool>(var_4.a.a.x, false, var_4.b.a.x), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(648f, 901f, -1333f))), func_4(var_4.b, Struct_2(Struct_1(var_4.b.a, vec3<f32>(var_3, -836f, var_3), vec3<bool>(false, var_4.b.a.x, true), var_4.a.b), Struct_1(var_4.b.a, var_4.a.d, var_4.a.c, var_4.a.d), var_4.c, vec2<f32>(353f, var_3), vec3<u32>(1u, 4294967295u, 1u))).c, vec3<f32>(-614f, -1409f, -234f)), Struct_2(var_4.b, Struct_1(vec3<bool>(true, var_4.b.c.x, var_4.b.a.x), vec3<f32>(var_3, var_4.d.x, var_1.x), vec3<bool>(var_4.b.a.x, var_4.a.c.x, var_4.a.a.x), var_4.b.d), -u_input.b, vec2<f32>(var_4.d.x, var_4.a.d.x), abs(var_4.e))), Struct_2(var_4.b, Struct_1(select(var_4.a.c, vec3<bool>(false, true, true), var_4.b.c.x), var_4.a.b, var_4.b.a, vec3<f32>(var_4.b.b.x, -155f, var_4.a.b.x)), _wgslsmith_dot_vec4_i32(-vec4<i32>(57881i, -10534i, 1i, var_4.c), vec4<i32>(var_4.c, u_input.b, 2147483647i, var_4.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.wx, vec2<f32>(-1230f, var_3))), (var_0.xzy | vec3<u32>(11548u, var_0.x, var_0.x)) & vec3<u32>(1u, 1u, 0u))), var_4.c, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(var_4.d)))), vec3<u32>(min(13758u, var_4.e.x) >> (u_input.c % 32u), abs(~1u) ^ _wgslsmith_dot_vec3_u32(var_0.wxy, min(vec3<u32>(var_4.e.x, 1u, var_0.x), var_4.e)), firstLeadingBit(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(var_0.x, 18064u)), ~var_4.e.yy))));
    var_4 = var_5;
    var var_6 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -389f), var_5.c, vec4<f32>(var_3, var_3, -434f, -1612f), -var_4.c);
}


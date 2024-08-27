struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_2) -> u32 {
    let var_0 = _wgslsmith_dot_vec4_i32(~firstLeadingBit(-vec4<i32>(arg_2.a.x, 46i, -1i, arg_2.a.x)), -(vec4<i32>(-1i) * -vec4<i32>(-387i, -25929i, u_input.b.x, arg_2.a.x))) < _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a.x, abs(select(-58437i, u_input.b.x, arg_2.b.d.x)), _wgslsmith_dot_vec3_i32(max(vec3<i32>(arg_2.a.x, arg_2.a.x, -15302i), vec3<i32>(-1i, 0i, 0i)), vec3<i32>(arg_2.a.x, arg_2.a.x, arg_2.a.x)), 18732i), abs(vec4<i32>(arg_2.a.x << (u_input.c.x % 32u), firstTrailingBit(2147483647i), arg_2.a.x, ~(-27900i))));
    let var_1 = arg_1.x;
    global0 = u_input.a;
    let var_2 = arg_2.b;
    let var_3 = var_0;
    return ~arg_0.c.x | _wgslsmith_mod_u32(u_input.c.x | arg_0.c.x, abs(~(~var_1)));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_2, arg_3: bool) -> u32 {
    let var_0 = ~(~4294967295u);
    var var_1 = abs(vec3<u32>(32937u, 4294967295u, (~11105u >> (func_3(arg_2.b, vec4<u32>(arg_2.b.c.x, arg_2.b.c.x, var_0, 32846u), arg_2) % 32u)) & 1u));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.b.x * 2631f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_2.b.b.x, arg_2.b.b.x)))))));
    var var_3 = select(vec3<bool>(any(!vec2<bool>(arg_2.b.d.x, arg_2.b.e)), true, false), vec3<bool>(any(vec3<bool>(!arg_3, true, arg_3)), ~87469u >= var_1.x, all(vec4<bool>(!arg_3, true | arg_3, arg_2.b.c.x != var_1.x, true))), (arg_2.a.x == u_input.b.x) && any(vec4<bool>(any(vec3<bool>(false, arg_2.b.a, true)), any(vec3<bool>(true, true, false)), !arg_0, !arg_2.b.a)));
    global0 = _wgslsmith_mod_u32(var_1.x, u_input.c.x);
    return u_input.c.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1) -> vec3<f32> {
    global0 = func_2(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-583f - _wgslsmith_f_op_f32(arg_1.b.x - arg_1.b.x)) + _wgslsmith_f_op_f32(step(arg_1.b.x, _wgslsmith_div_f32(arg_1.b.x, _wgslsmith_f_op_f32(arg_1.b.x * -629f))))), Struct_2(vec2<i32>(-15935i, _wgslsmith_sub_i32(arg_0.x, u_input.b.x)), arg_1, arg_1.e), (0u | u_input.c.x) >= ~_wgslsmith_div_u32(0u, u_input.a));
    var var_0 = arg_1;
    var_0 = Struct_1(var_0.d.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(var_0.b, vec3<f32>(-665f, arg_1.b.x, _wgslsmith_f_op_f32(var_0.b.x - var_0.b.x))))), select(vec4<u32>(_wgslsmith_dot_vec3_u32(arg_1.c.xyx, countOneBits(u_input.c)), firstTrailingBit(arg_1.c.x), _wgslsmith_div_u32(arg_1.c.x, 6046u) >> (max(1u, 4294967295u) % 32u), 53699u), ~arg_1.c, all(vec4<bool>(false, !var_0.a, !var_0.d.x, var_0.d.x))), var_0.d, !all(!select(vec3<bool>(var_0.d.x, arg_1.d.x, true), vec3<bool>(var_0.e, var_0.e, arg_1.d.x), vec3<bool>(false, arg_1.a, arg_1.d.x))));
    var var_1 = Struct_1(~func_2(true, -2872f, Struct_2(vec2<i32>(arg_0.x, 26313i), Struct_1(arg_1.d.x, vec3<f32>(554f, arg_1.b.x, 764f), arg_1.c, var_0.d, var_0.a), true), true) > u_input.a, vec3<f32>(732f, var_0.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(685f, arg_1.b.x, var_0.e))))))), vec4<u32>(~select(27095u, u_input.c.x, true), u_input.c.x, abs(var_0.c.x) << (~u_input.c.x % 32u), arg_1.c.x), select(select(!arg_1.d, select(vec2<bool>(arg_1.d.x, false), var_0.d, var_0.b.x <= var_0.b.x), all(select(vec3<bool>(arg_1.d.x, var_0.e, var_0.d.x), vec3<bool>(var_0.d.x, arg_1.e, var_0.a), vec3<bool>(false, false, arg_1.e)))), !var_0.d, vec2<bool>(arg_1.a, any(vec2<bool>(arg_1.d.x, true)))), any(select(!(!vec4<bool>(var_0.a, true, false, arg_1.d.x)), !select(vec4<bool>(true, false, var_0.d.x, arg_1.d.x), vec4<bool>(var_0.a, var_0.a, arg_1.e, false), var_0.e), _wgslsmith_sub_i32(-1i, arg_0.x) < 2147483647i)));
    var var_2 = firstTrailingBit(abs(max(_wgslsmith_clamp_vec4_u32(var_1.c & var_1.c, select(arg_1.c, arg_1.c, vec4<bool>(var_1.e, true, true, false)), arg_1.c), _wgslsmith_sub_vec4_u32(min(var_1.c, arg_1.c), arg_1.c))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_1.b, _wgslsmith_div_vec3_f32(arg_1.b, _wgslsmith_f_op_vec3_f32(arg_1.b + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.b.x, arg_1.b.x, -1000f), arg_1.b))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(arg_0.yz));
    var var_2 = arg_2;
    var var_3 = Struct_1(!(!(14829i <= u_input.b.x)), arg_0, abs(var_0.c), var_0.d, all(vec3<bool>(false, 747f < _wgslsmith_f_op_f32(floor(-1000f)), !(arg_2.d.x && arg_2.d.x))));
    let var_4 = var_0.a;
    return arg_2;
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = func_4(arg_1.b.b, _wgslsmith_mult_vec4_u32(reverseBits(abs(vec4<u32>(12552u, arg_1.b.c.x, 26059u, 5207u))), _wgslsmith_sub_vec4_u32(vec4<u32>(firstLeadingBit(arg_1.b.c.x), ~128897u, ~arg_1.b.c.x, _wgslsmith_mult_u32(107922u, u_input.c.x)), ~arg_1.b.c)), func_4(_wgslsmith_f_op_vec3_f32(-arg_1.b.b), ~_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.c.x, arg_1.b.c.x, u_input.c.x), arg_1.b.c), arg_1.b.c), func_4(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_1.b.b))), vec4<u32>(4294967295u, ~0u, arg_1.b.c.x ^ 0u, arg_1.b.c.x), Struct_1(arg_1.b.d.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-809f, arg_0, 193f)), arg_1.b.c, !vec2<bool>(arg_1.b.a, arg_1.b.a), arg_1.c), 1u), _wgslsmith_div_u32(select(~u_input.c.x, ~arg_1.b.c.x, true), _wgslsmith_clamp_u32(max(u_input.c.x, arg_1.b.c.x), u_input.a, reverseBits(arg_1.b.c.x)))), func_3(arg_1.b, arg_1.b.c << (_wgslsmith_clamp_vec4_u32(~arg_1.b.c, vec4<u32>(1u, arg_1.b.c.x, 4294967295u, u_input.a), vec4<u32>(arg_1.b.c.x, 0u, 15430u, 10735u)) % vec4<u32>(32u)), arg_1));
    var_0 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.b.b.x, -233f, var_0.b.x), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, -2166f, arg_0), vec3<f32>(arg_0, var_0.b.x, var_0.b.x)), var_0.d.x)))), min(~(~vec4<u32>(u_input.c.x, var_0.c.x, arg_1.b.c.x, 24375u)), reverseBits(~vec4<u32>(4294967295u, arg_1.b.c.x, u_input.c.x, arg_1.b.c.x)) | vec4<u32>(arg_1.b.c.x ^ u_input.c.x, func_2(true, var_0.b.x, Struct_2(arg_1.a, Struct_1(var_0.d.x, arg_1.b.b, vec4<u32>(4294967295u, arg_1.b.c.x, 92041u, 0u), var_0.d, arg_1.b.a), false), true), ~arg_1.b.c.x, 45775u >> (var_0.c.x % 32u))), func_4(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1617f, arg_1.b.b.x, 394f) * var_0.b), arg_1.b.b)), arg_1.b.c, arg_1.b, var_0.c.x), ~_wgslsmith_add_u32(select(arg_1.b.c.x, arg_1.b.c.x, var_0.a) ^ 4294967295u, u_input.a ^ ~var_0.c.x));
    let var_1 = !arg_1.c;
    var var_2 = Struct_1(!var_0.a, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.b.x, -336f, 1927f)), var_0.b)))))), vec4<u32>(~func_3(func_4(vec3<f32>(var_0.b.x, -146f, -990f), vec4<u32>(4294967295u, arg_1.b.c.x, u_input.a, 19847u), Struct_1(var_1, vec3<f32>(2075f, arg_1.b.b.x, 1044f), vec4<u32>(arg_1.b.c.x, 0u, 4294967295u, 41918u), var_0.d, var_1), var_0.c.x), ~arg_1.b.c, arg_1), 65979u, var_0.c.x, var_0.c.x), var_0.d, true);
    let var_3 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_div_u32(var_2.c.x, arg_1.b.c.x)), u_input.a), var_2.c.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(31587u, 1u, var_0.c.x), var_0.c.x), ~(vec2<u32>(1u, 0u) | var_2.c.wx)));
    return func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.x, arg_0, _wgslsmith_f_op_f32(var_0.b.x * -281f))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(220f, arg_1.b.b.x, -167f) - arg_1.b.b))))), arg_1.b.c, arg_1.b, ~var_2.c.x);
}

fn func_6(arg_0: Struct_1, arg_1: i32) -> Struct_2 {
    var var_0 = !(!(!(!select(vec3<bool>(arg_0.a, true, false), vec3<bool>(arg_0.d.x, false, true), vec3<bool>(false, arg_0.e, arg_0.d.x)))));
    var var_1 = Struct_2(u_input.b & reverseBits(max(vec2<i32>(-25391i, -24994i), vec2<i32>(1i, 2147483647i)) & _wgslsmith_mult_vec2_i32(vec2<i32>(arg_1, arg_1), u_input.b)), func_5(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1281f))), _wgslsmith_f_op_f32(floor(-2207f)))), Struct_2(u_input.b, Struct_1(any(vec4<bool>(arg_0.a, arg_0.a, var_0.x, arg_0.e)), _wgslsmith_f_op_vec3_f32(-arg_0.b), _wgslsmith_mod_vec4_u32(arg_0.c, vec4<u32>(1u, arg_0.c.x, 76454u, 1u)), func_4(arg_0.b, vec4<u32>(112997u, u_input.a, 2236u, 0u), Struct_1(var_0.x, vec3<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x), arg_0.c, arg_0.d, arg_0.a), 1u).d, true), func_4(_wgslsmith_f_op_vec3_f32(select(arg_0.b, arg_0.b, true)), arg_0.c & vec4<u32>(arg_0.c.x, u_input.c.x, arg_0.c.x, 36676u), func_4(vec3<f32>(714f, -531f, arg_0.b.x), arg_0.c, arg_0, 1u), _wgslsmith_add_u32(arg_0.c.x, u_input.c.x)).a)), func_4(vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.b.x), arg_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))), ~countOneBits(~arg_0.c), arg_0, _wgslsmith_mult_u32(arg_0.c.x, ~arg_0.c.x)).a);
    let var_2 = _wgslsmith_div_u32(~0u, ~41560u & _wgslsmith_div_u32(~var_1.b.c.x, func_3(Struct_1(arg_0.e, vec3<f32>(var_1.b.b.x, -1000f, var_1.b.b.x), vec4<u32>(var_1.b.c.x, var_1.b.c.x, u_input.a, 40770u), arg_0.d, var_0.x), vec4<u32>(0u, 38154u, var_1.b.c.x, var_1.b.c.x), Struct_2(vec2<i32>(u_input.b.x, 0i), Struct_1(var_0.x, vec3<f32>(arg_0.b.x, 319f, -689f), var_1.b.c, var_1.b.d, var_1.c), true)))) | 0u;
    var var_3 = vec3<i32>(0i, ~(-44103i), 1i);
    var var_4 = _wgslsmith_add_vec4_i32(countOneBits(_wgslsmith_add_vec4_i32(max(vec4<i32>(0i, -40529i, 37649i, -18622i), ~vec4<i32>(var_3.x, var_1.a.x, 54560i, -1i)), vec4<i32>(reverseBits(2147483647i), var_1.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(11975i, arg_1, var_3.x), vec3<i32>(u_input.b.x, var_3.x, -27392i)), u_input.b.x))), vec4<i32>(-1i, var_1.a.x, 7957i, ~arg_1));
    return Struct_2(var_3.zy, arg_0, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(-7247i <= (_wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_clamp_i32(-9780i, 20579i, 0i), countOneBits(u_input.b.x)) << (_wgslsmith_div_u32(u_input.c.x, ~u_input.c.x) % 32u)));
    var var_1 = func_6(func_5(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-694f - -2359f) + -451f))), Struct_2(countOneBits(u_input.b) & _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), u_input.b), func_4(_wgslsmith_f_op_vec3_f32(func_1(vec2<i32>(u_input.b.x, u_input.b.x), Struct_1(var_0, vec3<f32>(-259f, 409f, 367f), vec4<u32>(15233u, u_input.c.x, u_input.a, 1u), vec2<bool>(true, var_0), var_0))), select(vec4<u32>(46652u, u_input.c.x, 55833u, u_input.c.x), vec4<u32>(1u, 4294967295u, u_input.a, 30193u), var_0), Struct_1(var_0, vec3<f32>(102f, -661f, -167f), vec4<u32>(u_input.c.x, 0u, u_input.c.x, u_input.c.x), vec2<bool>(false, var_0), var_0), u_input.a), any(select(vec2<bool>(var_0, true), vec2<bool>(var_0, var_0), true)))), _wgslsmith_clamp_i32(firstTrailingBit(u_input.b.x), ~_wgslsmith_div_i32(2147483647i, firstLeadingBit(u_input.b.x)), -2147483647i));
    global0 = u_input.a;
    global0 = ~u_input.c.x;
    var_1 = func_6(var_1.b, 14202i);
    global0 = 25558u << (func_2(true, _wgslsmith_div_f32(-821f, _wgslsmith_f_op_f32(-func_6(Struct_1(var_1.c, vec3<f32>(var_1.b.b.x, var_1.b.b.x, var_1.b.b.x), var_1.b.c, vec2<bool>(false, false), var_0), 34522i).b.b.x)), func_6(Struct_1(var_0, var_1.b.b, ~var_1.b.c, !var_1.b.d, var_0), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-51023i, u_input.b.x), abs(var_1.a.x))), var_0) % 32u);
    global0 = _wgslsmith_dot_vec3_u32(~vec3<u32>(~var_1.b.c.x, var_1.b.c.x, countOneBits(~u_input.a)), ~vec3<u32>(func_2(any(var_1.b.d), -1000f, func_6(var_1.b, 36160i), var_0 & false), firstTrailingBit(1u), ~4294967295u | firstTrailingBit(0u)));
    let x = u_input.a;
    s_output = StorageBuffer(-451f, ~var_1.b.c, firstTrailingBit(_wgslsmith_add_vec4_i32(-vec4<i32>(var_1.a.x, u_input.b.x, u_input.b.x, 21067i), vec4<i32>(2147483647i, var_1.a.x, 32692i, u_input.b.x))) & vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-1i, var_1.a.x), var_1.a.x, 0i), max(firstLeadingBit(-2147483647i), 54463i), ~(-var_1.a.x), _wgslsmith_mult_i32(firstLeadingBit(var_1.a.x), 1i)), var_1.a.x);
}


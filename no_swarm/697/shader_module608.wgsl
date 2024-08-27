struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: i32,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> i32 {
    global0 = true;
    let var_0 = abs(~reverseBits(abs(~vec4<u32>(34634u, 52459u, 0u, 0u))));
    global0 = true;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(2063f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(384f + -2021f))), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(143f + 148f))))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(269f, var_1.x)), vec2<f32>(var_1.x, var_1.x), vec2<bool>(true, true)))))) * vec2<f32>(1429f, _wgslsmith_f_op_f32(-var_1.x)));
    return firstLeadingBit(u_input.a);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_3) -> Struct_3 {
    global0 = false;
    let var_0 = Struct_2(~max(select(4294967295u, arg_2.a.c, arg_1.a.d.a), ~arg_1.a.c) == arg_2.b.c, arg_1.a.b, _wgslsmith_add_u32(arg_2.a.c, reverseBits(_wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_2.a.c, 2976u, arg_2.a.c), vec3<u32>(16490u, 42349u, arg_2.b.c), true), ~vec3<u32>(arg_2.a.c, 66139u, 0u)))), Struct_1(arg_2.b.d.b.x, vec4<bool>(!(!arg_2.b.a), !any(vec3<bool>(arg_2.a.a, true, true)), !(true & arg_1.b.d.a), !arg_1.b.d.b.x != (arg_0.x > 0i)), _wgslsmith_f_op_vec3_f32(sign(arg_2.b.d.c)), _wgslsmith_clamp_i32(min(_wgslsmith_clamp_i32(arg_2.b.b.d, arg_1.b.d.d, arg_2.a.b.d), u_input.a), ~1i, -func_3())));
    var var_1 = select(var_0.b.a, !arg_2.a.d.b.x, any(vec3<bool>(all(!vec4<bool>(arg_1.a.d.b.x, var_0.b.a, true, false)), true, var_0.a)));
    let var_2 = Struct_1(select(select(arg_2.b.d.b.x, true && arg_1.b.b.a, _wgslsmith_f_op_f32(var_0.d.c.x + arg_2.b.d.c.x) != _wgslsmith_f_op_f32(ceil(arg_1.a.b.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.b.d.c.x)) - 318f) < _wgslsmith_f_op_f32(-arg_2.b.b.c.x), arg_2.b.d.a), arg_1.a.d.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.d.c.x, arg_2.a.b.c.x, arg_1.a.d.c.x)) - _wgslsmith_div_vec3_f32(vec3<f32>(var_0.b.c.x, 1572f, 340f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -560f, var_0.d.c.x))))), arg_1.a.b.d);
    var_1 = !all(vec3<bool>(true, var_2.a, !arg_2.a.b.b.x));
    return arg_1;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_4) -> i32 {
    global0 = !arg_0.b.d.a;
    let var_0 = Struct_2(func_2(reverseBits(vec3<i32>(u_input.a, 0i, -29282i)), arg_0, Struct_3(arg_0.b, Struct_2(false, Struct_1(false, vec4<bool>(false, false, true, arg_2.a), vec3<f32>(arg_1.x, -308f, arg_1.x), -19136i), 0u, Struct_1(false, arg_0.a.b.b, vec3<f32>(arg_0.a.d.c.x, arg_0.a.b.c.x, arg_0.b.d.c.x), arg_0.a.d.d)), 1i)).a.b.c.x <= _wgslsmith_f_op_f32(func_2(firstLeadingBit(vec3<i32>(27746i, arg_0.c, 0i)), arg_0, Struct_3(Struct_2(true, Struct_1(true, vec4<bool>(false, arg_2.a, arg_0.a.a, true), arg_1, arg_0.c), 27038u, Struct_1(false, vec4<bool>(arg_2.a, arg_2.a, arg_2.a, false), arg_1, arg_0.a.b.d)), Struct_2(arg_2.a, Struct_1(arg_2.a, vec4<bool>(arg_2.a, false, arg_2.a, arg_2.a), arg_0.a.d.c, 0i), arg_0.a.c, Struct_1(arg_0.b.a, arg_0.a.d.b, vec3<f32>(568f, arg_1.x, arg_1.x), 0i)), arg_0.a.b.d)).b.b.c.x - -944f), func_2(_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.a, 2147483647i, -487i) >> (vec3<u32>(0u, 24302u, arg_0.a.c) % vec3<u32>(32u)), ~(-vec3<i32>(arg_0.c, 0i, arg_0.a.b.d))), arg_0, func_2(vec3<i32>(u_input.a, firstLeadingBit(arg_0.c), u_input.a), Struct_3(arg_0.a, Struct_2(true, Struct_1(false, vec4<bool>(arg_0.b.b.a, false, true, true), vec3<f32>(arg_1.x, 342f, 1576f), 10434i), arg_0.a.c, arg_0.a.d), 3533i), func_2(vec3<i32>(u_input.a, u_input.a, u_input.a), arg_0, func_2(vec3<i32>(arg_0.c, u_input.a, arg_0.c), arg_0, arg_0)))).b.b, ~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(arg_0.a.c, 23777u), _wgslsmith_add_u32(5402u, arg_0.b.c), _wgslsmith_div_u32(4294967295u, 17638u)), _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.b.c, arg_0.b.c, arg_0.b.c), vec3<u32>(20281u, 48251u, 1u))), arg_0.a.b);
    return _wgslsmith_clamp_i32(0i | ((~2147483647i << ((1u ^ var_0.c) % 32u)) >> (arg_0.b.c % 32u)), 1i, _wgslsmith_dot_vec2_i32(reverseBits(_wgslsmith_add_vec2_i32(~vec2<i32>(21657i, var_0.d.d), -vec2<i32>(arg_0.a.b.d, u_input.a))), abs(_wgslsmith_sub_vec2_i32(select(vec2<i32>(0i, 1i), vec2<i32>(arg_0.c, var_0.b.d), var_0.a), vec2<i32>(4415i, -10237i)))));
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = Struct_5(firstTrailingBit(min(func_4(func_2(vec3<i32>(u_input.a, u_input.a, 2147483647i), Struct_3(Struct_2(false, Struct_1(true, vec4<bool>(true, false, false, false), vec3<f32>(-1217f, -1594f, -626f), u_input.a), 13677u, Struct_1(true, vec4<bool>(false, true, true, true), vec3<f32>(-217f, 497f, -263f), arg_0)), Struct_2(true, Struct_1(true, vec4<bool>(false, false, true, false), vec3<f32>(1242f, 664f, 1664f), u_input.a), 38653u, Struct_1(false, vec4<bool>(false, true, true, false), vec3<f32>(-2160f, 1705f, 374f), 1i)), 2147483647i), Struct_3(Struct_2(true, Struct_1(false, vec4<bool>(true, true, true, true), vec3<f32>(397f, -489f, -608f), arg_0), 0u, Struct_1(false, vec4<bool>(true, false, false, false), vec3<f32>(-937f, -459f, 428f), u_input.a)), Struct_2(true, Struct_1(false, vec4<bool>(false, false, true, true), vec3<f32>(1000f, 925f, -1386f), arg_0), 0u, Struct_1(true, vec4<bool>(false, true, false, true), vec3<f32>(-1936f, -184f, 1000f), 28425i)), u_input.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2262f, 390f, -3255f) * vec3<f32>(-565f, 411f, 1000f)), Struct_4(false)), firstLeadingBit(-50436i))), _wgslsmith_clamp_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(-22308i, arg_0) | vec2<i32>(arg_0, u_input.a), min(vec2<i32>(-11259i, u_input.a), vec2<i32>(-24819i, u_input.a))), -(vec2<i32>(-1i) * -vec2<i32>(-41902i, arg_0)), ~vec2<i32>(_wgslsmith_mult_i32(u_input.a, arg_0), countOneBits(-2147483647i))), Struct_1(select(true, all(vec4<bool>(true, true, true, true)), true), vec4<bool>(true, true, any(vec2<bool>(true, true)), true), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -842f) * _wgslsmith_f_op_f32(192f - -291f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-736f, 348f)) + _wgslsmith_f_op_f32(ceil(-1084f))), _wgslsmith_f_op_f32(min(-138f, _wgslsmith_f_op_f32(sign(-977f))))), arg_0));
    let var_1 = vec4<bool>(false & (false || !var_0.c.a), true, var_0.c.a, false);
    var var_2 = _wgslsmith_add_i32(arg_0, _wgslsmith_mult_i32(-17601i, abs(firstTrailingBit(18845i))));
    let var_3 = var_0.c.c.x;
    var var_4 = func_2(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, u_input.a, 25373i, -1i), vec4<i32>(60076i, var_0.c.d, -2147483647i, -1i)), u_input.a), ~(~vec3<i32>(-8504i, -15937i, 6593i))), Struct_3(func_2(~_wgslsmith_mult_vec3_i32(vec3<i32>(46793i, 0i, u_input.a), vec3<i32>(arg_0, 2147483647i, 1i)), Struct_3(func_2(vec3<i32>(u_input.a, arg_0, arg_0), Struct_3(Struct_2(true, var_0.c, 0u, var_0.c), Struct_2(true, Struct_1(var_1.x, var_0.c.b, vec3<f32>(var_0.c.c.x, var_3, var_3), u_input.a), 27769u, Struct_1(var_0.c.b.x, vec4<bool>(var_1.x, true, var_0.c.b.x, true), var_0.c.c, var_0.a)), -2147483647i), Struct_3(Struct_2(var_1.x, var_0.c, 39358u, var_0.c), Struct_2(var_1.x, Struct_1(var_0.c.a, vec4<bool>(var_0.c.b.x, false, var_1.x, true), vec3<f32>(var_3, -1554f, 1556f), -37583i), 1u, var_0.c), u_input.a)).a, func_2(vec3<i32>(u_input.a, var_0.b.x, u_input.a), Struct_3(Struct_2(var_0.c.b.x, var_0.c, 30448u, Struct_1(var_1.x, var_1, var_0.c.c, arg_0)), Struct_2(false, var_0.c, 0u, Struct_1(var_1.x, vec4<bool>(true, false, var_0.c.b.x, false), var_0.c.c, var_0.b.x)), u_input.a), Struct_3(Struct_2(var_1.x, Struct_1(true, vec4<bool>(var_0.c.a, var_0.c.b.x, var_1.x, var_1.x), var_0.c.c, -1i), 4294967295u, var_0.c), Struct_2(false, Struct_1(var_0.c.b.x, vec4<bool>(var_1.x, false, true, var_1.x), vec3<f32>(var_3, -236f, 564f), arg_0), 1u, var_0.c), u_input.a)).b, i32(-1i) * -1i), func_2(-vec3<i32>(-17016i, arg_0, 1i), Struct_3(Struct_2(false, var_0.c, 105329u, var_0.c), Struct_2(false, Struct_1(var_1.x, vec4<bool>(false, var_1.x, true, var_0.c.b.x), var_0.c.c, -48174i), 50460u, Struct_1(false, var_0.c.b, vec3<f32>(var_3, var_3, var_0.c.c.x), -48045i)), u_input.a), func_2(vec3<i32>(1i, 2147483647i, 35830i), Struct_3(Struct_2(false, var_0.c, 4294967295u, var_0.c), Struct_2(true, Struct_1(false, vec4<bool>(true, true, var_0.c.a, true), var_0.c.c, arg_0), 16122u, Struct_1(true, var_0.c.b, var_0.c.c, u_input.a)), arg_0), Struct_3(Struct_2(var_1.x, Struct_1(var_1.x, var_1, var_0.c.c, 0i), 31684u, var_0.c), Struct_2(true, var_0.c, 51013u, var_0.c), -1016i)))).b, Struct_2(all(!var_1.yw), func_2(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, arg_0, 0i), vec3<i32>(arg_0, -1i, -30343i)), Struct_3(Struct_2(var_0.c.a, Struct_1(var_0.c.a, vec4<bool>(var_1.x, false, var_0.c.b.x, true), var_0.c.c, u_input.a), 4294967295u, Struct_1(var_1.x, var_0.c.b, vec3<f32>(var_3, var_3, var_3), 80420i)), Struct_2(false, Struct_1(var_1.x, vec4<bool>(false, true, false, var_0.c.b.x), vec3<f32>(var_0.c.c.x, var_3, 918f), -2147483647i), 1844u, var_0.c), arg_0), Struct_3(Struct_2(var_0.c.a, Struct_1(var_1.x, var_1, vec3<f32>(-818f, 1565f, var_3), -22899i), 0u, Struct_1(true, vec4<bool>(false, true, true, var_1.x), var_0.c.c, -1i)), Struct_2(var_1.x, var_0.c, 54783u, var_0.c), arg_0)).b.d, abs(max(18815u, 4294967295u)), func_2(_wgslsmith_div_vec3_i32(vec3<i32>(-111i, 1i, arg_0), vec3<i32>(0i, var_0.a, var_0.a)), Struct_3(Struct_2(false, Struct_1(var_1.x, vec4<bool>(false, var_0.c.a, var_0.c.b.x, false), var_0.c.c, 1i), 24246u, var_0.c), Struct_2(var_1.x, Struct_1(var_0.c.b.x, var_0.c.b, var_0.c.c, 1i), 34528u, Struct_1(var_0.c.a, vec4<bool>(var_0.c.b.x, var_0.c.a, true, var_1.x), vec3<f32>(-818f, var_0.c.c.x, var_0.c.c.x), u_input.a)), arg_0), Struct_3(Struct_2(false, var_0.c, 17937u, var_0.c), Struct_2(var_0.c.a, Struct_1(var_1.x, vec4<bool>(true, true, true, true), var_0.c.c, u_input.a), 0u, Struct_1(true, var_0.c.b, vec3<f32>(-174f, -966f, var_3), u_input.a)), 2147483647i)).b.d), ~var_0.b.x), func_2(firstTrailingBit(vec3<i32>(-1i, 1i, 0i)), func_2(~_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, 1i, 0i), vec3<i32>(var_0.c.d, -76433i, arg_0)), Struct_3(Struct_2(var_0.c.a, var_0.c, 0u, Struct_1(true, var_0.c.b, vec3<f32>(var_3, var_3, 311f), 21054i)), func_2(vec3<i32>(arg_0, -22407i, 37112i), Struct_3(Struct_2(var_1.x, var_0.c, 1u, Struct_1(true, var_1, var_0.c.c, 2147483647i)), Struct_2(var_1.x, Struct_1(true, var_0.c.b, vec3<f32>(617f, 779f, var_0.c.c.x), -1i), 1u, var_0.c), -2147483647i), Struct_3(Struct_2(var_1.x, Struct_1(var_1.x, vec4<bool>(true, var_1.x, var_0.c.a, true), vec3<f32>(1422f, -267f, var_0.c.c.x), 49367i), 4294967295u, var_0.c), Struct_2(true, Struct_1(var_0.c.a, var_0.c.b, vec3<f32>(var_0.c.c.x, 615f, 1419f), var_0.b.x), 4294967295u, Struct_1(var_1.x, var_0.c.b, var_0.c.c, 1i)), 2147483647i)).b, arg_0 | u_input.a), func_2(~vec3<i32>(-10194i, var_0.b.x, 2457i), Struct_3(Struct_2(var_0.c.b.x, Struct_1(var_1.x, var_0.c.b, vec3<f32>(var_3, var_3, -349f), 596i), 1u, var_0.c), Struct_2(var_1.x, Struct_1(var_0.c.a, var_1, var_0.c.c, 2147483647i), 988u, Struct_1(true, vec4<bool>(true, true, var_1.x, var_1.x), vec3<f32>(var_3, var_3, 230f), -20219i)), u_input.a), func_2(vec3<i32>(u_input.a, var_0.a, u_input.a), Struct_3(Struct_2(false, var_0.c, 0u, var_0.c), Struct_2(false, var_0.c, 43501u, var_0.c), arg_0), Struct_3(Struct_2(false, var_0.c, 1u, Struct_1(true, vec4<bool>(true, var_1.x, false, var_0.c.a), vec3<f32>(1000f, var_0.c.c.x, var_3), -2147483647i)), Struct_2(false, var_0.c, 4294967295u, Struct_1(true, var_0.c.b, vec3<f32>(955f, var_0.c.c.x, -1092f), -1i)), -1i)))), Struct_3(func_2(-vec3<i32>(2147483647i, -4623i, var_0.c.d), func_2(vec3<i32>(arg_0, u_input.a, var_0.c.d), Struct_3(Struct_2(false, Struct_1(var_0.c.a, vec4<bool>(true, var_1.x, false, var_1.x), vec3<f32>(970f, 1778f, 440f), -1i), 1u, var_0.c), Struct_2(false, Struct_1(var_0.c.a, vec4<bool>(true, true, true, var_1.x), var_0.c.c, -2147483647i), 50892u, Struct_1(var_0.c.a, var_0.c.b, var_0.c.c, arg_0)), 1i), Struct_3(Struct_2(false, Struct_1(false, vec4<bool>(var_0.c.a, var_1.x, var_0.c.b.x, var_0.c.a), vec3<f32>(var_3, var_3, -636f), 1i), 1u, Struct_1(false, var_0.c.b, var_0.c.c, 27816i)), Struct_2(var_1.x, var_0.c, 26290u, Struct_1(false, var_0.c.b, var_0.c.c, 2147483647i)), -2147483647i)), Struct_3(Struct_2(true, var_0.c, 4294967295u, Struct_1(var_0.c.a, var_1, vec3<f32>(1268f, var_0.c.c.x, var_0.c.c.x), var_0.c.d)), Struct_2(true, Struct_1(true, var_1, vec3<f32>(-119f, 533f, var_3), u_input.a), 19593u, var_0.c), -5269i)).a, Struct_2(true, Struct_1(var_0.c.a, vec4<bool>(var_1.x, false, var_0.c.a, true), vec3<f32>(var_0.c.c.x, var_3, var_0.c.c.x), -43679i), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 41339u), vec3<u32>(1u, 27859u, 1u)), func_2(vec3<i32>(61996i, 13257i, 4896i), Struct_3(Struct_2(true, Struct_1(true, vec4<bool>(true, false, var_1.x, false), var_0.c.c, var_0.b.x), 3552u, var_0.c), Struct_2(true, Struct_1(var_0.c.a, vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec3<f32>(var_0.c.c.x, -462f, var_0.c.c.x), var_0.c.d), 30518u, var_0.c), arg_0), Struct_3(Struct_2(var_1.x, var_0.c, 1u, Struct_1(false, vec4<bool>(var_1.x, var_1.x, true, true), var_0.c.c, var_0.c.d)), Struct_2(true, Struct_1(true, var_1, vec3<f32>(var_3, 489f, var_0.c.c.x), u_input.a), 0u, Struct_1(false, var_1, var_0.c.c, arg_0)), var_0.a)).b.b), arg_0))).a;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1617f, -365f, _wgslsmith_f_op_f32(f32(-1f) * -611f), _wgslsmith_f_op_f32(abs(217f))))));
    global0 = true | !all(vec3<bool>(true, false, func_1(u_input.a)));
    var var_1 = Struct_4(any(vec3<bool>(all(vec2<bool>(true, true)), true, true)));
    let var_2 = countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(~70518u, 48757u, 73345u, ~1u), vec4<u32>(1u, 1u, 1u, 1u)));
    var var_3 = abs(var_2.x ^ 1u);
    var var_4 = Struct_5(-_wgslsmith_clamp_i32(abs(7339i) << (var_2.x % 32u), ~_wgslsmith_clamp_i32(u_input.a, 0i, -30756i), reverseBits(1i)), _wgslsmith_sub_vec2_i32(-(-vec2<i32>(u_input.a, u_input.a) << (_wgslsmith_mod_vec2_u32(var_2.xx, vec2<u32>(var_2.x, 0u)) % vec2<u32>(32u))), max(firstLeadingBit(select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a), vec2<bool>(var_1.a, false))), -reverseBits(vec2<i32>(u_input.a, u_input.a)))), func_2(_wgslsmith_div_vec3_i32(min(vec3<i32>(u_input.a, 12051i, u_input.a), -vec3<i32>(-28093i, -1i, u_input.a)), vec3<i32>(u_input.a ^ 1i, u_input.a ^ 2147483647i, u_input.a)), Struct_3(Struct_2(!var_1.a, func_2(vec3<i32>(56545i, 1i, -46071i), Struct_3(Struct_2(var_1.a, Struct_1(false, vec4<bool>(false, false, var_1.a, var_1.a), var_0.ywy, 0i), var_2.x, Struct_1(var_1.a, vec4<bool>(true, false, var_1.a, var_1.a), vec3<f32>(1319f, 267f, -196f), -28941i)), Struct_2(var_1.a, Struct_1(var_1.a, vec4<bool>(var_1.a, true, var_1.a, var_1.a), vec3<f32>(-1000f, var_0.x, 333f), -1i), var_2.x, Struct_1(true, vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), vec3<f32>(-338f, var_0.x, var_0.x), u_input.a)), 2147483647i), Struct_3(Struct_2(false, Struct_1(var_1.a, vec4<bool>(false, var_1.a, var_1.a, var_1.a), var_0.ywx, -23122i), 58499u, Struct_1(true, vec4<bool>(var_1.a, true, false, var_1.a), vec3<f32>(var_0.x, 428f, var_0.x), 5490i)), Struct_2(false, Struct_1(false, vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), vec3<f32>(var_0.x, var_0.x, -1257f), u_input.a), 0u, Struct_1(var_1.a, vec4<bool>(var_1.a, true, true, false), vec3<f32>(var_0.x, -262f, var_0.x), 0i)), u_input.a)).a.d, ~4294967295u, func_2(vec3<i32>(-8056i, u_input.a, u_input.a), Struct_3(Struct_2(true, Struct_1(var_1.a, vec4<bool>(var_1.a, var_1.a, true, var_1.a), vec3<f32>(var_0.x, -1408f, var_0.x), -18716i), var_2.x, Struct_1(var_1.a, vec4<bool>(true, var_1.a, false, true), var_0.wwx, u_input.a)), Struct_2(true, Struct_1(false, vec4<bool>(var_1.a, true, var_1.a, true), vec3<f32>(var_0.x, 500f, 344f), 16141i), 0u, Struct_1(false, vec4<bool>(false, false, var_1.a, true), vec3<f32>(var_0.x, var_0.x, var_0.x), u_input.a)), u_input.a), Struct_3(Struct_2(var_1.a, Struct_1(true, vec4<bool>(var_1.a, var_1.a, false, var_1.a), vec3<f32>(var_0.x, var_0.x, 1000f), u_input.a), var_2.x, Struct_1(false, vec4<bool>(var_1.a, var_1.a, false, true), vec3<f32>(var_0.x, 895f, -269f), u_input.a)), Struct_2(var_1.a, Struct_1(true, vec4<bool>(var_1.a, true, var_1.a, var_1.a), vec3<f32>(-632f, 380f, 1047f), u_input.a), 0u, Struct_1(true, vec4<bool>(true, true, var_1.a, var_1.a), var_0.yyw, u_input.a)), u_input.a)).a.b), func_2(vec3<i32>(u_input.a, 34619i, u_input.a) | vec3<i32>(u_input.a, u_input.a, -31945i), func_2(vec3<i32>(u_input.a, u_input.a, 4273i), Struct_3(Struct_2(true, Struct_1(false, vec4<bool>(var_1.a, true, false, var_1.a), var_0.wwz, 1i), var_2.x, Struct_1(var_1.a, vec4<bool>(var_1.a, var_1.a, false, var_1.a), var_0.ywz, u_input.a)), Struct_2(var_1.a, Struct_1(false, vec4<bool>(var_1.a, false, false, var_1.a), vec3<f32>(-2434f, -1000f, 1000f), u_input.a), var_2.x, Struct_1(var_1.a, vec4<bool>(var_1.a, true, false, false), vec3<f32>(var_0.x, var_0.x, var_0.x), u_input.a)), -15511i), Struct_3(Struct_2(true, Struct_1(var_1.a, vec4<bool>(var_1.a, true, var_1.a, true), var_0.zwy, u_input.a), 0u, Struct_1(true, vec4<bool>(false, var_1.a, false, false), var_0.xww, u_input.a)), Struct_2(var_1.a, Struct_1(var_1.a, vec4<bool>(false, var_1.a, false, var_1.a), var_0.ywx, -44271i), var_2.x, Struct_1(false, vec4<bool>(var_1.a, true, var_1.a, var_1.a), var_0.zxw, 10436i)), 7796i)), Struct_3(Struct_2(var_1.a, Struct_1(var_1.a, vec4<bool>(false, false, true, false), vec3<f32>(var_0.x, 1156f, var_0.x), 1i), var_2.x, Struct_1(var_1.a, vec4<bool>(var_1.a, true, true, var_1.a), vec3<f32>(var_0.x, 1172f, var_0.x), u_input.a)), Struct_2(true, Struct_1(var_1.a, vec4<bool>(false, false, var_1.a, var_1.a), var_0.zzy, -3329i), 4294967295u, Struct_1(false, vec4<bool>(var_1.a, false, true, var_1.a), vec3<f32>(var_0.x, var_0.x, 1651f), -62777i)), u_input.a)).b, 16904i), func_2(~vec3<i32>(-52800i, u_input.a, -2147483647i), Struct_3(func_2(vec3<i32>(u_input.a, 0i, u_input.a), Struct_3(Struct_2(var_1.a, Struct_1(false, vec4<bool>(var_1.a, var_1.a, var_1.a, false), vec3<f32>(-727f, 715f, var_0.x), u_input.a), 37307u, Struct_1(false, vec4<bool>(false, true, var_1.a, true), vec3<f32>(259f, var_0.x, var_0.x), -2147483647i)), Struct_2(var_1.a, Struct_1(true, vec4<bool>(var_1.a, false, var_1.a, var_1.a), vec3<f32>(var_0.x, var_0.x, 377f), u_input.a), 22180u, Struct_1(true, vec4<bool>(true, true, true, var_1.a), var_0.yyy, -1i)), u_input.a), Struct_3(Struct_2(var_1.a, Struct_1(var_1.a, vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), var_0.yzx, u_input.a), 4294967295u, Struct_1(var_1.a, vec4<bool>(var_1.a, false, false, true), var_0.xwy, -23593i)), Struct_2(false, Struct_1(false, vec4<bool>(var_1.a, false, var_1.a, false), vec3<f32>(866f, var_0.x, -1398f), u_input.a), 0u, Struct_1(true, vec4<bool>(var_1.a, true, false, true), var_0.zzx, u_input.a)), -1i)).a, Struct_2(false, Struct_1(var_1.a, vec4<bool>(var_1.a, var_1.a, var_1.a, false), vec3<f32>(285f, -2752f, var_0.x), u_input.a), var_2.x, Struct_1(var_1.a, vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), var_0.zxw, u_input.a)), -10806i), Struct_3(func_2(vec3<i32>(-55924i, u_input.a, 0i), Struct_3(Struct_2(var_1.a, Struct_1(true, vec4<bool>(false, var_1.a, var_1.a, var_1.a), vec3<f32>(-1211f, 1000f, var_0.x), u_input.a), var_2.x, Struct_1(false, vec4<bool>(var_1.a, true, false, var_1.a), vec3<f32>(1055f, var_0.x, var_0.x), u_input.a)), Struct_2(true, Struct_1(var_1.a, vec4<bool>(var_1.a, var_1.a, var_1.a, false), vec3<f32>(var_0.x, 2139f, 1108f), -3755i), var_2.x, Struct_1(var_1.a, vec4<bool>(true, false, false, false), vec3<f32>(1459f, var_0.x, 2553f), u_input.a)), -44886i), Struct_3(Struct_2(var_1.a, Struct_1(var_1.a, vec4<bool>(var_1.a, false, true, var_1.a), vec3<f32>(var_0.x, -1000f, var_0.x), -2147483647i), 0u, Struct_1(var_1.a, vec4<bool>(false, false, false, true), vec3<f32>(433f, -1009f, -1000f), -15479i)), Struct_2(true, Struct_1(false, vec4<bool>(false, true, true, false), var_0.yzz, u_input.a), var_2.x, Struct_1(var_1.a, vec4<bool>(var_1.a, true, var_1.a, var_1.a), var_0.xzy, 2147483647i)), -1i)).b, func_2(vec3<i32>(19578i, 1i, -25735i), Struct_3(Struct_2(var_1.a, Struct_1(true, vec4<bool>(true, true, var_1.a, true), vec3<f32>(var_0.x, var_0.x, var_0.x), -20354i), var_2.x, Struct_1(var_1.a, vec4<bool>(var_1.a, var_1.a, false, var_1.a), vec3<f32>(var_0.x, -732f, var_0.x), -2147483647i)), Struct_2(var_1.a, Struct_1(var_1.a, vec4<bool>(false, var_1.a, var_1.a, var_1.a), vec3<f32>(var_0.x, 1012f, var_0.x), u_input.a), 4294967295u, Struct_1(true, vec4<bool>(true, var_1.a, true, var_1.a), var_0.wwy, -21078i)), 0i), Struct_3(Struct_2(var_1.a, Struct_1(var_1.a, vec4<bool>(var_1.a, false, var_1.a, var_1.a), vec3<f32>(var_0.x, var_0.x, 464f), u_input.a), 40449u, Struct_1(false, vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), vec3<f32>(var_0.x, var_0.x, -1293f), 55551i)), Struct_2(true, Struct_1(var_1.a, vec4<bool>(var_1.a, var_1.a, true, var_1.a), var_0.zwx, 1i), 19532u, Struct_1(true, vec4<bool>(var_1.a, var_1.a, var_1.a, true), var_0.zxz, 10812i)), 10410i)).a, ~(-18204i)))).a.d);
    var var_5 = func_2(-_wgslsmith_div_vec3_i32(min(vec3<i32>(var_4.a, -44493i, var_4.a), vec3<i32>(var_4.a, 2147483647i, 42926i)) & countOneBits(vec3<i32>(u_input.a, 1i, var_4.b.x)), vec3<i32>(22569i, var_4.b.x, 2147483647i)), func_2(vec3<i32>(~(2983i >> (var_2.x % 32u)), abs(i32(-1i) * -16665i), _wgslsmith_dot_vec3_i32(vec3<i32>(11627i, var_4.a, -15181i), abs(vec3<i32>(6332i, -1i, 23897i)))), Struct_3(func_2(vec3<i32>(var_4.a, 4930i, u_input.a) << (vec3<u32>(12803u, var_2.x, var_2.x) % vec3<u32>(32u)), Struct_3(Struct_2(true, Struct_1(true, vec4<bool>(var_4.c.b.x, false, var_1.a, var_4.c.b.x), vec3<f32>(var_0.x, var_4.c.c.x, 1082f), var_4.c.d), 4294967295u, Struct_1(var_1.a, var_4.c.b, var_0.yyz, u_input.a)), Struct_2(true, Struct_1(true, var_4.c.b, vec3<f32>(var_0.x, 2706f, var_0.x), u_input.a), 0u, Struct_1(var_4.c.b.x, vec4<bool>(false, true, true, true), var_0.wzx, 12982i)), var_4.c.d), Struct_3(Struct_2(var_4.c.b.x, var_4.c, 1u, var_4.c), Struct_2(true, Struct_1(false, var_4.c.b, vec3<f32>(var_0.x, -1742f, var_4.c.c.x), 1i), var_2.x, var_4.c), var_4.a)).a, Struct_2(select(false, var_1.a, false), Struct_1(var_1.a, var_4.c.b, var_0.wxz, 0i), ~var_2.x, func_2(vec3<i32>(2147483647i, 60352i, u_input.a), Struct_3(Struct_2(var_1.a, var_4.c, var_2.x, var_4.c), Struct_2(var_1.a, Struct_1(true, vec4<bool>(var_4.c.b.x, var_1.a, var_4.c.a, var_4.c.a), var_0.xyw, var_4.b.x), 0u, var_4.c), -57420i), Struct_3(Struct_2(false, var_4.c, var_2.x, var_4.c), Struct_2(var_4.c.b.x, var_4.c, 55383u, Struct_1(true, var_4.c.b, var_0.xwx, 29237i)), var_4.b.x)).a.d), 2147483647i), Struct_3(Struct_2(true, var_4.c, ~var_2.x, func_2(vec3<i32>(-8722i, 1i, 2147483647i), Struct_3(Struct_2(var_1.a, var_4.c, var_2.x, Struct_1(var_4.c.a, var_4.c.b, vec3<f32>(871f, -584f, 772f), 0i)), Struct_2(false, Struct_1(false, var_4.c.b, vec3<f32>(var_0.x, -914f, -680f), var_4.b.x), var_2.x, Struct_1(var_1.a, vec4<bool>(var_1.a, var_1.a, var_4.c.b.x, true), var_0.wyy, -1i)), var_4.b.x), Struct_3(Struct_2(true, var_4.c, 12528u, Struct_1(false, vec4<bool>(var_4.c.b.x, var_1.a, var_4.c.a, var_1.a), vec3<f32>(-718f, -1322f, 321f), var_4.c.d)), Struct_2(true, Struct_1(false, vec4<bool>(true, false, false, false), vec3<f32>(786f, -328f, var_0.x), var_4.c.d), var_2.x, Struct_1(var_1.a, var_4.c.b, vec3<f32>(1218f, 1318f, var_0.x), -28311i)), u_input.a)).a.b), func_2(vec3<i32>(var_4.b.x, u_input.a, var_4.b.x), Struct_3(Struct_2(false, var_4.c, var_2.x, var_4.c), Struct_2(true, Struct_1(true, var_4.c.b, vec3<f32>(var_4.c.c.x, 317f, var_4.c.c.x), 13410i), 1950u, Struct_1(var_4.c.a, vec4<bool>(false, var_1.a, false, false), vec3<f32>(var_4.c.c.x, 1221f, -645f), u_input.a)), 59277i), Struct_3(Struct_2(var_4.c.b.x, var_4.c, var_2.x, Struct_1(false, vec4<bool>(var_4.c.b.x, var_1.a, var_4.c.b.x, false), var_4.c.c, 18068i)), Struct_2(true, Struct_1(false, vec4<bool>(var_4.c.b.x, var_1.a, false, var_1.a), var_0.zyx, 2147483647i), 32184u, Struct_1(var_1.a, var_4.c.b, vec3<f32>(884f, -1821f, var_4.c.c.x), u_input.a)), var_4.a)).b, var_4.c.d)), Struct_3(Struct_2(!all(var_4.c.b), Struct_1(4294967295u <= var_2.x, !var_4.c.b, _wgslsmith_div_vec3_f32(vec3<f32>(393f, var_0.x, var_4.c.c.x), vec3<f32>(var_4.c.c.x, var_4.c.c.x, -146f)), _wgslsmith_sub_i32(-51391i, var_4.b.x)), _wgslsmith_clamp_u32(4294967295u, 1u, 13548u) & var_2.x, var_4.c), Struct_2(!var_4.c.b.x || var_4.c.a, func_2(vec3<i32>(u_input.a, 14890i, var_4.a) << (vec3<u32>(var_2.x, 1u, var_2.x) % vec3<u32>(32u)), func_2(vec3<i32>(u_input.a, 7665i, 27183i), Struct_3(Struct_2(var_4.c.a, Struct_1(false, var_4.c.b, vec3<f32>(var_0.x, var_0.x, -1000f), var_4.c.d), 40395u, Struct_1(var_4.c.a, vec4<bool>(var_4.c.b.x, var_4.c.b.x, false, var_4.c.a), vec3<f32>(var_4.c.c.x, var_0.x, var_0.x), u_input.a)), Struct_2(false, var_4.c, 0u, var_4.c), u_input.a), Struct_3(Struct_2(true, var_4.c, 0u, Struct_1(var_1.a, vec4<bool>(var_1.a, false, var_4.c.b.x, true), vec3<f32>(var_4.c.c.x, -937f, 1000f), var_4.c.d)), Struct_2(var_1.a, var_4.c, var_2.x, var_4.c), 0i)), func_2(vec3<i32>(u_input.a, var_4.b.x, 11231i), Struct_3(Struct_2(true, Struct_1(var_1.a, var_4.c.b, vec3<f32>(-1460f, var_0.x, var_0.x), 670i), 6195u, var_4.c), Struct_2(false, var_4.c, var_2.x, var_4.c), var_4.b.x), Struct_3(Struct_2(var_1.a, Struct_1(true, var_4.c.b, var_0.xxw, u_input.a), var_2.x, var_4.c), Struct_2(var_1.a, Struct_1(var_1.a, vec4<bool>(var_1.a, false, false, true), var_4.c.c, -2147483647i), var_2.x, var_4.c), u_input.a))).b.b, func_2(vec3<i32>(1i, -2147483647i, -1i) >> (var_2.ywy % vec3<u32>(32u)), Struct_3(Struct_2(var_4.c.a, var_4.c, var_2.x, var_4.c), Struct_2(var_4.c.a, Struct_1(var_1.a, vec4<bool>(true, var_1.a, false, var_1.a), var_0.wxy, var_4.a), 0u, var_4.c), 40648i), func_2(vec3<i32>(u_input.a, u_input.a, -1i), Struct_3(Struct_2(var_1.a, Struct_1(var_1.a, var_4.c.b, vec3<f32>(var_0.x, var_0.x, -847f), u_input.a), var_2.x, Struct_1(var_4.c.a, vec4<bool>(var_4.c.a, false, var_1.a, var_1.a), vec3<f32>(2197f, 456f, 727f), -2147483647i)), Struct_2(var_1.a, var_4.c, 69764u, Struct_1(false, vec4<bool>(var_4.c.b.x, var_1.a, var_4.c.b.x, true), var_4.c.c, var_4.a)), var_4.c.d), Struct_3(Struct_2(false, var_4.c, 0u, var_4.c), Struct_2(var_1.a, var_4.c, 19004u, var_4.c), u_input.a))).b.c, var_4.c), -_wgslsmith_mult_i32(~var_4.b.x, -49608i))).b;
    var_1 = Struct_4((~_wgslsmith_sub_i32(var_4.c.d, var_4.c.d) | ~_wgslsmith_mult_i32(-1i, u_input.a)) != u_input.a);
    let var_6 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(1u, var_2, 1032f);
}


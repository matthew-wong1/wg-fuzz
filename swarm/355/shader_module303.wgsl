struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<vec2<f32>, 26> = array<vec2<f32>, 26>(vec2<f32>(-249f, 216f), vec2<f32>(100f, -807f), vec2<f32>(881f, 1634f), vec2<f32>(524f, -351f), vec2<f32>(684f, 1744f), vec2<f32>(848f, 744f), vec2<f32>(-219f, 826f), vec2<f32>(802f, 1464f), vec2<f32>(1000f, 331f), vec2<f32>(-399f, -1005f), vec2<f32>(852f, -1000f), vec2<f32>(-250f, 575f), vec2<f32>(1215f, 1781f), vec2<f32>(-109f, 494f), vec2<f32>(-2751f, -718f), vec2<f32>(556f, -488f), vec2<f32>(-737f, -323f), vec2<f32>(839f, 128f), vec2<f32>(-275f, -499f), vec2<f32>(247f, -933f), vec2<f32>(-313f, -1193f), vec2<f32>(-1000f, -780f), vec2<f32>(-470f, -358f), vec2<f32>(234f, 1167f), vec2<f32>(536f, 151f), vec2<f32>(-1000f, -182f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<u32> {
    global0 = abs(select(abs(u_input.c.x), max(u_input.a.x, 4294967295u), false));
    var var_0 = Struct_2(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a.x, ~1u, u_input.c.x, _wgslsmith_div_u32(u_input.a.x, u_input.a.x)), abs(~(~vec4<u32>(0u, 1u, u_input.a.x, 0u))), ~((vec4<u32>(u_input.c.x, u_input.c.x, 51064u, 4294967295u) & vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, u_input.a.x)) << (~vec4<u32>(1u, 4294967295u, 4294967295u, u_input.c.x) % vec4<u32>(32u)))), Struct_1(u_input.b));
    global1 = array<vec2<f32>, 26>();
    let var_1 = Struct_2(var_0.a, Struct_1(~_wgslsmith_dot_vec2_u32(u_input.c.zx, var_0.a.wz | vec2<u32>(21893u, u_input.c.x))));
    var_0 = Struct_2(~(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_1.b.a, u_input.b, var_1.b.a), var_0.a), _wgslsmith_dot_vec2_u32(var_1.a.zx, u_input.c.xz), var_0.b.a, var_1.b.a | 84453u)), var_0.b);
    return abs(~vec4<u32>(4294967295u, 16893u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(var_0.a.zy, vec2<u32>(u_input.b, 4294967295u), var_1.a.wy), u_input.c.zy), 4294967295u));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_4(!all(vec2<bool>(true, true)) & true, 22405u);
    return Struct_2(func_3(), Struct_1(13450u));
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_2) -> Struct_5 {
    let var_0 = select(vec2<i32>(u_input.d, ~0i), _wgslsmith_clamp_vec2_i32(vec2<i32>(countOneBits(_wgslsmith_div_i32(0i, u_input.d)), abs(abs(0i))), vec2<i32>(-2147483647i, arg_0.x), ~_wgslsmith_sub_vec2_i32(-u_input.e, u_input.e)), vec2<bool>(select(true, true, true), true));
    let var_1 = vec4<bool>(all(vec4<bool>(true, any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), any(vec4<bool>(true, true, true, true)), false)), false, true, true);
    global0 = countOneBits(select(arg_1, u_input.a.x, var_1.x));
    let var_2 = !(!select(!select(vec2<bool>(var_1.x, false), var_1.yy, true), !var_1.wz, any(var_1.zw)));
    global1 = array<vec2<f32>, 26>();
    return Struct_5(Struct_2(~(arg_2.a & (vec4<u32>(arg_2.b.a, 0u, arg_1, 33132u) >> (arg_2.a % vec4<u32>(32u)))), Struct_1(arg_1)), select(vec4<bool>(true, var_1.x && true, true, all(var_2)), vec4<bool>(true, false, var_1.x, select(any(var_2), true, !var_1.x)), true), arg_2.b);
}

fn func_5(arg_0: Struct_5, arg_1: Struct_5, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2235f - _wgslsmith_f_op_f32(f32(-1f) * -422f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-113f)))));
    let var_1 = arg_2.b;
    var var_2 = func_4(select(-(~vec3<i32>(38281i, u_input.e.x, u_input.d)), _wgslsmith_div_vec3_i32(~vec3<i32>(2147483647i, 13304i, u_input.d), ~vec3<i32>(1i, u_input.e.x, u_input.d)), select(select(vec3<bool>(false, var_0, true), arg_0.b.xyz, false), func_4(vec3<i32>(u_input.d, 0i, u_input.e.x), arg_3.b.a, arg_3).b.zyw, func_4(vec3<i32>(u_input.e.x, -1i, 28462i), u_input.b, arg_2).b.xyz)) & _wgslsmith_sub_vec3_i32(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.e.x, -9581i, 0i), vec3<i32>(-2147483647i, 2147483647i, 23412i), vec3<i32>(61648i, u_input.e.x, -1i))), vec3<i32>(u_input.e.x, u_input.e.x, -8161i) | ~vec3<i32>(u_input.d, u_input.e.x, u_input.e.x)), 4294967295u, func_4(firstTrailingBit(reverseBits(-vec3<i32>(u_input.e.x, 1i, -26247i))), ~(_wgslsmith_dot_vec4_u32(arg_0.a.a, arg_2.a) << (~u_input.c.x % 32u)), Struct_2(vec4<u32>(1u, _wgslsmith_clamp_u32(arg_1.c.a, 70413u, 4294967295u), _wgslsmith_add_u32(arg_2.a.x, arg_2.b.a), 17761u), arg_1.c)).a).a;
    global1 = array<vec2<f32>, 26>();
    let var_3 = _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(4065u, (arg_3.b.a ^ var_1.a) >> (arg_3.a.x % 32u), arg_2.a.x), arg_1.a.a.x, 13818u), vec3<u32>(var_2.a.x ^ ~(~64145u), 27985u, ~arg_0.a.a.x));
    return Struct_2(var_2.a, func_4(abs(vec3<i32>(_wgslsmith_div_i32(-30767i, u_input.d), ~(-1i), -u_input.d)), arg_1.a.a.x, Struct_2(vec4<u32>(~arg_2.a.x, arg_3.a.x, 42037u, 30637u << (1u % 32u)), func_4(-vec3<i32>(-2147483647i, u_input.d, u_input.d), ~1u, func_2()).c)).a.b);
}

fn func_1() -> vec4<u32> {
    let var_0 = Struct_4(any(!select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, false)))), u_input.b);
    global0 = firstLeadingBit(reverseBits(var_0.b));
    let var_1 = Struct_3(func_5(func_4(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.e.x, u_input.e.x, -16981i), vec3<i32>(1i, u_input.d, u_input.e.x)), var_0.b, func_2()), func_4(vec3<i32>(-2147483647i, u_input.d, u_input.d) << (~vec3<u32>(20720u, 4294967295u, u_input.b) % vec3<u32>(32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 26215u, 7517u, 0u), vec4<u32>(0u, var_0.b, 1u, u_input.b)) ^ func_4(vec3<i32>(u_input.d, 20116i, u_input.e.x), var_0.b, Struct_2(vec4<u32>(var_0.b, 60916u, 22095u, 4294967295u), Struct_1(4294967295u))).c.a, Struct_2(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 97069u, var_0.b, 0u), vec4<u32>(13462u, 7726u, 37803u, u_input.a.x)), Struct_1(var_0.b))), func_4(vec3<i32>(-u_input.d, ~u_input.d, min(8068i, 0i)), _wgslsmith_dot_vec3_u32(vec3<u32>(6488u, 81564u, var_0.b) << (u_input.c % vec3<u32>(32u)), vec3<u32>(u_input.a.x, 1u, 56704u)), Struct_2(~vec4<u32>(1486u, var_0.b, 20436u, var_0.b), func_2().b)).a, Struct_2(~countOneBits(vec4<u32>(var_0.b, 17095u, var_0.b, 4294967295u)), func_4(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e.x, u_input.e.x, 1i), vec3<i32>(-29451i, -2147483647i, u_input.d)), ~64405u, Struct_2(vec4<u32>(26067u, 0u, var_0.b, 4294967295u), Struct_1(1u))).a.b)), func_5(Struct_5(Struct_2(func_4(vec3<i32>(2147483647i, 11537i, u_input.e.x), 0u, Struct_2(vec4<u32>(3073u, 0u, var_0.b, 12120u), Struct_1(1u))).a.a, Struct_1(u_input.c.x)), vec4<bool>(false, true, true, !var_0.a), func_5(func_4(vec3<i32>(1i, u_input.e.x, 1i), u_input.a.x, Struct_2(vec4<u32>(1u, 4294967295u, 0u, var_0.b), Struct_1(var_0.b))), Struct_5(Struct_2(vec4<u32>(u_input.c.x, 0u, u_input.c.x, u_input.c.x), Struct_1(var_0.b)), vec4<bool>(var_0.a, false, false, true), Struct_1(46764u)), func_5(Struct_5(Struct_2(vec4<u32>(4294967295u, var_0.b, var_0.b, u_input.b), Struct_1(53751u)), vec4<bool>(var_0.a, var_0.a, var_0.a, false), Struct_1(var_0.b)), Struct_5(Struct_2(vec4<u32>(u_input.a.x, u_input.a.x, var_0.b, var_0.b), Struct_1(var_0.b)), vec4<bool>(true, var_0.a, true, var_0.a), Struct_1(72557u)), Struct_2(vec4<u32>(4294967295u, 10780u, u_input.a.x, 13032u), Struct_1(1u)), Struct_2(vec4<u32>(u_input.c.x, 52755u, 0u, u_input.a.x), Struct_1(u_input.a.x))), Struct_2(vec4<u32>(13102u, u_input.a.x, u_input.c.x, u_input.a.x), Struct_1(var_0.b))).b), Struct_5(func_5(Struct_5(Struct_2(vec4<u32>(4294967295u, u_input.a.x, 0u, 1u), Struct_1(var_0.b)), vec4<bool>(var_0.a, false, true, var_0.a), Struct_1(51695u)), func_4(vec3<i32>(-1i, 0i, 0i), 4294967295u, Struct_2(vec4<u32>(0u, 0u, var_0.b, u_input.b), Struct_1(var_0.b))), Struct_2(vec4<u32>(1u, 4294967295u, 16417u, u_input.c.x), Struct_1(4294967295u)), Struct_2(vec4<u32>(1u, var_0.b, var_0.b, 450u), Struct_1(31099u))), select(select(vec4<bool>(var_0.a, var_0.a, true, var_0.a), vec4<bool>(true, var_0.a, var_0.a, var_0.a), vec4<bool>(true, var_0.a, false, true)), func_4(vec3<i32>(-2147483647i, 1i, 25158i), u_input.a.x, Struct_2(vec4<u32>(u_input.b, u_input.c.x, u_input.c.x, u_input.c.x), Struct_1(var_0.b))).b, var_0.a), Struct_1(~26222u)), func_4(firstTrailingBit(~vec3<i32>(11037i, u_input.e.x, 2147483647i)), _wgslsmith_sub_u32(55875u, u_input.b), func_4(~vec3<i32>(u_input.e.x, -2147483647i, 59874i), ~0u, Struct_2(vec4<u32>(var_0.b, 45079u, 28532u, var_0.b), Struct_1(54206u))).a).a, func_4(vec3<i32>(_wgslsmith_sub_i32(2147483647i, u_input.e.x), -59784i, u_input.d), abs(var_0.b), func_5(func_4(vec3<i32>(u_input.e.x, 29702i, -1i), 14059u, Struct_2(vec4<u32>(55863u, 0u, 7141u, 66049u), Struct_1(1u))), func_4(vec3<i32>(-2147483647i, u_input.d, 1i), var_0.b, Struct_2(vec4<u32>(var_0.b, var_0.b, var_0.b, var_0.b), Struct_1(4294967295u))), Struct_2(vec4<u32>(u_input.a.x, 26759u, var_0.b, 25929u), Struct_1(u_input.b)), Struct_2(vec4<u32>(1u, var_0.b, 33491u, 4294967295u), Struct_1(4294967295u)))).a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(521f - 366f))))));
    var var_2 = var_0.a;
    var_2 = !any(select(!select(vec3<bool>(false, var_0.a, true), vec3<bool>(var_0.a, var_0.a, false), false), vec3<bool>(true, true, all(vec4<bool>(var_0.a, var_0.a, false, var_0.a))), !vec3<bool>(false, var_0.a, false)));
    return ~_wgslsmith_div_vec4_u32(~vec4<u32>(1u, 18807u, u_input.c.x, var_1.a.a.x), ~(var_1.a.a << (vec4<u32>(4294967295u, var_1.a.a.x, var_0.b, var_1.b.a.x) % vec4<u32>(32u)))) & vec4<u32>(~(~func_2().a.x), abs(_wgslsmith_div_u32(~4294967295u, 36215u)), abs(_wgslsmith_add_u32(u_input.b, 10525u)) & u_input.c.x, 9189u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 18716u;
    var var_0 = _wgslsmith_mult_vec2_i32(u_input.e, ~u_input.e << (vec2<u32>(u_input.b, _wgslsmith_add_u32(~1u, _wgslsmith_div_u32(0u, 5563u))) % vec2<u32>(32u)));
    let var_1 = Struct_5(Struct_2(func_1(), func_4(vec3<i32>(u_input.d << (25559u % 32u), ~u_input.e.x, ~(-19223i)), u_input.c.x >> (select(u_input.b, 0u, true) % 32u), Struct_2(~vec4<u32>(u_input.b, 0u, 0u, 3202u), Struct_1(30781u))).c), vec4<bool>(false, true, true, !func_4(vec3<i32>(u_input.e.x, var_0.x, var_0.x) >> (vec3<u32>(u_input.c.x, 1u, u_input.b) % vec3<u32>(32u)), u_input.a.x, func_4(vec3<i32>(0i, 62965i, var_0.x), u_input.a.x, Struct_2(vec4<u32>(u_input.a.x, 0u, 46113u, 4793u), Struct_1(4294967295u))).a).b.x), func_4(vec3<i32>(var_0.x, -(-1i >> (1u % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.d, u_input.e.x, u_input.e.x), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, var_0.x, -2147483647i, 0i), vec4<i32>(-9714i, -12248i, 3116i, -1i)))), 45501u, Struct_2(vec4<u32>(u_input.c.x, u_input.b, 0u, u_input.c.x) >> (countOneBits(vec4<u32>(17593u, u_input.c.x, u_input.a.x, 1u)) % vec4<u32>(32u)), Struct_1(u_input.a.x))).a.b);
    global0 = ~4294967295u;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-743f, -1004f, -793f, -245f)))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2190f, -273f, -291f, 909f), vec4<f32>(-250f, 498f, -1596f, 1052f), var_1.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1946f, -1000f, 1935f, -202f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-660f, -184f, 642f, -1000f) * vec4<f32>(1000f, -1047f, 1973f, 840f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-473f, 622f)), -160f, -849f, -1210f))));
    global0 = min(51075u, ~_wgslsmith_mult_u32(_wgslsmith_add_u32(var_1.c.a, 21511u), abs(_wgslsmith_mod_u32(87138u, 8130u))));
    var var_3 = Struct_3(func_4(min(vec3<i32>(-u_input.e.x, var_0.x, u_input.d), ~min(vec3<i32>(var_0.x, u_input.d, u_input.d), vec3<i32>(u_input.d, var_0.x, var_0.x))), var_1.c.a, Struct_2(~var_1.a.a, var_1.a.b)).a, func_2(), -1000f);
    var_0 = u_input.e << (~vec2<u32>(0u, 58039u) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.x, -413f)) + 530f) * var_3.c)), ~(-vec3<i32>(var_0.x, ~var_0.x, 10522i >> (var_1.c.a % 32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, 279f, var_3.c, -458f), vec4<f32>(var_3.c, var_3.c, -241f, -1000f), var_1.b.x)))), ~vec3<i32>(u_input.d, -var_0.x, 11482i), vec3<i32>(u_input.d, 1i, _wgslsmith_add_i32(var_0.x, -(i32(-1i) * -49407i))));
}


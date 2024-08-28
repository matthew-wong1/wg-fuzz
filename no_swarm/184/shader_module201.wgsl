struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec3<f32>,
    d: f32,
    e: i32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: Struct_4,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 27> = array<vec4<bool>, 27>(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    global0 = array<vec4<bool>, 27>();
    global0 = array<vec4<bool>, 27>();
    global0 = array<vec4<bool>, 27>();
    let var_0 = ~u_input.a.x;
    var var_1 = Struct_1(select(all(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), any(!select(vec2<bool>(false, true), vec2<bool>(true, true), true)), false), ((_wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(31003u, u_input.b)) << (max(u_input.a, u_input.a) % vec2<u32>(32u))) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 1u), ~vec2<u32>(43438u, var_0)) % vec2<u32>(32u))) << (vec2<u32>(~var_0, reverseBits(select(u_input.a.x, var_0, true))) % vec2<u32>(32u)));
    return u_input.a.x >> (65609u % 32u);
}

fn func_2() -> Struct_3 {
    global0 = array<vec4<bool>, 27>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1079f, -2586f));
    let var_1 = Struct_4(Struct_3(abs(~_wgslsmith_mod_u32(u_input.b, u_input.b))), Struct_1(true != all(vec2<bool>(true, true)), vec2<u32>(_wgslsmith_div_u32(18803u, u_input.b | 85382u), 1u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1181f, var_0.x, var_0.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -971f))), u_input.c);
    var var_2 = true;
    var var_3 = func_3();
    return Struct_3(~var_1.a.a);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: bool) -> Struct_4 {
    let var_0 = firstTrailingBit(arg_0);
    global0 = array<vec4<bool>, 27>();
    global0 = array<vec4<bool>, 27>();
    global0 = array<vec4<bool>, 27>();
    global0 = array<vec4<bool>, 27>();
    return Struct_4(func_2(), Struct_1(arg_2, firstTrailingBit(vec2<u32>(~0u, func_3()))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1819f, 349f, -509f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-912f, 1264f, 662f) - vec3<f32>(-682f, 311f, 724f))))), -1503f, ~(-_wgslsmith_mult_i32(-2147483647i, 1i)));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3) -> Struct_2 {
    let var_0 = any(!select(vec3<bool>(false, !arg_0.b.a, arg_0.b.a), !(!vec3<bool>(arg_0.b.a, true, arg_0.b.a)), vec3<bool>(!arg_0.b.a, arg_0.b.a, true)));
    global0 = array<vec4<bool>, 27>();
    var var_1 = arg_0.e;
    var var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(740f, _wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(min(1534f, -668f)), arg_0.c.x), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(min(arg_0.c.x, arg_0.d)), arg_0.c.x, 1000f), false))), arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(480f * -360f))))), arg_0, -vec4<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, arg_0.e), ~vec2<i32>(45632i, -26424i)), 0i, arg_0.e, min(u_input.c, abs(u_input.c))));
    var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, -208f, -904f, arg_0.d))), _wgslsmith_f_op_vec4_f32(ceil(var_2.a)))), min(arg_0.b.b.x, ~(arg_1.a << (4294967295u % 32u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1000f, var_2.a.x)), var_2.d.c.x)), Struct_4(Struct_3(~_wgslsmith_div_u32(1u, var_2.b)), func_4(u_input.a.x, func_4(_wgslsmith_mult_u32(u_input.a.x, arg_1.a), Struct_3(u_input.a.x), arg_0.b.a).a, false).b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_2.d.c))) + vec3<f32>(var_2.a.x, var_2.d.c.x, _wgslsmith_f_op_f32(-var_2.d.c.x))), 962f, -_wgslsmith_clamp_i32(i32(-1i) * -10477i, ~arg_0.e, ~u_input.c)), abs(select(vec4<i32>(_wgslsmith_dot_vec4_i32(var_2.e, var_2.e), ~u_input.c, ~arg_0.e, _wgslsmith_mod_i32(arg_0.e, 1i)), _wgslsmith_add_vec4_i32(var_2.e | var_2.e, ~var_2.e), global0[_wgslsmith_index_u32(reverseBits(1u) | _wgslsmith_div_u32(48435u, arg_0.a.a), 27u)])));
    return Struct_2(func_4(arg_1.a, arg_0.a, true).b, var_2.d.b);
}

fn func_1(arg_0: Struct_4, arg_1: i32) -> Struct_4 {
    let var_0 = func_5(func_4(_wgslsmith_clamp_u32(firstLeadingBit(0u), arg_0.b.b.x, arg_0.a.a), func_2(), select(false, !arg_0.b.a, true)), arg_0.a);
    let var_1 = _wgslsmith_mod_vec2_i32(abs(max(_wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(-12262i, 525i)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, arg_1), vec2<i32>(arg_0.e, -2147483647i)), firstLeadingBit(vec2<i32>(-1i, u_input.c))), vec2<i32>(-arg_0.e, -59685i))), max(select(vec2<i32>(u_input.c, u_input.c) << (vec2<u32>(50241u, 4294967295u) % vec2<u32>(32u)), select(vec2<i32>(u_input.c, arg_1), vec2<i32>(u_input.c, arg_1), vec2<bool>(true, var_0.b.a)), vec2<bool>(arg_0.b.a, true)), reverseBits(select(vec2<i32>(arg_1, -9565i), vec2<i32>(2147483647i, u_input.c), arg_0.b.a))) & select(reverseBits(-vec2<i32>(u_input.c, u_input.c)), vec2<i32>(arg_1 & -11610i, arg_1 | 0i), select(vec2<bool>(var_0.b.a, false), vec2<bool>(arg_0.b.a, arg_0.b.a), true)));
    let var_2 = func_4(1u, arg_0.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.d))) < -347f).d;
    var var_3 = var_1.x;
    global0 = array<vec4<bool>, 27>();
    return func_4(var_0.b.b.x, arg_0.a, !var_0.a.a);
}

fn func_6(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_4) -> Struct_3 {
    var var_0 = vec4<i32>(~max(35001i, _wgslsmith_mod_i32(arg_2.e, -24811i)) >> (58269u % 32u), arg_2.e, 5335i, ~0i);
    var var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(443f, 1028f, -563f, arg_2.d) + vec4<f32>(arg_2.c.x, arg_2.c.x, 170f, arg_2.c.x)))), arg_1.x, 445f, Struct_4(Struct_3(_wgslsmith_mult_u32(4294967295u, abs(u_input.a.x))), arg_2.b, vec3<f32>(-580f, _wgslsmith_f_op_f32(f32(-1f) * -976f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.c.x, arg_2.d) - _wgslsmith_f_op_f32(abs(arg_2.d)))), _wgslsmith_f_op_f32(-arg_2.c.x), _wgslsmith_clamp_i32(0i, var_0.x, arg_2.e | var_0.x)), abs(firstLeadingBit(_wgslsmith_div_vec4_i32(abs(vec4<i32>(-2147483647i, arg_2.e, 1i, -36893i)), vec4<i32>(-2147483647i, var_0.x, -1i, 43364i) << (vec4<u32>(arg_2.a.a, 22835u, 71696u, 61946u) % vec4<u32>(32u))))));
    var_0 = var_1.e;
    global0 = array<vec4<bool>, 27>();
    global0 = array<vec4<bool>, 27>();
    return var_1.d.a;
}

fn func_7(arg_0: Struct_3) -> Struct_3 {
    global0 = array<vec4<bool>, 27>();
    global0 = array<vec4<bool>, 27>();
    global0 = array<vec4<bool>, 27>();
    let var_0 = Struct_2(Struct_1(any(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), ~reverseBits(firstTrailingBit(u_input.a))), func_1(func_1(Struct_4(Struct_3(12252u), Struct_1(false, vec2<u32>(43677u, u_input.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(663f, 136f, -1011f)), 1343f, _wgslsmith_clamp_i32(u_input.c, 0i, u_input.c)), 58821i), ~(~(-62746i))).b);
    var var_1 = Struct_4(func_2(), func_5(Struct_4(Struct_3(func_6(var_0.b.a, vec3<u32>(arg_0.a, var_0.a.b.x, var_0.b.b.x), Struct_4(Struct_3(var_0.a.b.x), Struct_1(var_0.b.a, var_0.b.b), vec3<f32>(-358f, 593f, -1414f), 790f, u_input.c)).a), Struct_1(false, ~vec2<u32>(u_input.a.x, u_input.a.x)), vec3<f32>(func_4(arg_0.a, Struct_3(0u), false).d, _wgslsmith_f_op_f32(-1017f - -1399f), -2805f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-751f, -1285f)))), reverseBits(reverseBits(-1i))), Struct_3(27276u)).a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(359f, -1492f, -893f) + vec3<f32>(871f, -1000f, -177f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1034f, 658f, -131f))), vec3<f32>(473f, 1055f, -419f), true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1053f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(863f)), _wgslsmith_f_op_f32(-922f - 368f)))), u_input.c >> (countOneBits(~(var_0.b.b.x & 0u)) % 32u));
    return func_6(var_1.b.a, ~_wgslsmith_mod_vec3_u32(firstTrailingBit(~vec3<u32>(0u, 0u, 4294967295u)), reverseBits(max(vec3<u32>(u_input.b, 39062u, 27145u), vec3<u32>(var_0.b.b.x, 4294967295u, var_1.b.b.x)))), func_1(Struct_4(Struct_3(abs(var_0.a.b.x)), var_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.c)), _wgslsmith_f_op_f32(round(1000f)), ~func_4(4294967295u, var_1.a, true).e), _wgslsmith_add_i32((-20506i << (var_1.a.a % 32u)) ^ ~u_input.c, ~var_1.e)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(u_input.b);
    let var_1 = vec3<i32>(_wgslsmith_mod_i32(u_input.c, 2147483647i), u_input.c >> (_wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, 1u, u_input.b)), countOneBits(~vec3<u32>(10601u, 2814u, 4294967295u))) % 32u), u_input.c);
    var var_2 = -1i;
    var var_3 = Struct_4(func_7(func_6(true, vec3<u32>(7622u, u_input.a.x, 1u), func_1(Struct_4(Struct_3(1u), Struct_1(false, vec2<u32>(u_input.b, 0u)), vec3<f32>(-223f, 234f, 688f), 784f, 0i), _wgslsmith_dot_vec3_i32(var_1, vec3<i32>(-2147483647i, var_1.x, -2147483647i))))), Struct_1(true, vec2<u32>(~1u, ~var_0.a >> (46468u % 32u))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1(Struct_4(Struct_3(u_input.a.x), Struct_1(true, u_input.a), vec3<f32>(-511f, 1767f, 844f), 509f, u_input.c), 42229i).d * -421f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1009f)), func_4(~var_0.a, Struct_3(u_input.b), true).c.x), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(128f)), -1548f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-func_4(var_0.a, Struct_3(var_0.a), false).d))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(func_1(Struct_4(Struct_3(u_input.b), Struct_1(true, vec2<u32>(55182u, var_0.a)), vec3<f32>(1029f, 664f, -753f), 397f, var_1.x), 0i), 66046i).c.x * _wgslsmith_f_op_f32(-216f * _wgslsmith_f_op_f32(trunc(-840f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1403f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1235f, 342f))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true))))), -_wgslsmith_dot_vec2_i32(min(vec2<i32>(-57007i, u_input.c), vec2<i32>(3179i, 8116i)), select(~var_1.zx, vec2<i32>(u_input.c, var_1.x), vec2<bool>(true, true))));
    var var_4 = func_1(Struct_4(var_3.a, Struct_1(false, _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(var_3.b.b, var_3.b.b), vec2<u32>(81037u, u_input.b))), vec3<f32>(var_3.d, _wgslsmith_f_op_f32(-122f * _wgslsmith_f_op_f32(min(var_3.c.x, var_3.d))), -1759f), _wgslsmith_f_op_f32(trunc(168f)), -(-30740i & abs(u_input.c))), ~_wgslsmith_div_i32(min(_wgslsmith_mod_i32(6851i, u_input.c), var_1.x), -1i)).b;
    var_2 = -(~(~max(func_4(var_0.a, var_3.a, true).e, 0i)));
    let var_5 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.d), -2208f)), 1606f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -120f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3.d))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(385f, -714f)), _wgslsmith_div_f32(1290f, 652f), true)))), 94474u, -370f, Struct_4(var_3.a, func_1(func_1(Struct_4(Struct_3(var_4.b.x), var_3.b, var_3.c, -393f, 14357i), 2147483647i), 18183i).b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.d, var_3.c.x, var_3.d))), var_3.d, 26852i), ~vec4<i32>(3610i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.c, 5256i, var_3.e, u_input.c), vec4<i32>(32602i, 1i, 21710i, var_3.e), false), -vec4<i32>(1i, 0i, 41075i, var_3.e)), -var_3.e, reverseBits(u_input.c)));
    global0 = array<vec4<bool>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(0u >> (var_4.b.x % 32u), 0u, var_3.a.a, -vec3<i32>(var_3.e, var_3.e, firstTrailingBit(countOneBits(43347i))));
}


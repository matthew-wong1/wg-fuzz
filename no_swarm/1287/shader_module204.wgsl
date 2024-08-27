struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<i32>, 8> = array<vec3<i32>, 8>(vec3<i32>(2147483647i, 2147483647i, 2147483647i), vec3<i32>(-1i, -3336i, i32(-2147483648)), vec3<i32>(0i, 2147483647i, 52023i), vec3<i32>(1i, 2147483647i, 1i), vec3<i32>(61785i, -62002i, 1i), vec3<i32>(1i, -56738i, -1i), vec3<i32>(0i, -1i, -24616i), vec3<i32>(i32(-2147483648), -32068i, 0i));

var<private> global2: i32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: bool) -> u32 {
    global0 = Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, global0.b.x) >> (countOneBits(min(vec2<u32>(36033u, 62852u), vec2<u32>(1u, 75327u))) % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(global0.a.x, global0.b.x)) | -reverseBits(vec2<i32>(global0.a.x, 1i))), u_input.b, ~25984i);
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2058f + arg_0)));
    global1 = array<vec3<i32>, 8>();
    var var_1 = Struct_1(vec2<i32>(firstLeadingBit(min(0i, global0.a.x)), ~4395i) >> (~abs(vec2<u32>(1u, 1u)) % vec2<u32>(32u)), ~u_input.b, countOneBits(u_input.b.x) | u_input.c);
    global1 = array<vec3<i32>, 8>();
    return ~4294967295u;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = ~(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 41112u, 1u, 4294967295u), vec4<u32>(_wgslsmith_mod_u32(102720u, 21878u), 1931u, ~0u, ~44699u)) << (~vec4<u32>(4294967295u, 24296u, _wgslsmith_clamp_u32(1u, 7294u, 4294967295u), 0u) % vec4<u32>(32u)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-576f, -1167f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-609f * -452f)));
    var var_3 = ~func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1572f + 1789f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), 1u < _wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, 14032u, 1u), var_1.yzy, arg_0), ~var_1.xww));
    let var_4 = vec4<f32>(var_2.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1404f)), _wgslsmith_f_op_f32(-var_2.x), !any(vec3<bool>(false, false, false)))), -497f, var_2.x);
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: vec4<bool>) -> vec4<i32> {
    global1 = array<vec3<i32>, 8>();
    global1 = array<vec3<i32>, 8>();
    var var_0 = all(!(!arg_3.xwy));
    var var_1 = Struct_1(u_input.b.wz, vec4<i32>(17432i, select(global0.a.x, arg_1.b.x, all(select(vec4<bool>(arg_3.x, arg_3.x, false, arg_3.x), arg_3, arg_3))), -2147483647i, min(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i), arg_1.b.yx) & u_input.a, 30856i ^ u_input.b.x)), arg_1.c);
    var var_2 = vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(arg_2, arg_2), ~(arg_2 ^ arg_2)) >> (0u % 32u), ~max(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, 1u, arg_2), vec3<u32>(16033u, 5464u, 4294967295u)), _wgslsmith_div_u32(4294967295u, arg_2)) ^ _wgslsmith_mult_u32(_wgslsmith_div_u32(max(arg_2, 4294967295u), ~72424u), abs(firstTrailingBit(2670u))));
    return _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.c, ~(-var_1.b.x) & -min(arg_0.a.x, var_1.c), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(global0.c, -1i, 15145i), var_1.b.zyy), ~(~var_1.a.x)), 48805i), abs(~vec4<i32>(-1i, arg_0.a.x, -8601i, u_input.c)) & vec4<i32>(2147483647i, _wgslsmith_div_i32(arg_0.c, arg_1.b.x) << (abs(1u) % 32u), i32(-1i) * -var_1.b.x, var_1.b.x), firstTrailingBit(reverseBits(~(vec4<i32>(arg_1.c, 1i, global0.b.x, var_1.b.x) << (vec4<u32>(arg_2, 27070u, 31520u, var_2.x) % vec4<u32>(32u))))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec2<i32>) -> Struct_1 {
    global1 = array<vec3<i32>, 8>();
    var var_0 = vec2<f32>(151f, _wgslsmith_f_op_f32(-arg_2.x));
    let var_1 = func_2(true, arg_1, 27673i);
    var var_2 = func_4(func_2(true, Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(var_1.a, vec2<i32>(-91785i, 1i)), arg_1.a), vec4<i32>(-1i) * -vec4<i32>(global0.b.x, 40559i, 1i, var_1.a.x), _wgslsmith_dot_vec4_i32(global0.b ^ var_1.b, arg_0.b)), _wgslsmith_clamp_i32(firstLeadingBit(min(global0.b.x, -2147483647i)), reverseBits(arg_3.x), _wgslsmith_add_i32(_wgslsmith_clamp_i32(2147483647i, global0.a.x, arg_0.b.x), 0i))), Struct_1(~countOneBits(-arg_1.b.xx), firstTrailingBit(vec4<i32>(func_2(false, arg_0, arg_1.b.x).a.x, 2147483647i, 26273i, arg_1.c)), -(_wgslsmith_sub_i32(global0.c, arg_1.c) >> (37724u % 32u))), 37368u, select(vec4<bool>(true, true, true, true), select(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(false, true, true, false)), true, any(vec3<bool>(true, false, false)), true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-arg_2.x) <= _wgslsmith_f_op_f32(round(arg_2.x))))).x;
    let var_3 = select(vec3<bool>(true, !all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), !all(vec4<bool>(true, true, false, false)) || true), select(select(vec3<bool>(true, true, all(vec2<bool>(true, false))), vec3<bool>(true, arg_0.c >= var_1.b.x, true), vec3<bool>(true, true, true)), !(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), true), all(!vec2<bool>(false, all(vec3<bool>(false, false, false)))));
    return func_2(var_3.x, Struct_1(~var_1.a, var_1.b, reverseBits(-10783i)), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_0.b.x), vec2<i32>(6468i, 0i)));
}

fn func_6(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    global2 = -u_input.b.x;
    let var_0 = vec3<u32>(_wgslsmith_mod_u32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(524f, -505f)), true & (u_input.d.x <= arg_0)), 1u), ~1u, abs(countOneBits(60199u)));
    global1 = array<vec3<i32>, 8>();
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(931f, -224f) + _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -1352f), vec2<f32>(-120f, -1135f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1794f, -642f), vec2<f32>(-1056f, -1319f)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-800f, 1452f), vec2<f32>(-212f, 1000f)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(822f, 320f), vec2<f32>(-247f, 784f))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-794f, -1320f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1494f, 154f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1085f, -998f)))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(583f, -710f), vec2<f32>(-1812f, 813f))))) + vec2<f32>(-795f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-575f))))));
    global0 = Struct_1(-global0.a << (_wgslsmith_mult_vec2_u32(var_0.yy, ~_wgslsmith_mult_vec2_u32(vec2<u32>(47339u, 31287u), var_0.xy)) % vec2<u32>(32u)), -abs(arg_2.b) ^ ~(~vec4<i32>(47365i, arg_0, arg_0, 1274i)), arg_1);
    return func_2(any(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), any(vec4<bool>(false, true, false, true)))), Struct_1(~vec2<i32>(arg_1, -2147483647i), ~(countOneBits(vec4<i32>(arg_1, -1i, 10352i, -1i)) & (global0.b & vec4<i32>(global0.a.x, 17454i, arg_1, 79075i))), ~(-arg_0)), _wgslsmith_add_i32(_wgslsmith_add_i32(arg_2.b.x, -1i), i32(-1i) * -2147483647i));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(-(~_wgslsmith_add_vec2_i32(countOneBits(global0.a), max(vec2<i32>(2147483647i, 27639i), vec2<i32>(-43346i, u_input.a)))), u_input.b, u_input.c);
    var var_1 = func_6(u_input.c << (0u % 32u), ~(-2147483647i), func_5(Struct_1(~(vec2<i32>(var_0.b.x, u_input.c) >> (vec2<u32>(50040u, 4294967295u) % vec2<u32>(32u))), -vec4<i32>(u_input.a, 1i, var_0.a.x, -2147483647i), countOneBits(0i)), Struct_1(vec2<i32>(~var_0.a.x, u_input.a), func_4(func_2(false, Struct_1(vec2<i32>(23403i, u_input.c), u_input.b, 37656i), 38235i), func_2(true, Struct_1(global0.a, u_input.b, u_input.c), -2147483647i), 1u, vec4<bool>(false, false, true, true)), 0i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(531f, -159f, 1116f), vec3<f32>(1248f, 115f, -1153f)))), _wgslsmith_sub_vec2_i32(var_0.b.yw & vec2<i32>(u_input.d.x, u_input.b.x), u_input.d.xy)));
    var var_2 = ~(vec2<i32>(-34326i, 0i | _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.x, u_input.b.x, var_1.a.x), var_1.b.ywy)) & countOneBits(~func_4(Struct_1(var_1.b.zy, var_1.b, u_input.b.x), Struct_1(vec2<i32>(-2147483647i, var_1.c), u_input.b, -1i), 51424u, vec4<bool>(false, false, false, true)).xz));
    var var_3 = ~(~countOneBits(u_input.b));
    let var_4 = max(vec3<i32>(var_3.x, 1i, var_0.b.x), u_input.d);
    return Struct_1(var_0.b.xz, func_4(func_6(_wgslsmith_add_i32(22616i, -38477i), 2147483647i, func_6(~6871i, 34277i, func_5(Struct_1(vec2<i32>(1i, var_2.x), vec4<i32>(19526i, 0i, var_1.a.x, -2147483647i), 20823i), Struct_1(vec2<i32>(var_4.x, var_3.x), global0.b, var_1.c), vec3<f32>(-1212f, -787f, 445f), global0.a))), func_2(any(vec4<bool>(true, false, false, true)), func_5(Struct_1(vec2<i32>(var_4.x, var_1.c), vec4<i32>(global0.b.x, var_2.x, -37761i, var_0.a.x), -31551i), Struct_1(vec2<i32>(var_3.x, u_input.a), vec4<i32>(var_0.a.x, var_2.x, -12050i, 25569i), u_input.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2214f, -681f, -518f)), global0.b.zx), _wgslsmith_dot_vec3_i32(-var_4, var_4)), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(53427u, 63739u), vec2<u32>(34723u, 1u))), vec4<bool>(true, true, true, true)), _wgslsmith_div_i32(global0.a.x, firstTrailingBit(var_1.a.x)) << (((_wgslsmith_mod_u32(21473u, 1u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, 1u), vec4<u32>(14484u, 1u, 18233u, 5647u)) % 32u)) & 1u) % 32u));
}

fn func_7(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> StorageBuffer {
    global1 = array<vec3<i32>, 8>();
    let var_0 = _wgslsmith_f_op_f32(1433f * 1f);
    let var_1 = select(arg_1, !arg_1, any(arg_1.yx));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-289f, -833f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-808f + 1625f), _wgslsmith_f_op_f32(-1000f * -577f))))), vec3<f32>(416f, _wgslsmith_f_op_f32(734f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-103f * var_0))), var_0));
    global2 = (global0.b.x << (_wgslsmith_dot_vec2_u32(~(~vec2<u32>(28727u, 4294967295u)), _wgslsmith_mod_vec2_u32(~vec2<u32>(2968u, 0u), min(vec2<u32>(40617u, 15535u), vec2<u32>(4294967295u, 1u)))) % 32u)) & arg_3.c;
    return StorageBuffer(-arg_3.b.wz, arg_3.b.wx);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_7(func_1(), !vec3<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(95532u, 104943u, 5030u), vec3<u32>(4662u, 4294967295u, 44963u)) == 1u, any(vec4<bool>(true, false, false, true)), true), Struct_1(func_6(func_4(func_2(true, Struct_1(u_input.b.xz, global0.b, u_input.a), -22659i), Struct_1(global0.b.zx, vec4<i32>(u_input.a, -47773i, global0.a.x, global0.a.x), 2147483647i), _wgslsmith_add_u32(4294967295u, 0u), vec4<bool>(true, true, true, true)).x, abs(-28610i), Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(-5680i, -17248i), u_input.b.xy, global0.a), ~vec4<i32>(global0.c, -3463i, u_input.b.x, -2147483647i), firstTrailingBit(-7737i))).b.yx, -(~(global0.b & vec4<i32>(-15884i, 0i, -2147483647i, global0.c))), global0.a.x), Struct_1(func_5(Struct_1(u_input.d.yx | u_input.b.yw, reverseBits(vec4<i32>(u_input.b.x, u_input.c, u_input.c, -33435i)), _wgslsmith_sub_i32(13613i, global0.a.x)), func_6(global0.a.x, ~u_input.b.x, func_6(2941i, global0.b.x, Struct_1(global0.a, global0.b, u_input.b.x))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(214f, 1000f, -1449f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-635f, 336f, -989f) - vec3<f32>(-807f, 1000f, -659f)))), -vec2<i32>(u_input.d.x, 0i)).a, global0.b, -func_4(Struct_1(vec2<i32>(42247i, u_input.d.x), global0.b, global0.b.x), Struct_1(vec2<i32>(u_input.a, u_input.a), u_input.b, u_input.d.x), 0u, vec4<bool>(true, true, false, true)).x | max(_wgslsmith_div_i32(global0.c, u_input.a), u_input.a | global0.b.x)));
}


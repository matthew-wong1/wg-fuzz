struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
    c: vec2<i32>,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec3<u32>) -> vec4<i32> {
    global0 = Struct_1(countOneBits(vec4<i32>(select(-global0.a.x, -2147483647i, true), global0.a.x | (arg_0.a.x >> (10282u % 32u)), _wgslsmith_sub_i32(firstLeadingBit(-45762i), reverseBits(arg_0.a.x)), 0i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0.b.x)), _wgslsmith_f_op_f32(trunc(global0.b.x))), _wgslsmith_f_op_f32(select(arg_0.b.x, -128f, !arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(608f, arg_0.b.x))) * arg_0.b));
    global0 = Struct_1(vec4<i32>(-_wgslsmith_mult_i32(global0.a.x, u_input.a >> (arg_2.x % 32u)), u_input.a, u_input.a, ~(~countOneBits(arg_0.a.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, arg_0.b.x, -114f, 208f) + arg_0.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.b.x, 1057f, global0.b.x, -1088f), vec4<f32>(751f, arg_0.b.x, 583f, global0.b.x), arg_1)) + _wgslsmith_f_op_vec4_f32(sign(arg_0.b))))), global0.b));
    global0 = arg_0;
    global0 = arg_0;
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.b) - arg_0.b)))));
    return min(global0.a, ~vec4<i32>(_wgslsmith_mult_i32(-26236i, reverseBits(u_input.a)), u_input.a, abs(_wgslsmith_div_i32(arg_0.a.x, global0.a.x)), 6779i));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_4) -> u32 {
    let var_0 = select(global0.a.x, arg_1.a.x, false);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.b.wyx)), arg_1.b.wzz, all(vec4<bool>(arg_2.a.b, false, false, arg_2.a.b)) == true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-333f, arg_2.a.a.e.b.x, 575f) * _wgslsmith_f_op_vec3_f32(global0.b.zxy * vec3<f32>(global0.b.x, -1735f, -802f))) + arg_1.b.wxw))));
    let var_2 = arg_2.d;
    let var_3 = arg_2;
    var var_4 = ~vec2<u32>(1u, firstTrailingBit(~4796u >> (_wgslsmith_clamp_u32(27u, 0u, 39810u) % 32u)));
    return _wgslsmith_add_u32(1u, var_4.x);
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    var var_0 = func_4(~global0.a.x, Struct_1(min(func_3(Struct_1(vec4<i32>(u_input.a, arg_0.a.a.a.x, u_input.a, -41287i), vec4<f32>(global0.b.x, arg_0.a.b.x, global0.b.x, global0.b.x)), true, vec3<u32>(1u, 1u, 1u)), vec4<i32>(_wgslsmith_div_i32(1i, -58912i), func_3(arg_0.a.a, arg_0.a.c.x, vec3<u32>(4294967295u, 1u, 27347u)).x, 21405i, -2147483647i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(609f, -1097f, _wgslsmith_f_op_f32(-arg_0.a.d.x), _wgslsmith_f_op_f32(exp2(arg_0.a.d.x))) - _wgslsmith_f_op_vec4_f32(arg_0.a.a.b + _wgslsmith_f_op_vec4_f32(-global0.b)))), Struct_4(Struct_3(arg_0.a, all(select(arg_0.a.c, vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(arg_0.b, false)))), _wgslsmith_f_op_vec2_f32(floor(global0.b.wy)), firstTrailingBit(~vec2<i32>(1i, 3049i)), Struct_1(firstTrailingBit(firstLeadingBit(global0.a)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.d.x, arg_0.a.b.x, -2376f, arg_0.a.b.x)), global0.b))), select(select(vec3<bool>(arg_0.a.c.x, false, true), select(vec3<bool>(arg_0.a.c.x, arg_0.a.c.x, arg_0.b), vec3<bool>(arg_0.a.c.x, arg_0.b, arg_0.a.c.x), vec3<bool>(false, true, true)), !vec3<bool>(arg_0.b, arg_0.a.c.x, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, arg_0.a.c.x, false), false), !vec3<bool>(arg_0.a.c.x, true, arg_0.a.c.x))));
    var_0 = _wgslsmith_sub_u32(min(51785u, 1u) & _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, 1u, 1u, ~0u)), ~(~0u));
    let var_1 = Struct_2(Struct_1(arg_0.a.a.a, arg_0.a.e.b), vec2<f32>(_wgslsmith_f_op_f32(ceil(global0.b.x)), 563f), arg_0.a.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(1583f, _wgslsmith_f_op_f32(arg_0.a.d.x * arg_0.a.a.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.a.e.b.x))), -947f) + vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1414f - -1438f), _wgslsmith_f_op_f32(f32(-1f) * -141f))), 126f, arg_0.a.a.b.x)), arg_0.a.e);
    let var_2 = 291f;
    var_0 = _wgslsmith_add_u32(1u, _wgslsmith_div_u32(~firstLeadingBit(1u), abs(_wgslsmith_clamp_u32(~3668u, ~0u, ~1u))));
    return arg_0.a.a;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: bool) -> Struct_3 {
    global0 = Struct_1(vec4<i32>(u_input.a, -18979i, ~_wgslsmith_mod_i32(u_input.a, -12053i), arg_1.a.x), vec4<f32>(-427f, arg_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_1.b.x))))))));
    var var_0 = 24373i;
    var_0 = global0.a.x;
    var_0 = 13273i;
    var var_1 = Struct_4(Struct_3(Struct_2(func_2(Struct_3(Struct_2(arg_1, arg_1.b.zw, vec2<bool>(true, arg_2), vec4<f32>(global0.b.x, -362f, global0.b.x, 129f), Struct_1(arg_1.a, arg_1.b)), true)), _wgslsmith_f_op_vec2_f32(arg_1.b.zy * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1521f, -1115f) - vec2<f32>(global0.b.x, 1429f))), select(select(vec2<bool>(true, arg_2), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(false, false), arg_2), vec2<bool>(false, arg_2)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, global0.b.x, global0.b.x, arg_1.b.x)), func_2(Struct_3(Struct_2(Struct_1(vec4<i32>(arg_1.a.x, arg_1.a.x, u_input.a, -57554i), vec4<f32>(-1000f, arg_1.b.x, 1672f, 938f)), vec2<f32>(arg_1.b.x, -1366f), vec2<bool>(arg_2, arg_2), vec4<f32>(global0.b.x, arg_1.b.x, arg_1.b.x, global0.b.x), arg_1), arg_2)).b)), Struct_1(global0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, arg_1.b.x, global0.b.x, arg_1.b.x)))), all(!select(vec2<bool>(true, arg_2), vec2<bool>(true, true), false))), arg_1.b.wy, ~_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(10330i, global0.a.x), arg_1.a.yw ^ vec2<i32>(-1i, -87959i)), vec2<i32>(global0.a.x << (arg_0 % 32u), firstLeadingBit(global0.a.x)), countOneBits(arg_1.a.wz) << (~vec2<u32>(16084u, arg_0) % vec2<u32>(32u))), Struct_1(arg_1.a, _wgslsmith_f_op_vec4_f32(arg_1.b - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, -2031f, global0.b.x, -645f) * vec4<f32>(-1271f, arg_1.b.x, 214f, -470f))))), !vec3<bool>(!(global0.a.x > global0.a.x), arg_2, any(vec4<bool>(true, false, arg_2, arg_2)) && arg_2));
    return Struct_3(var_1.a.a, arg_2);
}

fn func_6(arg_0: Struct_3) -> Struct_4 {
    global0 = arg_0.a.a;
    var var_0 = Struct_4(func_5(_wgslsmith_clamp_u32(4294967295u, 1u >> (_wgslsmith_div_u32(0u, 1u) % 32u), ~42697u), Struct_1(vec4<i32>(~(-2173i), _wgslsmith_div_i32(global0.a.x, 0i), arg_0.a.a.a.x, global0.a.x), arg_0.a.d), !all(select(arg_0.a.c, vec2<bool>(true, arg_0.b), arg_0.a.c))), vec2<f32>(1248f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.a.d.x, _wgslsmith_f_op_f32(1281f - global0.b.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.e.b.x)))), vec2<i32>(-func_3(arg_0.a.a, arg_0.a.c.x, vec3<u32>(1u, 1u, 1u)).x, _wgslsmith_add_i32(abs(1i), firstTrailingBit(-43813i))), arg_0.a.e, !(!(!(!vec3<bool>(arg_0.b, arg_0.b, true)))));
    let var_1 = Struct_4(arg_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(abs(global0.b.x)), _wgslsmith_f_op_f32(abs(global0.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_0.d.b.xy))), var_0.a.a.c)) - var_0.a.a.a.b.zw), arg_0.a.e.a.yz, func_2(func_5(_wgslsmith_mod_u32(1u, 1u), Struct_1(vec4<i32>(arg_0.a.a.a.x, arg_0.a.e.a.x, u_input.a, arg_0.a.a.a.x), vec4<f32>(-1000f, -1380f, arg_0.a.a.b.x, var_0.a.a.b.x)), arg_0.a.c.x)), select(!var_0.e, select(select(!var_0.e, !vec3<bool>(false, var_0.a.b, true), all(vec2<bool>(arg_0.a.c.x, true))), var_0.e, var_0.e), var_0.e));
    global0 = func_5(1u, func_2(arg_0), !var_0.a.a.c.x).a.e;
    var var_2 = !(func_5(_wgslsmith_clamp_u32(~0u, ~1u, ~11110u), Struct_1(arg_0.a.e.a >> (vec4<u32>(4294967295u, 48310u, 23865u, 26068u) % vec4<u32>(32u)), vec4<f32>(886f, -514f, var_0.b.x, 277f)), var_1.a.b).b & func_5(countOneBits(1u), func_5(min(87951u, 10556u), func_5(1u, Struct_1(vec4<i32>(var_1.c.x, u_input.a, global0.a.x, var_1.d.a.x), global0.b), true).a.a, var_1.a.a.b.x > var_1.d.b.x).a.e, any(vec4<bool>(true, true, true, true))).b);
    return Struct_4(Struct_3(func_5(countOneBits(max(4294967295u, 4294967295u)), var_1.a.a.e, arg_0.b).a, any(select(vec4<bool>(arg_0.b, true, true, false), !vec4<bool>(var_0.e.x, arg_0.b, var_0.e.x, false), !vec4<bool>(false, true, var_1.e.x, var_1.e.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -604f))), global0.b.x)), vec2<i32>(u_input.a, 2147483647i), var_1.d, !vec3<bool>(true, -977f < _wgslsmith_f_op_f32(trunc(1000f)), true));
}

fn func_7(arg_0: Struct_4) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(trunc(1300f));
    var var_1 = arg_0.a.a.a.a;
    var_1 = ~(~select(~vec4<i32>(-50101i, arg_0.c.x, 1i, arg_0.c.x), abs(vec4<i32>(44072i, 41707i, arg_0.c.x, 1i)), vec4<bool>(arg_0.a.b, false, arg_0.e.x, arg_0.a.b || false)));
    let var_2 = arg_0.a.b;
    var var_3 = arg_0;
    return arg_0.e.zx;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: i32) -> Struct_1 {
    var var_0 = Struct_2(arg_1, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_1.b.x, arg_1.b.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(192f, global0.b.x, arg_2.x))))))), func_7(func_6(func_5(arg_0, func_2(Struct_3(Struct_2(arg_1, global0.b.zx, arg_2.wz, global0.b, arg_1), false)), !arg_2.x))), arg_1.b, arg_1);
    var var_1 = Struct_3(Struct_2(Struct_1(~global0.a, vec4<f32>(_wgslsmith_f_op_f32(sign(690f)), 1002f, _wgslsmith_f_op_f32(-897f - arg_1.b.x), func_6(Struct_3(Struct_2(Struct_1(vec4<i32>(arg_1.a.x, 0i, arg_3, -20734i), var_0.e.b), arg_1.b.yz, var_0.c, vec4<f32>(var_0.a.b.x, global0.b.x, var_0.b.x, -1910f), Struct_1(var_0.a.a, vec4<f32>(677f, -1321f, arg_1.b.x, var_0.d.x))), var_0.c.x)).b.x)), arg_1.b.yx, !vec2<bool>(func_5(0u, arg_1, var_0.c.x).b, arg_2.x & true), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(func_6(Struct_3(Struct_2(arg_1, vec2<f32>(-166f, -1506f), vec2<bool>(var_0.c.x, true), arg_1.b, arg_1), arg_2.x)).d.b.x, _wgslsmith_div_f32(1624f, 950f), _wgslsmith_f_op_f32(min(global0.b.x, arg_1.b.x)), 1332f))), Struct_1(~reverseBits(var_0.e.a), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(global0.b, arg_1.b), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1932f, -512f, -1288f, var_0.e.b.x), vec4<f32>(arg_1.b.x, -420f, arg_1.b.x, -1000f), arg_2)), global0.b.x != var_0.a.b.x)))), true);
    global0 = Struct_1(countOneBits(~arg_1.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_1.a.a.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1911f, var_1.a.e.b.x, var_0.e.b.x, -394f)))), var_0.a.b));
    global0 = Struct_1(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(~9176i, arg_3, global0.a.x ^ 10246i, func_6(Struct_3(Struct_2(var_1.a.e, var_0.d.zx, var_0.c, var_0.a.b, Struct_1(global0.a, vec4<f32>(639f, 200f, 1129f, -1310f))), true)).c.x), var_1.a.e.a), vec4<i32>(_wgslsmith_clamp_i32(~(-1i), var_0.e.a.x, func_2(Struct_3(Struct_2(Struct_1(vec4<i32>(u_input.a, -1i, global0.a.x, -1i), var_1.a.a.b), var_0.a.b.zx, var_1.a.c, vec4<f32>(var_1.a.b.x, arg_1.b.x, arg_1.b.x, 158f), Struct_1(vec4<i32>(arg_3, arg_3, 1i, arg_1.a.x), vec4<f32>(var_0.e.b.x, arg_1.b.x, var_1.a.b.x, 741f))), arg_2.x)).a.x), var_0.a.a.x, -1i, func_3(Struct_1(var_0.e.a, arg_1.b), arg_2.x, select(vec3<u32>(arg_0, 1u, arg_0), vec3<u32>(arg_0, 0u, arg_0), arg_2.x)).x)), var_0.a.b);
    var_0 = Struct_2(var_1.a.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(743f, global0.b.x), vec2<f32>(-560f, var_1.a.d.x), select(true, true, var_0.c.x))))), arg_1.b.yz, all(arg_2))), func_6(Struct_3(Struct_2(arg_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.d.x, var_1.a.b.x)), select(var_1.a.c, vec2<bool>(arg_2.x, var_1.a.c.x), true), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, -335f, -277f, 103f) * vec4<f32>(arg_1.b.x, 622f, 406f, -170f)), Struct_1(var_1.a.a.a, global0.b)), !arg_2.x)).e.zz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(func_2(Struct_3(var_1.a, arg_2.x)).b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, 1000f, 381f, global0.b.x)) * _wgslsmith_div_vec4_f32(var_1.a.d, global0.b)), !select(arg_2, arg_2, arg_2.x)))), Struct_1(abs(vec4<i32>(u_input.a, 1i, var_0.a.a.x, -2147483647i) << (select(vec4<u32>(arg_0, arg_0, 26025u, 4294967295u), vec4<u32>(35607u, 27039u, arg_0, 4294967295u), true) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global0.b.x, var_1.a.e.b.x, _wgslsmith_f_op_f32(var_1.a.b.x - 787f)))));
    return func_5(1u & ~arg_0, var_1.a.a, var_0.a.a.x < (~firstTrailingBit(var_0.e.a.x) & -abs(arg_3))).a.a;
}

fn func_8(arg_0: vec4<i32>, arg_1: Struct_1) -> f32 {
    global0 = func_5(~_wgslsmith_sub_u32(_wgslsmith_add_u32(1u, 1u), ~max(41708u, 4294967295u)), Struct_1(vec4<i32>(countOneBits(_wgslsmith_mult_i32(arg_1.a.x, -14771i)), _wgslsmith_sub_i32(global0.a.x, global0.a.x), func_5(_wgslsmith_add_u32(47275u, 27434u), func_1(22770u, Struct_1(arg_1.a, arg_1.b), vec4<bool>(false, true, false, false), 2147483647i), false).a.e.a.x, min(firstTrailingBit(arg_0.x), _wgslsmith_mod_i32(1i, 10827i))), global0.b), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, arg_1.b.x != -1725f)))).a.e;
    let var_0 = func_6(Struct_3(func_5(_wgslsmith_clamp_u32(1u, 1u, 0u), Struct_1(arg_1.a, global0.b), !select(true, false, true)).a, _wgslsmith_f_op_f32(f32(-1f) * -767f) != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.b.x - -803f))))).a.a;
    var var_1 = Struct_2(Struct_1(firstTrailingBit(~var_0.a.a), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-3024f, arg_1.b.x, global0.b.x, global0.b.x) * vec4<f32>(var_0.e.b.x, global0.b.x, var_0.d.x, var_0.a.b.x)))))), arg_1.b.wy, vec2<bool>(true, true), vec4<f32>(633f, -1839f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.b.x)))), var_0.a.b.x), func_5(~abs(1u), var_0.a, all(!select(vec4<bool>(var_0.c.x, true, var_0.c.x, true), vec4<bool>(false, false, var_0.c.x, true), var_0.c.x))).a.e);
    var var_2 = false;
    var var_3 = vec4<bool>(true, 1273f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-409f, 1110f))) * _wgslsmith_f_op_f32(-func_6(Struct_3(Struct_2(var_0.e, var_0.a.b.xw, vec2<bool>(false, true), arg_1.b, var_0.a), var_1.c.x)).b.x)), _wgslsmith_div_i32(0i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-2147483647i, 10940i), _wgslsmith_div_i32(22108i, arg_1.a.x), ~global0.a.x)) == ~(~9790i), func_6(func_6(Struct_3(Struct_2(Struct_1(var_0.e.a, var_0.a.b), vec2<f32>(global0.b.x, 139f), var_0.c, var_0.e.b, var_1.a), false)).a).e.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_8(abs(global0.a), func_1(457u, Struct_1(vec4<i32>(u_input.a, global0.a.x, global0.a.x, -11539i), global0.b), vec4<bool>(false, true, false, true), global0.a.x))), -806f), global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-105f, global0.b.x)))), _wgslsmith_f_op_f32(global0.b.x - -3071f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.a, 55112i), -u_input.a), _wgslsmith_clamp_i32(global0.a.x >> (67385u % 32u), u_input.a, _wgslsmith_mult_i32(u_input.a, 2147483647i)), 24474i), vec3<i32>(global0.a.x, -13019i, _wgslsmith_add_i32(~u_input.a, ~(-2147483647i)))));
}


struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: Struct_1,
    d: vec4<f32>,
    e: f32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_3,
    d: vec2<i32>,
    e: Struct_3,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(53726i, 1389i, 1i, 169i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_4) -> vec4<bool> {
    global0 = vec4<i32>(1i, 9988i, 43672i, _wgslsmith_mult_i32(arg_0.d.x, _wgslsmith_add_i32(min(-69865i, global0.x), i32(-1i) * -2147483647i))) & vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(24915i, global0.x, 1i), vec3<i32>(arg_0.d.x, -7422i, u_input.a.x)) ^ ~arg_0.d.x, global0.x), global0.x, _wgslsmith_mult_i32(-(global0.x >> (u_input.c % 32u)), max(u_input.a.x << (4294967295u % 32u), arg_0.a)), i32(-1i) * -_wgslsmith_add_i32(arg_0.a, arg_0.a));
    global0 = vec4<i32>(abs(-abs(i32(-1i) * -1i)), ~arg_0.a << (u_input.b.x % 32u), arg_0.a, min(arg_0.d.x, u_input.a.x));
    global0 = vec4<i32>(countOneBits(-arg_0.a) >> (_wgslsmith_add_u32(arg_0.e.c.b.x, ~(~u_input.b.x)) % 32u), -1i, abs(global0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, global0.x), firstTrailingBit(u_input.a)));
    let var_0 = Struct_5(~(-abs(vec2<i32>(u_input.a.x, global0.x))), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u)), reverseBits(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.b.c.b.x, 67211u, arg_0.e.c.c.x, arg_0.e.c.c.x), vec4<u32>(0u, u_input.c, 4294967295u, u_input.c))), _wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 46017u, 0u, u_input.b.x), vec4<u32>(0u, 4294967295u, 11930u, 25686u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.c, u_input.b.x, u_input.c, arg_0.b.c.b.x), reverseBits(vec4<u32>(48655u, arg_0.b.c.b.x, 1u, u_input.b.x))))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.c.d.x - arg_0.c.e), _wgslsmith_f_op_f32(arg_0.b.c.a + arg_0.c.d.x), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-911f + _wgslsmith_f_op_f32(-arg_0.c.e)) + _wgslsmith_div_f32(1117f, _wgslsmith_f_op_f32(round(1000f))))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.e.c.b.x, 7233u) | ~u_input.b, arg_0.b.c.c), reverseBits(1u), u_input.c, 4294967295u));
    var var_1 = arg_0.e.a;
    return !(!(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(var_1.x, var_1.x, false, true), arg_0.b.a.x))));
}

fn func_2(arg_0: u32, arg_1: Struct_4) -> i32 {
    var var_0 = vec4<bool>(any(vec3<bool>(all(vec2<bool>(arg_1.e.a.x, arg_1.b.a.x)), arg_1.e.a.x, arg_1.e.a.x)) || false, true, true, arg_1.b.a.x);
    var var_1 = !arg_1.e.a;
    var var_2 = 2147483647i;
    var var_3 = arg_1.e.c;
    var var_4 = func_3(arg_1);
    return _wgslsmith_mod_i32(firstTrailingBit(3620i), _wgslsmith_dot_vec3_i32(global0.xyz, global0.wwz));
}

fn func_1() -> vec4<i32> {
    var var_0 = Struct_4(countOneBits(_wgslsmith_dot_vec3_i32((global0.zxz | vec3<i32>(-2147483647i, global0.x, u_input.a.x)) & global0.yxz, vec3<i32>(-6867i, func_2(42246u, Struct_4(48124i, Struct_3(vec4<bool>(false, true, false, false), vec3<f32>(-302f, 1380f, -1575f), Struct_1(151f, u_input.b, vec2<u32>(u_input.b.x, 0u), vec4<f32>(1233f, 330f, -1000f, 509f), u_input.b.x), vec4<f32>(-534f, -251f, -783f, 1983f), 1537f), Struct_3(vec4<bool>(true, false, true, false), vec3<f32>(323f, -627f, -299f), Struct_1(-845f, vec2<u32>(4294967295u, 13733u), vec2<u32>(10144u, 30746u), vec4<f32>(1118f, -206f, -472f, 1230f), 0u), vec4<f32>(354f, 754f, 250f, 237f), 258f), vec2<i32>(u_input.a.x, 22917i), Struct_3(vec4<bool>(false, false, true, true), vec3<f32>(319f, 481f, 1419f), Struct_1(-2099f, u_input.b, vec2<u32>(u_input.b.x, u_input.b.x), vec4<f32>(321f, -566f, -425f, 519f), u_input.c), vec4<f32>(713f, 614f, -1497f, -344f), 444f))), u_input.a.x))), Struct_3(select(vec4<bool>(true, true, u_input.b.x > u_input.b.x, true), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(798f - 1173f)), -958f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(700f, 950f)), _wgslsmith_div_f32(1000f, -173f))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - 276f), vec2<u32>(_wgslsmith_div_u32(1u, u_input.c), _wgslsmith_mod_u32(u_input.b.x, u_input.c)), select(~u_input.b, vec2<u32>(u_input.c, 123669u) | u_input.b, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(579f, -145f, 1139f, 183f), vec4<f32>(460f, 1337f, -3175f, 453f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(470f, -745f, -815f, -909f) + vec4<f32>(-1136f, -1000f, 220f, 203f))), u_input.b.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-598f, -660f, 1000f, -1432f) + vec4<f32>(-1061f, -1000f, -344f, 117f)) + vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1348f, 3336f, 767f, -1016f))))), 2608f), Struct_3(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(all(vec2<bool>(false, true)), -2147483647i == u_input.a.x, any(vec3<bool>(true, true, true)), true)), vec3<f32>(_wgslsmith_f_op_f32(trunc(1740f)), -1272f, -433f), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -277f), vec2<u32>(select(u_input.b.x, 37895u, true), 36480u), _wgslsmith_div_vec2_u32(u_input.b, ~u_input.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1418f, 777f, -806f, 362f), vec4<f32>(1428f, 989f, 493f, -949f), false))), 4294967295u), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2257f, 268f)) - _wgslsmith_f_op_f32(min(-1000f, -1000f))), 466f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-761f, -1110f)))), _wgslsmith_f_op_f32(-1035f - _wgslsmith_f_op_f32(f32(-1f) * -2426f))), _wgslsmith_div_f32(-1081f, 2041f)), vec2<i32>(0i, u_input.a.x), Struct_3(vec4<bool>(false && (global0.x <= global0.x), func_3(Struct_4(u_input.a.x, Struct_3(vec4<bool>(true, false, true, true), vec3<f32>(1064f, 501f, 1047f), Struct_1(-511f, vec2<u32>(4294967295u, 67434u), u_input.b, vec4<f32>(1720f, 777f, -2151f, -1000f), u_input.c), vec4<f32>(125f, -742f, 2413f, -1278f), 1248f), Struct_3(vec4<bool>(true, false, true, false), vec3<f32>(-828f, 498f, -101f), Struct_1(-1000f, u_input.b, u_input.b, vec4<f32>(-1834f, 1889f, 614f, -509f), 0u), vec4<f32>(-1486f, -1000f, -180f, 908f), -1129f), u_input.a, Struct_3(vec4<bool>(true, false, false, true), vec3<f32>(-603f, 1002f, -1225f), Struct_1(509f, vec2<u32>(1u, 28176u), u_input.b, vec4<f32>(-2047f, -1358f, 314f, -439f), 0u), vec4<f32>(-1565f, 355f, 1201f, 635f), 1194f))).x, !func_3(Struct_4(1i, Struct_3(vec4<bool>(false, false, true, false), vec3<f32>(-1194f, -274f, -512f), Struct_1(1250f, vec2<u32>(60257u, u_input.c), u_input.b, vec4<f32>(-1557f, 322f, -1000f, 1000f), u_input.b.x), vec4<f32>(-620f, -1665f, 387f, -445f), 365f), Struct_3(vec4<bool>(false, false, true, true), vec3<f32>(677f, 362f, -1148f), Struct_1(1184f, vec2<u32>(1u, 1u), vec2<u32>(u_input.c, u_input.c), vec4<f32>(2951f, 564f, -569f, -624f), 40578u), vec4<f32>(137f, 621f, -1305f, -121f), -1782f), global0.wz, Struct_3(vec4<bool>(true, false, false, true), vec3<f32>(-1486f, 497f, 1000f), Struct_1(419f, vec2<u32>(u_input.b.x, 0u), u_input.b, vec4<f32>(718f, 171f, -176f, 443f), u_input.c), vec4<f32>(141f, 137f, -248f, -422f), -1592f))).x, all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1253f), -825f, _wgslsmith_f_op_f32(251f + -487f))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-975f, 948f)), select(max(vec2<u32>(11153u, u_input.b.x), u_input.b), vec2<u32>(4294967295u, 0u), select(true, true, true)), u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-665f, 1000f, 1888f, 1046f), vec4<f32>(1000f, 1978f, 1448f, 1403f)))), min(0u, ~u_input.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1413f, 213f, -1723f, -2143f) - vec4<f32>(1231f, 577f, 1454f, 1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-367f, -377f, -1310f, 634f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -2232f, 466f, 977f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1622f, 623f, -561f, -1006f) + vec4<f32>(-1000f, 1154f, 1016f, 662f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1456f - -1342f), _wgslsmith_div_f32(636f, -2277f), true))))));
    let var_1 = !select(var_0.c.a, !var_0.e.a, var_0.b.a);
    let var_2 = 6350u;
    var var_3 = Struct_4(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, _wgslsmith_div_i32(~2147483647i, u_input.a.x >> (1u % 32u)), global0.x), _wgslsmith_mod_vec3_i32(vec3<i32>(firstLeadingBit(var_0.a), -global0.x, 2147483647i), global0.xwy << (vec3<u32>(51084u, var_0.b.c.c.x, u_input.b.x) % vec3<u32>(32u)))), var_0.c, Struct_3(var_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(594f, var_0.e.b.x, 1927f))), var_0.e.c, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1466f, var_0.e.b.x))), _wgslsmith_f_op_f32(floor(var_0.b.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-238f, var_0.e.d.x)) * _wgslsmith_f_op_f32(min(2353f, var_0.e.c.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-932f + -540f) + _wgslsmith_f_op_f32(f32(-1f) * -728f))), _wgslsmith_f_op_f32(trunc(var_0.e.b.x))), abs(vec2<i32>(-global0.x, func_2(~4294967295u, Struct_4(1i, Struct_3(var_0.c.a, var_0.e.b, var_0.c.c, var_0.c.d, -483f), Struct_3(var_0.e.a, var_0.c.b, Struct_1(var_0.b.b.x, vec2<u32>(1u, 39922u), u_input.b, var_0.c.d, 0u), var_0.e.c.d, var_0.b.e), var_0.d, Struct_3(vec4<bool>(var_1.x, false, var_0.c.a.x, true), var_0.b.b, Struct_1(var_0.e.c.d.x, u_input.b, vec2<u32>(var_0.c.c.c.x, var_2), var_0.e.c.d, var_2), vec4<f32>(1026f, 774f, 1366f, 1000f), 730f))))), var_0.c);
    let var_4 = vec4<i32>(countOneBits(-u_input.a.x), _wgslsmith_div_i32(-u_input.a.x, (-global0.x ^ _wgslsmith_sub_i32(-20001i, -37048i)) << (~(~var_3.b.c.b.x) % 32u)), _wgslsmith_mod_i32(global0.x, ~firstTrailingBit(u_input.a.x << (0u % 32u))), abs(~_wgslsmith_sub_i32(-21169i, global0.x)) >> (var_3.b.c.b.x % 32u));
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(func_1(), vec4<i32>(59581i, abs(global0.x), _wgslsmith_mod_i32(global0.x, 13172i << (u_input.b.x % 32u)), _wgslsmith_add_i32(u_input.a.x, -global0.x)) & (~(~vec4<i32>(-1i, -1i, global0.x, 2147483647i)) << (_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 66045u, u_input.c, 12418u), vec4<u32>(85958u, 44487u, u_input.c, u_input.c)), abs(vec4<u32>(u_input.c, u_input.c, 15963u, u_input.c))) % vec4<u32>(32u))), !func_3(Struct_4(2147483647i, Struct_3(vec4<bool>(true, false, true, false), vec3<f32>(613f, 124f, -1777f), Struct_1(-572f, vec2<u32>(1u, u_input.c), vec2<u32>(0u, u_input.b.x), vec4<f32>(1454f, -369f, -1190f, 748f), 57204u), vec4<f32>(-344f, -1000f, -404f, 1000f), 930f), Struct_3(vec4<bool>(false, true, true, true), vec3<f32>(-617f, 287f, -830f), Struct_1(1340f, vec2<u32>(u_input.b.x, u_input.b.x), u_input.b, vec4<f32>(325f, 389f, 1000f, -832f), 1u), vec4<f32>(-346f, -376f, 853f, 118f), 1778f), ~vec2<i32>(-2147483647i, 0i), Struct_3(vec4<bool>(false, false, true, false), vec3<f32>(126f, 706f, -1000f), Struct_1(376f, vec2<u32>(66920u, 103227u), vec2<u32>(u_input.b.x, u_input.c), vec4<f32>(-755f, -242f, -1269f, -249f), 94732u), vec4<f32>(-318f, 553f, 512f, -703f), 1367f))).x);
    var var_0 = -global0.x;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(735f * _wgslsmith_f_op_f32(-223f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(354f))))), _wgslsmith_f_op_f32(-739f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1326f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -724f) * -244f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1662f))), _wgslsmith_f_op_f32(min(571f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-572f, 408f, true))))))), -1028f);
    var_0 = max(-1572i, u_input.a.x);
    var var_2 = ~(~_wgslsmith_div_vec3_u32(vec3<u32>(abs(4294967295u), _wgslsmith_add_u32(4294967295u, u_input.c), _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(0u, 0u))), ~(~vec3<u32>(15795u, u_input.c, 47525u))));
    let var_3 = ~min(_wgslsmith_div_u32(4294967295u, firstLeadingBit(1u)), _wgslsmith_mult_u32(var_2.x, ~52126u)) == ~4294967295u;
    let var_4 = !func_3(Struct_4(-2147483647i, Struct_3(func_3(Struct_4(1i, Struct_3(vec4<bool>(true, false, var_3, var_3), vec3<f32>(-2188f, -879f, var_1.x), Struct_1(var_1.x, vec2<u32>(u_input.c, var_2.x), vec2<u32>(var_2.x, var_2.x), vec4<f32>(-653f, var_1.x, var_1.x, 1545f), var_2.x), vec4<f32>(var_1.x, var_1.x, 1627f, var_1.x), var_1.x), Struct_3(vec4<bool>(true, var_3, var_3, false), vec3<f32>(663f, -1069f, 1326f), Struct_1(var_1.x, vec2<u32>(var_2.x, 1u), vec2<u32>(1u, 62272u), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), 1u), vec4<f32>(var_1.x, 238f, -642f, -1291f), -1280f), u_input.a, Struct_3(vec4<bool>(var_3, var_3, false, var_3), vec3<f32>(var_1.x, var_1.x, 438f), Struct_1(var_1.x, var_2.xy, u_input.b, vec4<f32>(var_1.x, 1259f, 764f, var_1.x), u_input.b.x), vec4<f32>(987f, var_1.x, 1328f, var_1.x), var_1.x))), var_1.zzy, Struct_1(var_1.x, u_input.b, vec2<u32>(var_2.x, 23842u), vec4<f32>(var_1.x, var_1.x, -682f, 1094f), var_2.x), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), _wgslsmith_f_op_f32(-var_1.x)), Struct_3(func_3(Struct_4(global0.x, Struct_3(vec4<bool>(true, false, var_3, var_3), var_1.yww, Struct_1(-341f, vec2<u32>(u_input.c, 0u), u_input.b, vec4<f32>(1629f, -2305f, -506f, var_1.x), u_input.c), vec4<f32>(1690f, 716f, var_1.x, var_1.x), var_1.x), Struct_3(vec4<bool>(var_3, true, false, true), vec3<f32>(var_1.x, var_1.x, 1031f), Struct_1(var_1.x, var_2.zx, var_2.yy, vec4<f32>(var_1.x, var_1.x, -175f, -287f), 4294967295u), vec4<f32>(756f, 242f, 592f, -111f), -709f), u_input.a, Struct_3(vec4<bool>(var_3, true, var_3, true), var_1.yzy, Struct_1(1195f, vec2<u32>(24963u, u_input.c), u_input.b, vec4<f32>(1044f, var_1.x, var_1.x, var_1.x), 0u), vec4<f32>(var_1.x, 827f, 1000f, var_1.x), -1387f))), var_1.wwx, Struct_1(var_1.x, u_input.b, var_2.xx, vec4<f32>(var_1.x, 1032f, 226f, -508f), 4743u), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-779f, -177f, -309f, var_1.x), vec4<f32>(220f, -1917f, -1656f, -1854f))), -162f), global0.xy, Struct_3(select(vec4<bool>(var_3, false, false, true), vec4<bool>(true, var_3, true, var_3), vec4<bool>(false, var_3, var_3, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1301f, var_1.x, var_1.x)), Struct_1(var_1.x, vec2<u32>(1u, var_2.x), vec2<u32>(0u, var_2.x), vec4<f32>(2326f, var_1.x, var_1.x, var_1.x), u_input.b.x), vec4<f32>(875f, var_1.x, -1114f, var_1.x), _wgslsmith_f_op_f32(-var_1.x)))).xy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_1.zz)) * vec2<f32>(-1406f, -2409f)) - vec2<f32>(var_1.x, _wgslsmith_f_op_f32(trunc(var_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-269f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1545f) - var_1.x))), ~(~(~(~vec4<u32>(6175u, var_2.x, 62178u, u_input.b.x)))), global0.x, u_input.a.x);
}


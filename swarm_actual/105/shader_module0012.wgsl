struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: bool,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec3<bool> = vec3<bool>(false, true, true);

var<private> global2: vec3<i32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<bool>) -> bool {
    global1 = !arg_1.wzz;
    let var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(-745f * _wgslsmith_f_op_f32(min(-865f, arg_0.x))))), 1207f, _wgslsmith_div_f32(-802f, arg_0.x)), arg_0.x, global1.x, _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.b.x, _wgslsmith_div_u32(85689u, u_input.d.x << (4294967295u % 32u))), u_input.d.x), Struct_1(!(any(vec2<bool>(true, true)) & (false || global1.x)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 24794u, u_input.d.x, 0u), vec4<u32>(0u, 4294967295u, 1u, 72538u)) >> (~1u % 32u), global1.x, u_input.d.x, 498f));
    global0 = vec4<i32>(global2.x, _wgslsmith_clamp_i32(global0.x, _wgslsmith_div_i32(-19048i, -2147483647i), -(_wgslsmith_add_i32(global0.x, 2147483647i) >> (~u_input.d.x % 32u))), firstTrailingBit(~_wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.c.xy), u_input.c.yz)), global0.x);
    let var_1 = vec4<f32>(1289f, _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -991f)))))), 1603f, _wgslsmith_f_op_f32(f32(-1f) * -360f));
    var var_2 = Struct_4(var_0, true, var_0, var_1.x, Struct_1(var_0.c, u_input.d.x, any(vec3<bool>(select(true, global1.x, false), all(arg_1), global1.x)), var_0.e.d, -1185f));
    return true;
}

fn func_2(arg_0: vec3<i32>, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_2(vec3<f32>(arg_1, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1037f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-954f * 575f) - -903f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(trunc(arg_1)))), !any(!global1.zy), min(_wgslsmith_mod_u32(u_input.b.x << (1u % 32u), u_input.d.x), ~u_input.d.x), Struct_1(true, ~_wgslsmith_dot_vec2_u32(select(u_input.d.xy, u_input.b, false), select(u_input.b, vec2<u32>(u_input.b.x, 41076u), vec2<bool>(global1.x, true))), func_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-688f, -687f, arg_1, -575f))))), select(select(vec4<bool>(true, global1.x, true, global1.x), vec4<bool>(global1.x, global1.x, global1.x, false), false), !vec4<bool>(false, false, global1.x, false), vec4<bool>(true, false, global1.x, true))), 1u, _wgslsmith_f_op_f32(446f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - 1047f))));
    global2 = _wgslsmith_clamp_vec3_i32(arg_0, vec3<i32>(4659i, ~33230i, global2.x), vec3<i32>(-2147483647i, _wgslsmith_mod_i32(_wgslsmith_add_i32(arg_0.x, global0.x), ~_wgslsmith_sub_i32(global0.x, -42299i)), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, arg_0.x), select(arg_0.zx, vec2<i32>(0i, u_input.a), global1.yy)), -7588i)));
    global2 = global0.xzz;
    let var_1 = vec3<u32>(_wgslsmith_mult_u32(~var_0.e.b, var_0.d << (~4294967295u % 32u)), var_0.e.b, ~(~firstLeadingBit(_wgslsmith_sub_u32(u_input.d.x, 0u))));
    global2 = ~((u_input.c | -(vec3<i32>(-1i, 26840i, 0i) & vec3<i32>(u_input.c.x, 368i, -2147483647i))) | _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.c, _wgslsmith_mod_vec3_i32(arg_0, vec3<i32>(-36147i, global0.x, global0.x)), vec3<i32>(-2147483647i, global0.x, -27771i)), _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(u_input.a, u_input.a, global0.x)), _wgslsmith_mod_vec3_i32(u_input.c, vec3<i32>(2147483647i, 1i, -1i)))));
    return var_0.e;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>) -> Struct_1 {
    global0 = -firstTrailingBit(max(abs(vec4<i32>(global0.x, u_input.c.x, global0.x, global0.x) << (vec4<u32>(u_input.b.x, 1u, arg_0.d, arg_0.d) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(-vec4<i32>(-1i, 1i, u_input.c.x, 0i), vec4<i32>(u_input.c.x, 14214i, -2669i, global0.x))));
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.e, arg_2.x, 284f), vec3<f32>(arg_0.e, arg_2.x, 1721f)))), _wgslsmith_f_op_vec3_f32(max(arg_2.yyx, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.e, -1111f, arg_0.e))))), !vec3<bool>(global1.x, global1.x, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.yww)))), arg_0.e, all(global1.zx), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b >> (u_input.b % vec2<u32>(32u)), u_input.b), vec2<u32>(u_input.b.x, u_input.d.x)), Struct_1(arg_2.x > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.e - -1488f))), 0u, all(vec4<bool>(true, true, !global1.x, !arg_0.a)), ~(0u | arg_0.d) >> (arg_0.b % 32u), _wgslsmith_f_op_f32(floor(-468f))));
    global1 = vec3<bool>(true, true, false);
    global2 = -vec3<i32>(~global0.x, global2.x, 1i);
    let var_1 = func_2(vec3<i32>(_wgslsmith_clamp_i32(19897i, 2147483647i, ~global2.x << (_wgslsmith_mult_u32(u_input.d.x, 38758u) % 32u)), global0.x, -16966i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - -491f)).b;
    return var_0.e;
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> Struct_3 {
    let var_0 = Struct_3(func_4(func_2(abs(min(global0.ywy, u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.e) + _wgslsmith_f_op_f32(exp2(arg_2.e)))), true, vec4<f32>(-253f, arg_2.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.e + -761f), _wgslsmith_f_op_f32(arg_2.e + -949f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1779f + arg_2.e)))));
    var var_1 = ~firstLeadingBit(select(~(global0.xz >> (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))), global0.xx, func_3(vec4<f32>(arg_2.e, 266f, -1863f, 1111f), vec4<bool>(true, true, global1.x, global1.x))));
    let var_2 = var_0;
    global2 = vec3<i32>(firstLeadingBit(~(-2147483647i)), global2.x << (~u_input.d.x % 32u), ((abs(0i) ^ ~arg_0) & (i32(-1i) * -7075i)) << (11520u % 32u));
    var var_3 = u_input.d.yx;
    return var_0;
}

fn func_6(arg_0: Struct_3, arg_1: u32, arg_2: bool) -> Struct_3 {
    let var_0 = Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(695f, arg_0.a.e, arg_0.a.e) * vec3<f32>(arg_0.a.e, arg_0.a.e, arg_0.a.e)) * vec3<f32>(arg_0.a.e, -1032f, arg_0.a.e)), vec3<f32>(_wgslsmith_f_op_f32(682f * arg_0.a.e), _wgslsmith_div_f32(-899f, -2653f), arg_0.a.e), !select(vec3<bool>(arg_0.a.a, true, false), vec3<bool>(true, global1.x, arg_2), vec3<bool>(arg_2, false, arg_0.a.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a.e, 1497f))), func_3(vec4<f32>(_wgslsmith_div_f32(1591f, arg_0.a.e), 525f, arg_0.a.e, arg_0.a.e), select(vec4<bool>(true, arg_0.a.a, global1.x, true), vec4<bool>(true, false, false, arg_2), select(vec4<bool>(false, arg_2, global1.x, true), vec4<bool>(arg_2, arg_2, arg_2, true), vec4<bool>(arg_0.a.a, false, arg_2, global1.x)))), _wgslsmith_mult_u32(1u, _wgslsmith_div_u32(_wgslsmith_div_u32(5580u, u_input.b.x), 34184u)), arg_0.a), !(arg_1 >= arg_1), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-823f, -180f, 1767f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1674f, -467f, arg_0.a.e) * vec3<f32>(1485f, arg_0.a.e, arg_0.a.e)))), _wgslsmith_f_op_f32(max(246f, _wgslsmith_f_op_f32(max(func_2(vec3<i32>(1i, 1i, -1i), arg_0.a.e).e, _wgslsmith_f_op_f32(abs(arg_0.a.e)))))), true, arg_1, Struct_1(true, ~_wgslsmith_mod_u32(1u, arg_1), global1.x || true, arg_0.a.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -607f))))), arg_0.a.e, arg_0.a);
    var var_1 = func_4(Struct_1(arg_2, var_0.c.e.b & arg_1, select(all(!vec3<bool>(global1.x, true, global1.x)), true | arg_0.a.a, global1.x), _wgslsmith_dot_vec4_u32(min(~u_input.d, vec4<u32>(u_input.b.x, var_0.e.d, arg_1, var_0.e.b)), (vec4<u32>(0u, 63857u, u_input.d.x, 29931u) >> (u_input.d % vec4<u32>(32u))) << (countOneBits(vec4<u32>(1u, 85769u, 58830u, 4294967295u)) % vec4<u32>(32u))), 547f), func_4(func_2(u_input.c, _wgslsmith_f_op_f32(abs(1766f))), true, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1392f, -433f, var_0.e.e, var_0.a.b)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.e, arg_0.a.e, arg_0.a.e, -527f)))), arg_0.a.a))).a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.e, -118f, -2231f, -264f)));
    global1 = select(!vec3<bool>(!(global1.x & false), !arg_0.a.a, var_0.c.c), !select(select(!vec3<bool>(var_1.a, true, false), vec3<bool>(arg_0.a.c, true, false), true), vec3<bool>(true, true, true), global1.x), vec3<bool>(true, !(!(arg_2 | true)), !var_0.a.e.a & !(!var_1.a)));
    var var_2 = ~_wgslsmith_add_u32(var_0.c.e.b, u_input.d.x);
    var_2 = arg_1;
    return arg_0;
}

fn func_1() -> Struct_3 {
    global0 = _wgslsmith_sub_vec4_i32(vec4<i32>(global2.x, u_input.a, global0.x, firstTrailingBit(-15538i)), vec4<i32>(i32(-1i) * -13515i, global2.x, ~_wgslsmith_dot_vec3_i32(max(global0.yxx, vec3<i32>(u_input.c.x, global0.x, 14359i)), u_input.c), u_input.c.x));
    let var_0 = global1.x;
    let var_1 = 1i;
    global2 = -_wgslsmith_sub_vec3_i32(max(vec3<i32>(_wgslsmith_mult_i32(u_input.a, 2147483647i), u_input.a, global0.x), ~(vec3<i32>(12706i, 1i, 1i) | vec3<i32>(-65661i, global0.x, 0i))), select(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, global2.x, global2.x), vec3<i32>(13988i, 18980i, global2.x), vec3<i32>(1i, 3965i, u_input.c.x)), _wgslsmith_div_vec3_i32(u_input.c, global0.zyx)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, global0.x, u_input.c.x), _wgslsmith_div_vec3_i32(vec3<i32>(var_1, global2.x, u_input.a), vec3<i32>(16301i, var_1, -1i))), !(!global1.x)));
    global1 = !vec3<bool>(global1.x, global1.x, any(!vec4<bool>(global1.x, global1.x, false, global1.x)));
    return func_6(func_5(-1i << (firstTrailingBit(u_input.d.x) % 32u), u_input.b.x, func_4(func_2(global0.yww & u_input.c, _wgslsmith_f_op_f32(367f * -1000f)), !global1.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-970f, 171f, 377f, 234f), vec4<f32>(-1392f, 526f, 522f, 436f))))), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(1u, u_input.d.x), u_input.d.x << (u_input.d.x % 32u), ~4294967295u) & u_input.d.wyx, ~vec3<u32>(u_input.b.x ^ u_input.d.x, ~0u, u_input.b.x | u_input.d.x)), global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(abs(4032u), _wgslsmith_mult_u32(~(u_input.b.x & 1u), 0u), global1.x);
    var var_1 = func_1();
    var var_2 = Struct_3(var_1.a);
    var var_3 = Struct_1(func_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.a.e, 147f, -1000f, -1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(180f, -1000f, -1577f, var_1.a.e)))), select(!(!vec4<bool>(var_2.a.c, global1.x, true, global1.x)), vec4<bool>(func_2(u_input.c, 873f).c, global1.x, all(vec4<bool>(global1.x, global1.x, false, true)), any(vec4<bool>(global1.x, global1.x, true, false))), !global1.x && global1.x)), ~var_2.a.d, true, func_6(Struct_3(Struct_1(select(false, false, false), var_1.a.b, all(vec2<bool>(true, var_1.a.c)), 0u, 1052f)), ((40187u | var_0) << (firstTrailingBit(var_0) % 32u)) ^ u_input.b.x, func_1().a.a).a.d, _wgslsmith_f_op_f32(-var_2.a.e));
    var var_4 = 163f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(func_2(vec3<i32>(13138i, 0i, global2.x), var_1.a.e).e)), var_2.a.e)));
}


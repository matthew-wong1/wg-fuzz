struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<f32>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<bool>(true, true, false), 699f, vec3<u32>(11876u, 42097u, 32646u), vec3<i32>(i32(-2147483648), -12929i, 2147483647i), vec2<i32>(2147483647i, -8929i)));

var<private> global1: f32 = 765f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: i32) -> Struct_2 {
    let var_0 = abs(u_input.c.xy);
    var var_1 = _wgslsmith_mod_vec2_u32(~(~(~(~vec2<u32>(3323u, global0.a.c.x)))), ~vec2<u32>(0u, _wgslsmith_dot_vec4_u32(~u_input.a, ~vec4<u32>(arg_1.c.c.x, 61860u, 39143u, u_input.b.x))));
    global1 = _wgslsmith_f_op_f32(min(arg_0.x, arg_1.a.x));
    var var_2 = global0.a.a;
    global1 = _wgslsmith_f_op_f32(1167f * -698f);
    return Struct_2(global0.a);
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> u32 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(142f, global0.a.b))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1814f, arg_0.a.b))))), false, func_2(vec3<f32>(-383f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-415f)), -1384f, global0.a.a.x)), 392f), Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global0.a.b) * vec2<f32>(arg_0.a.b, arg_0.a.b)) - vec2<f32>(global0.a.b, 1262f)), global0.a.a.x, global0.a, global0.a.a.x), vec3<bool>(global0.a.a.x, global0.a.a.x == false, false), -16182i).a, true);
    global1 = 1086f;
    return _wgslsmith_mod_u32(~5306u, ~var_0.c.c.x);
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec4<bool>, arg_3: vec2<bool>) -> Struct_4 {
    let var_0 = Struct_1(!(!(!vec3<bool>(false, true, arg_2.x))), 335f, global0.a.c, select(reverseBits(max(u_input.c.zzx, vec3<i32>(u_input.c.x, global0.a.d.x, u_input.c.x) << (global0.a.c % vec3<u32>(32u)))), countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, global0.a.e.x, 2147483647i), vec3<i32>(-2147483647i, u_input.c.x, 1i)) & global0.a.d), !func_2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-631f, global0.a.b, global0.a.b))), Struct_4(vec2<f32>(398f, -526f), true, global0.a, true), global0.a.a, ~0i).a.a.x), firstLeadingBit(global0.a.e));
    let var_1 = ~12344u;
    var var_2 = arg_3;
    return Struct_4(vec2<f32>(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -898f))), all(!select(vec2<bool>(false, false), select(global0.a.a.zy, arg_3, arg_3), func_2(vec3<f32>(var_0.b, 603f, 1267f), Struct_4(vec2<f32>(469f, -438f), arg_2.x, Struct_1(global0.a.a, 776f, vec3<u32>(arg_0, arg_1, var_0.c.x), vec3<i32>(global0.a.e.x, u_input.c.x, u_input.c.x), vec2<i32>(u_input.c.x, var_0.d.x)), false), vec3<bool>(false, arg_3.x, false), 0i).a.a.zy)), func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1303f, 790f, global0.a.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.b, 1541f, -456f))) * vec3<f32>(-137f, var_0.b, 3686f)), global0.a.a.x)), Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.b, global0.a.b)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(279f, 319f) + vec2<f32>(var_0.b, -1514f))), global0.a.a.x && select(var_0.a.x, arg_2.x, arg_3.x), Struct_1(!var_0.a, -844f, min(vec3<u32>(85987u, 0u, global0.a.c.x), vec3<u32>(1u, arg_1, 0u)), select(vec3<i32>(global0.a.d.x, global0.a.e.x, -2828i), u_input.c.wzy, true), global0.a.e), true), select(!var_0.a, var_0.a, vec3<bool>(all(vec3<bool>(false, var_2.x, true)), true, any(arg_2))), ~func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.b, global0.a.b, -195f) - vec3<f32>(global0.a.b, var_0.b, -767f)), Struct_4(vec2<f32>(var_0.b, -960f), global0.a.a.x, Struct_1(vec3<bool>(false, var_0.a.x, var_0.a.x), 1000f, vec3<u32>(0u, arg_0, var_0.c.x), u_input.c.yww, var_0.d.xz), false), select(arg_2.ywz, global0.a.a, true), i32(-1i) * -7394i).a.e.x).a, !(!any(func_2(vec3<f32>(global0.a.b, var_0.b, -710f), Struct_4(vec2<f32>(-624f, var_0.b), false, Struct_1(vec3<bool>(true, false, false), var_0.b, vec3<u32>(global0.a.c.x, 0u, u_input.a.x), var_0.d, global0.a.e), false), vec3<bool>(var_0.a.x, true, var_2.x), u_input.c.x).a.a.yz)));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = arg_2.c;
    var var_1 = var_0;
    return func_4(global0.a.c.x, ~4294967295u, !vec4<bool>(func_4(9028u, var_1.c.x, vec4<bool>(arg_2.d, false, arg_1.d, global0.a.a.x), arg_1.c.a.zz).c.d.x != -2147483647i, select(false, func_4(0u, arg_1.c.c.x, vec4<bool>(arg_1.b, false, false, var_0.a.x), vec2<bool>(arg_1.b, false)).d, var_0.a.x), select(arg_2.d, var_1.a.x, arg_1.d) && var_1.a.x, any(!arg_2.c.a.yx)), vec2<bool>(func_2(vec3<f32>(_wgslsmith_f_op_f32(step(868f, arg_2.c.b)), 453f, arg_1.a.x), func_4(22302u, 1u, !vec4<bool>(arg_1.c.a.x, false, false, var_0.a.x), vec2<bool>(false, false)), select(func_4(0u, var_1.c.x, vec4<bool>(var_1.a.x, false, global0.a.a.x, true), var_1.a.xz).c.a, !vec3<bool>(true, var_0.a.x, arg_0.x), true), arg_2.c.d.x).a.a.x, any(var_0.a.yy))).c;
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = -42969i;
    global0 = Struct_2(func_5(global0.a.a, Struct_4(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(920f, -2620f) - vec2<f32>(global0.a.b, global0.a.b)))), all(!vec4<bool>(global0.a.a.x, global0.a.a.x, global0.a.a.x, false)), global0.a, global0.a.a.x), func_4(func_3(func_2(vec3<f32>(1457f, global0.a.b, -1075f), Struct_4(vec2<f32>(global0.a.b, global0.a.b), true, Struct_1(global0.a.a, global0.a.b, vec3<u32>(u_input.b.x, 1u, 0u), vec3<i32>(u_input.c.x, u_input.c.x, global0.a.e.x), vec2<i32>(global0.a.e.x, arg_0)), false), global0.a.a, arg_0), ~arg_0), global0.a.c.x, vec4<bool>(true, global0.a.a.x | global0.a.a.x, all(vec3<bool>(global0.a.a.x, true, false)), global0.a.a.x), vec2<bool>(global0.a.a.x, u_input.a.x <= 1u)), vec4<i32>(2147483647i, 2147483647i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), global0.a.d.yz), 0i, _wgslsmith_div_i32(_wgslsmith_sub_i32(arg_0, u_input.c.x), arg_0))));
    var var_1 = global0.a;
    var var_2 = _wgslsmith_dot_vec3_i32(u_input.c.zyz, vec3<i32>(-42849i, ~(-17496i), u_input.c.x) | var_1.d) >= -2147483647i;
    var_1 = Struct_1(select(vec3<bool>(global0.a.a.x | func_5(global0.a.a, Struct_4(vec2<f32>(2234f, 178f), false, Struct_1(global0.a.a, var_1.b, u_input.a.xxx, global0.a.d, var_1.e), true), Struct_4(vec2<f32>(101f, -428f), true, global0.a, global0.a.a.x), vec4<i32>(19484i, var_1.d.x, var_1.d.x, -7479i)).a.x, true, true), !select(func_4(u_input.b.x, var_1.c.x, vec4<bool>(true, false, global0.a.a.x, false), vec2<bool>(var_1.a.x, true)).c.a, !vec3<bool>(var_1.a.x, var_1.a.x, false), var_1.a), func_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(827f, 2182f, var_1.b)))), Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(192f, global0.a.b) + vec2<f32>(var_1.b, -632f)), global0.a.a.x, func_5(var_1.a, Struct_4(vec2<f32>(-1000f, global0.a.b), false, Struct_1(global0.a.a, var_1.b, var_1.c, vec3<i32>(var_1.e.x, -2147483647i, 26201i), u_input.c.zz), global0.a.a.x), Struct_4(vec2<f32>(-1648f, global0.a.b), global0.a.a.x, global0.a, true), u_input.c), true), !var_1.a, _wgslsmith_mod_i32(_wgslsmith_sub_i32(-4795i, u_input.c.x), -arg_0)).a.a), 566f, _wgslsmith_div_vec3_u32(~_wgslsmith_clamp_vec3_u32(~var_1.c, vec3<u32>(0u, 1u, var_1.c.x), vec3<u32>(4294967295u, 1u, global0.a.c.x)), vec3<u32>(reverseBits(func_2(vec3<f32>(712f, global0.a.b, 353f), Struct_4(vec2<f32>(512f, var_1.b), var_1.a.x, global0.a, global0.a.a.x), global0.a.a, arg_0).a.c.x), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-605f, var_1.b, 1137f) * vec3<f32>(768f, -685f, 366f)), func_4(global0.a.c.x, global0.a.c.x, vec4<bool>(false, true, var_1.a.x, true), var_1.a.zx), vec3<bool>(false, true, true), ~arg_0).a.c.x, 62146u)), vec3<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(_wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(var_1.e.x, -97182i, var_1.d.x, 12988i))), vec4<i32>(-u_input.c.x, var_1.e.x, global0.a.d.x, 1i)), -(i32(-1i) * -u_input.c.x), arg_0), ~(-firstLeadingBit(vec2<i32>(-1990i, u_input.c.x) >> (vec2<u32>(var_1.c.x, global0.a.c.x) % vec2<u32>(32u)))));
    return func_2(vec3<f32>(1611f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b * 2393f) - _wgslsmith_div_f32(var_1.b, global0.a.b)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(141f)) * _wgslsmith_f_op_f32(-global0.a.b))), -1000f), Struct_4(func_4(func_2(vec3<f32>(global0.a.b, global0.a.b, var_1.b), func_4(26229u, 4294967295u, vec4<bool>(false, var_1.a.x, global0.a.a.x, true), global0.a.a.yx), func_5(vec3<bool>(false, false, false), Struct_4(vec2<f32>(var_1.b, 449f), true, Struct_1(var_1.a, global0.a.b, u_input.a.wzx, vec3<i32>(arg_0, u_input.c.x, 2574i), vec2<i32>(-68858i, 39792i)), true), Struct_4(vec2<f32>(var_1.b, var_1.b), var_1.a.x, Struct_1(global0.a.a, var_1.b, global0.a.c, vec3<i32>(-12386i, arg_0, arg_0), vec2<i32>(-2147483647i, global0.a.d.x)), true), u_input.c).a, global0.a.d.x).a.c.x, u_input.a.x, vec4<bool>(true, var_1.a.x, false, global0.a.a.x), func_4(~u_input.a.x, global0.a.c.x, !vec4<bool>(false, var_1.a.x, false, var_1.a.x), func_4(var_1.c.x, var_1.c.x, vec4<bool>(false, global0.a.a.x, var_1.a.x, false), vec2<bool>(true, true)).c.a.xz).c.a.yz).a, !func_5(!vec3<bool>(var_1.a.x, global0.a.a.x, true), func_4(global0.a.c.x, 1u, vec4<bool>(false, false, false, var_1.a.x), vec2<bool>(true, global0.a.a.x)), func_4(0u, u_input.b.x, vec4<bool>(global0.a.a.x, var_1.a.x, var_1.a.x, false), var_1.a.yy), _wgslsmith_mult_vec4_i32(u_input.c, vec4<i32>(10225i, -105593i, global0.a.d.x, -2147483647i))).a.x, global0.a, u_input.b.x != ~(~global0.a.c.x)), vec3<bool>(select(!var_1.a.x || (var_1.a.x & false), !select(true, var_1.a.x, var_1.a.x), any(!global0.a.a)), global0.a.a.x, func_2(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.b, 1000f, 240f), vec3<f32>(var_1.b, global0.a.b, -2052f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(268f, 1000f, 1000f) - vec3<f32>(global0.a.b, global0.a.b, 680f))), func_4(4294967295u << (u_input.a.x % 32u), func_3(Struct_2(global0.a), var_1.e.x), !vec4<bool>(var_1.a.x, true, var_1.a.x, global0.a.a.x), vec2<bool>(true, false)), vec3<bool>(true, false, true), -1i).a.a.x), -_wgslsmith_clamp_i32(~(-40524i), u_input.c.x, u_input.c.x >> (var_1.c.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1(global0.a.e.x), global0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1287f, global0.a.b, _wgslsmith_f_op_f32(min(1333f, 426f)), _wgslsmith_f_op_f32(f32(-1f) * -324f))), !(!global0.a.a.x), global0.a.c);
    var var_1 = var_0.a.a.b;
    let var_2 = ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.c.x, 6259u), vec2<u32>(u_input.a.x << (var_0.a.a.c.x % 32u), 4294967295u)), 1u);
    var_0 = Struct_3(var_0.a, func_4(_wgslsmith_add_u32(~24087u, var_2), _wgslsmith_sub_u32(1u, u_input.b.x), select(select(select(vec4<bool>(true, global0.a.a.x, var_0.d, true), vec4<bool>(false, false, false, var_0.d), vec4<bool>(true, var_0.a.a.a.x, var_0.b.a.x, true)), vec4<bool>(true, var_0.d, var_0.a.a.a.x, global0.a.a.x), false), select(!vec4<bool>(true, global0.a.a.x, true, global0.a.a.x), vec4<bool>(global0.a.a.x, global0.a.a.x, var_0.b.a.x, false), !global0.a.a.x), true), func_5(vec3<bool>(!var_0.b.a.x, true, func_1(global0.a.d.x).a.a.x), Struct_4(_wgslsmith_f_op_vec2_f32(-var_0.c.yw), true, global0.a, true), Struct_4(var_0.c.yy, u_input.b.x > u_input.a.x, func_5(vec3<bool>(false, true, true), Struct_4(var_0.c.xz, var_0.b.a.x, var_0.b, global0.a.a.x), Struct_4(var_0.c.xw, global0.a.a.x, Struct_1(vec3<bool>(true, global0.a.a.x, global0.a.a.x), 1000f, global0.a.c, global0.a.d, vec2<i32>(var_0.a.a.e.x, 41245i)), var_0.b.a.x), u_input.c), true), vec4<i32>(i32(-1i) * -2147483647i, -2147483647i, 1757i, global0.a.d.x)).a.zx).c, _wgslsmith_f_op_vec4_f32(-var_0.c), true, ~func_2(vec3<f32>(_wgslsmith_f_op_f32(-global0.a.b), _wgslsmith_f_op_f32(f32(-1f) * -2808f), 515f), func_4(var_0.e.x, ~u_input.a.x, vec4<bool>(var_0.d, var_0.d, true, false), func_2(var_0.c.yxz, Struct_4(vec2<f32>(global0.a.b, var_0.c.x), false, global0.a, global0.a.a.x), vec3<bool>(false, var_0.a.a.a.x, var_0.d), -46995i).a.a.yx), select(vec3<bool>(true, var_0.a.a.a.x, global0.a.a.x), func_4(u_input.a.x, 4294967295u, vec4<bool>(false, var_0.d, false, false), global0.a.a.yx).c.a, var_0.a.a.a), countOneBits(var_0.b.d.x) & (-3585i ^ u_input.c.x)).a.c);
    var var_3 = vec4<i32>(~_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(abs(u_input.c), ~vec4<i32>(u_input.c.x, 43858i, var_0.a.a.d.x, u_input.c.x)), u_input.c), 1i, u_input.c.x, func_1(36227i).a.e.x | _wgslsmith_clamp_i32(2147483647i, func_4(_wgslsmith_sub_u32(var_0.a.a.c.x, u_input.b.x), _wgslsmith_dot_vec2_u32(global0.a.c.yx, global0.a.c.xz), !vec4<bool>(global0.a.a.x, false, var_0.a.a.a.x, false), !vec2<bool>(false, var_0.b.a.x)).c.d.x, 0i));
    var_3 = ~u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, vec4<i32>(_wgslsmith_mult_i32(-8068i, _wgslsmith_sub_i32(-2147483647i, u_input.c.x)), -firstLeadingBit(var_0.a.a.d.x), var_3.x, u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-func_1(-1i).a.b)))), vec4<f32>(global0.a.b, _wgslsmith_f_op_f32(1263f - -225f), _wgslsmith_f_op_f32(global0.a.b * global0.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1247f) * func_1(abs(global0.a.d.x)).a.b)));
}


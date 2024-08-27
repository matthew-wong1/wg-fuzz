struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: vec4<f32>,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(2147483647i, 1i, -578i);

var<private> global1: bool = true;

var<private> global2: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(81733u, 13942u, 4294967295u), vec3<u32>(133331u, 1u, 0u), vec3<u32>(17599u, 0u, 4294967295u), vec3<u32>(1u, 1u, 2135u), vec3<u32>(274u, 0u, 1u), vec3<u32>(1u, 4599u, 1u), vec3<u32>(59053u, 42650u, 4294967295u));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    global2 = array<vec3<u32>, 7>();
    var var_0 = !vec3<bool>(true, all(vec2<bool>(true, u_input.b < global0.x)), true);
    var var_1 = any(!(!vec3<bool>(var_0.x, var_0.x, true))) || true;
    return Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-108f)), arg_0.x)), Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.zy), 1u, _wgslsmith_div_vec4_i32(~vec4<i32>(0i, u_input.b, 1i, u_input.b) << (~vec4<u32>(58103u, u_input.a, 66536u, u_input.a) % vec4<u32>(32u)), -abs(vec4<i32>(global0.x, global0.x, -32457i, global0.x)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x))), select(~min(u_input.a, u_input.a), u_input.a << ((55031u | u_input.a) % 32u), all(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, false, false), var_0.x))), _wgslsmith_div_vec4_i32(~(-vec4<i32>(-1i, -2147483647i, global0.x, u_input.b)), ~vec4<i32>(2147483647i, u_input.b, global0.x, u_input.b))));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_4) -> Struct_1 {
    var var_0 = u_input.a;
    let var_1 = u_input.b;
    global0 = arg_0.b.c.zzy;
    global2 = array<vec3<u32>, 7>();
    var var_2 = Struct_3(arg_2.a, arg_2.a.b, _wgslsmith_dot_vec3_i32(~(~arg_2.a.c.c.zzz), countOneBits(abs(vec3<i32>(0i, 2147483647i, arg_0.b.c.x)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.b.a.x)), arg_2.a.b.a.x, -412f, func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1719f, arg_1, arg_0.a))).a))), true);
    return Struct_1(var_2.a.b.a, 0u, _wgslsmith_mod_vec4_i32(select(-select(vec4<i32>(var_1, 32327i, global0.x, -18114i), arg_2.a.b.c, vec4<bool>(var_2.e, false, true, var_2.e)), _wgslsmith_mult_vec4_i32(~var_2.b.c, vec4<i32>(2147483647i, var_1, u_input.b, 2147483647i) >> (vec4<u32>(u_input.a, 47462u, arg_0.b.b, 4294967295u) % vec4<u32>(32u))), select(vec4<bool>(false, var_2.e, true, var_2.e), !vec4<bool>(var_2.e, var_2.e, false, true), select(vec4<bool>(var_2.e, var_2.e, var_2.e, var_2.e), vec4<bool>(false, false, true, var_2.e), vec4<bool>(var_2.e, var_2.e, true, false)))), var_2.a.c.c));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_4, arg_3: vec3<f32>) -> Struct_4 {
    var var_0 = Struct_3(func_2(vec3<f32>(_wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(f32(-1f) * -242f)), arg_2.a.b.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_3.x)))))), func_2(arg_3).c, arg_2.a.c.c.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 651f, -618f, -1054f) - vec4<f32>(arg_0.a.x, arg_0.a.x, -342f, 1090f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.a, 1382f, 651f, arg_2.a.a))))), true);
    global1 = var_0.e;
    var var_1 = Struct_1(arg_2.a.b.a, ~(~arg_2.a.b.b), vec4<i32>(_wgslsmith_add_i32(-28154i, _wgslsmith_add_i32(arg_0.c.x, arg_0.c.x)), ~(~u_input.b), _wgslsmith_dot_vec4_i32(-arg_2.a.c.c, -arg_2.a.c.c), i32(-1i) * -1i));
    var var_2 = Struct_4(arg_2.a);
    let var_3 = -arg_2.a.b.c.x;
    return arg_2;
}

fn func_1() -> bool {
    let var_0 = func_4(func_3(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(252f, 1602f, 211f)) - vec3<f32>(837f, -1456f, 1000f))), -448f, Struct_4(func_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(680f, -929f, -1113f), vec3<f32>(682f, -244f, 116f), vec3<bool>(false, true, false)))))), func_3(Struct_2(-201f, func_2(vec3<f32>(306f, 1000f, -1053f)).c, Struct_1(vec2<f32>(-142f, 120f), 28843u, vec4<i32>(global0.x, global0.x, u_input.b, u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -563f)), Struct_4(func_2(vec3<f32>(1208f, -649f, -2084f)))).a.x >= -119f, Struct_4(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-3448f, -619f, -1302f) * vec3<f32>(430f, 148f, -570f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(327f, 904f, 1531f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(-585f, 1020f, -1232f), vec3<f32>(1667f, 1672f, -225f)))) + vec3<f32>(1f, 1f, 1f))));
    var var_1 = select(select(vec2<bool>(any(vec4<bool>(true, false, true, true)), !any(vec4<bool>(true, true, true, true))), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, all(vec2<bool>(true, true)))), vec2<bool>(all(vec4<bool>(true, true, true, true)), true), select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), any(vec4<bool>(false, false, true, true))), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(false, true, true, true)), true)), any(vec4<bool>(true, true, true, true))));
    global2 = array<vec3<u32>, 7>();
    global2 = array<vec3<u32>, 7>();
    global1 = !((_wgslsmith_f_op_f32(-var_0.a.a) < _wgslsmith_f_op_f32(-var_0.a.b.a.x)) && (_wgslsmith_f_op_f32(-var_0.a.b.a.x) >= 798f));
    return !((~(~38524u) & var_0.a.c.b) <= 41686u);
}

fn func_5(arg_0: bool, arg_1: vec2<f32>, arg_2: vec4<bool>) -> Struct_3 {
    let var_0 = Struct_2(698f, Struct_1(_wgslsmith_f_op_vec2_f32(arg_1 * arg_1), u_input.a, abs(vec4<i32>(global0.x, -11841i, func_3(Struct_2(arg_1.x, Struct_1(arg_1, 19508u, vec4<i32>(global0.x, global0.x, -2147483647i, global0.x)), Struct_1(arg_1, u_input.a, vec4<i32>(u_input.b, -63254i, 1i, u_input.b))), arg_1.x, Struct_4(Struct_2(-183f, Struct_1(vec2<f32>(-1304f, arg_1.x), u_input.a, vec4<i32>(6322i, u_input.b, u_input.b, u_input.b)), Struct_1(vec2<f32>(1000f, arg_1.x), 37562u, vec4<i32>(-12676i, u_input.b, u_input.b, 1i))))).c.x, firstLeadingBit(3737i)))), func_4(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(370f, 1293f, arg_1.x))).c, func_1(), Struct_4(Struct_2(_wgslsmith_f_op_f32(-arg_1.x), func_3(Struct_2(arg_1.x, Struct_1(vec2<f32>(arg_1.x, -1000f), u_input.a, vec4<i32>(-1483i, 2928i, 2147483647i, -16081i)), Struct_1(arg_1, 64415u, vec4<i32>(2147483647i, 20679i, -23997i, -1i))), arg_1.x, Struct_4(Struct_2(arg_1.x, Struct_1(arg_1, u_input.a, vec4<i32>(u_input.b, -1i, u_input.b, 2147483647i)), Struct_1(arg_1, 4294967295u, vec4<i32>(u_input.b, -42050i, global0.x, -14576i))))), Struct_1(arg_1, u_input.a, vec4<i32>(global0.x, 28222i, u_input.b, u_input.b)))), vec3<f32>(_wgslsmith_f_op_f32(-func_4(Struct_1(arg_1, u_input.a, vec4<i32>(-57947i, 0i, -1i, global0.x)), true, Struct_4(Struct_2(224f, Struct_1(vec2<f32>(-159f, -1559f), u_input.a, vec4<i32>(global0.x, u_input.b, global0.x, u_input.b)), Struct_1(vec2<f32>(-559f, arg_1.x), 0u, vec4<i32>(-2147483647i, 6468i, -39669i, 2147483647i)))), vec3<f32>(-1000f, -130f, 958f)).a.c.a.x), _wgslsmith_f_op_f32(1048f + 416f), _wgslsmith_f_op_f32(arg_1.x - arg_1.x))).a.c);
    var var_1 = !arg_0;
    var_1 = true;
    global0 = abs(vec3<i32>(~u_input.b, u_input.b, -20378i));
    var var_2 = vec3<bool>(arg_0 & false, all(select(vec4<bool>(arg_0, true, false, func_1()), !(!vec4<bool>(false, arg_2.x, arg_0, arg_2.x)), arg_2.x)), true);
    return Struct_3(func_4(var_0.c, false, Struct_4(func_4(func_2(vec3<f32>(-921f, var_0.a, arg_1.x)).c, !var_2.x, func_4(var_0.c, arg_2.x, Struct_4(Struct_2(-609f, Struct_1(vec2<f32>(-1000f, 334f), 6687u, var_0.c.c), Struct_1(vec2<f32>(1179f, var_0.c.a.x), 8671u, var_0.b.c))), vec3<f32>(-948f, -1365f, -411f)), vec3<f32>(var_0.b.a.x, var_0.c.a.x, var_0.a)).a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1569f, arg_1.x, var_0.c.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(619f, 1422f, var_0.a)), any(vec4<bool>(arg_2.x, false, false, arg_0)))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.a.x, -1939f, var_0.b.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, -1144f, var_0.a) + vec3<f32>(-1273f, arg_1.x, -884f)))))).a, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b.a * vec2<f32>(arg_1.x, -149f)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.c.a.x, -163f))))), _wgslsmith_add_u32(u_input.a, u_input.a), countOneBits(vec4<i32>(-43235i, 21650i, var_0.b.c.x, 1181i)) | abs(vec4<i32>(-1i, var_0.b.c.x, global0.x, -2147483647i) & var_0.b.c)), u_input.b | func_4(var_0.c, arg_2.x, func_4(var_0.b, true, func_4(var_0.c, false, Struct_4(Struct_2(arg_1.x, Struct_1(vec2<f32>(arg_1.x, 1353f), var_0.b.b, vec4<i32>(2147483647i, 16870i, 60966i, -2147483647i)), var_0.b)), vec3<f32>(453f, 557f, -214f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1849f, 604f, arg_1.x) * vec3<f32>(var_0.a, var_0.b.a.x, var_0.a))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, var_0.c.a.x, 244f), vec3<f32>(-853f, 1562f, -805f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.x, -252f, var_0.b.a.x), vec3<f32>(318f, arg_1.x, -963f))), true))).a.b.c.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, arg_1.x, 947f, var_0.c.a.x) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1645f, -2108f, var_0.a, arg_1.x)))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.x, arg_1.x, 975f, 704f), vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(true, var_2.x, arg_0, var_2.x))))), any(!arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = func_5(var_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -935f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 1461f, false))))), select(vec4<bool>(var_0, true, false, _wgslsmith_f_op_f32(trunc(433f)) > _wgslsmith_f_op_f32(135f * -1037f)), vec4<bool>(var_0 | var_0, var_0, func_1(), all(vec2<bool>(var_0, true))), true));
    var var_2 = vec3<bool>(_wgslsmith_mult_i32(~_wgslsmith_div_i32(global0.x, -18886i), -global0.x) < global0.x, func_5(func_1(), _wgslsmith_div_vec2_f32(var_1.b.a, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.b.a.x, var_1.b.a.x), var_1.a.b.a))), !vec4<bool>(var_0, true, var_1.e, true)).e, false);
    let var_3 = _wgslsmith_div_vec2_u32(~(~((vec2<u32>(1u, 856u) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) << (countOneBits(vec2<u32>(4294967295u, 32826u)) % vec2<u32>(32u)))), _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(17019u, u_input.a)), ~min(vec2<u32>(u_input.a, 1u), vec2<u32>(57760u, 1u)) >> (~_wgslsmith_div_vec2_u32(vec2<u32>(18195u, 1u), vec2<u32>(u_input.a, var_1.b.b)) % vec2<u32>(32u)), ~vec2<u32>(u_input.a, 57600u)));
    var var_4 = select(vec3<i32>(0i, ~(-global0.x) | func_4(func_2(vec3<f32>(-417f, 920f, -2611f)).c, u_input.a > u_input.a, func_4(var_1.a.c, var_1.e, Struct_4(Struct_2(var_1.d.x, var_1.a.c, var_1.b)), vec3<f32>(var_1.b.a.x, var_1.b.a.x, -1539f)), _wgslsmith_f_op_vec3_f32(var_1.d.xzx * var_1.d.ywy)).a.b.c.x, global0.x), _wgslsmith_add_vec3_i32(-vec3<i32>(-1i, 36085i, global0.x), _wgslsmith_mod_vec3_i32(vec3<i32>(var_1.b.c.x, var_1.a.c.c.x, var_1.b.c.x) & var_1.a.c.c.zwx, vec3<i32>(global0.x, var_1.b.c.x, global0.x))) ^ -var_1.b.c.xyz, !(!select(select(vec3<bool>(var_0, true, true), vec3<bool>(false, false, false), var_2.x), select(vec3<bool>(var_1.e, var_0, var_2.x), vec3<bool>(false, true, true), vec3<bool>(var_0, var_1.e, var_0)), select(vec3<bool>(var_2.x, true, true), vec3<bool>(var_0, true, var_0), var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(~((~global2[_wgslsmith_index_u32(4294967295u, 7u)] | max(global2[_wgslsmith_index_u32(var_3.x, 7u)], global2[_wgslsmith_index_u32(1u, 7u)])) >> (~select(global2[_wgslsmith_index_u32(18061u, 7u)], global2[_wgslsmith_index_u32(1u, 7u)], var_1.e) % vec3<u32>(32u))), u_input.a, var_1.b.c.xxz, _wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.a, 4294967295u, 45328u, var_3.x)) ^ ~select(vec4<u32>(u_input.a, 1u, var_3.x, u_input.a), vec4<u32>(var_3.x, u_input.a, var_3.x, u_input.a), vec4<bool>(false, true, var_1.e, true)), _wgslsmith_add_vec4_u32((vec4<u32>(1u, 0u, u_input.a, 0u) ^ vec4<u32>(var_1.a.c.b, u_input.a, var_3.x, u_input.a)) << (reverseBits(vec4<u32>(71741u, 1u, u_input.a, var_3.x)) % vec4<u32>(32u)), select(vec4<u32>(u_input.a, 4294967295u, var_1.a.c.b, var_1.b.b), _wgslsmith_mod_vec4_u32(vec4<u32>(46797u, 1u, u_input.a, 4294967295u), vec4<u32>(var_3.x, var_3.x, var_3.x, 37226u)), select(vec4<bool>(var_0, var_2.x, var_2.x, true), vec4<bool>(false, false, true, false), vec4<bool>(var_0, var_0, var_1.e, true))))));
}


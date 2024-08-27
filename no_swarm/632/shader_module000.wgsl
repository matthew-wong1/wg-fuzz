struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: i32,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(Struct_1(vec4<f32>(1000f, 417f, 1394f, 1506f)), true), Struct_2(Struct_1(vec4<f32>(863f, 161f, -657f, 122f)), false), true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec2<bool>) -> bool {
    return false && any(vec4<bool>(false, !any(vec3<bool>(false, true, true)), !arg_3.x, true));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_5, arg_2: Struct_5, arg_3: bool) -> Struct_5 {
    global0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.e.a, global0.a.a.a.x, global0.b.a.a.x, -781f)), global0.b.a.a))), all(vec2<bool>(false, true))), Struct_2(arg_1.a.a, global0.a.b), !(!global0.c) == true);
    global0 = Struct_3(global0.a, Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_2.b.a.a, vec4<f32>(-1250f, -216f, arg_1.a.a.a.x, 189f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_0.a.x, 1568f, arg_0.a.x) - arg_1.a.a.a))), arg_1.b.b), false);
    var var_0 = Struct_3(Struct_2(arg_2.a.a, true), arg_2.c, !all(vec2<bool>(func_3(Struct_2(Struct_1(vec4<f32>(-270f, arg_2.e.a, arg_1.e.a, 253f)), arg_3), Struct_1(arg_1.a.a.a), arg_0.a, vec2<bool>(arg_1.b.b, true)), global0.b.a.a.x <= global0.b.a.a.x)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a.a.x, arg_2.a.a.a.x, var_0.a.a.a.x, -655f)))));
    var var_2 = Struct_2(Struct_1(vec4<f32>(-1104f, 1448f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.a.a.x - 357f) + _wgslsmith_f_op_f32(select(var_1.a.x, arg_0.a.x, var_0.a.b))), -573f)), false);
    return arg_2;
}

fn func_4(arg_0: Struct_5, arg_1: Struct_5, arg_2: Struct_2) -> Struct_1 {
    var var_0 = global0.a.a;
    var var_1 = !arg_1.a.b || select(global0.a.b && any(vec2<bool>(arg_1.c.b, false)), false, _wgslsmith_f_op_f32(arg_2.a.a.x * _wgslsmith_div_f32(var_0.a.x, global0.b.a.a.x)) < 1000f);
    let var_2 = arg_0.b.a.a.x;
    let var_3 = arg_2.b;
    var_1 = true;
    return func_2(func_2(arg_0.b.a, arg_0, arg_0, func_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-496f, arg_0.a.a.a.x, 1158f, arg_0.b.a.a.x))), arg_1, func_2(Struct_1(vec4<f32>(arg_1.b.a.a.x, arg_0.a.a.a.x, 653f, var_0.a.x)), arg_1, Struct_5(Struct_2(arg_0.b.a, arg_0.b.b), arg_2, global0.b, -2147483647i, arg_0.e), var_3), all(vec3<bool>(true, var_3, false))).a.b).a.a, func_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-653f, -340f, 1551f, arg_1.c.a.a.x))) * vec4<f32>(-1045f, arg_2.a.a.x, arg_1.a.a.a.x, global0.a.a.a.x))), func_2(func_2(arg_0.b.a, func_2(Struct_1(arg_0.b.a.a), Struct_5(global0.b, arg_1.b, Struct_2(Struct_1(vec4<f32>(1198f, arg_2.a.a.x, -1351f, arg_1.a.a.a.x)), true), 0i, Struct_4(global0.b.a.a.x)), arg_1, var_3), func_2(arg_0.c.a, arg_1, arg_1, arg_0.b.b), true).b.a, Struct_5(arg_0.c, Struct_2(Struct_1(arg_2.a.a), false), func_2(arg_1.b.a, arg_0, arg_1, false).a, firstLeadingBit(2147483647i), func_2(Struct_1(vec4<f32>(arg_0.c.a.a.x, var_0.a.x, global0.a.a.a.x, 1338f)), arg_1, Struct_5(Struct_2(arg_0.b.a, global0.a.b), global0.b, arg_0.a, 2147483647i, Struct_4(-633f)), true).e), Struct_5(Struct_2(global0.b.a, global0.a.b), Struct_2(arg_0.c.a, global0.b.b), func_2(arg_2.a, Struct_5(Struct_2(arg_2.a, false), Struct_2(arg_1.b.a, false), Struct_2(Struct_1(vec4<f32>(var_2, -1000f, var_2, -896f)), var_3), arg_1.d, arg_1.e), Struct_5(Struct_2(Struct_1(vec4<f32>(arg_2.a.a.x, arg_0.c.a.a.x, arg_2.a.a.x, arg_0.a.a.a.x)), arg_1.b.b), Struct_2(arg_0.b.a, false), Struct_2(global0.b.a, arg_2.b), -2147483647i, arg_1.e), true).a, u_input.c.x ^ u_input.b, arg_0.e), func_2(func_2(Struct_1(global0.a.a.a), arg_1, Struct_5(arg_0.a, Struct_2(arg_1.a.a, true), Struct_2(Struct_1(vec4<f32>(var_2, 187f, 679f, arg_1.b.a.a.x)), true), 13518i, Struct_4(-950f)), var_3).b.a, arg_0, arg_0, var_3).c.b), func_2(arg_1.a.a, arg_1, Struct_5(func_2(Struct_1(vec4<f32>(arg_1.c.a.a.x, 1011f, -399f, 962f)), Struct_5(Struct_2(Struct_1(var_0.a), true), Struct_2(global0.b.a, true), global0.a, arg_0.d, Struct_4(arg_1.c.a.a.x)), Struct_5(Struct_2(arg_2.a, true), arg_1.c, Struct_2(global0.a.a, true), 29017i, Struct_4(var_2)), false).a, global0.a, func_2(Struct_1(vec4<f32>(var_2, global0.b.a.a.x, var_2, 516f)), Struct_5(Struct_2(Struct_1(vec4<f32>(var_2, -166f, arg_1.c.a.a.x, arg_0.c.a.a.x)), arg_1.a.b), arg_0.c, arg_2, arg_0.d, arg_0.e), arg_0, false).c, abs(u_input.d.x), Struct_4(-188f)), false), false), func_2(func_2(func_2(Struct_1(global0.a.a.a), arg_1, arg_1, true).b.a, Struct_5(arg_2, func_2(Struct_1(arg_1.a.a.a), arg_1, Struct_5(arg_2, Struct_2(Struct_1(arg_1.c.a.a), var_3), arg_1.b, 12050i, Struct_4(-1727f)), arg_0.b.b).a, Struct_2(Struct_1(arg_1.b.a.a), false), countOneBits(-2147483647i), arg_0.e), func_2(Struct_1(vec4<f32>(var_0.a.x, arg_1.a.a.a.x, global0.b.a.a.x, -1033f)), arg_1, arg_1, false), any(select(vec2<bool>(global0.c, false), vec2<bool>(false, true), true))).c.a, Struct_5(arg_2, func_2(Struct_1(var_0.a), Struct_5(Struct_2(arg_1.a.a, true), Struct_2(Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, 626f, var_2)), arg_1.c.b), arg_2, u_input.b, arg_0.e), Struct_5(arg_1.c, Struct_2(Struct_1(vec4<f32>(1096f, 1996f, arg_1.a.a.a.x, arg_1.c.a.a.x)), false), Struct_2(Struct_1(vec4<f32>(arg_2.a.a.x, arg_2.a.a.x, global0.b.a.a.x, 2358f)), false), arg_1.d, arg_0.e), arg_2.b).b, Struct_2(Struct_1(vec4<f32>(-1000f, arg_0.e.a, arg_0.c.a.a.x, arg_0.b.a.a.x)), global0.b.b), 2147483647i, arg_1.e), func_2(arg_1.b.a, func_2(arg_2.a, func_2(arg_0.b.a, Struct_5(arg_2, Struct_2(Struct_1(vec4<f32>(-1076f, 803f, var_2, var_2)), var_3), arg_1.c, u_input.c.x, Struct_4(-1000f)), Struct_5(Struct_2(arg_2.a, true), global0.b, Struct_2(arg_2.a, arg_1.c.b), 0i, arg_1.e), false), func_2(Struct_1(vec4<f32>(arg_0.b.a.a.x, arg_0.b.a.a.x, var_2, 588f)), arg_1, Struct_5(Struct_2(Struct_1(arg_0.b.a.a), var_3), Struct_2(Struct_1(vec4<f32>(-922f, var_0.a.x, var_2, global0.b.a.a.x)), true), arg_0.c, -55168i, Struct_4(var_0.a.x)), true), all(vec2<bool>(true, arg_0.c.b))), func_2(Struct_1(arg_1.b.a.a), Struct_5(arg_0.b, arg_2, Struct_2(Struct_1(arg_2.a.a), false), arg_0.d, arg_0.e), arg_0, var_3), true), ~_wgslsmith_div_i32(arg_1.d, 1i) == u_input.c.x), true).c.a;
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_5) -> Struct_2 {
    let var_0 = select(!(!vec2<bool>(false, all(vec4<bool>(false, arg_1, arg_0.b, true)))), !select(select(!vec2<bool>(false, arg_0.b), select(vec2<bool>(arg_0.b, false), vec2<bool>(false, false), arg_2.a.b), 4294967295u >= u_input.a.x), select(select(vec2<bool>(false, arg_1), vec2<bool>(false, arg_1), true), !vec2<bool>(arg_1, arg_2.c.b), true), select(vec2<bool>(false, arg_1), vec2<bool>(arg_2.c.b, arg_2.b.b), !vec2<bool>(arg_0.b, true))), true);
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -872f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_2.c.a.a.x, 392f))))));
    let var_2 = Struct_3(Struct_2(func_2(Struct_1(vec4<f32>(var_1, global0.a.a.a.x, 1000f, arg_0.a.a.x)), func_2(global0.a.a, Struct_5(Struct_2(Struct_1(global0.b.a.a), false), arg_0, Struct_2(Struct_1(arg_2.b.a.a), arg_2.a.b), 0i, Struct_4(-695f)), func_2(Struct_1(vec4<f32>(805f, 704f, var_1, global0.a.a.a.x)), Struct_5(global0.b, global0.b, Struct_2(Struct_1(arg_2.a.a.a), false), arg_2.d, Struct_4(113f)), Struct_5(Struct_2(Struct_1(arg_2.a.a.a), false), Struct_2(Struct_1(global0.a.a.a), false), arg_2.b, u_input.e, Struct_4(arg_0.a.a.x)), arg_0.b), -24752i == u_input.d.x), arg_2, !var_0.x & arg_0.b).a.a, global0.b.b), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -2044f, -432f, 152f) - vec4<f32>(-1330f, var_1, arg_2.c.a.a.x, var_1)))), true), true);
    global0 = Struct_3(func_2(Struct_1(func_2(Struct_1(vec4<f32>(arg_2.a.a.a.x, arg_0.a.a.x, -1962f, var_2.a.a.a.x)), Struct_5(Struct_2(Struct_1(global0.b.a.a), false), var_2.a, var_2.b, 21754i, arg_2.e), Struct_5(Struct_2(Struct_1(arg_0.a.a), true), Struct_2(Struct_1(arg_2.a.a.a), arg_2.c.b), var_2.b, arg_2.d, arg_2.e), arg_1).a.a.a), arg_2, Struct_5(Struct_2(arg_2.a.a, true), global0.a, func_2(func_4(Struct_5(var_2.b, arg_2.c, Struct_2(arg_0.a, false), arg_2.d, arg_2.e), arg_2, global0.b), Struct_5(Struct_2(Struct_1(var_2.a.a.a), false), Struct_2(Struct_1(vec4<f32>(var_1, global0.a.a.a.x, arg_0.a.a.x, global0.a.a.a.x)), true), var_2.a, arg_2.d, arg_2.e), arg_2, var_0.x | arg_1).c, arg_2.d, arg_2.e), arg_2.a.b).b, arg_2.b, true);
    let var_3 = var_0;
    return Struct_2(func_4(Struct_5(global0.a, global0.b, Struct_2(func_4(arg_2, arg_2, Struct_2(global0.b.a, true)), !var_0.x), i32(-1i) * -2147483647i, Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1716f))), Struct_5(arg_2.b, arg_0, Struct_2(Struct_1(vec4<f32>(var_2.a.a.a.x, arg_2.e.a, -561f, var_1)), true), u_input.e ^ (u_input.b ^ -11235i), func_2(arg_2.c.a, Struct_5(var_2.a, arg_0, global0.b, -12062i, Struct_4(-1812f)), Struct_5(arg_2.c, Struct_2(Struct_1(arg_0.a.a), true), arg_2.c, 51528i, Struct_4(arg_0.a.a.x)), any(vec2<bool>(var_2.a.b, var_0.x))).e), Struct_2(arg_2.a.a, arg_0.b)), var_0.x);
}

fn func_1() -> vec3<i32> {
    let var_0 = global0.a.a.a.yxy;
    global0 = Struct_3(global0.a, func_5(Struct_2(func_4(func_2(Struct_1(vec4<f32>(181f, -642f, -542f, var_0.x)), Struct_5(global0.a, Struct_2(Struct_1(vec4<f32>(var_0.x, global0.b.a.a.x, var_0.x, 269f)), global0.c), global0.b, 1i, Struct_4(-2574f)), Struct_5(global0.b, global0.a, Struct_2(Struct_1(global0.a.a.a), global0.c), u_input.c.x, Struct_4(global0.a.a.a.x)), global0.a.b), func_2(Struct_1(vec4<f32>(-1000f, global0.a.a.a.x, -1864f, var_0.x)), Struct_5(Struct_2(Struct_1(global0.b.a.a), global0.a.b), Struct_2(Struct_1(vec4<f32>(var_0.x, global0.a.a.a.x, -781f, 1000f)), global0.a.b), Struct_2(global0.b.a, false), u_input.b, Struct_4(var_0.x)), Struct_5(global0.a, global0.b, global0.a, 2147483647i, Struct_4(-142f)), false), global0.a), any(select(vec4<bool>(false, true, false, global0.a.b), vec4<bool>(false, false, global0.a.b, true), vec4<bool>(global0.a.b, false, global0.c, global0.a.b)))), _wgslsmith_sub_u32(u_input.a.x, ~u_input.a.x) == _wgslsmith_div_u32(1u, u_input.a.x), func_2(func_4(func_2(global0.a.a, Struct_5(global0.b, Struct_2(Struct_1(global0.a.a.a), false), global0.a, u_input.e, Struct_4(global0.a.a.a.x)), Struct_5(Struct_2(Struct_1(vec4<f32>(global0.b.a.a.x, -1512f, 1111f, global0.a.a.a.x)), global0.c), global0.a, Struct_2(global0.b.a, false), -28674i, Struct_4(var_0.x)), false), Struct_5(Struct_2(Struct_1(global0.b.a.a), global0.b.b), Struct_2(global0.b.a, false), global0.b, -1i, Struct_4(var_0.x)), Struct_2(global0.a.a, false)), Struct_5(global0.a, Struct_2(Struct_1(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)), global0.b.b), Struct_2(global0.a.a, global0.a.b), 2147483647i, Struct_4(3189f)), func_2(Struct_1(global0.b.a.a), func_2(global0.b.a, Struct_5(global0.b, Struct_2(Struct_1(vec4<f32>(global0.a.a.a.x, global0.a.a.a.x, -1729f, 342f)), global0.a.b), Struct_2(global0.a.a, true), u_input.d.x, Struct_4(global0.b.a.a.x)), Struct_5(global0.a, Struct_2(Struct_1(vec4<f32>(var_0.x, var_0.x, global0.b.a.a.x, global0.b.a.a.x)), true), Struct_2(global0.a.a, true), 38404i, Struct_4(108f)), true), func_2(Struct_1(vec4<f32>(383f, global0.a.a.a.x, 290f, global0.b.a.a.x)), Struct_5(global0.b, global0.a, global0.b, u_input.e, Struct_4(-363f)), Struct_5(global0.b, global0.a, Struct_2(global0.a.a, global0.c), u_input.e, Struct_4(-975f)), false), true), all(vec4<bool>(global0.c, false, false, true)))), global0.c & false);
    var var_1 = max(u_input.d.zyy, max(firstLeadingBit(vec3<i32>(_wgslsmith_mod_i32(1i, 33976i), ~41174i, u_input.b)), vec3<i32>(-(~(-14213i)), u_input.c.x, firstTrailingBit(u_input.d.x) & 1357i)));
    let var_2 = _wgslsmith_add_vec3_u32(~(~abs(~vec3<u32>(1u, 1u, u_input.a.x))), select(~vec3<u32>(abs(43926u), 79047u, u_input.a.x), ~(~vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)), !vec3<bool>(global0.a.b, false, false)));
    var_1 = vec3<i32>(~11987i, -1i, _wgslsmith_dot_vec4_i32(-u_input.d, u_input.d));
    return _wgslsmith_clamp_vec3_i32(vec3<i32>(48090i, _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, u_input.b, u_input.e), 0i), -_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.d.yzx, u_input.d.yxx), vec3<i32>(u_input.b, -19566i, -14486i)) >> (vec3<u32>(_wgslsmith_mod_u32(var_2.x, ~var_2.x), ~firstLeadingBit(10422u), 12946u) % vec3<u32>(32u)), vec3<i32>(-_wgslsmith_dot_vec2_i32(-u_input.d.wz, firstLeadingBit(u_input.c)), max(1i, ~var_1.x), var_1.x));
}

fn func_6(arg_0: vec3<i32>, arg_1: vec2<f32>) -> vec4<i32> {
    return firstTrailingBit(u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(26615u, 4294967295u);
    var var_1 = true;
    var var_2 = vec3<bool>(!global0.c, true, all(!(!(!vec3<bool>(false, true, global0.a.b)))));
    var var_3 = Struct_4(-159f);
    let var_4 = _wgslsmith_mod_i32(1i, u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(func_6(func_1(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a, -1829f) * global0.b.a.a.wy)))), var_3.a, firstLeadingBit(u_input.d | _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(29254i, -4734i, u_input.e, var_4), u_input.d), vec4<i32>(var_4, 22488i, -7261i, u_input.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_3.a, _wgslsmith_f_op_f32(-870f * var_3.a))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1133f * global0.a.a.a.x))) + global0.a.a.a.x));
}


struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: f32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<f32>,
    d: u32,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: i32) -> vec4<i32> {
    var var_0 = Struct_4(Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1351f, global0.x, global0.x, -834f), vec4<f32>(1488f, 709f, global0.x, global0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -101f, global0.x, global0.x)))), -618f, !(!(1000f > global0.x)), 801f), vec2<i32>(28969i, -35638i), Struct_3(!vec3<bool>(false, any(vec4<bool>(false, false, false, false)), all(vec4<bool>(false, false, true, false))), Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-331f, -440f, global0.x, -2268f), vec4<f32>(-341f, global0.x, global0.x, global0.x))))), -570f, select(true, all(vec2<bool>(false, false)), true), 1000f), global0.xxy, _wgslsmith_mod_u32(~_wgslsmith_add_u32(21590u, 23704u), firstTrailingBit(~34651u)), vec3<bool>(true, false, global0.x != 879f)));
    var var_1 = Struct_2(all(select(var_0.a.a.yy, select(var_0.c.b.a.xw, vec2<bool>(false, true), !vec2<bool>(true, var_0.a.a.x)), select(var_0.c.b.a.yx, !var_0.a.a.zy, all(vec2<bool>(var_0.c.e.x, false))))), -_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(-2147483647i, 20214i, u_input.b, 33083i)), -vec4<i32>(var_0.b.x, -13277i, 20505i, 0i)), abs(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1, var_0.b.x, arg_0.x, arg_0.x), vec4<i32>(var_0.b.x, -2147483647i, 36113i, 1i)))), Struct_1(select(var_0.a.a, vec4<bool>(true, var_0.a.d, all(vec3<bool>(true, var_0.c.a.x, var_0.a.a.x)), any(vec4<bool>(false, false, true, var_0.c.e.x))), all(select(var_0.a.a.www, vec3<bool>(false, true, true), var_0.c.e.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(1274f)), _wgslsmith_div_f32(994f, global0.x), -1030f, 187f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), !(!(!var_0.a.a.x)), var_0.c.b.c));
    var_0 = Struct_4(Struct_1(var_1.c.a, var_1.c.b, var_1.c.b.x, any(select(vec4<bool>(false, true, true, false), !vec4<bool>(var_1.c.a.x, var_0.a.a.x, true, var_0.a.a.x), false)), -690f), vec2<i32>(~26657i, -4837i), var_0.c);
    var var_2 = var_0.c;
    var_1 = Struct_2(true, var_1.b, var_1.c);
    return var_1.b;
}

fn func_2() -> Struct_1 {
    global0 = vec4<f32>(-1993f, -1807f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.x);
    let var_0 = Struct_2(false, max(func_3(vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, u_input.a, 1i), min(u_input.a, 39035i)), -1i), _wgslsmith_div_vec4_i32(func_3(vec2<i32>(u_input.b, -22349i), 15930i), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.a, 21721i, u_input.a), vec4<i32>(-1i, 37752i, 347i, u_input.a))) | ~(~vec4<i32>(3248i, u_input.b, 1i, u_input.b))), Struct_1(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), select(true, false, false)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), global0.x, _wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(step(global0.x, 423f))), global0.x), 1054f, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(global0.x, 453f)), 102f, true)))));
    global0 = var_0.c.b;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x)));
    let var_2 = _wgslsmith_mult_vec2_u32(~(~firstTrailingBit(vec2<u32>(74775u, 1u) << (vec2<u32>(0u, 0u) % vec2<u32>(32u)))), select(firstTrailingBit(select(vec2<u32>(49571u, 1u), vec2<u32>(28302u, 29867u), var_0.c.d)) ^ _wgslsmith_mod_vec2_u32(min(vec2<u32>(0u, 0u), vec2<u32>(46125u, 60059u)), vec2<u32>(1u, 1u)), ~vec2<u32>(_wgslsmith_mult_u32(4294967295u, 1u), ~0u), (_wgslsmith_mult_i32(var_0.b.x, 23166i) & min(-95825i, var_0.b.x)) > min(~var_0.b.x, var_0.b.x)));
    return var_0.c;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec2<i32>) -> vec4<f32> {
    global0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, global0.x) + _wgslsmith_f_op_f32(abs(1083f)))), arg_2.a.c), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-649f)), _wgslsmith_f_op_f32(925f - arg_2.a.b.x))), arg_2.a.b.x);
    var var_0 = abs(vec3<u32>(4294967295u, 21847u, ~arg_0.d ^ (0u << (arg_2.c.d % 32u))) & vec3<u32>(firstLeadingBit(firstLeadingBit(arg_0.d)), 4294967295u >> (arg_0.d % 32u), ~(~arg_0.d)));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.b * _wgslsmith_f_op_vec4_f32(-arg_0.b.b)) * arg_0.b.b) * arg_1.b);
    var var_1 = Struct_4(func_2(), vec2<i32>(-2147483647i, ~1i), arg_2.c);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_0.b.b, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(var_1.c.b.b)))), !func_2().a))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_0.b.b + arg_1.b), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, 193f, global0.x, -1000f))), !vec4<bool>(true, true, var_1.c.e.x, var_1.a.a.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(550f + -2069f), _wgslsmith_f_op_f32(-704f * -276f), _wgslsmith_f_op_f32(round(1233f)), _wgslsmith_f_op_f32(arg_0.c.x + -1262f)))));
    return vec4<f32>(-1000f, _wgslsmith_f_op_f32(581f * _wgslsmith_f_op_f32(978f * arg_2.c.b.b.x)), _wgslsmith_f_op_f32(func_2().e + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.b.b.x)), var_1.c.b.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0.x)), -1469f))) + _wgslsmith_f_op_f32(arg_1.b.x + _wgslsmith_f_op_f32(-arg_1.e))));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_1) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_3(select(arg_0.c.a.zyx, select(vec3<bool>(true, true, arg_3.a.x), arg_3.a.ywy, vec3<bool>(arg_3.d, true, arg_3.a.x)), select(vec3<bool>(arg_3.a.x, arg_0.a, arg_3.a.x), vec3<bool>(false, arg_0.a, false), arg_3.a.x)), func_2(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.c.e, -1000f, 625f), arg_1.xyy)), _wgslsmith_add_u32(select(20196u, 36522u, arg_3.d), 1u), !arg_3.a.ywz), arg_3, Struct_4(arg_0.c, func_3(min(vec2<i32>(-2967i, u_input.b), arg_0.b.zz), min(-2147483647i, 33757i)).zy, Struct_3(arg_3.a.www, Struct_1(vec4<bool>(false, arg_0.a, arg_3.a.x, true), arg_0.c.b, 211f, arg_3.a.x, arg_3.e), _wgslsmith_f_op_vec3_f32(round(arg_0.c.b.wxx)), ~4294967295u, select(arg_0.c.a.zyy, vec3<bool>(true, arg_0.a, arg_0.a), arg_3.d))), vec2<i32>(arg_0.b.x, ~(-30085i)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1 - arg_3.b), vec4<f32>(arg_0.c.c, -924f, arg_0.c.c, _wgslsmith_f_op_f32(-global0.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3.b))));
    let var_0 = arg_0.c;
    var var_1 = vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(~u_input.b, arg_2, arg_0.b.x), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-18054i, arg_2, arg_2, 1i), arg_0.b), _wgslsmith_add_i32(-2147483647i, arg_0.b.x), -arg_0.b.x)), -(_wgslsmith_clamp_vec3_i32(arg_0.b.www, arg_0.b.xxz, vec3<i32>(-20712i, arg_0.b.x, 0i)) << (vec3<u32>(1330u, 1u, 18191u) % vec3<u32>(32u)))), reverseBits(arg_0.b.x), countOneBits(51111i), arg_2);
    let var_2 = Struct_4(Struct_1(!(!var_0.a), var_0.b, 1f, arg_3.a.x, _wgslsmith_f_op_f32(f32(-1f) * -168f)), _wgslsmith_mod_vec2_i32(var_1.ww, select(~select(var_1.wz, arg_0.b.xz, arg_0.c.a.zz), ~(-arg_0.b.yw), _wgslsmith_f_op_f32(344f - arg_1.x) > _wgslsmith_f_op_f32(select(319f, 1326f, arg_3.a.x)))), Struct_3(arg_3.a.xwx, Struct_1(vec4<bool>(true, !var_0.d, true, var_0.c < global0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0.c.b, arg_3.b)), -350f, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.c - global0.x))), _wgslsmith_div_vec3_f32(global0.wwy, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, var_0.e, -645f)))), _wgslsmith_add_u32(abs(0u) >> (1u % 32u), 1u), func_2().a.yyz));
    var var_3 = Struct_4(Struct_1(!select(!var_2.a.a, vec4<bool>(var_2.a.d, var_2.c.a.x, true, false), select(vec4<bool>(var_2.a.d, arg_0.a, false, false), arg_0.c.a, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1.x * -505f), _wgslsmith_f_op_f32(-1961f * 423f), _wgslsmith_f_op_f32(arg_1.x * -1701f), _wgslsmith_f_op_f32(arg_1.x - 163f))), arg_3.c, !(arg_3.c > _wgslsmith_f_op_f32(-arg_0.c.e)), _wgslsmith_f_op_f32(-1084f * 1474f)), -min(var_2.b, -(vec2<i32>(arg_0.b.x, 1i) << (vec2<u32>(31188u, var_2.c.d) % vec2<u32>(32u)))), Struct_3(select(arg_0.c.a.zxw, var_2.c.b.a.xyx, (arg_3.d & var_2.c.e.x) & !var_0.d), arg_3, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e, arg_0.c.c, var_0.b.x) - arg_3.b.wzy)) * vec3<f32>(var_0.c, 396f, var_2.c.c.x)), _wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_mod_u32(var_2.c.d, var_2.c.d)), var_2.c.d, _wgslsmith_clamp_u32(1u, abs(var_2.c.d), 1u)), func_2().a.zwy));
    return arg_0;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> bool {
    var var_0 = arg_0.c.a.x;
    let var_1 = -(arg_0.b.xwy ^ vec3<i32>(1i, 28007i, -u_input.a & _wgslsmith_mult_i32(43037i, u_input.a)));
    return false;
}

fn func_6(arg_0: bool, arg_1: vec3<u32>, arg_2: vec3<bool>) -> Struct_3 {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1914f + global0.x), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x - -125f), 1897f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1023f, global0.x, global0.x, 602f), vec4<f32>(-1149f, global0.x, global0.x, -613f), false)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(460f, -639f, -1472f, global0.x), vec4<f32>(global0.x, -1731f, 1311f, 1040f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_3(vec3<bool>(arg_0, arg_2.x, true), Struct_1(vec4<bool>(arg_0, arg_0, arg_2.x, true), vec4<f32>(436f, 812f, global0.x, global0.x), -1699f, true, -118f), global0.yzy, arg_1.x, arg_2), func_2(), Struct_4(Struct_1(vec4<bool>(arg_2.x, arg_0, true, false), vec4<f32>(global0.x, -1023f, 327f, 1000f), global0.x, arg_2.x, -1671f), vec2<i32>(1i, -2147483647i), Struct_3(vec3<bool>(arg_2.x, arg_0, true), Struct_1(vec4<bool>(arg_0, true, true, false), vec4<f32>(global0.x, global0.x, global0.x, global0.x), global0.x, arg_2.x, global0.x), vec3<f32>(-288f, 752f, 821f), arg_1.x, vec3<bool>(false, arg_0, arg_0))), vec2<i32>(u_input.a, -1i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(456f, global0.x, global0.x, 656f)) - vec4<f32>(977f, global0.x, -736f, global0.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(func_2().b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(684f, global0.x, -1547f, global0.x)), !vec4<bool>(false, false, false, arg_0))))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - global0.x), 1138f, _wgslsmith_f_op_f32(max(170f, -192f)));
    let var_0 = any(arg_2);
    global0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(-1264f, global0.x)))), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.x, -181f)) * -725f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -456f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 508f, -453f))))));
    let var_1 = vec3<bool>(var_0, !(!(!(u_input.a <= u_input.a))), false);
    return Struct_3(!(!func_2().a.wxz), Struct_1(vec4<bool>(!all(arg_2), true, true, func_1(func_1(Struct_2(false, vec4<i32>(u_input.a, -41033i, u_input.b, u_input.a), Struct_1(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false), vec4<f32>(-515f, -769f, 536f, -385f), -847f, arg_2.x, 1200f)), vec4<f32>(global0.x, global0.x, -2141f, global0.x), 2147483647i, Struct_1(vec4<bool>(var_0, arg_0, false, var_1.x), vec4<f32>(global0.x, -1902f, global0.x, global0.x), global0.x, true, global0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x) - vec4<f32>(-595f, global0.x, 259f, 602f)), reverseBits(u_input.a), Struct_1(vec4<bool>(true, true, false, false), vec4<f32>(-234f, 1106f, 109f, global0.x), global0.x, var_1.x, -310f)).a), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 421f, -1000f, -1860f)), _wgslsmith_f_op_vec4_f32(func_4(Struct_3(vec3<bool>(var_1.x, var_1.x, false), Struct_1(vec4<bool>(var_0, true, var_1.x, arg_2.x), vec4<f32>(global0.x, global0.x, global0.x, global0.x), 1790f, false, global0.x), vec3<f32>(global0.x, 980f, global0.x), arg_1.x, var_1), Struct_1(vec4<bool>(var_1.x, true, false, true), vec4<f32>(-840f, global0.x, global0.x, global0.x), -1107f, var_0, global0.x), Struct_4(Struct_1(vec4<bool>(true, arg_2.x, true, arg_2.x), vec4<f32>(global0.x, 1465f, 1000f, 1022f), global0.x, true, global0.x), vec2<i32>(-49243i, 0i), Struct_3(vec3<bool>(arg_2.x, var_0, false), Struct_1(vec4<bool>(true, true, var_0, false), vec4<f32>(global0.x, -1130f, global0.x, global0.x), global0.x, false, -786f), global0.xzw, arg_1.x, vec3<bool>(arg_2.x, arg_2.x, false))), vec2<i32>(12691i, u_input.a))))))), -308f, func_1(Struct_2(false, vec4<i32>(-19191i, u_input.a, 2147483647i, u_input.b), func_2()), vec4<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(-global0.x), -566f), -12133i, func_1(func_1(Struct_2(var_1.x, vec4<i32>(0i, 16540i, 3695i, u_input.a), Struct_1(vec4<bool>(true, false, true, true), vec4<f32>(global0.x, -753f, -213f, -1124f), global0.x, var_0, global0.x)), vec4<f32>(-862f, 934f, -131f, 1176f), -61751i, Struct_1(vec4<bool>(arg_0, true, var_1.x, var_1.x), vec4<f32>(global0.x, 1007f, 2403f, -774f), global0.x, arg_2.x, 308f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -413f, 172f, -2210f)), 11377i, Struct_1(vec4<bool>(arg_2.x, arg_2.x, true, var_1.x), vec4<f32>(1190f, -411f, -446f, -415f), -2840f, var_0, global0.x)).c).a, global0.x), global0.xyz, ~_wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(arg_1.x), arg_1.x), vec2<u32>(~0u, 59363u)), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * -1524f)), _wgslsmith_f_op_f32(min(-1889f, _wgslsmith_f_op_f32(115f - global0.x))), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(abs(-560f))))));
    var var_0 = func_6(!(any(vec2<bool>(false, false)) & func_5(func_1(Struct_2(true, vec4<i32>(32291i, u_input.a, 3211i, 0i), Struct_1(vec4<bool>(false, false, false, false), vec4<f32>(global0.x, -1173f, global0.x, global0.x), global0.x, true, global0.x)), vec4<f32>(global0.x, -1083f, global0.x, global0.x), 2147483647i, Struct_1(vec4<bool>(false, true, false, false), vec4<f32>(global0.x, 2459f, -120f, 1446f), global0.x, true, global0.x)), Struct_3(vec3<bool>(false, true, true), Struct_1(vec4<bool>(false, true, false, true), vec4<f32>(global0.x, global0.x, global0.x, global0.x), global0.x, true, global0.x), global0.wxw, 22806u, vec3<bool>(false, false, false)))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, ~71665u, ~41369u), firstTrailingBit(~vec3<u32>(0u, 81327u, 5508u))), !(!vec3<bool>(false, all(vec2<bool>(true, false)), true)));
    var var_1 = vec3<f32>(1044f, var_0.c.x, var_0.b.c);
    var var_2 = min(vec3<i32>(-1i, ~(i32(-1i) * -u_input.b), u_input.b), vec3<i32>(_wgslsmith_dot_vec4_i32(func_3(func_3(vec2<i32>(u_input.a, u_input.a), 2147483647i).xy, _wgslsmith_mult_i32(u_input.b, u_input.a)), select(vec4<i32>(-54278i, -14035i, u_input.a, -53492i), vec4<i32>(7239i, 0i, u_input.b, 988i), true)), abs(abs(-2147483647i)) | ~(-u_input.a), reverseBits(firstLeadingBit(u_input.a))));
    let var_3 = Struct_4(var_0.b, var_2.xx, Struct_3(!(!select(vec3<bool>(var_0.a.x, var_0.a.x, var_0.b.d), var_0.a, true)), var_0.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1383f)), _wgslsmith_f_op_f32(f32(-1f) * -1231f), _wgslsmith_f_op_f32(-2049f - 1943f)), 75489u, func_6(any(vec4<bool>(var_0.a.x, true, true, var_0.e.x)), ~(~vec3<u32>(38987u, 0u, var_0.d)), select(!var_0.b.a.zwy, !var_0.e, true)).a));
    let var_4 = Struct_4(func_1(func_1(Struct_2(true, vec4<i32>(2147483647i, -26259i, var_2.x, var_2.x) << (vec4<u32>(11374u, var_0.d, 45809u, 0u) % vec4<u32>(32u)), func_6(true, vec3<u32>(var_0.d, var_0.d, var_3.c.d), var_3.a.a.wxz).b), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.c.x, var_1.x, -950f, global0.x), _wgslsmith_f_op_vec4_f32(exp2(var_3.c.b.b)), func_1(Struct_2(var_3.c.a.x, vec4<i32>(var_2.x, -39490i, -1i, -25396i), Struct_1(vec4<bool>(var_3.c.e.x, false, var_3.a.d, true), vec4<f32>(-960f, var_1.x, var_1.x, var_1.x), var_0.b.c, var_3.c.b.a.x, global0.x)), var_3.a.b, var_2.x, var_3.c.b).c.a.x)), firstLeadingBit(0i | u_input.a), Struct_1(vec4<bool>(false, var_0.e.x, true, true), vec4<f32>(var_1.x, var_3.c.b.b.x, global0.x, var_1.x), -720f, var_3.a.a.x == var_0.e.x, global0.x)), var_0.b.b, _wgslsmith_dot_vec2_i32(-vec2<i32>(var_3.b.x, -2147483647i), vec2<i32>(-1i) * -vec2<i32>(var_3.b.x, 1i)), Struct_1(select(!var_3.c.b.a, var_3.c.b.a, select(var_3.c.b.a, vec4<bool>(true, true, var_3.c.e.x, var_0.a.x), vec4<bool>(var_3.c.b.d, var_3.a.d, var_0.b.d, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1274f, -1316f, 1161f, global0.x) + vec4<f32>(847f, var_3.a.c, -1409f, var_1.x))), var_3.a.b.x, false, _wgslsmith_div_f32(-470f, var_0.b.e))).c, vec2<i32>(u_input.a, -_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-26600i, 10139i, 20657i), vec3<i32>(var_3.b.x, var_3.b.x, -1i)), vec3<i32>(-27816i, var_2.x, -82221i))), var_3.c);
    var_0 = func_6(var_0.b.a.x, firstLeadingBit(vec3<u32>(max(var_3.c.d, 4294967295u), 51003u, 4294967295u)), !func_1(Struct_2(any(var_0.b.a), firstLeadingBit(vec4<i32>(-8368i, 11657i, -10387i, 2147483647i)), func_1(Struct_2(var_4.a.a.x, vec4<i32>(var_3.b.x, 18190i, var_2.x, 42054i), Struct_1(var_4.c.b.a, var_4.c.b.b, var_3.a.e, var_0.e.x, var_0.c.x)), var_0.b.b, var_2.x, var_4.c.b).c), var_0.b.b, -10941i, func_2()).c.a.xzy);
    var_2 = ~(-(func_1(Struct_2(var_4.a.d, vec4<i32>(u_input.a, var_3.b.x, var_2.x, var_3.b.x), Struct_1(vec4<bool>(false, var_4.a.a.x, var_4.c.b.a.x, true), var_4.c.b.b, global0.x, var_0.b.a.x, var_3.c.c.x)), func_2().b, var_4.b.x & var_3.b.x, var_3.a).b.yyy >> (vec3<u32>(25719u, var_3.c.d, 51979u | var_4.c.d) % vec3<u32>(32u))));
    let var_5 = (var_0.d >> (0u % 32u)) << (var_3.c.d % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(func_1(func_1(func_1(func_1(Struct_2(var_4.c.e.x, vec4<i32>(u_input.b, u_input.a, 466i, var_2.x), Struct_1(vec4<bool>(var_3.a.d, var_0.e.x, var_0.e.x, true), var_0.b.b, var_0.c.x, false, var_3.a.b.x)), var_4.c.b.b, -7438i, Struct_1(var_4.c.b.a, vec4<f32>(201f, global0.x, var_0.b.c, 799f), 1000f, true, -979f)), var_0.b.b, 10972i, var_0.b), var_3.a.b, max(u_input.a, firstLeadingBit(-2882i)), Struct_1(select(var_4.a.a, var_0.b.a, var_3.a.a), _wgslsmith_div_vec4_f32(var_4.a.b, var_4.c.b.b), _wgslsmith_f_op_f32(step(-1592f, -830f)), func_2().d, _wgslsmith_f_op_f32(-var_3.a.b.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-281f, -975f, -1937f, -1031f) + var_4.a.b), ~1i, var_0.b).b.x);
}


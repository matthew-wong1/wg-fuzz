struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: bool,
    b: vec4<f32>,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1() -> i32 {
    return u_input.c;
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = arg_2;
    let var_1 = Struct_4(_wgslsmith_add_vec2_i32(min(vec2<i32>(-1i) * -u_input.e.xy, u_input.e.wy), u_input.e.xx));
    var var_2 = _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(var_0.b.b, ~var_0.a.b), 1390u);
    var_2 = _wgslsmith_clamp_u32(abs(arg_0), _wgslsmith_add_u32(~0u, 0u), _wgslsmith_add_u32(~41946u, ~(~max(arg_0, 57694u))));
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_1)), -334f)), 1378f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1, arg_2.b.c))), arg_2.b.c))));
    return select(var_0.c, select(!select(vec2<bool>(var_0.c.x, true), select(vec2<bool>(false, var_0.c.x), vec2<bool>(true, true), vec2<bool>(false, arg_2.c.x)), vec2<bool>(true, var_0.c.x)), !select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(var_0.c.x || any(vec2<bool>(true, var_0.c.x)), select(arg_0 >= arg_0, false, true))), var_0.c);
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<f32>(-146f, -1316f, -129f, _wgslsmith_f_op_f32(-491f + 801f));
    var var_1 = Struct_4(_wgslsmith_mod_vec2_i32(select(u_input.e.wx, u_input.e.yx, select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), true)), _wgslsmith_mod_vec2_i32(u_input.e.zy, -(u_input.e.yy ^ vec2<i32>(-2147483647i, -2147483647i)))));
    let var_2 = any(!func_3(4294967295u, -914f, Struct_2(Struct_1(91733u, vec4<u32>(u_input.d.x, 0u, 0u, 13832u), -1000f), Struct_1(u_input.d.x, vec4<u32>(17796u, u_input.d.x, u_input.a, 0u), -1203f), vec2<bool>(true, true), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 118816u, u_input.a), vec3<u32>(1u, u_input.d.x, u_input.a)))));
    let var_3 = _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(var_1.a, -u_input.e.wy), _wgslsmith_sub_vec2_i32(max(~u_input.e.zz, u_input.e.ww), firstLeadingBit(abs(u_input.e.wx))) << (vec2<u32>(~(~4294967295u), ~1u >> (1u % 32u)) % vec2<u32>(32u)));
    var var_4 = 11243i;
    return Struct_1(5194u, ~(~(~vec4<u32>(u_input.a, 1u, 25110u, 1u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(floor(1391f)))), _wgslsmith_f_op_f32(abs(var_0.x)))));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: Struct_2) -> Struct_5 {
    let var_0 = Struct_3(-(~u_input.e.xxw) >> (arg_2.b.b.zyy % vec3<u32>(32u)), u_input.e.zyx, Struct_2(Struct_1(arg_0, vec4<u32>(arg_0, arg_0, arg_0, 9880u) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(52827u, 74486u, u_input.a, 0u), arg_2.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.c * -2692f))), func_2(), select(vec2<bool>(all(vec4<bool>(arg_2.c.x, false, arg_2.c.x, true)), !arg_2.c.x), vec2<bool>(true, true && arg_2.c.x), (arg_2.c.x || false) | all(vec3<bool>(arg_2.c.x, arg_2.c.x, true))), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.d.x, arg_2.a.a), arg_2.b.b.xzy), 33437u)));
    var var_1 = Struct_5(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(322f, arg_2.a.c, var_0.c.a.c, arg_2.a.c))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-230f, _wgslsmith_f_op_f32(trunc(-665f)), var_0.c.b.c, arg_2.a.c))), -2147483647i, var_0);
    var var_2 = arg_1;
    var var_3 = arg_1;
    let var_4 = _wgslsmith_dot_vec4_u32(var_0.c.b.b, _wgslsmith_mod_vec4_u32(~vec4<u32>(~25305u, ~1u, var_0.c.b.a, 65634u), vec4<u32>(1u, var_1.d.c.a.a, ~4294967295u, ~firstLeadingBit(24999u))));
    return Struct_5(any(!var_0.c.c), _wgslsmith_div_vec4_f32(var_1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(882f, -1343f, var_0.c.b.c, -1574f)))) - vec4<f32>(_wgslsmith_f_op_f32(min(927f, -811f)), 410f, var_0.c.b.c, arg_2.a.c))), var_3.a.x, Struct_3(var_0.a, _wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.c, var_3.a.x, -200i), vec3<i32>(var_0.a.x, min(36326i, 2147483647i), var_2.a.x), ~vec3<i32>(var_1.c, -1i, -16482i)), Struct_2(Struct_1(~u_input.d.x, var_1.d.c.b.b, -1112f), Struct_1(0u, firstTrailingBit(arg_2.a.b), 1f), arg_2.c, 20869u)));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: Struct_5) -> Struct_4 {
    let var_0 = vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x));
    let var_1 = Struct_5(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1188f - 374f))))) <= -1634f, _wgslsmith_f_op_vec4_f32(step(arg_2.b, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-1248f)), _wgslsmith_f_op_f32(exp2(arg_2.b.x)), _wgslsmith_f_op_f32(floor(-283f)), _wgslsmith_f_op_f32(round(arg_2.d.c.a.c))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_2.b), _wgslsmith_f_op_vec4_f32(-arg_2.b), true))))), abs(-_wgslsmith_clamp_i32(u_input.e.x, -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a.x, arg_1.a.x, arg_2.c), arg_2.d.b))), func_4(_wgslsmith_sub_u32(~(~arg_2.d.c.b.b.x), u_input.d.x), arg_1, arg_2.d.c).d);
    let var_2 = arg_2.d.c;
    var var_3 = vec4<u32>(arg_2.d.c.b.b.x, ~var_2.b.b.x, ~select(arg_2.d.c.d, var_1.d.c.d, 22046u > (var_1.d.c.d << (var_1.d.c.a.b.x % 32u))), var_1.d.c.d);
    let var_4 = var_1.d.c.b.a;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<u32>(~abs(select(36685u, 0u, false)), ~u_input.d.x);
    var var_1 = vec4<u32>(select(~u_input.a, var_0.x, all(vec3<bool>(u_input.b > u_input.b, true, false))), _wgslsmith_div_u32(~u_input.a, ~14215u), var_0.x, (_wgslsmith_div_u32(var_0.x, ~var_0.x) ^ (countOneBits(u_input.d.x) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.d.x, u_input.d.x), vec3<u32>(u_input.d.x, 17676u, 2872u)) % 32u))) >> (firstTrailingBit(var_0.x) % 32u));
    var var_2 = func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 568f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-630f, 627f) - vec2<f32>(1000f, 1244f))))), Struct_4(vec2<i32>(-2147483647i, _wgslsmith_add_i32(0i, ~9175i))), func_4(u_input.a, Struct_4(vec2<i32>(func_1(), u_input.c)), Struct_2(func_2(), Struct_1(72038u, ~vec4<u32>(u_input.d.x, 0u, var_1.x, 10923u), _wgslsmith_f_op_f32(-1730f + 1191f)), vec2<bool>(139763u < var_1.x, true), var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 1u, 58935u, var_0.x) | abs(vec4<u32>(8587u, u_input.d.x, var_1.x, u_input.d.x)), select(vec4<u32>(var_1.x, 3176u, var_0.x, var_1.x) | vec4<u32>(1u, u_input.d.x, 70887u, 12686u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, var_1.x, 6262u, var_0.x), vec4<u32>(var_1.x, 19932u, 57927u, 1u)), vec4<bool>(true, true, true, true))), var_1.yzx);
}


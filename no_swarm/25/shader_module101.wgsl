struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: f32,
    d: vec4<bool>,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: i32,
    e: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-145f, 1212f, -1475f);

var<private> global1: f32 = 1021f;

var<private> global2: vec2<u32>;

var<private> global3: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: i32) -> bool {
    global3 = Struct_1(~(~1u), ~arg_2, u_input.c.x, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(global3.d.x, -574f)), _wgslsmith_f_op_f32(global0.x + global3.d.x), any(vec3<bool>(true, false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.d.x))))));
    let var_0 = Struct_5(-576f, true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1960f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(237f + -1773f) + _wgslsmith_f_op_f32(f32(-1f) * -717f)), -616f, all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true))))), true)));
    global1 = global3.d.x;
    let var_1 = _wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.d.x) + var_0.c)));
    let var_2 = max((1i >> (global3.a % 32u)) << ((_wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, arg_1.x), _wgslsmith_div_u32(u_input.a, arg_1.x)) | global2.x) % 32u), i32(-1i) * -abs(global3.c));
    return true;
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: u32) -> bool {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(932f, 1792f)) + -1315f);
    return !func_3(u_input.c.yy, vec3<u32>(_wgslsmith_div_u32(arg_2, ~global3.a), ~arg_2, 55182u), _wgslsmith_add_i32(-20431i, -27301i));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = !select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(arg_1.d.x, false), !vec2<bool>(arg_1.d.x, arg_1.d.x)), arg_1.d.yx, all(arg_1.d.zxy)), select(arg_1.d.xz, select(vec2<bool>(arg_1.d.x, true), arg_1.d.zy, vec2<bool>(true, true)), true));
    let var_1 = global3.d.x;
    var var_2 = select(!arg_1.d, !(!vec4<bool>(-304f <= arg_1.c, var_0.x, arg_0.x < 67331u, all(vec2<bool>(true, true)))), select(select(!(!vec4<bool>(false, var_0.x, var_0.x, var_0.x)), select(vec4<bool>(true, arg_1.d.x, var_0.x, var_0.x), arg_1.d, true), arg_1.d), arg_1.d, false));
    return Struct_2(Struct_1(arg_2.x, ~(~global3.c), -49946i, vec2<f32>(global3.d.x, -1000f)), arg_1.d, vec2<i32>(u_input.c.x, _wgslsmith_mult_i32(-20230i, u_input.c.x)) >> (arg_0.zz % vec2<u32>(32u)), Struct_1(arg_0.x, reverseBits(_wgslsmith_dot_vec3_i32(u_input.c, ~vec3<i32>(global3.b, u_input.c.x, -10464i))), 37006i, vec2<f32>(_wgslsmith_f_op_f32(step(245f, _wgslsmith_f_op_f32(round(global3.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -967f)))));
}

fn func_1(arg_0: Struct_5) -> u32 {
    var var_0 = Struct_4(func_4(_wgslsmith_div_vec3_u32(~(~vec3<u32>(global2.x, 4294967295u, 1u)), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 0u, global2.x), vec3<u32>(global3.a, 1u, global2.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(global3.a, global2.x, global3.a), vec3<u32>(0u, u_input.b, global3.a)))), Struct_3(-(~vec3<i32>(u_input.c.x, 0i, global3.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global3.d.x, -395f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1206f + 1000f) + arg_0.c), vec4<bool>(arg_0.b, true, u_input.c.x <= u_input.c.x, func_2(arg_0.c, vec4<u32>(0u, global2.x, 73927u, global2.x), 0u)), global0.x), vec4<u32>(0u, 4294967295u, _wgslsmith_div_u32(max(global2.x, global3.a), _wgslsmith_div_u32(global2.x, u_input.a)), ~global2.x)), func_4(~(~(~vec3<u32>(25512u, global3.a, 18889u))), Struct_3(_wgslsmith_clamp_vec3_i32(firstTrailingBit(u_input.c), vec3<i32>(global3.c, -1i, global3.b), firstLeadingBit(u_input.c)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(936f, -705f, 1392f))), vec3<f32>(-1187f, global3.d.x, 629f)), _wgslsmith_f_op_f32(-func_4(vec3<u32>(4294967295u, 14831u, 1u), Struct_3(vec3<i32>(global3.c, global3.b, global3.b), vec3<f32>(global3.d.x, global0.x, 313f), -1735f, vec4<bool>(true, true, arg_0.b, true), global0.x), vec4<u32>(4752u, u_input.b, 42112u, u_input.b)).d.d.x), select(vec4<bool>(arg_0.b, true, false, arg_0.b), select(vec4<bool>(arg_0.b, true, arg_0.b, false), vec4<bool>(false, false, false, arg_0.b), arg_0.b), select(vec4<bool>(false, false, arg_0.b, arg_0.b), vec4<bool>(arg_0.b, true, false, arg_0.b), true)), _wgslsmith_f_op_f32(-arg_0.a)), ~(~vec4<u32>(1u, global2.x, u_input.b, 20033u)) & _wgslsmith_div_vec4_u32(vec4<u32>(global2.x, 13888u, 30135u, 4056u), reverseBits(vec4<u32>(0u, 0u, 33941u, 7376u)))).d, arg_0.b, -1i, func_4(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(global3.a, 51414u, 4294967295u)), reverseBits(~vec3<u32>(u_input.b, global2.x, global2.x))), Struct_3(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, global3.b, -15594i), vec3<i32>(9386i, global3.b, global3.b), vec3<i32>(u_input.c.x, global3.c, global3.c))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, global0.x, global3.d.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.d.x, arg_0.a, -745f), vec3<f32>(-1273f, arg_0.c, global0.x), false)))), _wgslsmith_f_op_f32(199f + _wgslsmith_f_op_f32(min(855f, 457f))), func_4(abs(vec3<u32>(u_input.a, 68260u, 50723u)), Struct_3(u_input.c, vec3<f32>(arg_0.a, global0.x, 1990f), 494f, vec4<bool>(arg_0.b, arg_0.b, true, true), global3.d.x), ~vec4<u32>(u_input.b, global3.a, global3.a, u_input.b)).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + 903f))), min(vec4<u32>(75830u, global3.a | 4294967295u, ~global3.a, 4294967295u), reverseBits(vec4<u32>(global2.x, 34667u, 0u, 74233u)))));
    var_0 = Struct_4(var_0.a, Struct_1(53834u, 1i, abs(-6032i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.a.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(807f * var_0.e.a.d.x) * 1000f))), var_0.a.b.x, _wgslsmith_add_i32(firstTrailingBit(-1i), -1i), var_0.a);
    let var_1 = (abs(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, -1i, 46888i, u_input.c.x), vec4<i32>(-1i, var_0.d, var_0.a.d.b, global3.b)), select(vec4<i32>(-1i, 10989i, global3.b, global3.c), vec4<i32>(var_0.d, var_0.d, -34490i, var_0.a.a.c), true))) << (_wgslsmith_mult_vec4_u32(~abs(vec4<u32>(var_0.a.d.a, global2.x, 37135u, 46291u)), vec4<u32>(abs(1u), 0u, _wgslsmith_mod_u32(4294967295u, 1u), u_input.a)) % vec4<u32>(32u))) >> (min(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, global3.a, global2.x, var_0.b.a), ~vec4<u32>(global3.a, 1u, var_0.a.d.a, u_input.b))), ~(~vec4<u32>(1u, 113483u, global3.a, u_input.b)) << (select(vec4<u32>(global3.a, 100242u, global3.a, 4294967295u), ~vec4<u32>(global3.a, global2.x, 0u, u_input.a), select(var_0.a.b, vec4<bool>(false, true, true, var_0.e.b.x), true)) % vec4<u32>(32u))) % vec4<u32>(32u));
    global3 = func_4(~vec3<u32>(global3.a | ~11453u, ~(~global2.x), 1u), Struct_3(u_input.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(exp2(global3.d.x)), _wgslsmith_f_op_f32(abs(global0.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -327f))))), select(var_0.e.b, vec4<bool>(arg_0.b, var_0.e.b.x, false, var_0.c), false), 1000f), ~select(firstLeadingBit(select(vec4<u32>(global3.a, var_0.e.d.a, 14906u, 0u), vec4<u32>(global2.x, 0u, 1u, global3.a), var_0.a.b.x)), vec4<u32>(37283u, ~1u, _wgslsmith_sub_u32(0u, global2.x), ~global3.a), var_0.a.b)).a;
    var var_2 = ~19964u;
    return 4294967295u;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_1) -> Struct_4 {
    let var_0 = abs(vec3<u32>(40620u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_3.a, 1u) ^ vec3<u32>(41541u, global3.a, 4294967295u), arg_1.wxx) ^ _wgslsmith_div_u32(~global2.x, min(1u, 3259u)), 0u));
    let var_1 = countOneBits(~firstLeadingBit(global3.b & 1i));
    global3 = func_4(arg_1.zyx, Struct_3(firstLeadingBit(abs(_wgslsmith_add_vec3_i32(u_input.c, u_input.c))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-722f, -566f, global0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(990f, -1000f, global3.d.x))))), global3.d.x, select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true))), vec4<bool>(true, global3.d.x == -1227f, true, -1949f <= arg_3.d.x), any(vec2<bool>(true, true))), global3.d.x), arg_1).d;
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.d.x * 135f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.d.x, 1000f) * _wgslsmith_f_op_f32(global0.x - global0.x))))));
    let var_2 = _wgslsmith_f_op_f32(floor(459f));
    return Struct_4(func_4(_wgslsmith_div_vec3_u32(arg_1.yzy, min(abs(arg_1.zyx), var_0)), Struct_3(_wgslsmith_mult_vec3_i32(-vec3<i32>(var_1, arg_0.c, 1i), firstTrailingBit(vec3<i32>(0i, global3.b, arg_2))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(720f, 1953f, 983f))), _wgslsmith_f_op_f32(arg_3.d.x * -331f), func_4(~var_0, Struct_3(u_input.c, vec3<f32>(global0.x, global3.d.x, global0.x), global3.d.x, vec4<bool>(true, false, false, true), 195f), vec4<u32>(arg_0.a, 100462u, 14565u, global3.a)).b, global3.d.x), _wgslsmith_add_vec4_u32(vec4<u32>(firstLeadingBit(26587u), _wgslsmith_clamp_u32(20420u, var_0.x, 4294967295u), 41812u, _wgslsmith_div_u32(63459u, global2.x)), arg_1)), func_4(countOneBits(~(~var_0)), Struct_3(min(~u_input.c, firstTrailingBit(vec3<i32>(arg_0.c, arg_0.c, var_1))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(407f, var_2, var_2))) + vec3<f32>(global0.x, 1203f, 1562f)), arg_3.d.x, vec4<bool>(true, true, true, true), 488f), ~(vec4<u32>(16322u, 6656u, arg_0.a, arg_3.a) & _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 1506u, 0u, global2.x), arg_1))).d, !(u_input.b < (u_input.b & (43077u >> (global2.x % 32u)))), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1, u_input.c.x), vec2<i32>(-22302i, u_input.c.x), vec2<i32>(0i, arg_0.b)), u_input.c.yy), select(-vec2<i32>(arg_0.b, arg_3.b), ~vec2<i32>(arg_0.c, 0i), select(vec2<bool>(true, false), vec2<bool>(false, false), false)), u_input.c.zx), u_input.c.xx), func_4(~(~_wgslsmith_clamp_vec3_u32(arg_1.xxz, var_0, vec3<u32>(global3.a, 0u, 1u))), Struct_3(select(_wgslsmith_div_vec3_i32(u_input.c, u_input.c), -vec3<i32>(arg_2, -25882i, 0i), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-710f, 2373f, 1796f), vec3<f32>(global0.x, -377f, arg_3.d.x), vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(-global0.x), select(func_4(vec3<u32>(0u, 52201u, arg_0.a), Struct_3(u_input.c, vec3<f32>(-254f, -979f, var_2), global0.x, vec4<bool>(false, true, true, false), 1000f), vec4<u32>(4294967295u, 5554u, 0u, u_input.a)).b, select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true)), u_input.a >= 60785u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-393f * global0.x), arg_3.d.x))), vec4<u32>(0u, var_0.x, func_4(var_0 & vec3<u32>(103u, global2.x, 34003u), Struct_3(u_input.c, vec3<f32>(var_2, var_2, 1476f), -147f, vec4<bool>(true, false, false, true), global0.x), ~arg_1).d.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 4294967295u, 1u), _wgslsmith_add_vec3_u32(var_0, arg_1.xyy)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(~max(~vec2<i32>(25648i, global3.b), _wgslsmith_mult_vec2_i32(u_input.c.xz, u_input.c.xx)) ^ u_input.c.xz, _wgslsmith_add_vec2_i32(u_input.c.zx, _wgslsmith_div_vec2_i32(vec2<i32>(global3.b, 2147483647i), u_input.c.yz) & u_input.c.xx));
    var var_1 = func_5(Struct_1(firstLeadingBit(global2.x), max(~(i32(-1i) * -2147483647i), global3.b & ~u_input.c.x), 0i, vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -717f))), _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_mod_vec4_u32(vec4<u32>(global2.x, ~func_1(Struct_5(global0.x, true, 1596f)), 0u, max(u_input.b << (u_input.b % 32u), ~u_input.a)), vec4<u32>(19465u, global2.x, u_input.a, _wgslsmith_mult_u32(_wgslsmith_div_u32(54723u, global2.x), global3.a << (1u % 32u)))), -15869i, func_4(min(vec3<u32>(4294967295u, func_1(Struct_5(global3.d.x, true, -1588f)), global2.x), vec3<u32>(select(global3.a, global2.x, false), global2.x, abs(4294967295u))), Struct_3(select(firstLeadingBit(u_input.c), u_input.c | vec3<i32>(-1i, -14487i, u_input.c.x), all(vec2<bool>(false, false))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, 1393f, global3.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.d.x - 1000f) * _wgslsmith_f_op_f32(-global3.d.x)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, false)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -1278f)))), ~(~(vec4<u32>(u_input.b, global3.a, global2.x, 46151u) & vec4<u32>(27053u, u_input.b, global2.x, 7177u)))).d);
    global3 = Struct_1(29565u, -4774i, -2147483647i, vec2<f32>(global3.d.x, _wgslsmith_f_op_f32(216f + _wgslsmith_f_op_f32(-func_5(Struct_1(u_input.a, 2147483647i, 1i, vec2<f32>(var_1.b.d.x, -561f)), vec4<u32>(var_1.e.a.a, u_input.a, global3.a, u_input.a), 42419i, Struct_1(4294967295u, u_input.c.x, var_0.x, vec2<f32>(-1041f, global0.x))).b.d.x))));
    var_1 = Struct_4(Struct_2(func_4(vec3<u32>(63159u, _wgslsmith_add_u32(12274u, 1u), _wgslsmith_sub_u32(global3.a, 0u)), Struct_3(firstLeadingBit(vec3<i32>(34770i, var_0.x, -28713i)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-762f, var_1.e.a.d.x, -1347f), vec3<f32>(-343f, -625f, -343f), var_1.a.b.xwx)), global0.x, vec4<bool>(var_1.a.b.x, true, false, false), _wgslsmith_f_op_f32(var_1.a.d.d.x * 761f)), vec4<u32>(global2.x, 21820u, 0u, var_1.a.a.a) & vec4<u32>(u_input.a, 43637u, 50224u, 68059u)).d, var_1.a.b, var_0, func_5(Struct_1(max(global2.x, u_input.b), -1227i, 1i, _wgslsmith_div_vec2_f32(vec2<f32>(216f, global0.x), global0.yx)), ~vec4<u32>(global2.x, global2.x, 1u, global3.a) ^ vec4<u32>(u_input.a, global3.a, global3.a, 28641u), max(abs(24674i), 25071i), var_1.a.d).e.d), var_1.b, false, _wgslsmith_mod_i32(-u_input.c.x, var_0.x), Struct_2(Struct_1(_wgslsmith_add_u32(var_1.a.d.a, global2.x), firstTrailingBit(41966i), global3.b, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1545f, -375f) * vec2<f32>(global0.x, -2926f))))), !vec4<bool>(true, !var_1.c, true, true), u_input.c.zz, Struct_1(1u, 2147483647i, abs(56803i), vec2<f32>(global0.x, var_1.e.a.d.x))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.d.d.x, _wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(-545f, global3.d.x)), func_5(Struct_1(46071u, 2147483647i, var_1.a.a.b, vec2<f32>(var_1.b.d.x, global3.d.x)), vec4<u32>(11457u, global3.a, var_1.b.a, 4294967295u) | vec4<u32>(1u, global3.a, u_input.b, global3.a), -1i >> (0u % 32u), func_5(var_1.b, vec4<u32>(9080u, var_1.a.a.a, global2.x, 11579u), 1i, var_1.a.d).e.a).b.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * 1000f)) + vec4<f32>(_wgslsmith_f_op_f32(max(global0.x, global3.d.x)), 1695f, var_1.a.d.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1328f))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-813f)), global3.d.x, global3.d.x, _wgslsmith_f_op_f32(f32(-1f) * -565f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 849f, var_1.e.d.d.x, 721f) - vec4<f32>(-1000f, -261f, global0.x, global3.d.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 503f, var_1.b.d.x, 752f)))))));
    var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-704f, var_2.x, _wgslsmith_f_op_f32(-global3.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) * _wgslsmith_f_op_f32(max(var_2.x, 1490f)))));
    var var_3 = !var_1.e.b.zzz;
    var var_4 = -1246f;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(func_4(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 61331u, global2.x), vec3<u32>(global2.x, 4294967295u, 0u)), ~vec3<u32>(26449u, 18744u, 0u), ~vec3<u32>(20587u, 1u, global2.x)), Struct_3(u_input.c, vec3<f32>(var_2.x, var_1.e.a.d.x, -258f), _wgslsmith_div_f32(var_2.x, -1022f), var_1.a.b, var_2.x), max(~vec4<u32>(global2.x, 94551u, u_input.a, global2.x), ~vec4<u32>(0u, global3.a, 4294967295u, var_1.b.a))).a.a, _wgslsmith_dot_vec3_u32(firstTrailingBit(abs(vec3<u32>(52967u, u_input.a, 53816u))), ~(~vec3<u32>(1u, 40452u, u_input.b)))), _wgslsmith_f_op_f32(-func_5(var_1.e.a, vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(108445u, global2.x, global3.a, 15073u), vec4<u32>(4294967295u, 0u, 25303u, var_1.e.a.a)), _wgslsmith_sub_u32(u_input.a, 15358u), _wgslsmith_mod_u32(global2.x, u_input.b), firstTrailingBit(global2.x)), var_0.x, func_4(abs(vec3<u32>(0u, global3.a, 49928u)), Struct_3(u_input.c, var_2.zyz, 626f, vec4<bool>(var_1.e.b.x, var_3.x, var_1.a.b.x, false), global3.d.x), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 88488u, 34073u, 0u), vec4<u32>(u_input.b, u_input.a, 1u, global2.x))).d).e.d.d.x));
}


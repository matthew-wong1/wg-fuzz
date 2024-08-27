struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 23> = array<vec4<u32>, 23>(vec4<u32>(36680u, 3882u, 133800u, 1u), vec4<u32>(20006u, 49637u, 4294967295u, 0u), vec4<u32>(4294967295u, 0u, 0u, 57744u), vec4<u32>(38599u, 4294967295u, 1u, 1u), vec4<u32>(40631u, 80686u, 4294967295u, 0u), vec4<u32>(1u, 38172u, 91761u, 14355u), vec4<u32>(18756u, 4294967295u, 89500u, 80413u), vec4<u32>(4294967295u, 6333u, 0u, 6837u), vec4<u32>(26061u, 1u, 4294967295u, 27142u), vec4<u32>(1u, 4294967295u, 1u, 4294967295u), vec4<u32>(0u, 4294967295u, 1u, 31446u), vec4<u32>(5283u, 1u, 73841u, 0u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 8542u), vec4<u32>(37757u, 16095u, 443u, 4294967295u), vec4<u32>(15894u, 13522u, 46906u, 4294967295u), vec4<u32>(99354u, 0u, 0u, 63575u), vec4<u32>(52734u, 4294967295u, 1u, 10322u), vec4<u32>(3576u, 37982u, 0u, 53612u), vec4<u32>(33867u, 0u, 0u, 35148u), vec4<u32>(11869u, 31497u, 42106u, 13516u), vec4<u32>(1u, 4294967295u, 1u, 9748u), vec4<u32>(1947u, 0u, 1u, 45184u), vec4<u32>(0u, 16059u, 57753u, 2260u));

var<private> global1: vec2<f32> = vec2<f32>(-716f, -1123f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(~88012u, ~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -48281i, 2147483647i, -10628i), -vec4<i32>(52416i, -32615i, -1i, u_input.e.x)), 78794i, 3906i, u_input.e.x));
    var_0 = Struct_1(var_0.a, abs(~vec4<i32>(1i, 2147483647i, 2147483647i, ~var_0.b.x)));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(823f - 1029f) + _wgslsmith_f_op_f32(f32(-1f) * -752f)))));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1171f, global1.x), vec2<f32>(558f, -663f), vec2<bool>(false, true))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(269f, -1159f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-400f, global1.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -209f) + vec2<f32>(903f, 1000f))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-236f))), _wgslsmith_f_op_f32(f32(-1f) * -1505f))));
    return Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(914f, -393f)), _wgslsmith_f_op_f32(ceil(411f))), vec2<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + 1996f) + -604f))), 4294967295u, Struct_1(_wgslsmith_mult_u32(min(u_input.d, var_0.a << (0u % 32u)), ~1u), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.e.x, -25810i, -1i), 0i), -_wgslsmith_dot_vec4_i32(vec4<i32>(-4085i, var_0.b.x, 7185i, u_input.b), vec4<i32>(u_input.b, 1i, u_input.e.x, var_0.b.x)), ~u_input.c.x, _wgslsmith_clamp_i32(var_0.b.x, -47424i, var_0.b.x) & var_0.b.x)));
}

fn func_1() -> Struct_4 {
    let var_0 = func_2();
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(trunc(var_0.a)));
    return Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.a, var_0.a) * _wgslsmith_f_op_vec2_f32(vec2<f32>(245f, -310f) * vec2<f32>(var_0.a.x, -1375f)))), _wgslsmith_clamp_u32(~(~u_input.d), u_input.d, abs(40691u)), Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 48796u, 19083u, 1u), global0[_wgslsmith_index_u32(u_input.d, 23u)]), var_0.c.a), vec4<i32>(13600i, -2147483647i, var_0.c.b.x, 55939i) & _wgslsmith_mod_vec4_i32(var_0.c.b, var_0.c.b))), Struct_2(var_1.a, u_input.d, Struct_1(49292u, var_0.c.b)), !vec2<bool>(-1i <= var_0.c.b.x, any(vec3<bool>(true, true, true))));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: Struct_4) -> Struct_5 {
    let var_0 = arg_3.c;
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1549f, _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_2.x, 247f))) * arg_1.a))), ~_wgslsmith_add_u32(~(~88265u), ~_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(arg_1.b, 23u)], vec4<u32>(0u, 1u, 68132u, arg_3.a.b))), Struct_1(_wgslsmith_dot_vec3_u32(max(~vec3<u32>(28088u, 9157u, 74148u), ~vec3<u32>(arg_0, arg_3.b.b, arg_1.c.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_3.a.c.a, 25699u, 1u), vec3<u32>(0u, arg_1.b, 68660u)) | _wgslsmith_mult_vec3_u32(vec3<u32>(arg_3.a.b, 49291u, u_input.d), vec3<u32>(7868u, arg_0, arg_1.b))), arg_1.c.b));
    var var_2 = arg_3.c;
    return Struct_5(func_1().a, Struct_4(func_2(), func_2(), arg_3.c));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3) -> Struct_2 {
    var var_0 = !(!(!select(!vec3<bool>(arg_0.b.c.x, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(arg_0.b.c.x, true, true)), vec3<bool>(false, false, true))));
    let var_1 = arg_0;
    let var_2 = all(vec4<bool>(var_0.x && (arg_0.b.c.x || false), true, false, false));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a.a.x, global1.x))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-922f)), -1000f, var_1.b.c.x && false))), _wgslsmith_div_f32(arg_1.a.x, arg_1.a.x))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1317f - arg_1.a.x) * 1211f))), arg_0.b.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(744f + _wgslsmith_div_f32(-1407f, arg_1.a.x)))));
    let var_4 = !any(var_0.xy);
    return func_1().b;
}

fn func_5(arg_0: Struct_4, arg_1: bool) -> Struct_5 {
    let var_0 = -668f;
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2577f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), var_0))) - _wgslsmith_f_op_vec2_f32(select(arg_0.a.a, func_2().a, vec2<bool>(!arg_1, true))));
    let var_1 = ~(~((func_4(Struct_5(arg_0.b, arg_0), Struct_3(vec2<f32>(arg_0.b.a.x, 439f))).c.a >> (5119u % 32u)) ^ arg_0.b.c.a));
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_f_op_f32(f32(-1f) * -661f), 1053f, arg_0.a.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(226f, 1102f, 274f, global1.x), vec4<f32>(global1.x, -227f, 771f, -251f))))), vec4<bool>(select(false, select(true, arg_1, arg_1), true), false, true, (i32(-1i) * -1i) <= ~arg_0.a.c.b.x)))));
    let var_3 = Struct_2(var_2.xx, var_1 | 1u, arg_0.b.c);
    return func_3(abs(1u), var_3, _wgslsmith_f_op_vec2_f32(func_4(Struct_5(arg_0.b, Struct_4(var_3, var_3, arg_0.c)), Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-152f, -361f)))).a * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_3.a.x, global1.x), vec2<f32>(210f, -375f)) + vec2<f32>(var_0, var_0)))), func_1());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_4(func_4(func_3(u_input.d, Struct_2(vec2<f32>(634f, -1173f), u_input.d, Struct_1(4294967295u, vec4<i32>(-1i, u_input.c.x, u_input.c.x, u_input.b))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1118f, global1.x) - vec2<f32>(global1.x, -692f)), func_1()), Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(1923f, 862f) + vec2<f32>(global1.x, 326f)))), func_3(abs(1u), func_4(func_3(0u, Struct_2(vec2<f32>(global1.x, 2493f), u_input.d, Struct_1(4294967295u, vec4<i32>(0i, u_input.a, u_input.b, -35041i))), vec2<f32>(global1.x, global1.x), Struct_4(Struct_2(vec2<f32>(global1.x, -105f), 6204u, Struct_1(4294967295u, vec4<i32>(-1i, u_input.c.x, -20516i, u_input.c.x))), Struct_2(vec2<f32>(global1.x, 366f), u_input.d, Struct_1(0u, vec4<i32>(1638i, 2147483647i, 23662i, u_input.e.x))), vec2<bool>(true, true))), Struct_3(vec2<f32>(global1.x, global1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) - vec2<f32>(723f, -1000f))), func_3(u_input.d, Struct_2(vec2<f32>(625f, global1.x), 11697u, Struct_1(u_input.d, vec4<i32>(2147483647i, u_input.b, -2147483647i, u_input.c.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)), func_1()).b).a, func_1().c), false);
    let x = u_input.a;
    s_output = StorageBuffer(~(-vec3<i32>(func_2().c.b.x, 9932i, u_input.c.x)), -3113i, vec3<i32>(u_input.b, func_5(var_0.b, any(!vec4<bool>(var_0.b.c.x, var_0.b.c.x, var_0.b.c.x, true))).b.a.c.b.x, 1i));
}


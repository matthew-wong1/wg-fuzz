struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(-19347i, -38634i, -1i, -7453i), vec4<i32>(40639i, 39015i, 24883i, -1i), vec4<i32>(i32(-2147483648), 0i, 44582i, 13588i), vec4<i32>(-1i, i32(-2147483648), 7362i, -1i), vec4<i32>(2147483647i, i32(-2147483648), -26982i, i32(-2147483648)), vec4<i32>(i32(-2147483648), i32(-2147483648), -26079i, -31540i), vec4<i32>(i32(-2147483648), -6722i, -34514i, -1i), vec4<i32>(2147483647i, -1i, 1i, 2147483647i), vec4<i32>(-43885i, i32(-2147483648), 14460i, 2147483647i), vec4<i32>(-46i, -1i, 0i, 6750i), vec4<i32>(0i, -12981i, 14924i, 28355i), vec4<i32>(-1i, i32(-2147483648), 50417i, 0i), vec4<i32>(-1i, i32(-2147483648), -13032i, 2147483647i), vec4<i32>(-11534i, 17174i, -60983i, -20571i), vec4<i32>(-33633i, 0i, i32(-2147483648), -15433i), vec4<i32>(12762i, i32(-2147483648), 27106i, 7870i), vec4<i32>(1i, 2147483647i, 22378i, 0i), vec4<i32>(i32(-2147483648), 10049i, 16379i, i32(-2147483648)), vec4<i32>(24815i, 2147483647i, -55659i, 1i), vec4<i32>(-6996i, 1i, i32(-2147483648), -23502i), vec4<i32>(-19419i, 2147483647i, i32(-2147483648), i32(-2147483648)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32) -> bool {
    let var_0 = arg_1;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(round(var_0)), ~u_input.a, arg_0);
    global0 = array<vec4<i32>, 21>();
    var_1 = Struct_3(_wgslsmith_f_op_f32(select(var_1.a, 1398f, false)), 1u, select(!vec4<bool>(true, var_1.c.x, var_1.c.x, true), select(var_1.c, vec4<bool>(arg_0.x, any(vec2<bool>(var_1.c.x, arg_0.x)), arg_0.x, arg_0.x), vec4<bool>(all(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)), true, var_1.c.x, true)), false));
    global0 = array<vec4<i32>, 21>();
    return var_1.c.x || any(arg_0.yw);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(Struct_1(func_3(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false))), _wgslsmith_f_op_f32(-596f - _wgslsmith_f_op_f32(sign(367f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1192f), -1749f)), _wgslsmith_f_op_f32(-1455f + _wgslsmith_f_op_f32(-171f + 903f))))), Struct_1(func_3(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(321f - -557f) + -659f)), 1304f));
    var var_1 = max(vec2<u32>(u_input.a, max(0u, u_input.a)), ~(~_wgslsmith_div_vec2_u32(select(vec2<u32>(u_input.a, 115477u), vec2<u32>(u_input.a, u_input.a), vec2<bool>(var_0.a.a, false)), vec2<u32>(u_input.a, 1u) & vec2<u32>(u_input.a, 0u))));
    global0 = array<vec4<i32>, 21>();
    var var_2 = _wgslsmith_add_vec2_u32(select(~min(abs(vec2<u32>(1u, 27305u)), vec2<u32>(0u, u_input.a)), ~(~vec2<u32>(u_input.a, var_1.x)), vec2<bool>(true && select(true, true, false), all(!vec3<bool>(var_0.b.a, var_0.b.a, var_0.b.a)))), abs(~vec2<u32>(4294967295u, 0u)) >> (~vec2<u32>(~var_1.x, ~u_input.a) % vec2<u32>(32u)));
    var var_3 = true;
    return Struct_2(Struct_1(var_1.x == 1u, -293f), var_0.a);
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    let var_1 = reverseBits(max(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 45460u), vec2<u32>(u_input.a, u_input.a)) >> (~select(vec2<u32>(0u, u_input.a), vec2<u32>(4294967295u, 0u), var_0.b.a) % vec2<u32>(32u)), ~(vec2<u32>(u_input.a, u_input.a) >> (reverseBits(vec2<u32>(1u, u_input.a)) % vec2<u32>(32u)))));
    global0 = array<vec4<i32>, 21>();
    global0 = array<vec4<i32>, 21>();
    global0 = array<vec4<i32>, 21>();
    return func_2().a;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_2) -> u32 {
    var var_0 = arg_2.b;
    var_0 = arg_2.a;
    var var_1 = Struct_3(var_0.b, ~u_input.a, select(arg_0.c, select(vec4<bool>(arg_2.a.a, arg_0.b != 4294967295u, !arg_0.c.x, any(vec4<bool>(false, var_0.a, var_0.a, true))), select(!arg_0.c, arg_0.c, var_0.a), !arg_0.c), func_3(arg_0.c, _wgslsmith_f_op_f32(sign(arg_0.a)))));
    global0 = array<vec4<i32>, 21>();
    global0 = array<vec4<i32>, 21>();
    return reverseBits(0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1027f;
    var var_1 = -138f;
    var_1 = _wgslsmith_div_f32(-1244f, -897f);
    let var_2 = false;
    let var_3 = 1u;
    var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(949f))));
    var var_4 = 14539u;
    let var_5 = Struct_3(-1271f, ~(~abs(u_input.a)), vec4<bool>(false, var_2, var_2, var_2));
    let x = u_input.a;
    s_output = StorageBuffer(1602f, func_4(var_5, abs(~(~vec3<i32>(3603i, -1i, 36919i))), Struct_2(Struct_1(select(true, var_5.c.x, var_5.c.x), var_5.a), func_1())), _wgslsmith_div_f32(-115f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(582f + var_5.a))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.a, 1006f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_5.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_5.a)) + -768f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -631f, var_5.a, -1000f), vec4<f32>(-1077f, var_5.a, var_5.a, var_5.a))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1528f, var_5.a, 1000f, var_5.a)))), 17223u ^ ~max(var_5.b, min(var_3, var_3)));
}


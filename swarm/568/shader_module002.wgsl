struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
    d: f32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_3) -> i32 {
    return 0i;
}

fn func_3() -> vec2<bool> {
    var var_0 = vec4<bool>(false, any(select(vec4<bool>(true, false, true, 22494u > u_input.c.x), vec4<bool>(true, false, false, all(vec3<bool>(true, false, true))), vec4<bool>(true, true, true, true))), true, true);
    var var_1 = ~(-(u_input.b.x & u_input.a) >> (_wgslsmith_dot_vec2_u32(~u_input.c.xx, u_input.c.zx & u_input.c.zx) % 32u)) <= -(~func_2(false, vec2<f32>(-1733f, 270f), Struct_3(vec2<bool>(var_0.x, false))) >> (~42790u % 32u));
    var var_2 = Struct_3(select(select(select(var_0.zx, var_0.ww, !var_0.x), select(var_0.yz, vec2<bool>(var_0.x, var_0.x), !vec2<bool>(var_0.x, true)), select(!vec2<bool>(var_0.x, true), vec2<bool>(true, true), any(vec2<bool>(var_0.x, var_0.x)))), !select(vec2<bool>(var_0.x, true), vec2<bool>(false, false), var_0.wz), vec2<bool>(false, true)));
    var_1 = any(select(select(!select(vec3<bool>(var_2.a.x, var_0.x, true), vec3<bool>(var_2.a.x, false, true), false), select(select(vec3<bool>(var_2.a.x, var_2.a.x, true), var_0.ywz, vec3<bool>(var_0.x, true, var_2.a.x)), select(vec3<bool>(false, var_2.a.x, false), vec3<bool>(true, var_0.x, var_0.x), false), !var_0.x), vec3<bool>(any(var_0.zyy), !var_0.x, all(vec4<bool>(false, true, var_0.x, var_0.x)))), !vec3<bool>(any(vec4<bool>(var_0.x, false, var_0.x, var_2.a.x)), !var_0.x, -38203i >= u_input.a), !(!(u_input.c.x > u_input.c.x))));
    var_1 = false;
    return select(var_2.a, vec2<bool>(any(!var_0.wyy) | var_2.a.x, any(vec2<bool>(u_input.c.x <= 41869u, any(vec3<bool>(var_0.x, var_2.a.x, false))))), var_0.x);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = Struct_1(countOneBits(u_input.b));
    var var_1 = arg_3;
    var var_2 = Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -(u_input.b & var_1.b.a), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, arg_3.b.a.x, 1i), u_input.b) | -var_0.a, arg_3.b.a)));
    var_1 = Struct_2(var_1.a, var_1.b, _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(arg_3.c, ~(vec4<u32>(403u, 4294967295u, u_input.c.x, var_1.c.x) & vec4<u32>(u_input.c.x, arg_3.c.x, 6418u, 1u))), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(var_1.c.x, 1u, 33006u, arg_3.c.x)), var_1.c & arg_3.c, var_1.c), max(arg_3.c, arg_3.c))), _wgslsmith_f_op_f32(-198f * -178f));
    var var_3 = all(select(vec3<bool>(false, true || (u_input.a != 0i), any(vec2<bool>(true, var_1.a))), select(vec3<bool>(true, var_1.d != -269f, any(vec3<bool>(false, false, true))), vec3<bool>(true, true, false), select(!vec3<bool>(true, arg_3.a, arg_2.a.x), !vec3<bool>(var_1.a, arg_2.a.x, arg_3.a), arg_3.a)), false));
    return select(!select(!(!vec4<bool>(arg_2.a.x, true, false, true)), vec4<bool>(any(arg_2.a), arg_3.a, !arg_1.a.x, all(vec4<bool>(var_1.a, arg_1.a.x, arg_2.a.x, var_1.a))), arg_1.a.x), vec4<bool>(any(select(!vec3<bool>(false, true, arg_2.a.x), !vec3<bool>(false, arg_2.a.x, true), var_1.a || false)), arg_2.a.x, false, ~(13367u << (var_1.c.x % 32u)) > 1u), vec4<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), arg_2.a.x)) & (var_0.a.x < _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, -32941i, arg_0.a, 28468i), vec4<i32>(7933i, 1i, 51929i, var_2.a.x))), arg_1.a.x, true, all(select(!vec3<bool>(arg_3.a, arg_3.a, false), !vec3<bool>(true, arg_1.a.x, false), vec3<bool>(false, false, true)))));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_3) -> vec2<bool> {
    var var_0 = vec2<bool>(true, select(!arg_1.a.x, true, !(2147483647i <= -u_input.b.x)));
    global0 = u_input.b.x;
    return select(arg_1.a, !func_4(Struct_4(-u_input.a), Struct_3(select(arg_0.wx, arg_0.ww, var_0.x)), Struct_3(func_4(Struct_4(u_input.a), arg_1, arg_1, Struct_2(arg_0.x, Struct_1(vec3<i32>(u_input.b.x, -16251i, 29627i)), vec4<u32>(u_input.c.x, u_input.c.x, 321u, u_input.c.x), 940f)).xy), Struct_2(true, Struct_1(u_input.b), ~vec4<u32>(1u, 0u, 1u, u_input.c.x), _wgslsmith_div_f32(1288f, 1233f))).xy, func_3());
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1) -> Struct_3 {
    let var_0 = Struct_3(!(!vec2<bool>(true, arg_1)));
    global0 = _wgslsmith_add_i32((u_input.a ^ ~(-51872i)) >> (4294967295u % 32u), u_input.a);
    global0 = func_2(var_0.a.x, arg_0.zz, var_0);
    var var_1 = u_input.c.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x - -477f), arg_0.x))))));
    return Struct_3(func_5(func_4(Struct_4(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.a, 0i, u_input.a))), var_0, Struct_3(func_3()), Struct_2(true, arg_2, ~vec4<u32>(u_input.c.x, u_input.c.x, 2688u, 19143u), -934f)), var_0));
}

fn func_6(arg_0: f32, arg_1: Struct_3) -> vec4<bool> {
    var var_0 = -6341i;
    let var_1 = Struct_1(u_input.b);
    return vec4<bool>(func_5(vec4<bool>(all(func_4(Struct_4(var_1.a.x), arg_1, arg_1, Struct_2(false, Struct_1(vec3<i32>(0i, var_1.a.x, u_input.b.x)), vec4<u32>(u_input.c.x, 0u, u_input.c.x, u_input.c.x), arg_0))), all(arg_1.a) | func_3().x, func_5(vec4<bool>(arg_1.a.x, arg_1.a.x, true, false), Struct_3(arg_1.a)).x, false), Struct_3(arg_1.a)).x, func_4(Struct_4(func_2(any(vec2<bool>(true, arg_1.a.x)), _wgslsmith_div_vec2_f32(vec2<f32>(466f, 1000f), vec2<f32>(-1084f, -322f)), func_1(vec3<f32>(arg_0, -2415f, arg_0), false, var_1))), arg_1, Struct_3(!arg_1.a), Struct_2(arg_1.a.x, Struct_1(_wgslsmith_clamp_vec3_i32(var_1.a, vec3<i32>(u_input.b.x, 28179i, var_1.a.x), vec3<i32>(var_1.a.x, 40881i, -2147483647i))), vec4<u32>(u_input.c.x, ~u_input.c.x, 4294967295u, 4294967295u), arg_0)).x, any(select(!(!vec3<bool>(arg_1.a.x, true, arg_1.a.x)), vec3<bool>(arg_1.a.x, arg_1.a.x || true, true), any(select(vec3<bool>(arg_1.a.x, arg_1.a.x, true), vec3<bool>(false, arg_1.a.x, arg_1.a.x), vec3<bool>(true, true, false))))), arg_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(any(select(func_6(_wgslsmith_f_op_f32(f32(-1f) * -2406f), func_1(vec3<f32>(730f, -192f, -1000f), false, Struct_1(vec3<i32>(u_input.b.x, u_input.a, -2147483647i)))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), Struct_1(vec3<i32>(select(u_input.a << (4294967295u % 32u), select(-5003i, 8060i, false), true), ~(20938i | u_input.b.x), _wgslsmith_div_i32(u_input.b.x, u_input.a << (58046u % 32u)))), min(select(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, u_input.c.x, 21778u), vec4<u32>(u_input.c.x, u_input.c.x, 42328u, u_input.c.x)), vec4<u32>(10687u, 85502u, u_input.c.x, 0u) & vec4<u32>(30032u, 84525u, 6318u, 60524u), true), ~select(vec4<u32>(u_input.c.x, u_input.c.x, 16760u, 52823u), vec4<u32>(35976u, u_input.c.x, 0u, 35993u), false)) << (~vec4<u32>(~u_input.c.x, ~33700u, u_input.c.x, 8192u) % vec4<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(867f - -397f))), 1171f));
    var var_1 = ~(~func_2(func_5(vec4<bool>(var_0.a, var_0.a, var_0.a, false), Struct_3(vec2<bool>(false, var_0.a))).x, vec2<f32>(-101f, var_0.d), func_1(vec3<f32>(-917f, var_0.d, var_0.d), true, Struct_1(vec3<i32>(var_0.b.a.x, var_0.b.a.x, -1i))))) ^ abs(~17320i);
    var var_2 = 657f;
    var_2 = -669f;
    var_1 = countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(63515i, u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i), ~vec2<i32>(var_0.b.a.x, 0i)), u_input.a), select(vec4<i32>(u_input.a, -38376i, ~u_input.b.x, u_input.a), ~abs(vec4<i32>(var_0.b.a.x, var_0.b.a.x, 0i, u_input.b.x)), var_0.d >= var_0.d)));
    let var_3 = var_0;
    let var_4 = Struct_3(vec2<bool>(var_0.a, !(!var_0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_0.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1995f, _wgslsmith_f_op_f32(-var_0.d))), -644f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -434f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.d, var_3.d, var_3.a))))));
}


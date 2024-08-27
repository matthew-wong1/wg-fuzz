struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<u32>,
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

var<private> global0: bool = false;

var<private> global1: i32 = 0i;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = u_input.d;
    global0 = any(vec4<bool>(false, arg_0.b.x && !all(vec4<bool>(true, true, arg_0.b.x, arg_0.b.x)), select(false, ~var_0 > var_0, !any(vec4<bool>(false, false, true, arg_0.b.x))), !(27756i < u_input.a.x) || all(arg_0.b.zy)));
    global1 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -550f)))));
    var var_2 = Struct_3(Struct_1(~_wgslsmith_sub_i32(2147483647i, _wgslsmith_mult_i32(u_input.c.x, 5704i)), vec3<bool>(all(vec2<bool>(arg_0.b.x, arg_0.b.x)), all(arg_0.b.yx), true)));
    return 0u;
}

fn func_2(arg_0: Struct_1) -> i32 {
    global0 = (4294967295u >> (u_input.e.x % 32u)) >= u_input.b.x;
    global0 = !(~(-68964i) < ~arg_0.a);
    global0 = false;
    var var_0 = Struct_4(arg_0, arg_0.b.x, arg_0, select(func_3(arg_0), 0u, false));
    global0 = var_0.c.b.x;
    return arg_0.a;
}

fn func_1(arg_0: i32, arg_1: i32) -> vec3<bool> {
    let var_0 = min(_wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_mult_vec3_i32(u_input.a, u_input.a)), abs(u_input.a)), firstLeadingBit(_wgslsmith_add_i32(func_2(Struct_1(-36392i, vec3<bool>(true, true, false))) | arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(-21237i, 1i, 70336i, u_input.c.x), vec4<i32>(-2147483647i, arg_0, -1i, 1i)))));
    let var_1 = any(select(!vec2<bool>(any(vec3<bool>(false, false, true)), true), vec2<bool>(true | any(vec4<bool>(true, true, true, true)), !all(vec3<bool>(true, false, false))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true))));
    let var_2 = Struct_5(~vec3<u32>(u_input.b.x, _wgslsmith_div_u32(1u, ~u_input.e.x), ~18645u));
    global1 = -(~(~arg_0)) ^ -max(-26146i, arg_1);
    var var_3 = Struct_1(-99124i, vec3<bool>(false, var_1, false));
    return vec3<bool>(true, !(max(abs(arg_1), firstLeadingBit(var_3.a)) != arg_1), !(max(var_2.a.x, ~0u) <= reverseBits(u_input.b.x)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_4 {
    global1 = -34483i;
    var var_0 = ~46650i;
    let var_1 = vec4<i32>(u_input.a.x >> (_wgslsmith_mod_u32(~u_input.e.x, u_input.e.x >> (u_input.e.x % 32u)) % 32u), arg_1.a, u_input.a.x, -1i | _wgslsmith_add_i32(u_input.a.x, -arg_1.a)) >> (~u_input.b % vec4<u32>(32u));
    let var_2 = -513f;
    global0 = !all(vec3<bool>(arg_1.b.x, true, any(!vec2<bool>(arg_1.b.x, arg_1.b.x))));
    return Struct_4(Struct_1(0i, vec3<bool>(arg_0.x, ~u_input.e.x >= 0u, all(select(vec3<bool>(arg_1.b.x, false, false), vec3<bool>(arg_0.x, true, true), vec3<bool>(true, arg_1.b.x, arg_1.b.x))))), arg_1.b.x, Struct_1(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 0i, var_1.x), vec3<i32>(292i, -2147483647i, 2147483647i)), vec3<bool>(!any(vec3<bool>(false, arg_1.b.x, true)), false, true)), ~_wgslsmith_mult_u32(4294967295u, u_input.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), func_1(select(_wgslsmith_sub_i32(u_input.a.x, 31635i), 0i, any(vec2<bool>(false, false))), 2147483647i), true), Struct_1(8632i, vec3<bool>(true, countOneBits(298i) == _wgslsmith_clamp_i32(-80251i, 38639i, u_input.a.x), false)));
    let var_1 = 0u;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(574f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1187f)) + _wgslsmith_div_f32(-500f, -1000f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1459f, 1988f) * _wgslsmith_div_f32(-1415f, 1000f)), false))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1294f, 259f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-450f))))), -357f)));
    var var_3 = var_0.c.a;
    let var_4 = select(vec3<bool>(false, all(vec4<bool>(true, true, true, true)), !var_0.c.b.x), var_0.c.b, !func_4(select(var_0.c.b, !var_0.c.b, func_1(u_input.c.x, -29988i)), var_0.c).c.b);
    let var_5 = !(all(!var_0.c.b) && var_4.x);
    var_3 = 124253i;
    global1 = -(~(-2147483647i));
    var var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(var_2.x + 1f)));
}


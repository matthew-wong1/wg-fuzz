struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1967f, true);

var<private> global1: f32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: u32) -> Struct_2 {
    global0 = Struct_1(global0.a, global0.b);
    let var_0 = ~_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(arg_0, abs(0u), ~4294967295u)), ~countOneBits(~vec3<u32>(0u, u_input.a, 0u)), min(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, arg_0, arg_0), vec3<u32>(u_input.b, 1u, arg_0)), ~vec3<u32>(u_input.a, 0u, 11967u), vec3<u32>(arg_0, 10454u, u_input.b) | vec3<u32>(arg_0, arg_0, u_input.a)), ~(~vec3<u32>(arg_0, 4294967295u, u_input.b))));
    var var_1 = Struct_1(1f, !global0.b != !global0.b);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a - var_1.a))), !global0.b);
    let var_3 = Struct_2(false, 2147483647i, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) - _wgslsmith_f_op_f32(f32(-1f) * -2063f))), true), countOneBits(~0u));
    return var_3;
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<i32>) -> f32 {
    global1 = -820f;
    let var_0 = global0.b;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-arg_0.x)) + -254f);
    global1 = _wgslsmith_f_op_f32(arg_0.x + func_2(~_wgslsmith_div_u32(17939u, 32267u)).c.a);
    let var_1 = Struct_2(true, ~reverseBits(_wgslsmith_clamp_i32(-u_input.c.x, max(arg_2.x, u_input.c.x), i32(-1i) * -1i)), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(137f * arg_0.x) + arg_0.x), arg_1.a)), true), 6652u);
    return _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1541f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a + 649f))) - _wgslsmith_f_op_f32(select(627f, var_1.c.a, all(vec3<bool>(arg_1.b, false, true))))));
}

fn func_1(arg_0: i32) -> Struct_2 {
    global0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.a))), global0.b);
    let var_0 = u_input.c.xx;
    let var_1 = func_2(~_wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.a, u_input.a, 0u, 60901u) << (vec4<u32>(75128u, u_input.a, u_input.b, 4294967295u) % vec4<u32>(32u))), vec4<u32>(1u, 0u, 0u, 1u)));
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2745f * global0.a)), _wgslsmith_f_op_f32(-var_1.c.a))) - _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, var_1.c.a) + vec2<f32>(global0.a, 551f)))), var_1.c, -var_0))), all(select(!select(vec3<bool>(false, false, false), vec3<bool>(global0.b, true, true), vec3<bool>(false, false, true)), vec3<bool>(all(vec3<bool>(true, var_1.a, var_1.a)), var_1.c.b, -617f >= global0.a), global0.b)));
    let var_2 = ~(~u_input.a);
    return Struct_2(all(select(vec2<bool>(true & var_1.c.b, any(vec2<bool>(global0.b, false))), !select(vec2<bool>(true, global0.b), vec2<bool>(false, false), vec2<bool>(false, var_1.c.b)), select(select(vec2<bool>(false, var_1.c.b), vec2<bool>(false, false), vec2<bool>(var_1.a, global0.b)), vec2<bool>(var_1.a, true), vec2<bool>(global0.b, global0.b)))), _wgslsmith_dot_vec3_i32(u_input.c.xwy, ~(~_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, -40460i, -13111i), vec3<i32>(-2147483647i, var_1.b, var_1.b)))), func_2(0u).c, 1u);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.a), 856f));
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1420f, arg_1.a) * vec2<f32>(arg_2.c.a, 706f))), vec2<f32>(274f, _wgslsmith_f_op_f32(307f * 1800f)))))));
    let var_1 = _wgslsmith_f_op_f32(max(arg_2.c.a, arg_2.c.a));
    let var_2 = vec2<i32>(_wgslsmith_mod_i32(3275i, -7143i), reverseBits(_wgslsmith_dot_vec4_i32(~vec4<i32>(20433i, arg_2.b, -2147483647i, arg_2.b), u_input.c & u_input.c))) | -_wgslsmith_clamp_vec2_i32(select(vec2<i32>(51957i, arg_2.b) ^ vec2<i32>(70312i, 34940i), vec2<i32>(arg_2.b, 55214i), arg_1.b || arg_2.c.b), -(vec2<i32>(u_input.c.x, arg_2.b) & vec2<i32>(2147483647i, u_input.c.x)), -vec2<i32>(-69449i, -2147483647i));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1f * global0.a))), func_1(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.c.zww, vec3<i32>(-1i, 39369i, var_2.x)), select(vec3<i32>(arg_2.b, -58452i, -31028i), u_input.c.yzy, vec3<bool>(global0.b, true, arg_2.c.b))), -u_input.c.xxy)).c.b);
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    let var_1 = u_input.b;
    var var_2 = Struct_1(-487f, global0.b);
    var_2 = Struct_1(402f, func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1143f + var_2.a), -865f, var_2.b)), _wgslsmith_f_op_f32(1027f - var_2.a)), Struct_1(1293f, _wgslsmith_div_u32(var_1, var_1) != ~var_1), func_1(2147483647i)));
    let var_3 = _wgslsmith_f_op_f32(trunc(188f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(~select(~var_1, u_input.b, false), 1u, 112825u), _wgslsmith_f_op_f32(f32(-1f) * -2061f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1057f, 1000f, -600f) * vec3<f32>(-1544f, global0.a, global0.a)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(387f, var_3, -406f)) * vec3<f32>(var_2.a, global0.a, 1000f))))), u_input.c.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, var_3, -651f)));
}


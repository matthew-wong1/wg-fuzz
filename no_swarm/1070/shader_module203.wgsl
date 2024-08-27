struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(13655i, -834f, vec2<i32>(2147483647i, -62508i)), 187f, Struct_1(-52270i, 107f, vec2<i32>(22246i, -21943i)), vec3<f32>(664f, 386f, 165f), Struct_1(4018i, -544f, vec2<i32>(1i, 11343i)));

var<private> global1: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: u32) -> i32 {
    global0 = Struct_2(global0.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b * 157f) + 991f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1000f)), arg_0, true)), arg_0))), Struct_1(global0.e.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, 2993f), _wgslsmith_f_op_f32(-global0.b))), ~vec2<i32>(abs(-8985i), -u_input.c)), global0.d, global0.e);
    let var_0 = Struct_2(Struct_1(~u_input.d.x, 2190f, vec2<i32>(global0.e.a, global0.e.c.x) & firstTrailingBit(vec2<i32>(-2147483647i, u_input.c))), arg_0, global0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(global0.d, vec3<f32>(arg_0, arg_0, -529f))), _wgslsmith_f_op_vec3_f32(max(global0.d, vec3<f32>(arg_0, 517f, global0.e.b))))))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, _wgslsmith_f_op_f32(ceil(609f)), arg_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(962f, -1000f, 1589f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 1392f, arg_0) - global0.d)), false))), global0.a);
    global0 = Struct_2(var_0.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0 - global0.b))), global0.c, _wgslsmith_div_vec3_f32(var_0.d, var_0.d), var_0.c);
    var var_1 = select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, arg_1 >= arg_1), select(true, any(vec4<bool>(false, true, true, false)), all(vec4<bool>(true, false, true, true)))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, global0.c.b > arg_0), vec3<bool>(any(vec4<bool>(false, true, false, true)), var_0.c.b < -1057f, 69005u != u_input.a)), !vec3<bool>(all(vec3<bool>(true, false, true)), all(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true))));
    let var_2 = ~(~countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1, 1u) >> (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)), vec2<u32>(1u, arg_1), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 46955u), vec2<u32>(19675u, arg_1), vec2<u32>(arg_1, arg_1)))));
    return -16525i;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    global0 = arg_0;
    global1 = u_input.a;
    var var_0 = arg_0;
    let var_1 = abs(u_input.d.xw);
    var var_2 = var_0.c;
    return func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1.b, arg_0.b, true)), _wgslsmith_f_op_f32(arg_0.a.b + var_2.b))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.b + 997f) + _wgslsmith_f_op_f32(max(316f, -561f))) * _wgslsmith_f_op_f32(select(739f, _wgslsmith_f_op_f32(-arg_2.b), true)))), u_input.a);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_1(arg_1.c.x, global0.e.b, vec2<i32>(u_input.c, u_input.c));
    global1 = ~u_input.a;
    var_0 = Struct_1(1729i, global0.c.b, firstLeadingBit(var_0.c << (~firstLeadingBit(vec2<u32>(0u, 0u)) % vec2<u32>(32u))));
    global0 = Struct_2(global0.e, -246f, arg_1, global0.d, global0.a);
    var var_1 = abs(countOneBits(_wgslsmith_div_vec4_u32(~min(vec4<u32>(u_input.a, 1u, 0u, u_input.a), vec4<u32>(51856u, 1u, u_input.a, 4294967295u)), ~vec4<u32>(33146u, u_input.a, 27599u, 4294967295u) ^ _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, 35699u, u_input.a, u_input.a)))));
    return arg_1;
}

fn func_1(arg_0: i32) -> Struct_1 {
    global1 = u_input.a;
    var var_0 = _wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, 467u), ~_wgslsmith_sub_vec2_u32(vec2<u32>(abs(u_input.a), u_input.a), vec2<u32>(u_input.a, u_input.a) << (~vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u))));
    let var_1 = ~38325u;
    global0 = Struct_2(func_4(_wgslsmith_div_f32(global0.e.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.c.b)) - global0.e.b)), Struct_1(u_input.b, _wgslsmith_f_op_f32(exp2(global0.c.b)), vec2<i32>(func_2(Struct_2(global0.a, -371f, Struct_1(arg_0, 939f, u_input.d.xw), global0.d, global0.a), Struct_1(-17349i, global0.b, vec2<i32>(arg_0, 0i)), global0.e, global0.e), arg_0)), (_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(-6483i, -2147483647i, -2418i, 1i)) ^ global0.e.c.x) & -12827i, true), -1438f, global0.c, global0.d, global0.a);
    global1 = u_input.a;
    return global0.a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> vec3<f32> {
    let var_0 = global0.c;
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(793f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b - -116f)))), 1046f, arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global0.c, _wgslsmith_f_op_f32(floor(global0.d.x)), global0.e, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(func_1(global0.a.a), func_1(0i), Struct_1(0i, global0.e.b, u_input.d.xx), all(vec3<bool>(false, false, false)))) * global0.d))), func_4(_wgslsmith_f_op_vec3_f32(func_5(Struct_1(_wgslsmith_clamp_i32(1i, -1i, u_input.b), 301f, abs(vec2<i32>(global0.e.a, u_input.d.x))), Struct_1(_wgslsmith_dot_vec3_i32(u_input.d.yww, vec3<i32>(u_input.c, global0.c.c.x, -15012i)), global0.a.b, global0.e.c), global0.e, false)).x, global0.e, global0.a.c.x, true));
    var var_0 = Struct_2(global0.c, global0.c.b, Struct_1(global0.a.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.e.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(898f, global0.b)) * func_1(-34565i).b), false == (u_input.b <= -13717i))), abs(-(~vec2<i32>(-1i, u_input.d.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-453f, _wgslsmith_f_op_f32(global0.a.b + _wgslsmith_f_op_f32(-global0.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -261f), _wgslsmith_f_op_f32(min(global0.d.x, -2044f))))), func_4(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b), 471f), func_1(u_input.d.x | u_input.c).b), func_1(max(~u_input.c, -global0.e.a)), 2147483647i, true));
    global1 = (u_input.a | ~78743u) | (~u_input.a << ((22675u >> (0u % 32u)) % 32u));
    let var_1 = func_4(_wgslsmith_div_f32(var_0.a.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.b)), var_0.a.b)), var_0.a, var_0.a.a, !(var_0.a.b < var_0.a.b));
    let var_2 = Struct_2(Struct_1(~31573i, var_1.b, var_0.a.c), var_1.b, func_1(var_0.c.c.x), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(var_1.b)), _wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(step(148f, 1970f)))))), Struct_1(1i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-308f))), var_0.e.b)), reverseBits(vec2<i32>(_wgslsmith_div_i32(var_1.c.x, -12968i), ~u_input.c))));
    let var_3 = var_2;
    let var_4 = false;
    var var_5 = func_4(var_2.d.x, Struct_1(1i, -756f, abs(vec2<i32>(-1i) * -var_0.c.c)), i32(-1i) * -32658i, !(_wgslsmith_f_op_f32(f32(-1f) * -895f) > var_1.b));
    let x = u_input.a;
    s_output = StorageBuffer(-37579i >> (~max(55611u, u_input.a) % 32u), _wgslsmith_f_op_f32(ceil(-935f)), abs(vec3<u32>(firstTrailingBit(15875u), u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 13328u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 31072u)))) << (vec3<u32>(_wgslsmith_sub_u32(3894u, abs(1879u)), u_input.a, _wgslsmith_mod_u32(37705u, u_input.a) >> (4294967295u % 32u)) % vec3<u32>(32u)), 4294967295u);
}


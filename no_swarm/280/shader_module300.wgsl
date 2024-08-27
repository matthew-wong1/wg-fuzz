struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_4;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_4) -> u32 {
    var var_0 = any(!vec3<bool>(false, true, true | any(vec4<bool>(true, false, true, true))));
    global1 = Struct_4(~firstLeadingBit(_wgslsmith_sub_u32(30873u, _wgslsmith_clamp_u32(arg_0.a, 17854u, u_input.a))), Struct_3(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global1.b.a)))));
    global1 = arg_0;
    var var_1 = 2147483647i;
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-793f * arg_0.b.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(arg_0.b.a.x)), global1.b.a.x)))))));
    return u_input.c.x;
}

fn func_2(arg_0: u32) -> Struct_1 {
    global0 = all(!vec3<bool>(!all(vec2<bool>(true, true)), true, false));
    global1 = Struct_4(func_3(Struct_4(min(abs(1u), firstTrailingBit(54311u)), Struct_3(global1.b.a))), global1.b);
    var var_0 = ~_wgslsmith_add_i32(min(16301i, 1i), _wgslsmith_add_i32(_wgslsmith_sub_i32(1i, 0i), -42789i) >> (~(~arg_0) % 32u));
    var var_1 = _wgslsmith_mult_i32(-33911i, _wgslsmith_add_i32(0i, ~(~firstLeadingBit(11441i))));
    var_0 = 1i;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-801f, 1126f, global1.b.a.x, global1.b.a.x)));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: f32) -> Struct_4 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(arg_0.zy + arg_0.yz), _wgslsmith_dot_vec3_i32(vec3<i32>(min(-arg_1.c, arg_1.c | -7125i), -29051i, 0i), ~vec3<i32>(-2147483647i, arg_1.c, ~(-1i))), _wgslsmith_mult_u32(u_input.c.x | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, global1.a, 42790u) | vec3<u32>(33877u, global1.a, u_input.c.x), ~vec3<u32>(global1.a, global1.a, 0u)), ~u_input.c.x), u_input.a, Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.a.x, 886f, -1877f, global1.b.a.x))))));
    global1 = Struct_4(~min(u_input.a, reverseBits(u_input.c.x)), global1.b);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1749f - global1.b.a.x), _wgslsmith_f_op_f32(max(-1027f, var_0.e.a.x)))))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.x, -1000f, arg_1.d.x, global1.b.a.x))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(-1428f)), _wgslsmith_f_op_f32(f32(-1f) * -1250f), _wgslsmith_f_op_f32(min(arg_2, 1358f)), 1917f)))));
    global0 = true;
    return Struct_4(u_input.a, global1.b);
}

fn func_1() -> StorageBuffer {
    global1 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.b.a.x, global1.b.a.x, -843f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(1168f)), _wgslsmith_f_op_f32(-global1.b.a.x), global1.b.a.x))), Struct_5(global1.b.a.x, func_2(_wgslsmith_sub_u32(~22938u, ~u_input.b)), -select(10463i, -13741i, true) | (-2147483647i >> (~u_input.b % 32u)), global1.b.a, _wgslsmith_f_op_vec2_f32(min(global1.b.a, _wgslsmith_div_vec2_f32(vec2<f32>(665f, -527f), _wgslsmith_f_op_vec2_f32(global1.b.a + vec2<f32>(1354f, 1368f)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global1.b.a.x)))))));
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1.b.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(global1.b.a.x)), global1.b.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1052f))));
    global1 = func_4(var_0, Struct_5(_wgslsmith_f_op_f32(1650f * var_0.x), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.b.a.x, -179f, -530f, var_0.x), vec4<f32>(-522f, global1.b.a.x, 2203f, var_0.x))))), _wgslsmith_add_i32(~_wgslsmith_mult_i32(1i, 2147483647i), _wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, 35471i, -71481i), ~vec3<i32>(2147483647i, 0i, -2147483647i))), var_0.zy, var_0.zz), -2081f);
    var var_1 = vec3<i32>(1i, 35808i << (firstLeadingBit(global1.a) % 32u), 1i);
    var_1 = ~_wgslsmith_mod_vec3_i32(~(-vec3<i32>(var_1.x, var_1.x, var_1.x)) >> (vec3<u32>(global1.a, global1.a, u_input.b & global1.a) % vec3<u32>(32u)), -(~(-vec3<i32>(2147483647i, 6801i, -29938i))));
    return StorageBuffer(_wgslsmith_mod_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, 18744u, 70519u), countOneBits(vec3<u32>(36968u, global1.a, 29198u))), select(_wgslsmith_div_vec3_u32(vec3<u32>(14607u, global1.a, global1.a), vec3<u32>(16181u, 1u, 0u)) << (~vec3<u32>(26563u, 4069u, 0u) % vec3<u32>(32u)), min(vec3<u32>(41473u, 0u, global1.a), vec3<u32>(0u, 0u, 20226u)), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false)))), -var_1.yz, vec4<i32>(i32(-1i) * -1i, 4251i, 21504i, _wgslsmith_div_i32(var_1.x, -var_1.x)), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}


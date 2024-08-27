struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: f32,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_3) -> vec4<i32> {
    let var_0 = vec3<i32>(_wgslsmith_add_i32(-arg_2.c, ~arg_2.c) << (_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(u_input.c ^ vec4<u32>(1u, arg_2.b.c.d.x, arg_2.b.b.x, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 56660u, u_input.c.x, 1u), vec4<u32>(arg_2.b.b.x, 0u, 3510u, 40434u))), ~1u, 4294967295u) % 32u), -_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 0i), -vec2<i32>(u_input.a.x, -1i)), 0i), -1i);
    return -vec4<i32>(_wgslsmith_div_i32(firstLeadingBit(1i), _wgslsmith_dot_vec2_i32(~arg_2.b.d.b.xy, arg_2.b.a.b.xx)), countOneBits(-_wgslsmith_div_i32(var_0.x, 62513i)), select(19188i, ~(-2147483647i), arg_2.c < -2147483647i), _wgslsmith_mod_i32(_wgslsmith_mod_i32(~u_input.a.x, -arg_2.c), _wgslsmith_add_i32(var_0.x | u_input.a.x, _wgslsmith_dot_vec3_i32(arg_2.b.d.b.wxw, vec3<i32>(u_input.a.x, 56376i, var_0.x)))));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_3(~_wgslsmith_div_i32(13704i, u_input.a.x), Struct_2(Struct_1(vec4<bool>(-612f != global0.a.x, all(vec2<bool>(false, true)), all(vec3<bool>(true, true, true)), true), func_3(~u_input.c.x, select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), Struct_3(1i, Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i), global0.a.x, u_input.c.yzy, u_input.a.x), u_input.c.xw, Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(u_input.a.x, u_input.a.x, -37931i, u_input.a.x), -1000f, vec3<u32>(15440u, 19437u, 53703u), -14738i), Struct_1(vec4<bool>(true, true, false, false), u_input.a, global0.a.x, u_input.c.zzy, u_input.a.x), vec3<bool>(false, false, false)), 2147483647i, u_input.a.x)), global0.a.x, ~(u_input.c.xyw << (u_input.c.ywz % vec3<u32>(32u))), -10672i), select(u_input.c.zz, ~vec2<u32>(u_input.b, 1u), any(vec2<bool>(true, true))), Struct_1(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), false), abs(~vec4<i32>(u_input.a.x, 26475i, 13630i, -2147483647i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(625f + 1000f)), vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u) >> (u_input.c.ywz % vec3<u32>(32u)), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-16931i, u_input.a.x)), vec2<i32>(u_input.a.x, u_input.a.x))), Struct_1(vec4<bool>(true, true, true, false), countOneBits(-vec4<i32>(216i, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(min(-1764f, _wgslsmith_f_op_f32(-global0.a.x))), u_input.c.ywz, firstLeadingBit(~u_input.a.x)), select(vec3<bool>(true, true, true), vec3<bool>(true, u_input.b >= u_input.b, any(vec2<bool>(true, false))), all(vec3<bool>(true, true, true)))), 6468i, -2147483647i);
    global0 = Struct_4(global0.a);
    let var_1 = -423f;
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.a.x, 1000f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.b.a.c, var_1)))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1299f, 107f))), _wgslsmith_div_vec2_f32(global0.a, global0.a)))), global0.a)));
    let var_2 = 9249i;
    return var_0;
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_4) -> Struct_4 {
    var var_0 = func_2();
    var var_1 = Struct_2(Struct_1(!func_2().b.c.a, vec4<i32>(-32453i, ~(-36008i) >> (_wgslsmith_div_u32(u_input.c.x, var_0.b.c.d.x) % 32u), firstTrailingBit(_wgslsmith_dot_vec2_i32(arg_1.wx, var_0.b.d.b.zy)), 1i), _wgslsmith_f_op_f32(step(-335f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_3.a.x + var_0.b.d.c), arg_3.a.x, true)))), countOneBits(vec3<u32>(~var_0.b.a.d.x, 0u, 1u)), _wgslsmith_clamp_i32(-1i, var_0.c, -2147483647i)), vec2<u32>(~max(u_input.b, 40348u), ~(select(u_input.c.x, var_0.b.a.d.x, var_0.b.c.a.x) | 0u)), var_0.b.a, var_0.b.d, vec3<bool>(var_0.b.e.x, var_0.b.a.a.x, var_0.b.e.x));
    var var_2 = -1000f;
    var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_1.c.c)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c.c, arg_3.a.x) * 1239f)))))));
    var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1223f + global0.a.x))), _wgslsmith_f_op_f32(-arg_3.a.x), func_2().b.a.a.x));
    return Struct_4(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(2783f, -443f), arg_3.a)) - arg_3.a), vec2<f32>(func_2().b.a.c, _wgslsmith_f_op_f32(floor(-410f))), func_2().b.c.a.zw)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(false, vec4<i32>(~_wgslsmith_dot_vec4_i32(max(u_input.a, vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x)), min(u_input.a, vec4<i32>(-50011i, -7358i, u_input.a.x, u_input.a.x))), countOneBits(u_input.a.x), abs(~(-1i)) & ~(-u_input.a.x), -(1i << (select(u_input.b, 10118u, false) % 32u))), 0i, Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, global0.a.x)) + vec2<f32>(_wgslsmith_f_op_f32(1379f + 529f), _wgslsmith_f_op_f32(round(global0.a.x))))));
    global0 = func_1(!(!(-575f < _wgslsmith_f_op_f32(873f * global0.a.x))), u_input.a, _wgslsmith_dot_vec4_i32(-u_input.a, _wgslsmith_mod_vec4_i32(u_input.a, -max(u_input.a, u_input.a))), func_1(any(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), func_2().b.c.a, vec4<bool>(true, true, true, true))), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(min(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<i32>(u_input.a.x, -5836i, u_input.a.x, 14083i)), _wgslsmith_sub_vec4_i32(~u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) | u_input.a)), u_input.a.x, func_1(true, abs(max(vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x), u_input.a)), ~0i, Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-429f, 1449f))))));
    global0 = Struct_4(global0.a);
    var var_0 = u_input.a;
    var var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, ~u_input.a, vec2<u32>(~((0u << (u_input.b % 32u)) | 0u), _wgslsmith_mult_u32(u_input.b, u_input.c.x)));
}


struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec3<i32>,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: u32;

var<private> global2: i32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: vec2<u32>) -> vec4<i32> {
    let var_0 = arg_1.x;
    var var_1 = true;
    var var_2 = arg_0.x;
    let var_3 = _wgslsmith_sub_u32(1u, reverseBits(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x)));
    var var_4 = !arg_0;
    return vec4<i32>(-1i) * -min(-vec4<i32>(0i, arg_2.b, -2147483647i, global0.c.a), -(~vec4<i32>(63342i, global0.c.b, u_input.c.x, global0.c.b)));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = 4294967295u;
    var var_1 = global0.b.x;
    var var_2 = Struct_3(global0.a, Struct_2(-global0.c.b, -2147483647i), arg_1.xxz, Struct_1(_wgslsmith_f_op_f32(global0.a - 1880f) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.a))), arg_0, vec3<i32>(u_input.c.x, _wgslsmith_clamp_i32(41665i, -37038i, min(1410i, 65944i)), global0.c.a ^ (arg_1.x >> (global0.b.x % 32u))), global0.b.x << (u_input.a.x % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(120f)), -1016f)), _wgslsmith_div_i32(~_wgslsmith_div_i32(arg_1.x, 1i), arg_1.x));
    var_1 = ~abs(~(~u_input.a.x | var_2.d.b));
    var var_3 = vec4<bool>(false, true, true, false);
    return var_2.d;
}

fn func_1(arg_0: Struct_3) -> u32 {
    var var_0 = func_3(arg_0.d.b, vec4<i32>(-18665i, u_input.c.x | global0.c.b, i32(-1i) * -2147483647i, select(_wgslsmith_clamp_i32(u_input.c.x, 40235i, 507i), ~(-87022i), true)) | countOneBits(func_2(vec4<bool>(true, false, arg_0.d.a, false), vec2<f32>(global0.a, 1000f), Struct_2(-31693i, -425i), _wgslsmith_clamp_vec2_u32(global0.b, vec2<u32>(arg_0.d.d, arg_0.d.d), u_input.a.yy))));
    var var_1 = arg_0;
    var var_2 = var_1.c;
    var_2 = arg_0.d.c;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.e, 1311f), vec2<f32>(-836f, 1012f), true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d.e, _wgslsmith_f_op_f32(-496f + var_0.e)) + vec2<f32>(_wgslsmith_f_op_f32(arg_0.a * -536f), 110f)), vec2<bool>(var_1.d.a, any(!vec4<bool>(true, true, arg_0.d.a, false))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * _wgslsmith_f_op_f32(f32(-1f) * -1140f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-func_3(56300u, vec4<i32>(global0.c.b, -2147483647i, var_2.x, 19267i)).e), _wgslsmith_f_op_f32(var_0.e * _wgslsmith_f_op_f32(-1902f + -698f))))));
    return var_1.d.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(-1000f, _wgslsmith_add_vec2_u32(u_input.a.zz, ~vec2<u32>(~u_input.a.x, _wgslsmith_clamp_u32(1u, u_input.a.x, 0u))), global0.c);
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.a, _wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(-global0.a)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))), -254f);
    global0 = Struct_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(548f, var_0.x))))), select(~firstTrailingBit(u_input.a.xz), firstLeadingBit(select(vec2<u32>(global0.b.x, global0.b.x), vec2<u32>(1u, global0.b.x), true)), vec2<bool>(var_0.x == var_0.x, true)) | vec2<u32>(func_1(Struct_3(-1087f, Struct_2(u_input.d, global0.c.b), vec3<i32>(global0.c.a, global0.c.b, 17606i), Struct_1(true, u_input.a.x, vec3<i32>(-12372i, 0i, -2147483647i), global0.b.x, -1078f), u_input.b.x)), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a.yz, global0.b), global0.b.x)), Struct_2(~_wgslsmith_clamp_i32(~56710i, u_input.c.x, 0i), ~(~(global0.c.b & u_input.b.x))));
    let var_1 = _wgslsmith_f_op_vec2_f32(step(var_0, var_0));
    global1 = _wgslsmith_mod_u32(countOneBits(_wgslsmith_mod_u32(global0.b.x, _wgslsmith_div_u32(_wgslsmith_sub_u32(global0.b.x, global0.b.x), global0.b.x))), global0.b.x);
    let var_2 = ~u_input.a.x;
    global2 = 2147483647i;
    global2 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(~(vec4<u32>(u_input.a.x, var_2, _wgslsmith_clamp_u32(0u, 64760u, var_2), _wgslsmith_clamp_u32(22718u, global0.b.x, u_input.a.x)) & vec4<u32>(global0.b.x & 1u, 48004u, 1u, 4294967295u)), u_input.d);
}


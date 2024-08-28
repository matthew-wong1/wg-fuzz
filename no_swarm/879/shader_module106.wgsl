struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>) -> f32 {
    let var_0 = arg_0.b;
    var var_1 = u_input.e.x;
    var var_2 = Struct_2(false);
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(step(-1708f, _wgslsmith_f_op_f32(trunc(var_0))))))));
    var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(-var_0)), -1030f));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(arg_0.b, -1299f)), _wgslsmith_f_op_f32(-arg_0.b), true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-587f + var_0))))));
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(Struct_1(vec2<i32>(arg_0, 0i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(317f, 2231f)) + _wgslsmith_div_f32(1059f, 1725f)), min(abs(vec2<i32>(arg_0, -15357i)), max(vec2<i32>(-1i, u_input.a.x), vec2<i32>(u_input.c, 0i))), u_input.a.x), select(select(arg_2, vec3<bool>(arg_2.x, arg_2.x, arg_2.x), select(vec3<bool>(false, arg_2.x, true), arg_2, arg_2.x)), vec3<bool>(arg_2.x, arg_2.x | true, any(vec4<bool>(false, true, true, arg_2.x))), !(!vec3<bool>(arg_2.x, true, true))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(397f)) + 804f)))));
    var_0 = -344f;
    global0 = u_input.d.wz;
    let var_1 = u_input.c;
    let var_2 = Struct_3(Struct_1(-firstTrailingBit(u_input.a.xz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec2<i32>(-var_1, -var_1 ^ (arg_0 & -2147483647i)), ~arg_0), vec2<f32>(1233f, 411f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(284f - 119f)), -136f, _wgslsmith_f_op_f32(-571f * -1000f), _wgslsmith_div_f32(-773f, 691f))));
    return arg_1.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec2<i32> {
    let var_0 = u_input.e;
    global0 = ~(vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.d, u_input.e) & _wgslsmith_sub_u32(4294967295u, 45096u), _wgslsmith_sub_u32(func_2(1i, u_input.e, vec3<bool>(false, true, false)), countOneBits(u_input.b.x))) | firstTrailingBit(var_0.wx));
    var var_1 = Struct_2(true);
    var var_2 = !var_1.a | select(!var_1.a, any(select(select(vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(true, var_1.a, var_1.a)), vec3<bool>(var_1.a, var_1.a, var_1.a), select(vec3<bool>(var_1.a, var_1.a, true), vec3<bool>(var_1.a, var_1.a, var_1.a), var_1.a))), _wgslsmith_dot_vec2_i32(u_input.a.xy ^ vec2<i32>(-1i, arg_1.a.x), min(arg_0.c, vec2<i32>(arg_0.a.x, arg_0.d))) >= arg_1.d);
    var_1 = Struct_2(true);
    return _wgslsmith_sub_vec2_i32(~vec2<i32>(_wgslsmith_div_i32(1i, -1i) >> ((global0.x | 58843u) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_1.d), vec2<i32>(-68945i, u_input.c))), vec2<i32>(_wgslsmith_mult_i32(arg_0.a.x, ~(-38616i << (var_0.x % 32u))), arg_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~(-_wgslsmith_sub_vec2_i32(func_1(Struct_1(u_input.a.zz, -999f, vec2<i32>(2147483647i, u_input.c), 27180i), Struct_1(vec2<i32>(u_input.c, 57475i), -560f, u_input.a.xx, -2147483647i)), u_input.a.xy ^ vec2<i32>(u_input.c, u_input.c))), 1f, vec2<i32>(min(-(~2147483647i), min(1i, 3385i)), 15421i), _wgslsmith_clamp_i32(-(u_input.a.x ^ abs(u_input.a.x)), _wgslsmith_div_i32(u_input.c, select(_wgslsmith_dot_vec2_i32(u_input.a.xx, vec2<i32>(u_input.a.x, 0i)), 2147483647i, all(vec4<bool>(true, true, true, true)))), -32247i));
    var_0 = Struct_1(_wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.c, u_input.c), max(u_input.a.yx, vec2<i32>(countOneBits(var_0.c.x), select(-5754i, u_input.c, false)))), -359f, var_0.a, _wgslsmith_dot_vec3_i32(firstLeadingBit(~reverseBits(u_input.a)), firstTrailingBit(u_input.a)));
    global0 = _wgslsmith_clamp_vec2_u32(max(~(~u_input.e.zy), ~(~vec2<u32>(u_input.e.x, 4294967295u))), ~vec2<u32>(global0.x, ~(~u_input.e.x)), vec2<u32>(_wgslsmith_mult_u32(~countOneBits(u_input.b.x), 4294967295u), ~(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 4294967295u), vec2<u32>(10888u, 52512u)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 1u, global0.x), u_input.b) % 32u))));
    let var_1 = u_input.a.zx;
    global0 = _wgslsmith_mod_vec2_u32(vec2<u32>(min(67375u, 70064u), _wgslsmith_div_u32(countOneBits(0u), ~(~global0.x))), u_input.b.zx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(278f, var_0.b, -1212f, var_0.b))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(var_0.b, -3308f), 267f, _wgslsmith_f_op_f32(var_0.b * 514f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_0.b, -754f) + vec3<f32>(var_0.b, var_0.b, var_0.b))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1007f, var_0.b, -620f))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.b, var_0.b, 973f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1114f, 511f, 105f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-349f, var_0.b, 1040f) - vec3<f32>(1176f, var_0.b, 678f))))), 0u);
}


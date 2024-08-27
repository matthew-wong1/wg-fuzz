struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0.a + 827f), _wgslsmith_div_f32(1432f, arg_0.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.a, 974f), vec2<f32>(arg_0.a, arg_0.a), arg_0.b)))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.a, 528f)));
}

fn func_3() -> vec4<u32> {
    global0 = ~u_input.a;
    global0 = 89124u & ~u_input.a;
    global0 = _wgslsmith_add_u32(_wgslsmith_sub_u32(reverseBits(1u), 1u), firstLeadingBit(firstLeadingBit(u_input.a)));
    let var_0 = Struct_1(-701f, !select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(false, true), true)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true))));
    global0 = _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 61496u), vec2<u32>(~(~u_input.a), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 35085u, u_input.a), vec4<u32>(u_input.a, 3774u, 0u, 0u)), select(max(vec4<u32>(0u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 34839u, u_input.a, u_input.a)), ~vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), true))));
    return vec4<u32>(~(~max(~0u, u_input.a >> (13991u % 32u))), min(18231u, 5953u), u_input.a, ~u_input.a);
}

fn func_2() -> Struct_1 {
    var var_0 = ~(~u_input.a);
    let var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.a, 1u ^ u_input.a, _wgslsmith_div_u32(_wgslsmith_sub_u32(1u, u_input.a), u_input.a), u_input.a), reverseBits(~vec4<u32>(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 37156u), vec2<u32>(29132u, 1u)), max(u_input.a, 5963u), u_input.a)), _wgslsmith_sub_vec4_u32(~vec4<u32>(firstTrailingBit(u_input.a), 4294967295u, abs(1u), u_input.a), vec4<u32>(_wgslsmith_sub_u32(u_input.a, 4294967295u), u_input.a, 1u, ~0u) & func_3()));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-2008f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1877f, 401f)))), -155f);
    var var_3 = ~select(_wgslsmith_div_i32(1i, 1i), ~(-2147483647i), any(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), vec3<bool>(true, true, false), 0u >= var_1.x)));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-950f, 1f))), !vec2<bool>(true, any(vec3<bool>(true, true, true))));
    return Struct_1(_wgslsmith_f_op_f32(-var_4.a), !(!vec2<bool>(select(var_4.b.x, var_4.b.x, false), true)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<f32>, arg_3: bool) -> Struct_1 {
    global0 = 47329u;
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2 - arg_2) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(arg_1.wxz, arg_2), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-699f, arg_2.x, -1162f), arg_1.wyx)), true)), vec3<f32>(_wgslsmith_f_op_f32(arg_1.x * arg_0.a), -1368f, -1196f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1278f, 1123f, arg_2.x) * arg_1.xzw) - _wgslsmith_f_op_vec3_f32(min(arg_2, arg_2))), _wgslsmith_f_op_vec3_f32(arg_2 * _wgslsmith_f_op_vec3_f32(-arg_2)), vec3<bool>(arg_0.b.x, false, all(vec2<bool>(arg_0.b.x, arg_0.b.x))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.xyx * _wgslsmith_div_vec3_f32(arg_1.yyy, arg_2)) - vec3<f32>(396f, _wgslsmith_f_op_f32(floor(440f)), arg_2.x)))));
    var var_1 = func_2().b;
    var_0 = arg_1.zyx;
    global0 = 27172u;
    return arg_0;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_sub_vec3_u32(func_3().wwz, firstLeadingBit(max(reverseBits(~vec3<u32>(4294967295u, u_input.a, 1u)), select(vec3<u32>(41047u, 36501u, u_input.a), _wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a, 1u), vec3<u32>(25351u, 4294967295u, 23498u)), !vec3<bool>(arg_0.b.x, false, true)))));
    let var_2 = Struct_1(296f, !select(vec2<bool>(true, select(arg_0.b.x, arg_0.b.x, true)), var_0.b, !(!arg_0.b)));
    var var_3 = vec3<u32>(_wgslsmith_dot_vec2_u32(~(var_1.zz << (~var_1.xx % vec2<u32>(32u))), min(_wgslsmith_add_vec2_u32(vec2<u32>(9354u, 1u) | var_1.xx, ~vec2<u32>(u_input.a, var_1.x)), vec2<u32>(~41533u, func_3().x))), _wgslsmith_dot_vec3_u32(var_1, ~var_1) << (min(_wgslsmith_dot_vec4_u32(vec4<u32>(13567u, u_input.a, var_1.x, 17949u) >> (vec4<u32>(4294967295u, 0u, var_1.x, var_1.x) % vec4<u32>(32u)), vec4<u32>(u_input.a, 4294967295u, u_input.a, var_1.x)), ~1u) % 32u), _wgslsmith_div_u32(var_1.x, var_1.x));
    global0 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a, 1u, 70866u, var_3.x) >> (select(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, 12456u, 4294967295u, u_input.a), vec4<u32>(var_3.x, 13976u, 1u, 0u), vec4<u32>(0u, 4294967295u, u_input.a, var_3.x)), ~vec4<u32>(var_3.x, var_1.x, 0u, 1u), all(vec4<bool>(false, var_2.b.x, true, false))) % vec4<u32>(32u)), firstLeadingBit(~vec4<u32>(var_1.x, var_1.x, var_1.x, var_3.x)) >> ((select(vec4<u32>(1u, var_3.x, 4294967295u, 28898u), vec4<u32>(1u, 49148u, var_1.x, 4294967295u), false) & reverseBits(vec4<u32>(4294967295u, u_input.a, var_1.x, u_input.a))) % vec4<u32>(32u)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = vec3<f32>(-273f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(440f))) - 1234f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(Struct_1(-775f, vec2<bool>(var_0, true)), vec4<i32>(18211i, -13i, 26490i, 53574i))))))), _wgslsmith_f_op_f32(max(-697f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1850f), _wgslsmith_div_f32(892f, -1021f)), 952f))));
    global0 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(u_input.a, ~(~0u)), u_input.a), _wgslsmith_mult_vec2_u32(vec2<u32>(35399u, u_input.a), abs(firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(16207u, u_input.a), vec2<u32>(50502u, u_input.a))))));
    var var_2 = func_5(func_4(func_2(), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 220f, -1000f, _wgslsmith_f_op_f32(var_1.x + -355f)) + vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x - 974f), _wgslsmith_f_op_f32(min(1620f, -1466f)), -1000f)), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(Struct_1(-610f, vec2<bool>(false, var_0)), vec4<i32>(12194i, -6264i, -2147483647i, -1i))), var_1.x, any(vec2<bool>(false, var_0)))), _wgslsmith_f_op_f32(f32(-1f) * -621f), var_1.x), false));
    let var_3 = ~vec2<u32>(u_input.a, 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_mod_vec2_u32(~(~var_3), var_3)));
}


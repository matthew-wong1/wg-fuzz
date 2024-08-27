struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: Struct_1,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec3<i32>, 20>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: bool, arg_3: f32) -> u32 {
    var var_0 = Struct_4(Struct_1(!(!select(vec3<bool>(false, false, arg_2), vec3<bool>(false, arg_2, arg_2), false))));
    let var_1 = 295f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3)));
    let var_2 = Struct_2(reverseBits(countOneBits(41720u) & u_input.b) | ~(~(~u_input.b)), arg_1.xy | ~_wgslsmith_mod_vec2_i32(-arg_1.xx, arg_1.zz & arg_1.xz), vec2<i32>(arg_1.x, arg_1.x), vec2<u32>(_wgslsmith_clamp_u32(~(4294967295u ^ u_input.b), ~41178u, ~firstTrailingBit(u_input.b)), u_input.b));
    var_0 = Struct_4(Struct_1(vec3<bool>(true, any(!var_0.a.a), false)));
    var var_3 = Struct_4(var_0.a);
    return firstLeadingBit(11111u);
}

fn func_2() -> vec3<bool> {
    global1 = array<vec3<i32>, 20>();
    global1 = array<vec3<i32>, 20>();
    let var_0 = !(!vec4<bool>(max(4294967295u, u_input.b) >= func_3(vec2<bool>(true, false), vec3<i32>(-2147483647i, 0i, 1i), true, -684f), false, true, !all(vec2<bool>(true, false))));
    return select(!(!vec3<bool>(var_0.x | var_0.x, var_0.x, true)), select(!vec3<bool>(var_0.x, true, var_0.x && false), var_0.xyw, any(var_0)), var_0.wzz);
}

fn func_1() -> i32 {
    global0 = u_input.a.zy;
    var var_0 = Struct_3(max(vec2<u32>(0u, ~u_input.b), vec2<u32>(1u, _wgslsmith_mult_u32(~u_input.b, u_input.b ^ 8440u))), vec4<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-750f - _wgslsmith_f_op_f32(-216f * 774f))), _wgslsmith_f_op_f32(select(-901f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(213f - 928f) + _wgslsmith_div_f32(1618f, -787f)), true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-139f, _wgslsmith_f_op_f32(step(571f, -194f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-631f + -1348f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(173f)), _wgslsmith_f_op_f32(f32(-1f) * -100f))))), Struct_1(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), func_2(), !(u_input.a.x > 2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-825f, -287f)), _wgslsmith_f_op_f32(-1000f - 112f)) - 1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-755f)), 930f, !all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))))));
    var var_1 = u_input.a.xz;
    let var_2 = var_0.c.a;
    global0 = vec2<i32>(41690i, -1i);
    return -39904i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1209f - 966f), 705f);
    global1 = array<vec3<i32>, 20>();
    let var_1 = _wgslsmith_add_i32(-7183i, global0.x);
    var var_2 = -720f;
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -103f);
    global0 = vec2<i32>(func_1(), var_1);
    global0 = firstLeadingBit(u_input.a.zz);
    let var_3 = Struct_2(31413u, select(u_input.a.yx ^ u_input.a.xz, vec2<i32>(10480i, ~_wgslsmith_clamp_i32(-55840i, global0.x, u_input.a.x)), vec2<bool>(true, any(vec4<bool>(true, true, true, true)))), u_input.a.xx, _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(u_input.b, 4294967295u), _wgslsmith_mod_u32(u_input.b, 8023u)) | (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(4294967295u, 49792u)) & ~vec2<u32>(42356u, u_input.b)), ~abs(countOneBits(vec2<u32>(0u, 0u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-479f, var_0, var_0, var_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 1245f, var_0))))))), ~_wgslsmith_sub_u32(~20212u >> ((1u >> (var_3.a % 32u)) % 32u), abs(var_3.d.x)), _wgslsmith_f_op_f32(abs(-146f)), firstLeadingBit(-1i));
}


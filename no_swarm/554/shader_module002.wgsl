struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(331f, -1000f, -455f, -480f));

var<private> global1: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: bool) -> i32 {
    return u_input.a.x;
}

fn func_3(arg_0: Struct_4, arg_1: f32) -> u32 {
    let var_0 = -1i;
    let var_1 = ~83704u;
    let var_2 = vec2<i32>(-1i) * -u_input.a.yw;
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-371f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(435f * global0.a.x) - _wgslsmith_f_op_f32(step(arg_1, 1090f))))))));
    var var_4 = _wgslsmith_f_op_f32(max(365f, 1284f));
    return 72279u >> (max(~(1u | (54259u ^ arg_0.b.d)), 39605u) % 32u);
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = !(any(vec3<bool>(true, true, true)) & false);
    global1 = -(i32(-1i) * -4372i);
    let var_1 = Struct_4(var_0, Struct_2(Struct_1(global0.a), _wgslsmith_f_op_f32(1142f + _wgslsmith_f_op_f32(global0.a.x * 2015f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-449f, arg_3.a.x))), -1000f), _wgslsmith_div_u32(func_3(Struct_4(var_0, Struct_2(Struct_1(vec4<f32>(global0.a.x, global0.a.x, 524f, -1000f)), 145f, global0.a.xw, u_input.b.x, vec4<bool>(var_0, true, true, false)), vec3<f32>(-1287f, arg_1, -857f)), global0.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 0u), ~vec2<u32>(36756u, 2992u))), vec4<bool>(!(-920f > arg_1), true, var_0, var_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a.x, 807f, -355f)));
    global1 = -1i;
    let var_2 = var_1;
    return var_1.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(u_input.a.x, select(53556i, -1i, !(_wgslsmith_dot_vec3_i32(u_input.a.yzx, u_input.a.xxz) > -9882i)), -2147483647i);
    global0 = func_2(firstLeadingBit(u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -1080f), firstLeadingBit(func_1(true)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.a.x, 1000f, true)) + _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(-146f + global0.a.x)), 516f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.x, -873f)))));
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(global0.a.x, -1090f)), global0.a.x)), vec2<f32>(func_2(abs(vec4<i32>(-1623i, 2147483647i, var_0.x, u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.a.x))), -_wgslsmith_mod_i32(3225i, 1i), Struct_1(_wgslsmith_f_op_vec4_f32(global0.a - vec4<f32>(global0.a.x, global0.a.x, -336f, global0.a.x)))).a.x, _wgslsmith_f_op_f32(select(981f, global0.a.x, true)))));
    global1 = -1i;
    var var_3 = u_input.a.x;
    let var_4 = -21467i;
    let var_5 = func_2(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, _wgslsmith_clamp_i32(-1i, 20122i, var_4) ^ var_4, _wgslsmith_sub_i32(-1i, abs(-1i)), -var_4 << (~u_input.b.x % 32u)), u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a.x))))), 5191i, func_2(abs(u_input.a), _wgslsmith_f_op_f32(-var_2.x), abs(-29334i), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), var_2.x, -752f, _wgslsmith_f_op_f32(-739f - 1174f)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, 7348u, ~vec4<u32>(u_input.b.x, ~38847u, firstTrailingBit(u_input.b.x), 1u) & vec4<u32>(~6894u << (u_input.b.x % 32u), 1u, firstTrailingBit(0u), u_input.b.x & firstLeadingBit(2105u)), vec3<i32>(_wgslsmith_div_i32(firstLeadingBit(_wgslsmith_mod_i32(54501i, -30151i)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -1i, -2147483647i), u_input.a.yxz)), u_input.a.x, 1i | var_0.x));
}


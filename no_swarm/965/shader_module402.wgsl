struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: i32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(false, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1435f * 139f), global0.x, 1573f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-705f, -443f, 2842f)))))));
    var var_1 = ~vec3<i32>(_wgslsmith_div_i32(~0i, -abs(-2147483647i)), -(~(i32(-1i) * -6846i)), -(~abs(-21724i)));
    var var_2 = Struct_1(439u <= _wgslsmith_div_u32(u_input.a.x, select(4294967295u, _wgslsmith_mod_u32(182u, u_input.a.x), var_0.a)), var_0.b);
    var_0 = Struct_1(!var_0.a, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-727f, 158f, global0.x) * vec3<f32>(-340f, -1696f, -413f)), var_0.b)))));
    global0 = var_0.b.xy;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)) * -349f))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = 0i;
    var var_1 = true;
    let var_2 = abs(-vec2<i32>(var_0, 1i));
    var var_3 = u_input.a.wwz;
    let var_4 = var_2.x;
    return Struct_1(true, vec3<f32>(_wgslsmith_f_op_f32(func_3()), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -632f))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-arg_0.b.yz))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(func_2(arg_0.b.x).b.xz, _wgslsmith_f_op_vec2_f32(arg_1.b.xy + vec2<f32>(611f, 409f))))))));
    let var_0 = ~firstLeadingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a.zzz & vec3<u32>(u_input.a.x, u_input.a.x, 1u), u_input.a.zxx), ~firstTrailingBit(u_input.a.xww)));
    let var_1 = func_2(-1000f);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.b.x, arg_0.b.x, _wgslsmith_f_op_f32(arg_1.b.x * arg_0.b.x), -1137f)))));
    var var_3 = func_2(var_2.x);
    return !vec3<bool>(!select(!arg_1.a, false, true), false, !func_2(_wgslsmith_f_op_f32(1289f - global0.x)).a);
}

fn func_5(arg_0: vec3<bool>) -> StorageBuffer {
    var var_0 = Struct_1(any(vec4<bool>(all(vec3<bool>(arg_0.x, false, true)), true, any(func_4(Struct_1(false, vec3<f32>(978f, global0.x, global0.x)), Struct_1(true, vec3<f32>(1986f, 273f, global0.x)))), arg_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global0.x, -360f))))));
    var var_1 = _wgslsmith_mod_i32(-27267i, _wgslsmith_sub_i32(abs(-2341i) & abs(select(-26196i, 22437i, arg_0.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, i32(-1i) * -1i, -37113i), ~vec3<i32>(22235i, -23969i, 0i))));
    global1 = abs(2147483647i);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-892f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x)))), 1417f, global0.x);
    var var_3 = _wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1020f, var_0.b.x))) - -476f)).b.x);
    return StorageBuffer(vec3<u32>(select(u_input.a.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), 7880u, u_input.a.x), select(false, 426f < var_0.b.x, true)), abs(_wgslsmith_mult_u32(~59300u, _wgslsmith_div_u32(u_input.a.x, u_input.a.x))), ~u_input.a.x), var_0.b);
}

fn func_1(arg_0: vec3<u32>) -> StorageBuffer {
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1f), global0.x));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x)))), vec2<f32>(1233f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1456f - global0.x) + global0.x))) + vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.x, 437f, true)), global0.x), global0.x)), -894f));
    global1 = -32354i;
    return func_5(!select(vec3<bool>(u_input.a.x == arg_0.x, true, any(vec3<bool>(true, true, false))), func_4(func_2(global0.x), Struct_1(true, vec3<f32>(811f, global0.x, 227f))), true));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(u_input.a.zxy);
}


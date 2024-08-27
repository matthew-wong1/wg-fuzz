struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> f32 {
    global0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, arg_1.a) * vec2<f32>(2854f, global0.x)))))));
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.a)) - arg_1.a)));
    global0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(min(-261f, 1000f)))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -850f) * global0.x), !all(vec4<bool>(true, true, true, true)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(sign(arg_1.a)), arg_1.a, global0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, -1591f), vec3<f32>(-114f, -1350f, global0.x))))), vec3<bool>(true, true, !all(select(vec2<bool>(true, false), vec2<bool>(false, false), true)))));
    return global0.x;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(-911f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(_wgslsmith_sub_i32(1i, ~u_input.a), Struct_1(global0.x, u_input.d, 6760i))), _wgslsmith_f_op_f32(floor(921f)), all(vec2<bool>(true, true)))));
    var_0 = _wgslsmith_div_f32(-146f, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-715f - global0.x) * global0.x)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-629f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-240f, global0.x, true))))), min(~max(82822u, 1u), abs(~u_input.b.x)), u_input.a);
    let var_2 = select(select(vec4<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)), true, all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true))), false), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), false)), vec4<bool>(false, true, true, true)), select(true && select(true, false, true), false, any(vec3<bool>(false, true, false)))), select(select(vec4<bool>(false, true, true, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), true), true), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), false), vec4<bool>(any(select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true))), reverseBits(-2147483647i) >= var_1.c, true, ~var_1.b < ~var_1.b));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(func_3(1i, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x))), _wgslsmith_add_u32(~u_input.e, var_1.b), -9624i))), 4294967295u, firstLeadingBit(_wgslsmith_add_i32(-2147483647i, -(~var_1.c))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(506f))), 85725u, u_input.a);
}

fn func_1() -> f32 {
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-180f, -1276f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1112f, global0.x))), false)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.x, global0.x))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(356f, 219f) * vec2<f32>(_wgslsmith_f_op_f32(-1000f - -1393f), global0.x)), false));
    let var_0 = false;
    var var_1 = Struct_1(-1573f, u_input.c, u_input.a);
    var_1 = func_2();
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, var_1.a), vec2<f32>(global0.x, -1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, -409f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(534f, 160f)))))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -186f) * vec2<f32>(global0.x, -1090f))))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, -604f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~4294967295u;
    var var_1 = Struct_1(global0.x, u_input.e, i32(-1i) * -1i);
    let var_2 = _wgslsmith_mult_vec2_u32(~u_input.b, ~_wgslsmith_mult_vec2_u32(vec2<u32>(~4294967295u, 37480u), _wgslsmith_clamp_vec2_u32(select(u_input.b, vec2<u32>(var_1.b, var_1.b), vec2<bool>(false, false)), ~u_input.b, abs(u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(~abs(75647i), _wgslsmith_add_i32(var_1.c, 318i)) >> (10168u % 32u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1()), 686f)))));
}


struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> i32 {
    global0 = 13653u;
    global0 = _wgslsmith_mod_u32(4294967295u, abs(select(~u_input.a.x | ~1u, u_input.a.x, arg_1.a)));
    let var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * -226f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -342f)), -531f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(760f * arg_2.x) + _wgslsmith_f_op_f32(select(arg_2.x, arg_2.x, arg_0.a)))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-732f * arg_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(-arg_2.x))))), true));
    let var_1 = Struct_1(any(select(vec2<bool>(select(true, true, arg_0.a), true), !vec2<bool>(arg_1.b, arg_1.b), !arg_1.a)), _wgslsmith_f_op_f32(exp2(1f)) != _wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_clamp_i32(arg_0.c, i32(-1i) * -arg_1.c, countOneBits(-arg_0.c)) << (~(~(0u | arg_0.d)) % 32u), 4294967295u);
    var var_2 = arg_0;
    return 37317i;
}

fn func_2() -> u32 {
    global0 = ~u_input.a.x;
    var var_0 = Struct_1(true, true, func_3(Struct_1(false, true, 1i, u_input.a.x | u_input.a.x), Struct_1(true, true, i32(-1i) * -1i, u_input.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, 655f, 1000f))) - _wgslsmith_div_vec3_f32(vec3<f32>(1809f, 3077f, -1499f), vec3<f32>(-664f, -363f, -479f)))) | 57629i, u_input.a.x);
    return ~(~(~reverseBits(u_input.a.x ^ 45206u)));
}

fn func_1() -> i32 {
    var var_0 = abs(-(1i << (~func_2() % 32u)));
    let var_1 = 1169f;
    global0 = _wgslsmith_div_u32(countOneBits(~select(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 67465u, u_input.a.x, u_input.a.x), vec4<u32>(44601u, u_input.a.x, u_input.a.x, u_input.a.x)), false)), u_input.a.x);
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(134f, var_1))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(111f, var_1)))), any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1000f, var_1))))), var_1));
    var var_3 = vec3<bool>(true, true, true);
    return 22699i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1u;
    let var_0 = u_input.a.xz;
    let var_1 = 7949i <= func_1();
    let var_2 = Struct_1(true, var_0.x >= _wgslsmith_mult_u32(u_input.a.x, var_0.x), 2147483647i, _wgslsmith_mod_u32(abs(countOneBits(firstLeadingBit(var_0.x))), 29230u));
    global0 = 1u;
    global0 = var_0.x;
    global0 = 16417u;
    var var_3 = var_2;
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1018f, -1277f) - vec2<f32>(855f, 1245f))), vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(486f, -1063f), vec2<f32>(-145f, 2095f)))))));
}


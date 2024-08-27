struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<bool>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> f32 {
    global0 = 1053f;
    let var_0 = vec2<i32>(68853i, reverseBits(min(u_input.a.x, abs(~u_input.a.x))));
    return 294f;
}

fn func_3() -> i32 {
    global0 = 301f;
    let var_0 = (_wgslsmith_div_u32(select(u_input.b.x | u_input.b.x, 1u & u_input.b.x, true), u_input.b.x) >> (_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.b.xx, vec2<u32>(1u, u_input.b.x)), ~u_input.b.x), u_input.b.x << (4294967295u % 32u)) % 32u)) & 15984u;
    var var_1 = true;
    let var_2 = select(vec4<bool>(false, true && (var_0 <= 68290u), !(all(vec4<bool>(false, false, false, false)) | any(vec4<bool>(false, true, true, false))), true), select(!select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), false), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true))), any(vec4<bool>(true, true, true, true))), vec4<bool>(false && all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false))), all(vec4<bool>(true, u_input.a.x != 2147483647i, true, all(vec3<bool>(false, true, false)))), true, true));
    var_1 = true;
    return 1i;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: vec3<i32>) -> f32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(func_2()))) * _wgslsmith_f_op_f32(arg_1.x * -108f));
    global0 = -1248f;
    var var_0 = arg_2.xx;
    var var_1 = ~vec3<i32>(0i, func_3(), abs(-(~arg_2.x)));
    var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.x, var_1.x), u_input.a.xx, u_input.a.xy);
    return -798f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-631f + 886f))));
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(func_1(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 5161u, u_input.b.x, 0u), u_input.b), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-286f, -1000f, -160f, -1775f), vec4<f32>(-216f, 1674f, -1558f, var_0.a))))), vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), -18456i, u_input.a.x))))));
    var var_1 = firstLeadingBit(~u_input.b.x);
    let var_2 = vec4<bool>(false, true, !all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), select(true, true, false))), true);
    let var_3 = u_input.a.zy;
    var_0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_0.a))))), var_0.a));
    let var_4 = var_3.x;
    let var_5 = all(!select(select(var_2.xzz, vec3<bool>(true, var_2.x, true), false || var_2.x), select(select(var_2.zww, vec3<bool>(false, var_2.x, var_2.x), var_2.xwz), vec3<bool>(var_2.x, true, true), !var_2.x), var_2.yxy));
    var_1 = _wgslsmith_sub_u32(u_input.b.x, u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(-(_wgslsmith_clamp_i32(var_4, i32(-1i) * -2147483647i, -28712i) | var_4));
}


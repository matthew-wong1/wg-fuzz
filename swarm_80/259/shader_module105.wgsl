struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
    c: f32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_0.b;
    var var_1 = Struct_1(6336u);
    let var_2 = Struct_2(Struct_1(arg_2.a));
    let var_3 = var_2;
    var var_4 = Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(~abs(vec3<u32>(var_2.a.a, 34558u, arg_2.a)), vec3<u32>(var_1.a, 30301u, u_input.a))));
    return Struct_1(~(~(21598u | var_3.a.a)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-584f, -1121f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1004f)))))))));
    var_0 = -118f;
    var_0 = _wgslsmith_f_op_f32(577f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(392f))))))));
    var_0 = 1596f;
    var var_1 = ~(~vec2<u32>(countOneBits(_wgslsmith_mod_u32(arg_0.a.a, arg_0.a.a)), u_input.a));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1314f, 581f))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, 1954f), vec2<f32>(1044f, -757f)))))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1444f, 981f), vec2<f32>(113f, 879f))))), vec2<f32>(1487f, _wgslsmith_f_op_f32(f32(-1f) * -625f))))));
}

fn func_1() -> bool {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -1561f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-296f, 363f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(373f + -216f) - 723f))), -320f, -478f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1461f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1273f))))));
    var var_1 = func_2(Struct_3(!select(true, all(vec4<bool>(false, false, false, true)), true), ~(-(~(-2147483647i)))), reverseBits(40602u), Struct_1(u_input.a));
    var var_2 = -76637i;
    let var_3 = Struct_4(~(~var_1.a | ~var_1.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_2(Struct_1(u_input.a)), Struct_3(true, 1i)))), -864f);
    return var_0.x > var_3.b.x;
}

fn func_4(arg_0: f32, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_3(arg_1, _wgslsmith_dot_vec2_i32(vec2<i32>(-10272i, ~firstTrailingBit(-2147483647i)), -(~_wgslsmith_mod_vec2_i32(vec2<i32>(71308i, -1i), vec2<i32>(1i, -2147483647i)))));
    var var_1 = Struct_2(Struct_1(30434u));
    let var_2 = select(select(!select(!vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(arg_1, arg_1, var_0.a, false), true), !select(vec4<bool>(arg_1, false, var_0.a, arg_1), !vec4<bool>(arg_1, false, var_0.a, arg_1), vec4<bool>(true, arg_1, false, true)), arg_1 || !arg_1), vec4<bool>(true, true, true, true), !select(select(vec4<bool>(var_0.a, arg_1, arg_1, arg_1), select(vec4<bool>(true, false, var_0.a, arg_1), vec4<bool>(arg_1, var_0.a, true, arg_1), true), all(vec4<bool>(var_0.a, var_0.a, var_0.a, false))), select(select(vec4<bool>(var_0.a, arg_1, arg_1, false), vec4<bool>(true, arg_1, true, true), vec4<bool>(arg_1, arg_1, var_0.a, var_0.a)), vec4<bool>(true, true, arg_1, arg_1), select(arg_1, var_0.a, true)), false));
    var_1 = Struct_2(var_1.a);
    var var_3 = var_0.b;
    return Struct_1(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = !(!(!(!any(vec3<bool>(true, false, true)))));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1279f, -653f)) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-720f, -1237f), vec2<f32>(-756f, -1513f), false))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(3781f, -668f) - vec2<f32>(1000f, -1498f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-452f, -892f), vec2<f32>(220f, 1000f))))), vec2<f32>(-687f, -671f));
    var var_2 = func_4(1f, func_1());
    var var_3 = 3723u;
    var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(37680u, ~firstLeadingBit(~(~vec3<u32>(29043u, 0u, u_input.a))), vec2<u32>(u_input.a, 75639u), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a, 4294967295u), _wgslsmith_sub_vec2_u32(vec2<u32>(var_2.a, u_input.a), vec2<u32>(u_input.a, u_input.a))), u_input.a), vec3<u32>(_wgslsmith_div_u32(0u, 24601u) & (u_input.a << (22885u % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(54945u, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 122963u), vec2<u32>(1u, var_2.a))), _wgslsmith_mod_u32(func_4(901f, true).a, _wgslsmith_div_u32(var_2.a, 62847u))), vec3<u32>(21342u, (u_input.a | var_2.a) ^ 4294967295u, 373u)));
}


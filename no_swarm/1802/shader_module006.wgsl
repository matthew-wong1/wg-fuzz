struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> bool {
    let var_0 = ~_wgslsmith_div_u32(~(~63883u >> (_wgslsmith_div_u32(0u, 21412u) % 32u)), ~_wgslsmith_sub_u32(1u, 1u));
    let var_1 = 0u;
    let var_2 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1239f))), _wgslsmith_f_op_f32(floor(1000f)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-100f, -405f, var_2.x, -550f)))), vec4<f32>(_wgslsmith_f_op_f32(1997f * _wgslsmith_f_op_f32(808f - -1000f)), var_2.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.x))), 1143f))));
    let var_4 = Struct_1(!(!arg_1.a));
    return _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3, min(u_input.a << (80032u % 32u), max(-52284i, -34773i)), arg_3, u_input.a), countOneBits(~u_input.b)) < arg_3;
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = ~(~(~_wgslsmith_div_u32(1u, 1u))) & select(select(~abs(47809u), ~12780u, any(select(vec2<bool>(false, true), vec2<bool>(false, false), true))), abs(~1u), !(!any(vec2<bool>(true, true))));
    var var_1 = true;
    var_1 = !func_3(Struct_1(vec4<bool>(true, true, true, u_input.b.x < u_input.a)), Struct_1(vec4<bool>(true, true, true, true)), (_wgslsmith_f_op_f32(-arg_0) <= arg_0) && true, -u_input.a);
    var_0 = 0u;
    var_0 = ~_wgslsmith_sub_u32(4294967295u, min(max(1u, 53924u), min(abs(4294967295u), 1u)));
    return arg_0;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<u32>) -> bool {
    var var_0 = !any(arg_1.a);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(func_2(var_1)), var_1, -1000f);
    var var_3 = arg_2.zw;
    var_3 = vec2<u32>(var_3.x, firstTrailingBit(27214u));
    return arg_1.a.x;
}

fn func_4(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(220f, -1724f, 231f, 990f)), vec4<f32>(-1290f, -851f, -1213f, -448f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1303f + 580f), -393f, 538f, 1f))));
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.zz)), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, -685f), vec2<f32>(var_0.x, -1244f)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1028f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(-247f - var_0.x)))))));
    let var_2 = !((~firstLeadingBit(u_input.a) >= u_input.a) || arg_0.a.x);
    var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1343f + _wgslsmith_f_op_f32(round(var_0.x))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)), var_0.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(round(var_1.x)))))))), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, var_1.x))))));
    let var_3 = true;
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(step(var_0.yzz, _wgslsmith_f_op_vec3_f32(-var_0.zwy))), _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_div_f32(-951f, _wgslsmith_f_op_f32(-972f - -1000f)))), vec3<f32>(-969f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_1.x)) + var_0.x), 732f), var_0.xzz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.ww * var_1))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var_0 = 1u;
    var_0 = ~(~(~(~(~32694u))));
    let var_1 = -_wgslsmith_dot_vec3_i32(~u_input.b.xyw, u_input.b.zxw);
    var var_2 = Struct_1(select(select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, all(vec4<bool>(false, false, false, true)), true), true));
    var_0 = ~4294967295u;
    let x = u_input.a;
    s_output = func_4(Struct_1(select(select(vec4<bool>(var_2.a.x, false, false, false), vec4<bool>(var_2.a.x, var_2.a.x, false, false), true), vec4<bool>(true, false, func_1(u_input.b.xzz, Struct_1(vec4<bool>(true, true, false, true)), vec4<u32>(5248u, 12166u, 1u, 60906u)), false), !var_2.a)));
}


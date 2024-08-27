struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-886f + 1739f), _wgslsmith_f_op_f32(trunc(891f)), -752f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-443f, 755f, -265f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1254f, -716f, -357f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1339f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1894f))))));
    var var_2 = Struct_1(abs(var_0.a));
    var var_3 = 1u;
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-307f, 1562f, var_1.x), vec3<f32>(var_1.x, -1000f, -990f)) + vec3<f32>(-1000f, var_1.x, 151f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, -488f) * vec3<f32>(-654f, 828f, var_1.x)))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1264f), -1000f, var_1.x)));
    return Struct_1(select(vec3<u32>(u_input.a, 33997u, 0u), vec3<u32>(abs(var_0.a.x), ~39311u, ~(~0u)), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_add_i32(reverseBits(-23539i), select(-(~1i), _wgslsmith_add_i32(-34544i, 7941i), false));
    let var_1 = var_0;
    let var_2 = func_2(Struct_1(~vec3<u32>(u_input.a, ~0u, min(1u, u_input.a))));
    let var_3 = Struct_1(_wgslsmith_add_vec3_u32(func_2(Struct_1(vec3<u32>(4294967295u, 19418u, 95435u) ^ var_2.a)).a, vec3<u32>(_wgslsmith_div_u32(47950u & var_2.a.x, var_2.a.x >> (1u % 32u)), u_input.a, u_input.a)));
    var var_4 = true;
    return var_2;
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_1(max(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(32525u, arg_1.a.x, u_input.a, 51176u), vec4<u32>(31058u, arg_1.a.x, arg_1.a.x, arg_0)), abs(reverseBits(4294967295u)), 1u), arg_1.a));
    var var_1 = select(select(select(vec3<bool>(all(vec3<bool>(true, true, true)), true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(all(vec2<bool>(true, false)), false, false), vec3<bool>(true, true, true)), select(select(vec3<bool>(all(vec4<bool>(true, false, false, false)), true, 25893u >= arg_1.a.x), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), -26271i < select(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, 1i, -42691i), vec4<i32>(-7290i, 57443i, -43502i, 2147483647i)), any(vec4<bool>(false, true, true, false)))), all(vec3<bool>(true, all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false)), true)));
    return 1f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(1u, var_0)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-513f + -357f), -767f))))));
    var var_2 = -243f;
    let var_3 = -688f;
    let var_4 = vec2<i32>(1i, 1i);
    var var_5 = func_2(var_0);
    var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) + _wgslsmith_f_op_f32(f32(-1f) * -111f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(645f + var_3)) * _wgslsmith_f_op_f32(var_3 - _wgslsmith_f_op_f32(floor(953f))))), 1u, vec3<i32>(34109i, 26232i & _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_4.x, -8898i, var_4.x), vec3<i32>(-1i, var_4.x, var_4.x)), ~vec3<i32>(var_4.x, -5172i, 2147483647i)), 0i), 0u, 2147483647i);
}


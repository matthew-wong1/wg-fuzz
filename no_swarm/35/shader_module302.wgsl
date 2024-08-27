struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: u32) -> f32 {
    var var_0 = ~u_input.e.x;
    return _wgslsmith_f_op_f32(trunc(arg_0));
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: vec2<u32>) -> bool {
    let var_0 = Struct_1(u_input.a.x, _wgslsmith_f_op_f32(step(arg_0, 1033f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(floor(-1192f)), ~vec3<u32>(4294967295u, arg_2.x, u_input.a.x), 1u))))), arg_1.x);
    let var_1 = Struct_1(countOneBits(1u), 638f, _wgslsmith_f_op_f32(-128f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(263f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(459f, -726f, true)), -221f))), true);
    let var_2 = Struct_1(~_wgslsmith_dot_vec3_u32(max(u_input.a.wyz, vec3<u32>(var_1.a, 0u, u_input.a.x)), select(_wgslsmith_mod_vec3_u32(u_input.a.yyz, u_input.a.zzy), ~vec3<u32>(var_1.a, 0u, u_input.b), true)), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_1.c, 1160f, arg_1.x))))), ~vec3<u32>(1u, 34209u, 5253u) << (~vec3<u32>(49997u, u_input.b, 4294967295u) % vec3<u32>(32u)), firstTrailingBit(2261u))), _wgslsmith_f_op_f32(-var_1.b), all(!select(arg_1.wy, vec2<bool>(var_1.d, arg_1.x), vec2<bool>(arg_1.x, arg_1.x))) || var_0.d);
    let var_3 = var_1;
    var var_4 = ~(~(~vec2<u32>(var_0.a, var_0.a) | firstTrailingBit(_wgslsmith_add_vec2_u32(arg_2, vec2<u32>(1u, 9549u)))));
    return any(!select(arg_1.ww, arg_1.zw, all(!arg_1)));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1899f);
    var var_1 = 32110u;
    var var_2 = u_input.e;
    var_1 = u_input.d;
    var_1 = u_input.a.x;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1003f)), _wgslsmith_f_op_f32(-223f - -1000f), arg_0 == false)), -311f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(412f - 1000f))))), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1260f), vec4<bool>(arg_0, arg_0, true, arg_0), _wgslsmith_add_vec2_u32(u_input.a.yw, reverseBits(u_input.a.yw))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1097f, _wgslsmith_f_op_f32(trunc(995f)), true))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(783f + 747f), _wgslsmith_f_op_f32(f32(-1f) * -935f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-844f)))), true)), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(all(vec4<bool>(false, true, true, false)), _wgslsmith_mod_i32(123i, u_input.e.x), _wgslsmith_sub_vec2_i32(u_input.e.xx, u_input.e.yy)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2648f))))), -621f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(451f))) < 1000f);
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-657f, -295f)))))));
    let var_2 = var_0;
    let var_3 = Struct_1(4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2009f * var_1.x)), var_2.b, false);
    let var_4 = var_2.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, 1068f, var_0.b, var_0.c)) * vec4<f32>(_wgslsmith_f_op_f32(var_2.b * var_0.b), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(min(var_1.x, var_1.x)), var_0.c))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, _wgslsmith_f_op_f32(-1388f * _wgslsmith_f_op_f32(select(1000f, var_2.b, var_4))), 911f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, -125f, var_3.b)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_2.c, var_3.b) * vec3<f32>(-214f, var_3.b, -513f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-736f, var_1.x, -279f)), var_4))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(1420f, -1000f)), _wgslsmith_f_op_f32(func_1(true, u_input.e.x, vec2<i32>(u_input.e.x, u_input.e.x))), _wgslsmith_f_op_f32(-var_2.b))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, -1045f, var_1.x))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(1186f, -178f, 1873f), vec3<f32>(-366f, -575f, var_1.x)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_3.b, 999f, var_3.c)))))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1074f, _wgslsmith_div_f32(var_2.b, 1405f))))));
}


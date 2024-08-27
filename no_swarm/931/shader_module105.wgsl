struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-655f, -825f, 1012f);

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec3<bool>(false, true, false), 0u, vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, false), 0u, vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, false, true), 4294967295u, vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, false, false), 112922u, vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, false, true), 1u, vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, false), 58599u, vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, true, false), 24501u, vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, true), 75111u, vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, true), 25546u, vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, false, false), 0u, vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, false), 7390u, vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, false, true), 0u, vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, true), 311u, vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, false, true), 16062u, vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, true), 1u, vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, false), 0u, vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, true), 36263u, vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, false, true), 1u, vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, true, false), 156086u, vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, true), 4294967295u, vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, false), 4294967295u, vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, false, false), 4294967295u, vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, false, false), 1u, vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, true, false), 111021u, vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, false, true), 59044u, vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, true, false), 1u, vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, false, true), 67670u, vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, false), 4294967295u, vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, false, false), 0u, vec3<bool>(true, true, false)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    var var_0 = vec4<f32>(-349f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -221f) * global0.x) - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-528f, global0.x), -1088f, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(ceil(1895f)))), -1014f))));
    let var_1 = vec2<i32>(_wgslsmith_add_i32(-8697i, min(0i, ~u_input.c.x)), 44873i);
    var var_2 = _wgslsmith_f_op_f32(-var_0.x);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 681f, arg_0.x), _wgslsmith_f_op_vec3_f32(abs(var_0.yyz))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, 706f, 1540f), vec3<f32>(317f, var_0.x, -330f)))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_0.wyy)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 1000f, -177f) - vec3<f32>(-1283f, var_0.x, arg_0.x)))), var_0.xzz, select(vec3<bool>(all(vec3<bool>(false, false, true)), true, true), vec3<bool>(true, true, false), any(vec3<bool>(false, false, true))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(189f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * -138f)), var_0.x, _wgslsmith_f_op_f32(-342f * _wgslsmith_f_op_f32(trunc(global0.x)))))));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-789f))));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: bool, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = true;
    let var_1 = ~arg_1 ^ arg_1;
    var_0 = countOneBits(~u_input.a) < (-(~(-25043i << (arg_1 % 32u))) | u_input.d);
    global1 = array<Struct_1, 29>();
    var var_2 = true;
    return Struct_1(!vec3<bool>(false, _wgslsmith_f_op_f32(func_3(global0.xx)) < _wgslsmith_f_op_f32(sign(global0.x)), false), ~(~0u), !vec3<bool>(false, any(!arg_3.xwz), arg_3.x));
}

fn func_1() -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(29350u, 29u)];
    let var_1 = vec3<u32>(var_0.b, var_0.b, ~max(3099u, 1u));
    let var_2 = u_input.d;
    global1 = array<Struct_1, 29>();
    global0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, _wgslsmith_f_op_f32(-1017f + 473f), 693f)));
    return func_2(-(~var_2), 6858u, true, !vec4<bool>(true, true, var_0.a.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-712f + global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(711f, global0.x)) - _wgslsmith_div_f32(global0.x, global0.x))) + global0.x), 519f);
    var var_0 = 213f;
    let var_1 = 82645u;
    var var_2 = func_1();
    let var_3 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.b, 9858i, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, var_2.b), firstLeadingBit(vec3<u32>(4294967295u, 4294967295u, var_1))) >= (~var_2.b ^ (var_2.b ^ var_2.b))), ~countOneBits(select(max(var_2.b, 4294967295u), 1u, !var_3.x)), global0.x);
}


struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: bool,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    var var_0 = select(!vec4<bool>(select(false, true, false) == all(vec2<bool>(false, false)), all(vec4<bool>(true, true, true, true)), true, false), vec4<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), !all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(trunc(-778f)) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(arg_0.x)))), !(arg_0.x < -1150f) && true), vec4<bool>(all(select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), true), false)), true, true, false));
    var var_1 = !(!var_0.yww);
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(768f, 128f, _wgslsmith_f_op_f32(f32(-1f) * -1348f)) * vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) + -1122f), 724f))));
    var var_3 = 1u;
    var_1 = select(vec3<bool>(var_0.x, true, false), var_0.xzw, false);
    return _wgslsmith_f_op_f32(-var_2.x);
}

fn func_2(arg_0: f32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * -361f)))));
    let var_1 = u_input.b.x;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-826f, arg_0))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 1412f))))))));
    var_0 = _wgslsmith_f_op_f32(select(-227f, _wgslsmith_f_op_f32(2286f - arg_0), false));
    return !(!(!vec3<bool>(true, u_input.a.x < 1i, all(vec4<bool>(true, false, false, false)))));
}

fn func_4(arg_0: bool, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_3(Struct_2(u_input.a.x, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(max(-1195f, 1175f)), -948f, -278f, -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-400f))), _wgslsmith_sub_i32(12913i, -u_input.a.x), -(~vec2<i32>(u_input.a.x, 28860i)))), u_input.b.x > 64325u, arg_1, select(-15518i, 34294i, true), 57978i != u_input.a.x);
    let var_1 = var_0.a.b.a.x;
    var var_2 = Struct_2(-61679i, var_0.a.b);
    let var_3 = -1i;
    let var_4 = true;
    return var_2.b;
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = 2147483647i;
    let var_1 = Struct_4(true || !(any(vec2<bool>(false, true)) | select(true, true, false)));
    let var_2 = var_1;
    let var_3 = ~(-u_input.a.xz);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1285f + arg_1.a.x) - _wgslsmith_f_op_f32(f32(-1f) * -1043f)) - _wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(func_3(arg_1.a.xx)))) * _wgslsmith_f_op_f32(-arg_1.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)));
    return vec3<u32>(select(1u, 29753u, 1i != countOneBits(arg_0)), ~1u, min(abs(u_input.b.x), u_input.b.x));
}

fn func_1(arg_0: u32) -> vec4<bool> {
    var var_0 = firstLeadingBit(u_input.a.yzw);
    var_0 = ~u_input.a.yyx >> (func_5(-38429i, func_4(any(func_2(577f)), true)) % vec3<u32>(32u));
    var_0 = -(u_input.a.wzz << (abs(~(vec3<u32>(9278u, 59748u, 0u) << (vec3<u32>(1u, arg_0, arg_0) % vec3<u32>(32u)))) % vec3<u32>(32u)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(613f, 313f, 1148f, 1811f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(542f, -1632f, 682f, -200f)))))), -2205f, -8428i, func_4(any(vec2<bool>(true, true)) | (abs(u_input.b.x) <= _wgslsmith_clamp_u32(6909u, arg_0, 6331u)), true).d);
    let var_2 = vec2<u32>(30654u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(~1u, arg_0), _wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.b.xzz), ~u_input.b.wyz) ^ _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0, arg_0, 4294967295u), ~u_input.b.wyz)));
    return select(select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, ~var_1.d.x > abs(-19360i))), !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), true), firstTrailingBit(6742i) == u_input.a.x), !(func_2(_wgslsmith_div_f32(var_1.b, 1559f)).x | all(vec4<bool>(true, false, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(!vec2<bool>(true, any(vec3<bool>(false, false, true))), vec2<bool>(u_input.a.x >= ~u_input.a.x, true), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_1 = select(func_1(_wgslsmith_dot_vec2_u32(~(~u_input.b.zy), u_input.b.yy)), !select(!func_1(u_input.b.x), select(!vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(false, true, var_0.x, true), var_0.x), var_0.x), !(!(!select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, true, true), var_0.x))));
    var_1 = vec4<bool>(var_1.x, true, select(var_1.x, select(true, all(var_0), all(select(vec4<bool>(var_1.x, var_0.x, var_1.x, var_1.x), vec4<bool>(var_0.x, false, false, true), true))), false), true);
    var var_2 = func_1(u_input.b.x);
    var var_3 = ~abs(max(u_input.b.x & (u_input.b.x ^ u_input.b.x), 38120u));
    let var_4 = vec3<bool>(false, all(select(vec4<bool>(true, false, true, !var_0.x), !vec4<bool>(false, false, true, var_0.x), any(vec2<bool>(true, true)))), var_1.x);
    let var_5 = Struct_3(Struct_2(-1i, func_4(u_input.a.x >= _wgslsmith_clamp_i32(u_input.a.x, 21101i, u_input.a.x), true)), var_1.x, all(func_1(4294967295u)), _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, func_4(true, !var_1.x).d.x), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_5.a.b.a.yxz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.a.b.a.x)))), ~vec2<u32>(~firstLeadingBit(4294967295u), u_input.b.x));
}


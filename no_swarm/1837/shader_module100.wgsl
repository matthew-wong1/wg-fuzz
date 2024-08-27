struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: Struct_2,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<u32>) -> bool {
    var var_0 = -(~u_input.c);
    let var_1 = any(!arg_0);
    var_0 = -27290i;
    var var_2 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-2325f, -1023f))) - 524f), -110f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-274f * _wgslsmith_f_op_f32(1000f - 1476f)), 481f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(136f, _wgslsmith_f_op_f32(945f - -1172f)))))), all(vec4<bool>(any(arg_0.yx), any(select(arg_0, vec3<bool>(false, arg_0.x, true), vec3<bool>(true, true, true))), any(select(vec2<bool>(arg_0.x, true), arg_0.xy, false)), arg_0.x)), Struct_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(362f, _wgslsmith_f_op_f32(abs(433f)), _wgslsmith_f_op_f32(round(1562f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2823f, -1000f, -1177f)), vec3<f32>(1000f, -360f, 966f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(3182f)), _wgslsmith_f_op_f32(-992f - -684f), _wgslsmith_f_op_f32(-1409f - 305f), _wgslsmith_f_op_f32(f32(-1f) * -594f)))), arg_0.xx);
    var_0 = u_input.c;
    return false;
}

fn func_2(arg_0: bool, arg_1: vec4<f32>) -> f32 {
    let var_0 = Struct_5(1u, _wgslsmith_mod_vec4_u32(u_input.b, u_input.b), ~u_input.a);
    var var_1 = ~(~4294967295u);
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(min(arg_1, arg_1)), !((false | func_3(vec3<bool>(false, true, true), vec3<u32>(0u, 4294967295u, u_input.b.x))) & (-u_input.c == countOneBits(1i))), Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1.x - arg_1.x), _wgslsmith_f_op_f32(-851f + arg_1.x), 2686f), vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_div_f32(arg_1.x, arg_1.x), _wgslsmith_f_op_f32(-751f * arg_1.x))), arg_1), !select(vec2<bool>(arg_0, true), vec2<bool>(true, true), all(select(vec4<bool>(false, arg_0, false, false), vec4<bool>(false, arg_0, false, arg_0), vec4<bool>(arg_0, true, arg_0, true)))));
    var var_3 = var_2.c.b;
    let var_4 = firstTrailingBit(u_input.c);
    return _wgslsmith_f_op_f32(-var_3.x);
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(func_2(all(select(vec3<bool>(arg_2, false, arg_2), vec3<bool>(arg_2, arg_2, arg_2), true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(222f, arg_1, 1000f, -1602f) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2429f, arg_1, arg_1, arg_1), vec4<f32>(339f, 1647f, arg_1, arg_1)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2363f - _wgslsmith_div_f32(2337f, arg_1)), _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(select(530f, arg_1, false)))), arg_1, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1501f * 521f))))), vec4<f32>(_wgslsmith_f_op_f32(min(arg_1, -641f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1))))), _wgslsmith_f_op_f32(arg_1 * 1546f), _wgslsmith_f_op_f32(round(arg_1)))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-736f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(select(-1381f, 780f, arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + 133f)), _wgslsmith_f_op_f32(f32(-1f) * -1028f))), any(!vec4<bool>(false, var_0.x < arg_1, true, any(vec4<bool>(arg_2, false, true, arg_2)))), Struct_2(_wgslsmith_f_op_vec3_f32(-var_0.xxz), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-393f, arg_1, 2155f, var_0.x)) * vec4<f32>(-1017f, var_0.x, arg_1, 1000f)))), vec2<bool>(true, (select(arg_2, arg_2, false) & all(vec2<bool>(false, arg_2))) || any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, arg_2, arg_2, arg_2), vec4<bool>(false, arg_2, arg_2, false)))));
    var var_2 = _wgslsmith_f_op_f32(917f * -646f) != _wgslsmith_f_op_f32(1411f * _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(f32(-1f) * -395f)));
    var_1 = Struct_3(var_1.c.b, var_1.b, Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-472f)), _wgslsmith_f_op_f32(min(-348f, var_1.a.x)), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, arg_1, var_0.x) - _wgslsmith_f_op_vec3_f32(-var_0.yyx))), vec4<f32>(599f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, 683f)), arg_1, _wgslsmith_f_op_f32(f32(-1f) * -1142f))), !(!(!vec2<bool>(true, var_1.d.x))));
    var var_3 = u_input.b.xz;
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(4294967295u << (u_input.a % 32u), _wgslsmith_f_op_f32(f32(-1f) * -689f), true & !(!select(true, false, false)));
    var var_1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-322f + var_0.b.x) - var_0.b.x))), -1270f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b.zy + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.a.x, var_0.a.x))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.b.x, var_0.b.x), var_0.a.xz))))) * var_0.a.yz)));
    let var_2 = abs(abs(vec3<u32>(max(60567u, _wgslsmith_sub_u32(56569u, 14036u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 30115u, u_input.a, 1u), ~vec4<u32>(u_input.e, 0u, 0u, u_input.a)), _wgslsmith_mod_u32(u_input.a, u_input.d))));
    var var_3 = vec2<i32>(_wgslsmith_dot_vec2_i32(reverseBits(max(-vec2<i32>(-27376i, u_input.c), vec2<i32>(-44584i, -14340i))), select(firstTrailingBit(select(vec2<i32>(u_input.c, -43615i), vec2<i32>(u_input.c, u_input.c), true)), abs(vec2<i32>(u_input.c, -5708i) ^ vec2<i32>(21222i, u_input.c)), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), false))), -65472i);
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-321f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1234f * _wgslsmith_f_op_f32(sign(-1774f)))))), -1000f);
    var_1 = var_0.b.zw;
    let var_4 = -u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x)), select(firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(-19268i, 2147483647i), vec2<i32>(var_3.x, u_input.c) << (vec2<u32>(u_input.a, u_input.e) % vec2<u32>(32u)))), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(select(vec2<i32>(19918i, u_input.c), vec2<i32>(u_input.c, var_3.x), vec2<bool>(true, true)), select(vec2<i32>(10658i, var_4), vec2<i32>(var_3.x, var_3.x), vec2<bool>(true, true))), vec2<i32>(-1i, var_4)), vec2<bool>(all(vec4<bool>(true, true, true, true)), true)));
}


struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec3<u32>(4294967295u, 52261u, 4294967295u)), Struct_1(vec3<u32>(7681u, 27415u, 3880u)), Struct_1(vec3<u32>(1u, 1u, 4294967295u)), Struct_1(vec3<u32>(61736u, 15942u, 0u)), Struct_1(vec3<u32>(4294967295u, 33740u, 16037u)), Struct_1(vec3<u32>(1u, 27319u, 4294967295u)), Struct_1(vec3<u32>(1u, 1u, 1u)));

var<private> global1: Struct_1 = Struct_1(vec3<u32>(1u, 1u, 37425u));

var<private> global2: array<Struct_1, 19>;

var<private> global3: array<vec4<i32>, 11>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    return global0[_wgslsmith_index_u32(0u, 7u)];
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-622f, 556f, 279f, 722f), vec4<f32>(114f, 1948f, -499f, -643f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1156f, -511f, -1000f, -312f) + vec4<f32>(-791f, -620f, 518f, -1389f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-834f, 203f, -552f, 1331f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(885f, -1023f, 1000f, 1053f))))));
    let var_1 = 1i;
    var var_2 = func_1(var_0);
    var var_3 = select(arg_0.a.x, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(34265u, arg_0.a.x, 9869u), ~361u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, 74773u, arg_0.a.x, arg_0.a.x), vec4<u32>(global1.a.x, 4294967295u, 4294967295u, 139909u))), ~firstTrailingBit(vec3<u32>(0u, 0u, arg_1.a.x))), _wgslsmith_add_u32(max(0u, ~1u), ~_wgslsmith_add_u32(arg_1.a.x, 28087u))), true);
    let var_4 = vec2<bool>(!(all(vec2<bool>(true, true)) && any(vec4<bool>(true, true, true, true))), false);
    return firstTrailingBit(max(countOneBits(vec3<u32>(4294967295u, var_2.a.x << (1u % 32u), firstTrailingBit(57541u))), vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(global1.a.x, var_2.a.x, arg_1.a.x, global1.a.x), ~vec4<u32>(1u, 33188u, arg_0.a.x, arg_1.a.x)), 4294967295u, firstLeadingBit(_wgslsmith_div_u32(63651u, arg_0.a.x)))));
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = Struct_1(func_3(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-751f, 1257f, -316f, 555f))))), Struct_1(~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x), vec3<u32>(1u, 0u, global1.a.x))), i32(-1i) * -15576i));
    return select(true, _wgslsmith_f_op_f32(2239f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1322f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1157f)), _wgslsmith_f_op_f32(step(-851f, -922f)))))), all(vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    let var_1 = -1i;
    var var_2 = _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(~(~global1.a.zy), max(vec2<u32>(5608u ^ global1.a.x, 67100u ^ global1.a.x), _wgslsmith_mod_vec2_u32(~global1.a.yy, global1.a.yx))), max(_wgslsmith_mult_vec2_u32(reverseBits(global1.a.zz), ~global1.a.xx), ~reverseBits(abs(global1.a.zy))));
    var_2 = ~vec2<u32>(var_2.x, ~19425u);
    let var_3 = _wgslsmith_div_u32(4294967295u, 27799u);
    let var_4 = _wgslsmith_div_vec2_u32(~vec2<u32>(23014u, ~34780u), vec2<u32>(0u, _wgslsmith_add_u32(var_3, firstLeadingBit(_wgslsmith_add_u32(var_2.x, 25622u)))));
    var var_5 = ~select(_wgslsmith_mod_u32(global1.a.x ^ global1.a.x, 85909u) | ~_wgslsmith_sub_u32(var_2.x, var_3), 13507u, all(vec2<bool>(false, false)) && func_2(func_1(vec4<f32>(-1589f, -1000f, -1288f, 1000f))));
    var_5 = ~(~4294967295u ^ _wgslsmith_sub_u32(reverseBits(_wgslsmith_mult_u32(7410u, var_4.x)), 33275u));
    global1 = func_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, 1788f, 342f, 1740f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-217f, 632f, 999f, -1014f) - vec4<f32>(-1445f, 325f, -1460f, 1968f)), vec4<bool>(true, true, false, true)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, -118f, 1000f, 716f))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1382f, -1303f, 920f, 982f), vec4<f32>(406f, 629f, 2661f, 725f)))))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, all(vec2<bool>(false, true))), vec4<bool>(true, true, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~firstLeadingBit(~vec4<u32>(3115u, 1u, 25166u, 0u))), vec4<i32>(max(_wgslsmith_div_i32(_wgslsmith_div_i32(28073i, u_input.a), 0i), var_1), firstTrailingBit(-2974i), u_input.b, reverseBits(-1i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(1329f, -1281f, -601f, 668f), vec4<f32>(-407f, -304f, -1281f, 1000f)))), vec4<f32>(_wgslsmith_f_op_f32(-528f - 746f), -1857f, _wgslsmith_f_op_f32(-1932f * 2266f), _wgslsmith_f_op_f32(trunc(-780f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-769f, 944f, -193f, 1129f), vec4<f32>(-263f, -275f, -339f, -2211f), vec4<bool>(true, true, false, true))), vec4<f32>(409f, 1084f, -731f, -446f)))), 95634u, 8605i);
}


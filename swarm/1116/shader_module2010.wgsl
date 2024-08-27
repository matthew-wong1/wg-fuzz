struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11>;

var<private> global1: vec3<u32>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec3<u32>, arg_3: vec4<f32>) -> f32 {
    let var_0 = Struct_1(true);
    var var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-130f, _wgslsmith_div_f32(1071f, -901f)) - _wgslsmith_div_vec2_f32(arg_3.ww, _wgslsmith_f_op_vec2_f32(round(arg_3.zx)))), vec2<f32>(_wgslsmith_f_op_f32(arg_3.x - arg_3.x), 1f))));
    var var_3 = ~select(countOneBits(_wgslsmith_mult_i32(2147483647i, u_input.b)), u_input.b, all(!vec2<bool>(arg_0.a, arg_0.a)) | !select(true, false, arg_0.a));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_2.x)), var_2.x) * arg_3.x);
}

fn func_2(arg_0: f32, arg_1: vec3<f32>) -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.x)))) <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -442f) * _wgslsmith_f_op_f32(func_3(Struct_1(true), 11271u, u_input.a.yzz, vec4<f32>(arg_0, 357f, arg_0, arg_1.x)))), _wgslsmith_f_op_f32(-arg_1.x))));
    var var_1 = Struct_1(all(!select(select(vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(var_0.a, true, var_0.a), vec3<bool>(false, var_0.a, var_0.a)), select(vec3<bool>(var_0.a, false, true), vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(false, var_0.a, true)), var_0.a)));
    return ~vec3<u32>((u_input.a.x << (_wgslsmith_clamp_u32(1u, u_input.a.x, 1926u) % 32u)) | _wgslsmith_mod_u32(u_input.a.x, 0u), 1u, global1.x);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: vec2<f32>) -> vec3<u32> {
    global1 = _wgslsmith_sub_vec3_u32(~(u_input.a.zxx & u_input.a.yzy), ~(~(~vec3<u32>(u_input.a.x, 0u, 1u)))) & (func_2(_wgslsmith_div_f32(arg_2.x, arg_2.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.x, 106f, 1295f), vec3<f32>(-1086f, arg_2.x, 675f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -106f, -974f), vec3<f32>(-137f, arg_2.x, 550f), vec3<bool>(false, false, true))))) ^ u_input.a.www);
    global0 = array<u32, 11>();
    let var_0 = select(select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, false, false)), firstLeadingBit(arg_1.x) > (u_input.a.x ^ arg_1.x)), select(select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), vec3<bool>(true, true, true), vec3<bool>(true, true, 134637u <= u_input.a.x)), select(vec3<bool>(all(vec2<bool>(true, true)), all(vec3<bool>(true, false, false)), false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), any(vec3<bool>(true, true, true))), all(vec3<bool>(true, false, false)))), vec3<bool>(false, !(!(-378f > arg_2.x)), false), !vec3<bool>(all(vec4<bool>(false, false, false, false)), true, !all(vec2<bool>(true, true))));
    global0 = array<u32, 11>();
    global0 = array<u32, 11>();
    return _wgslsmith_add_vec3_u32(u_input.a.yzx, reverseBits(~(~u_input.a.zwy)));
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = true;
    let var_1 = arg_2;
    var var_2 = firstLeadingBit(-vec2<i32>(-54244i, u_input.b));
    var_2 = vec2<i32>(_wgslsmith_sub_i32(-(~(-2096i)), _wgslsmith_clamp_i32(var_2.x >> (55823u % 32u), 0i, u_input.b)) ^ -u_input.b, 26534i);
    let var_3 = var_1;
    return Struct_1(var_0);
}

fn func_5(arg_0: Struct_1) -> vec3<u32> {
    global0 = array<u32, 11>();
    var var_0 = ~firstLeadingBit(firstTrailingBit(vec2<i32>(-2147483647i, u_input.b)) & firstLeadingBit(vec2<i32>(0i, u_input.b))) & select(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(19136i, -5935i, -12678i), vec3<i32>(u_input.b, 15850i, u_input.b)), 2147483647i), countOneBits(vec2<i32>(u_input.b, u_input.b))), _wgslsmith_sub_vec2_i32(-select(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, 0i), false), vec2<i32>(1i, 1i)), select(vec2<bool>(all(vec2<bool>(false, arg_0.a)), arg_0.a), vec2<bool>(true || arg_0.a, !arg_0.a), false));
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(774f, -668f, 1000f, 1366f) * vec4<f32>(1853f, 465f, 709f, 239f)), vec4<f32>(-988f, -678f, -569f, 1981f)) * vec4<f32>(1f, 1f, 1f, 1f))))));
    let var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(117291u, u_input.a.x, ~71044u, 1u), vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u)) & ~global0[_wgslsmith_index_u32(4294967295u, 11u)], ~4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u >> ((u_input.a.x ^ global1.x) % 32u), 11u)], 11u)], 11u)], 0u)), vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(u_input.a.x, 11u)], _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global1.x, 11u)], u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 11u)], 674u), u_input.a)), 11u)] ^ firstLeadingBit(_wgslsmith_dot_vec2_u32(global1.xx, vec2<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], u_input.a.x))), global0[_wgslsmith_index_u32(49274u, 11u)] << (~(~u_input.a.x) % 32u), 54381u));
    global1 = u_input.a.xyz;
    return _wgslsmith_clamp_vec3_u32(~vec3<u32>(~reverseBits(global1.x), ~global1.x, ~var_2), u_input.a.xzw, u_input.a.zwz);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = max(firstLeadingBit(func_5(func_4(_wgslsmith_f_op_f32(sign(950f)), func_1(vec2<i32>(u_input.b, -55345i), u_input.a.zw, vec2<f32>(-1582f, 259f)), Struct_1(true)))), select(_wgslsmith_div_vec3_u32(reverseBits(~u_input.a.xyw), abs(u_input.a.yxx)), ~u_input.a.xwy | _wgslsmith_mod_vec3_u32(u_input.a.xwy, u_input.a.xwx), select(vec3<bool>(global0[_wgslsmith_index_u32(94534u, 11u)] != global0[_wgslsmith_index_u32(45432u, 11u)], false, all(vec2<bool>(false, true))), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), all(vec2<bool>(true, true))))));
    let var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(func_2(986f, _wgslsmith_f_op_vec3_f32(vec3<f32>(149f, -2207f, 594f) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(166f, 638f, -1315f))))).x, ~0u, ~0u, _wgslsmith_div_u32(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 11u)])), ~u_input.a);
    var var_1 = global1.x ^ max(func_2(1182f, vec3<f32>(_wgslsmith_div_f32(546f, 936f), _wgslsmith_f_op_f32(step(-1456f, -1165f)), _wgslsmith_f_op_f32(f32(-1f) * -728f))).x, _wgslsmith_mod_u32(var_0, 111518u));
    global1 = vec3<u32>(~(58693u & func_2(_wgslsmith_f_op_f32(floor(554f)), vec3<f32>(1000f, 169f, 1089f)).x), 0u, 1u);
    let var_2 = false;
    let var_3 = select(select(vec2<bool>(!all(vec3<bool>(true, true, true)), true), vec2<bool>(true, !any(vec4<bool>(var_2, true, var_2, var_2))), !(!select(vec2<bool>(false, var_2), vec2<bool>(var_2, false), var_2))), vec2<bool>(var_2, true), vec2<bool>(var_2 || (~u_input.a.x != global0[_wgslsmith_index_u32(func_5(Struct_1(var_2)).x, 11u)]), !var_2));
    global1 = select(u_input.a.wyx, ~u_input.a.zwz, !select(!(!vec3<bool>(var_3.x, var_3.x, var_2)), vec3<bool>(all(var_3), false & var_2, global0[_wgslsmith_index_u32(var_0, 11u)] == 88197u), false));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(global1.x, u_input.a.x), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-152f + -332f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(487f)))))), vec2<i32>(-40935i << (_wgslsmith_mult_u32(u_input.a.x, 1u) % 32u), ~(~(~(-25177i)))));
}


struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, true, true);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec2<bool> {
    var var_0 = _wgslsmith_div_u32(76772u, u_input.a) << (abs(~u_input.a) % 32u);
    global0 = !select(vec4<bool>(48632u >= (u_input.a & u_input.a), all(vec2<bool>(global0.x, true)), true, true), !vec4<bool>(global0.x, global0.x, true, true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(656f, -867f)))) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1000f)))));
    global0 = !(!(!select(select(vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(global0.x, global0.x, global0.x, true), global0.x), vec4<bool>(true, true, true, true), true)));
    global0 = vec4<bool>(true, !global0.x && (!(!global0.x) == !global0.x), global0.x, global0.x);
    let var_1 = select(!vec4<bool>(false, global0.x, global0.x, global0.x), !(!select(!vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(true, true, true, true))), vec4<bool>(true, !global0.x, global0.x, global0.x));
    return global0.xw;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> i32 {
    var var_0 = Struct_1(arg_0.a, arg_0.d.x, arg_0.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.d) + arg_0.d), any(select(func_3(), vec2<bool>(1303f > arg_0.b, !arg_0.e), !any(vec2<bool>(false, global0.x)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_0.d.yyw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1141f, -528f, var_0.b)))))), _wgslsmith_f_op_f32(-1294f - _wgslsmith_f_op_f32(round(var_0.b))), u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_0.d, arg_0.d, select(-140f != var_0.b, global0.x, !var_0.e)))), false);
    var var_2 = !any(global0.xxy);
    let var_3 = arg_0;
    var_1 = arg_0;
    return -49376i;
}

fn func_1(arg_0: bool) -> vec4<bool> {
    global0 = !(!vec4<bool>(true, any(vec2<bool>(false, true)) | !arg_0, true & !arg_0, arg_0));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1164f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1200f)), 1709f, false))), all(!select(vec2<bool>(false, false), global0.zw, vec2<bool>(true, true))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1075f)));
    var var_1 = -(vec4<i32>(8505i, _wgslsmith_mult_i32(20909i, select(72184i, 2147483647i, arg_0)), -_wgslsmith_mod_i32(-2147483647i, 34146i), firstLeadingBit(~0i)) << (~vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(12087u, u_input.a), vec2<u32>(4294967295u, u_input.a)), firstTrailingBit(1u), ~1u) % vec4<u32>(32u)));
    var var_2 = !vec4<bool>(false, (firstLeadingBit(var_1.x) <= var_1.x) | (var_1.x <= func_2(Struct_1(vec3<f32>(var_0, var_0, -476f), var_0, 35615u, vec4<f32>(524f, var_0, 780f, var_0), global0.x), u_input.a)), u_input.a == u_input.a, any(func_3()));
    let var_3 = vec3<bool>(true, arg_0, true);
    return vec4<bool>((var_2.x || !any(var_3.yx)) & global0.x, false, false, var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(func_1(global0.x), select(vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(any(!vec3<bool>(true, global0.x, true)), !all(global0.xy), global0.x, false), vec4<bool>(!global0.x, global0.x, !global0.x, !(global0.x | global0.x))), !vec4<bool>(!(false & global0.x), all(!vec3<bool>(true, false, global0.x)), true, false || any(global0.xw)));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(782f, _wgslsmith_f_op_f32(ceil(-195f)))))), 436f);
    let var_1 = countOneBits(firstLeadingBit(reverseBits(abs(vec4<u32>(91098u, 0u, 51845u, 29784u)) & ~vec4<u32>(u_input.a, u_input.a, u_input.a, 1u))));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-192f, _wgslsmith_f_op_f32(var_0.x * var_0.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), vec2<f32>(1458f, -1000f))))));
    var var_2 = vec4<i32>(-46110i, _wgslsmith_clamp_i32(-1i >> (_wgslsmith_clamp_u32(81935u, firstTrailingBit(var_1.x), 1u) % 32u), -3096i, -2147483647i), -_wgslsmith_clamp_i32(74380i, -1i, 9195i), _wgslsmith_clamp_i32(firstLeadingBit(1i) >> (reverseBits(u_input.a) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(_wgslsmith_mod_i32(-2946i, -11431i), -2147483647i)), _wgslsmith_clamp_i32(1i, 58220i, -34284i)));
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1116f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1351f, -1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1277f, -2140f))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(2495f, var_0.x), vec2<f32>(1058f, var_0.x)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, 521f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, var_0.x), vec2<f32>(var_0.x, var_0.x))), !global0.yx)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) * _wgslsmith_f_op_f32(round(var_0.x)))))));
    let var_3 = vec3<f32>(-1289f, 1514f, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_dot_vec2_i32(select(select(abs(var_2.wz), _wgslsmith_mult_vec2_i32(var_2.wz, vec2<i32>(-2147483647i, var_2.x)), any(vec2<bool>(false, global0.x))), reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-19081i, var_2.x), vec2<i32>(var_2.x, var_2.x))), global0.x), var_2.zy), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-111f, 866f) * _wgslsmith_f_op_f32(439f - var_0.x)), var_0.x, var_0.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 668f, var_3.x) * vec3<f32>(-259f, -405f, var_0.x)))), firstLeadingBit(u_input.a));
}


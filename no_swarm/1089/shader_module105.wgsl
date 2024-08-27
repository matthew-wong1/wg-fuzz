struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: vec4<u32>,
    e: vec4<f32>,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> i32 {
    var var_0 = false;
    var_0 = any(!vec2<bool>(true, any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)))));
    let var_1 = vec3<i32>(-1i) * -vec3<i32>((1i >> (u_input.d % 32u)) & 37702i, ~reverseBits(u_input.a), ~u_input.c.x);
    let var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(93061u, _wgslsmith_mult_u32(1u, u_input.e), u_input.e, _wgslsmith_mod_u32(abs(u_input.d) ^ ~u_input.e, 1u)), select(~firstLeadingBit(~vec4<u32>(u_input.d, u_input.d, u_input.d, 4294967295u)), select(~(~vec4<u32>(u_input.b.x, u_input.e, 0u, 49739u)), _wgslsmith_sub_vec4_u32(vec4<u32>(38261u, 60994u, 4294967295u, 70731u) << (vec4<u32>(u_input.b.x, 0u, u_input.d, u_input.d) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 46531u, 0u, u_input.d), vec4<u32>(u_input.d, u_input.e, u_input.d, u_input.e))), true), select(any(vec4<bool>(true, true, true, true)), 1u >= _wgslsmith_sub_u32(u_input.d, 4294967295u), !select(true, true, false))));
    return arg_0.c;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec2<i32>) -> vec4<f32> {
    let var_0 = Struct_1(-u_input.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-674f, _wgslsmith_f_op_f32(round(-111f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), arg_2.x);
    let var_1 = vec2<i32>(31788i, func_3(var_0, arg_2.x) | firstLeadingBit(u_input.c.x));
    var var_2 = var_0;
    let var_3 = var_0;
    var var_4 = _wgslsmith_mod_vec2_u32(u_input.b, _wgslsmith_mod_vec2_u32(countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0, 39929u), reverseBits(u_input.b))), ~select(max(u_input.b, vec2<u32>(43157u, arg_0)), ~vec2<u32>(37822u, 4294967295u), !vec2<bool>(arg_1, false))));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.b)) + var_0.b))) - _wgslsmith_f_op_f32(-var_3.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(629f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) + _wgslsmith_f_op_f32(178f + -408f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b, 118f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -579f)), -657f);
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_1(abs(u_input.c.x), 1319f, arg_2.x);
    let var_1 = true;
    var var_2 = Struct_1(-1i, _wgslsmith_f_op_f32(abs(var_0.b)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_2.x, _wgslsmith_clamp_i32(var_0.c, 37036i, 0i) | countOneBits(53155i)), var_0.a));
    let var_3 = select(select(vec3<bool>(true | (var_0.b != 793f), _wgslsmith_f_op_f32(step(-772f, var_2.b)) >= var_0.b, false == arg_0), select(vec3<bool>(var_1, !arg_0, any(vec3<bool>(true, var_1, arg_0))), select(!vec3<bool>(var_1, arg_0, true), !vec3<bool>(true, false, var_1), select(vec3<bool>(true, true, true), vec3<bool>(true, arg_0, var_1), vec3<bool>(var_1, true, var_1))), arg_0 || false), var_1), select(vec3<bool>(arg_0, _wgslsmith_f_op_f32(-var_0.b) <= _wgslsmith_f_op_f32(-var_0.b), true), !select(vec3<bool>(true, true, true), vec3<bool>(arg_0, true, var_1), true), select(vec3<bool>(all(vec4<bool>(true, false, arg_0, var_1)), any(vec2<bool>(false, arg_0)), !var_1), !(!vec3<bool>(var_1, true, var_1)), !select(vec3<bool>(var_1, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)))), select(!vec3<bool>(true, any(vec2<bool>(var_1, true)), true), select(!(!vec3<bool>(var_1, true, true)), !select(vec3<bool>(true, true, arg_0), vec3<bool>(false, true, var_1), vec3<bool>(arg_0, arg_0, true)), _wgslsmith_f_op_f32(-var_0.b) <= _wgslsmith_f_op_f32(step(1342f, 1000f))), !(!(!vec3<bool>(var_1, var_1, arg_0)))));
    var_2 = var_0;
    return var_0;
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: vec3<i32>) -> vec3<bool> {
    var var_0 = func_4(true, _wgslsmith_f_op_vec4_f32(func_2(u_input.b.x, all(vec3<bool>(u_input.c.x > arg_2.x, true, select(false, true, false))), _wgslsmith_sub_vec2_i32(~firstLeadingBit(vec2<i32>(u_input.a, 29026i)), arg_2.yz))), u_input.c);
    var var_1 = func_4(true, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-331f, arg_1) * _wgslsmith_f_op_f32(-arg_1))), 1031f, -113f, _wgslsmith_f_op_f32(-arg_0.x)), u_input.c);
    let var_2 = select(~select(vec3<u32>(u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 29992u, 1u), vec3<u32>(u_input.e, 1u, u_input.e)), 34130u), vec3<u32>(1u, ~u_input.e, 4294967295u), vec3<bool>(true, true, false)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.d, u_input.e), ~4294967295u, 29325u), ~(~vec3<u32>(u_input.e, 69927u, 26674u))), firstTrailingBit(vec3<u32>(1707u, _wgslsmith_add_u32(12821u, 0u), u_input.d)), vec3<u32>(0u, reverseBits(14861u), reverseBits(u_input.b.x))), select(vec3<bool>(true, false, false), select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), any(vec3<bool>(false, true, false))), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true)), true && any(vec3<bool>(true, false, true))));
    let var_3 = Struct_1(~47404i, _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_mod_i32(~13989i << (_wgslsmith_sub_u32(u_input.b.x, u_input.d) % 32u), max(var_0.a, func_4(true, vec4<f32>(-1718f, var_1.b, 222f, arg_1), arg_2.yy).a)) & 1i);
    let var_4 = 2073u;
    return select(vec3<bool>(true, true, true), select(vec3<bool>(true, any(vec4<bool>(true, false, true, true)), arg_0.x < _wgslsmith_f_op_f32(arg_0.x + -441f)), vec3<bool>(any(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true)), false), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), vec3<bool>(false, 23915u <= var_2.x, true))), any(!vec2<bool>(select(true, true, true), any(vec4<bool>(true, false, false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), func_1(vec4<f32>(1000f, -100f, 316f, 1000f), -1435f, vec3<i32>(u_input.c.x, u_input.a, u_input.a)), any(vec2<bool>(true, true))), vec3<bool>(true, true, true)), select(!vec3<bool>(u_input.a < -5707i, true, true), select(vec3<bool>(true, true, func_1(vec4<f32>(1159f, -200f, -550f, 843f), -806f, vec3<i32>(u_input.a, 43395i, 0i)).x), vec3<bool>(all(vec3<bool>(true, false, false)), true, true), vec3<bool>(true, true, true)), true), select(func_1(vec4<f32>(_wgslsmith_f_op_f32(step(-127f, 1744f)), _wgslsmith_f_op_f32(-208f * 814f), _wgslsmith_f_op_f32(f32(-1f) * -693f), _wgslsmith_f_op_f32(ceil(498f))), _wgslsmith_f_op_f32(-826f * -503f), _wgslsmith_div_vec3_i32(~vec3<i32>(0i, -20512i, u_input.a), min(vec3<i32>(u_input.c.x, u_input.c.x, 0i), vec3<i32>(u_input.a, u_input.c.x, u_input.c.x)))), vec3<bool>(any(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, false)), true), !any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true))));
    let var_1 = Struct_1(u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_mult_i32(u_input.c.x, -_wgslsmith_mult_i32(-2147483647i, max(u_input.c.x, -7392i))));
    let var_2 = vec4<bool>(var_0.x, select(!any(!vec4<bool>(var_0.x, true, var_0.x, true)), all(var_0), var_0.x), !(abs(~(-16956i)) > _wgslsmith_div_i32(-16529i >> (u_input.b.x % 32u), 5192i)), !(u_input.c.x > _wgslsmith_clamp_i32(u_input.c.x, var_1.a, -u_input.c.x)));
    var var_3 = vec2<i32>(u_input.a, _wgslsmith_dot_vec3_i32(abs(min(firstTrailingBit(vec3<i32>(14261i, -23735i, -1i)), ~vec3<i32>(var_1.a, u_input.c.x, -31397i))), vec3<i32>(-var_1.c, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-55027i, 1i, 2147483647i, var_1.a)), vec4<i32>(27120i, 27684i, u_input.c.x, -1i)), -1i)));
    let var_4 = vec4<bool>(var_0.x, true | all(vec2<bool>(!var_0.x, select(false, false, var_2.x))), true, true);
    let var_5 = func_4(var_2.x && (all(vec4<bool>(true, true, var_4.x, var_2.x)) || true), vec4<f32>(-1457f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(677f + 777f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.b * -1509f)))), -764f), vec2<i32>(u_input.c.x, 2147483647i));
    var var_6 = ~0u;
    var_6 = ~(~u_input.b.x);
    let var_7 = var_5.c;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(437f, -947f, 357f, var_1.b), vec4<f32>(-878f, 1000f, 715f, var_5.b)), _wgslsmith_f_op_vec4_f32(func_2(u_input.e, var_2.x, vec2<i32>(var_1.c, var_3.x))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_5.b, 1038f, var_1.b, -1682f))), var_2.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b, var_5.b, -1025f, -2132f), vec4<f32>(-195f, 139f, var_5.b, -3081f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-525f, var_5.b, 207f, -642f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_5.b, 1023f, 434f, -1000f), vec4<f32>(561f, var_1.b, 903f, 496f))), any(vec4<bool>(var_4.x, false, var_4.x, var_4.x))))), var_2)), 583f, ~(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e, u_input.b.x, 1u, u_input.e), reverseBits(vec4<u32>(0u, 1u, u_input.e, 4294967295u)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.b, _wgslsmith_f_op_f32(func_4(var_4.x, vec4<f32>(916f, 1157f, 196f, var_1.b), vec2<i32>(-2147483647i, var_3.x)).b * _wgslsmith_f_op_f32(var_1.b - 1430f)), var_5.b, _wgslsmith_f_op_f32(-379f + -1785f)))));
}


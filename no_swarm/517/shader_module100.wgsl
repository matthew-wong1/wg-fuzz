struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: f32, arg_3: vec2<bool>) -> f32 {
    let var_0 = Struct_1(1u, (vec4<i32>(-1i) * -(~vec4<i32>(1i, -10337i, -14745i, u_input.e))) ^ reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-6754i, 0i, u_input.e, 0i) | vec4<i32>(2147483647i, -26430i, u_input.e, u_input.b), vec4<i32>(1i, 8757i, 1i, 0i))), vec4<bool>(false, !(!(!arg_3.x)), arg_1, -(~u_input.c.x) > -1i));
    var var_1 = Struct_1(0u, ~var_0.b, !vec4<bool>(false || all(var_0.c.xwy), false, (arg_1 && arg_1) || true, false));
    var_1 = Struct_1(0u >> (0u % 32u), _wgslsmith_sub_vec4_i32(var_1.b, var_1.b), !vec4<bool>(var_1.c.x, arg_2 == _wgslsmith_f_op_f32(abs(arg_2)), var_1.c.x, !(true || var_1.c.x)));
    let var_2 = 1u ^ _wgslsmith_mult_u32(reverseBits(abs(~24043u)), reverseBits(_wgslsmith_mod_u32(7420u, var_1.a) ^ u_input.a));
    var_1 = Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, ~var_2, 4294967295u), u_input.d), _wgslsmith_div_vec3_u32(~u_input.d, _wgslsmith_sub_vec3_u32(~vec3<u32>(var_2, var_2, 26117u), reverseBits(u_input.d)))), reverseBits(~vec4<i32>(16394i, ~0i, -var_1.b.x, select(0i, -2147483647i, true))), select(select(vec4<bool>(arg_3.x | true, true, var_1.c.x, true), vec4<bool>(var_1.c.x, all(vec3<bool>(false, false, arg_3.x)), true & arg_3.x, !var_0.c.x), !vec4<bool>(arg_1, false, arg_3.x, arg_3.x)), !vec4<bool>(true, var_1.c.x, !arg_3.x, !var_1.c.x), vec4<bool>(!select(false, false, false), any(var_1.c), var_1.c.x, max(u_input.e, var_1.b.x) >= -2147483647i)));
    return _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1291f - _wgslsmith_f_op_f32(select(1000f, arg_2, arg_3.x)))))));
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = u_input.d;
    var var_1 = Struct_2(-1i, vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-487f))), _wgslsmith_f_op_f32(min(-428f, -783f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(min(var_0.x, var_0.x), true, arg_0, vec2<bool>(true, true)))))), vec2<bool>(select((-1i >> (u_input.a % 32u)) <= -u_input.c.x, true, all(vec3<bool>(true, true, true))), !all(vec3<bool>(true, true, true))), select(select(all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), false)), select(59892u, 4294967295u, false) < u_input.d.x, all(vec2<bool>(true, false))), !any(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), (var_0.x <= firstTrailingBit(u_input.a)) || any(vec2<bool>(false, true))));
    var_1 = Struct_2(_wgslsmith_sub_i32(select(_wgslsmith_mod_i32(var_1.a, 0i), -u_input.e, any(select(vec2<bool>(var_1.d, true), vec2<bool>(true, var_1.c.x), var_1.c.x))), select(var_1.a | var_1.a, 1i, var_1.d) << (_wgslsmith_div_u32(max(1u, 4294967295u), var_0.x) % 32u)), vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -874f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), -1804f), arg_0), !var_1.c, all(vec3<bool>(all(select(var_1.c, vec2<bool>(true, var_1.d), false)), !all(var_1.c), true)));
    var var_2 = Struct_2(-countOneBits(var_1.a), var_1.b, var_1.c, !all(vec2<bool>(true, var_1.d)));
    var var_3 = vec4<f32>(arg_0, _wgslsmith_f_op_f32(1243f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.b.x)) + _wgslsmith_f_op_f32(round(var_2.b.x))) - -615f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -671f)))), arg_0);
    return var_3.x;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(max(-1022f, _wgslsmith_f_op_f32(func_2(578f))))), 352f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(979f, 1072f) - _wgslsmith_f_op_f32(func_3(4294967295u, arg_1.c.x, -852f, arg_1.c.yy)))))));
    var_0 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1471f * _wgslsmith_f_op_f32(f32(-1f) * -279f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1685f, var_0.x)), arg_1.c.x)));
    var var_1 = var_0.x;
    var var_2 = ~vec4<u32>(~(_wgslsmith_mod_u32(60477u, 58788u) ^ u_input.a), u_input.a, ~1u, select(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), u_input.d.xy), 0u, arg_1.c.x));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-531f * var_0.x))), var_0.x, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1612f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(479f, 2048f, -1520f))))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1086f), var_0.x, _wgslsmith_f_op_f32(-var_0.x)));
    return vec4<u32>(arg_1.a, 0u, var_2.x, _wgslsmith_mult_u32(4364u, ~firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(7782u, 39895u, 0u, 0u), vec4<u32>(arg_1.a, u_input.a, 29293u, 31818u)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: u32) -> i32 {
    let var_0 = Struct_1(~(~arg_1), vec4<i32>(-37240i, -_wgslsmith_mult_i32(_wgslsmith_sub_i32(-27283i, u_input.c.x), -u_input.c.x), _wgslsmith_div_i32(~(-1i >> (u_input.a % 32u)), -1i ^ _wgslsmith_sub_i32(u_input.b, -49576i)), -u_input.c.x), select(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, all(vec3<bool>(false, false, true)), true, true), all(vec2<bool>(all(vec2<bool>(true, true)), false))));
    var var_1 = !(!vec3<bool>(true, !(!var_0.c.x), any(select(var_0.c, vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, false), vec4<bool>(false, false, var_0.c.x, false)))));
    var_1 = var_0.c.yyy;
    var var_2 = -506f;
    var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1044f), 195f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -996f))), _wgslsmith_f_op_f32(-3267f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-505f + _wgslsmith_div_f32(-1184f, 1522f)), _wgslsmith_f_op_f32(step(1455f, -1210f)))));
    return -_wgslsmith_div_i32(select(-max(var_0.b.x, var_0.b.x), 0i, false), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(false, true, all(vec4<bool>(true, true, all(vec3<bool>(true, true, true)), true)), true);
    var_0 = !vec4<bool>(all(select(vec3<bool>(var_0.x, false, true), var_0.zwx, true)) == true, all(var_0.wzz) == !all(vec4<bool>(var_0.x, var_0.x, true, var_0.x)), !var_0.x, true);
    var_0 = vec4<bool>(true, true, false, !var_0.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1275f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1342f, -111f) + _wgslsmith_f_op_f32(max(-1000f, -513f))), -1000f, _wgslsmith_f_op_f32(sign(-2701f)))))));
    let var_2 = ~(~vec2<u32>(1u, countOneBits(6446u << (u_input.a % 32u))));
    let var_3 = abs(func_4(func_1(abs(vec4<i32>(-37453i, u_input.e, u_input.c.x, 1239i)), Struct_1(min(var_2.x, u_input.a), -vec4<i32>(u_input.b, u_input.b, -17137i, 0i), vec4<bool>(var_0.x, var_0.x, var_0.x, true))), ~4294967295u));
    let var_4 = ~abs(_wgslsmith_mult_vec3_i32(-(~vec3<i32>(-2147483647i, u_input.c.x, -22279i)), _wgslsmith_clamp_vec3_i32(~vec3<i32>(var_3, var_3, u_input.b), vec3<i32>(-81235i, -7442i, u_input.b), vec3<i32>(u_input.c.x, var_3, u_input.e))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(42053i, -70769i, 2147483647i), var_3), 1050i), -8927i, 409f, var_1.x);
}


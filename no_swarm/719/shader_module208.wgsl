struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
    d: f32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool) -> vec2<bool> {
    return !(!vec2<bool>(!any(vec2<bool>(arg_1, arg_1)), true));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2) -> vec3<f32> {
    var var_0 = select(arg_1.b.d, arg_0, arg_1.b.d.x);
    let var_1 = arg_1.b;
    var_0 = select(arg_1.e.d, arg_1.c.d, select(!select(vec3<bool>(arg_0.x, true, false), arg_1.c.d, !var_1.d), var_1.d, var_1.d.x));
    let var_2 = var_1.b;
    var_0 = vec3<bool>(true, false, arg_1.c.d.x);
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.b.c, _wgslsmith_f_op_f32(sign(500f)))) + _wgslsmith_div_f32(-1091f, _wgslsmith_f_op_f32(-var_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-426f * _wgslsmith_f_op_f32(trunc(arg_1.c.c))) * _wgslsmith_f_op_f32(-1944f * _wgslsmith_f_op_f32(-var_1.b))) * arg_1.e.c), arg_1.e.b);
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_mod_i32(-1i >> ((1u ^ _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x), u_input.c.x)) % 32u), -u_input.b.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(select(vec3<bool>(true, all(vec3<bool>(true, false, false)), true), vec3<bool>(true, true, all(vec2<bool>(false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), Struct_2(any(func_3(vec2<f32>(-1395f, -186f), false)), Struct_1(-var_0, _wgslsmith_f_op_f32(1637f - 661f), _wgslsmith_f_op_f32(trunc(-741f)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), ~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 21818u)), Struct_1(abs(0i), _wgslsmith_div_f32(179f, 1000f), _wgslsmith_f_op_f32(1068f + 312f), vec3<bool>(true, true, true), vec4<u32>(0u, 155066u, 12959u, 6643u)), -max(var_0, var_0), Struct_1(_wgslsmith_div_i32(-32812i, -26128i), _wgslsmith_f_op_f32(863f + -163f), -856f, vec3<bool>(true, true, true), vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, u_input.c.x) | vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.c.x))))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-353f, 1818f)), _wgslsmith_f_op_f32(1194f * 129f), -1163f)))));
    let var_2 = Struct_3(!any(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, var_1.x, var_1.x)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, 570f))))), Struct_1(select(var_0, countOneBits(0i), true), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_div_f32(var_1.x, 1000f)), var_1.x, !select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), vec3<bool>(false, true, true), all(vec2<bool>(true, true))), ~vec4<u32>(14678u, u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(40934u, u_input.c.x), u_input.c), u_input.c.x)), _wgslsmith_f_op_f32(-var_1.x), vec4<i32>(9293i, _wgslsmith_sub_i32(u_input.d & -19135i, -2147483647i), firstTrailingBit(u_input.b.x << (_wgslsmith_div_u32(u_input.c.x, 46662u) % 32u)), u_input.a.x));
    var var_3 = var_2.c.e.x;
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(665f, -277f))), 1f, _wgslsmith_f_op_f32(f32(-1f) * -1070f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(var_2.b, vec3<f32>(var_2.b.x, -539f, 415f), vec3<bool>(true, false, false))))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-517f, -578f, -498f)))))));
    return Struct_1(min((var_2.c.a & -6288i) | var_2.c.a, -12318i), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), var_2.c.d, select(select(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.c.x, 1u, 4294967295u), countOneBits(vec4<u32>(u_input.c.x, var_2.c.e.x, 91395u, 14828u))), max(vec4<u32>(var_2.c.e.x, 54445u, 47361u, u_input.c.x), countOneBits(var_2.c.e)), vec4<bool>(var_2.c.d.x & false, !var_2.a, var_2.a, select(var_2.c.d.x, true, false))), reverseBits(var_2.c.e), !select(vec4<bool>(var_2.a, var_2.a, false, var_2.c.d.x), vec4<bool>(var_2.a, var_2.a, var_2.c.d.x, false), var_2.c.d.x)));
}

fn func_1(arg_0: i32, arg_1: vec2<bool>) -> f32 {
    let var_0 = func_2();
    var var_1 = func_2();
    let var_2 = Struct_2(var_0.d.x, var_0, func_2(), -arg_0, func_2());
    var var_3 = _wgslsmith_f_op_f32(var_2.e.c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.c) - _wgslsmith_f_op_f32(var_1.c + var_0.b)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + _wgslsmith_f_op_f32(-var_1.b))) * var_2.e.b));
    var var_4 = var_1.c;
    return _wgslsmith_f_op_f32(-134f + var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(-1065f, _wgslsmith_f_op_f32(f32(-1f) * -1624f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(226f * -853f), _wgslsmith_f_op_f32(func_1(u_input.d, vec2<bool>(true, false))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-547f * -308f) + _wgslsmith_f_op_f32(floor(522f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(605f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(653f + -1152f), _wgslsmith_f_op_f32(select(2253f, -1241f, false))), 1f)));
    let var_1 = Struct_1(u_input.d, _wgslsmith_f_op_f32(f32(-1f) * -2469f), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x * var_0.x))) - _wgslsmith_f_op_f32(-1129f - 1369f))), !vec3<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))), all(vec2<bool>(true, true))), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.c.x, func_2().e.x, u_input.c.x, u_input.c.x), select(vec4<u32>(57980u, 8714u, u_input.c.x, 4294967295u), ~vec4<u32>(79671u, 27786u, 88224u, 71879u), true)), (~vec4<u32>(33928u, u_input.c.x, u_input.c.x, u_input.c.x) ^ max(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.c.x), vec4<u32>(68799u, 0u, u_input.c.x, u_input.c.x))) ^ _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c.x, 16790u, 0u, u_input.c.x), vec4<u32>(5961u, 39905u, u_input.c.x, 1u))));
    let var_2 = any(!select(select(select(vec4<bool>(var_1.d.x, var_1.d.x, false, var_1.d.x), vec4<bool>(false, var_1.d.x, false, var_1.d.x), false), select(vec4<bool>(true, var_1.d.x, false, true), vec4<bool>(true, true, false, false), vec4<bool>(var_1.d.x, var_1.d.x, false, var_1.d.x)), vec4<bool>(true, var_1.d.x, var_1.d.x, var_1.d.x)), !(!vec4<bool>(var_1.d.x, var_1.d.x, var_1.d.x, var_1.d.x)), vec4<bool>(false, var_1.d.x, var_1.a >= u_input.d, true)));
    var var_3 = -u_input.a;
    var_3 = u_input.a;
    let var_4 = -1340f;
    let x = u_input.a;
    s_output = StorageBuffer(10273i, u_input.a, -960f, 43078u);
}


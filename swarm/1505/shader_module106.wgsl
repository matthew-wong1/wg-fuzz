struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<i32>, arg_1: f32) -> vec3<f32> {
    var var_0 = -22366i;
    var_0 = _wgslsmith_add_i32(u_input.b.x, u_input.a.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -927f, -1724f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -1235f, -830f) * vec3<f32>(arg_1, 351f, arg_1))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(arg_1 * -1038f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1123f, arg_1, -1485f)))), _wgslsmith_div_vec3_f32(vec3<f32>(-1084f, -1221f, -551f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(310f, -2277f, 741f)))), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true)))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -890f)))), var_1.x, _wgslsmith_f_op_f32(arg_1 + var_1.x));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -292f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_1.x, -810f, true))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(622f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1079f)), _wgslsmith_f_op_f32(-826f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))))), var_1.x);
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(113f, arg_1, 1000f) - vec3<f32>(var_1.x, -1158f, 454f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, _wgslsmith_f_op_f32(max(var_1.x, var_1.x)), 828f)))), vec3<f32>(_wgslsmith_f_op_f32(max(105f, -635f)), _wgslsmith_f_op_f32(abs(-452f)), 1000f)));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: Struct_3) -> vec4<bool> {
    var var_0 = Struct_1(arg_2.b.a.a, arg_2.b.b.b, vec3<u32>(17914u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), arg_2.b.b.c.xy) >> (59143u % 32u)), arg_1.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_2.b.c.a.x) + _wgslsmith_f_op_vec2_f32(arg_0.zy + arg_2.a.a)), arg_2.b.a.a)) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.b.a.d.x, -721f)), 237f)), arg_2.a.e);
    let var_1 = var_0.c.xy;
    let var_2 = select(select(select(vec4<bool>(var_0.e.x | var_0.e.x, true, 47955i > var_0.b.x, all(vec3<bool>(true, var_0.e.x, var_0.e.x))), select(select(vec4<bool>(true, true, true, arg_2.b.a.e.x), vec4<bool>(arg_2.b.c.e.x, true, true, arg_2.b.b.e.x), vec4<bool>(true, arg_2.b.b.e.x, var_0.e.x, var_0.e.x)), !vec4<bool>(var_0.e.x, true, var_0.e.x, arg_2.b.a.e.x), false), any(var_0.e)), !select(vec4<bool>(true, true, false, arg_2.a.e.x), vec4<bool>(false, false, var_0.e.x, arg_2.b.b.e.x), select(vec4<bool>(true, true, true, true), vec4<bool>(false, arg_2.b.c.e.x, arg_2.b.b.e.x, arg_2.a.e.x), false)), vec4<bool>(arg_2.b.c.e.x, all(select(vec3<bool>(false, var_0.e.x, arg_2.a.e.x), var_0.e, vec3<bool>(true, true, true))), arg_2.b.a.e.x, arg_2.b.b.e.x)), vec4<bool>(var_0.e.x, any(var_0.e), arg_2.a.e.x, var_0.e.x), true);
    var_0 = Struct_1(arg_2.b.b.d, abs(select(-max(arg_2.b.b.b, u_input.a), vec2<i32>(arg_2.a.b.x, firstLeadingBit(-27929i)), vec2<bool>(var_0.b.x <= 80697i, arg_2.b.c.e.x || var_0.e.x))), vec3<u32>(abs(1u), ~(~24829u & var_0.c.x), select(var_1.x, reverseBits(16395u), !arg_2.a.e.x) >> ((~4294967295u | (var_1.x | 68851u)) % 32u)), _wgslsmith_f_op_vec2_f32(floor(var_0.d)), !vec3<bool>(false, all(var_0.e.xx), false));
    var_0 = arg_2.a;
    return !vec4<bool>(arg_2.a.e.x, !any(arg_2.a.e.yy), !var_0.e.x, var_2.x);
}

fn func_2(arg_0: Struct_2) -> vec2<f32> {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.b.a.x, -1338f, arg_0.c.d.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.a.x, arg_0.a.a.x, 1026f)) + vec3<f32>(-138f, -915f, arg_0.b.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.b.d.x, -838f, arg_0.a.a.x))) * vec3<f32>(arg_0.b.a.x, -649f, arg_0.c.d.x)) - _wgslsmith_f_op_vec3_f32(func_3(firstLeadingBit(u_input.b), _wgslsmith_f_op_f32(max(arg_0.a.d.x, 352f))))))), vec3<u32>(_wgslsmith_sub_u32(~arg_0.c.c.x, firstLeadingBit(_wgslsmith_div_u32(4294967295u, arg_0.c.c.x))), _wgslsmith_add_u32(1u, ~arg_0.b.c.x), arg_0.b.c.x), Struct_3(arg_0.b, Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.a.a), ~u_input.b.ww, arg_0.a.c, vec2<f32>(-1310f, 1523f), arg_0.c.e), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-484f, -1122f)), vec2<i32>(arg_0.b.b.x, -1i), arg_0.c.c, vec2<f32>(arg_0.a.d.x, arg_0.c.d.x), vec3<bool>(arg_0.a.e.x, arg_0.a.e.x, true)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1148f, arg_0.c.a.x)), vec2<i32>(-2653i, u_input.b.x), arg_0.b.c & arg_0.c.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(294f, 274f)), vec3<bool>(false, true, false)))));
    var var_1 = Struct_1(arg_0.a.a, _wgslsmith_sub_vec2_i32(~_wgslsmith_div_vec2_i32(-u_input.a, u_input.b.zz), -max(arg_0.a.b ^ vec2<i32>(u_input.b.x, arg_0.b.b.x), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, 9323i), vec2<i32>(arg_0.c.b.x, -2147483647i)))), abs(abs(~arg_0.b.c ^ ~arg_0.b.c)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.d.x, -1532f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.d.x, -190f))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(arg_0.c.a, vec2<f32>(arg_0.c.a.x, -1169f)))))))), var_0.yxw);
    var var_2 = u_input.b.zzw;
    var_2 = vec3<i32>(u_input.b.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1i, var_2.x) >> (arg_0.b.c % vec3<u32>(32u)), select(vec3<i32>(2147483647i, arg_0.b.b.x, arg_0.c.b.x), vec3<i32>(0i, arg_0.c.b.x, -1i), arg_0.c.e)), 8004i);
    var var_3 = arg_0;
    return _wgslsmith_f_op_vec2_f32(-var_3.b.a);
}

fn func_1() -> Struct_2 {
    var var_0 = vec2<bool>(any(vec3<bool>(true | any(vec3<bool>(true, false, true)), all(vec3<bool>(true, true, true)), false)), all(vec3<bool>(true, true, !(6653i <= u_input.b.x))));
    var_0 = vec2<bool>(true, true);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1049f, 666f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(847f, 443f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(972f, -1125f)))) * _wgslsmith_f_op_vec2_f32(func_2(Struct_2(Struct_1(vec2<f32>(-1728f, 1661f), u_input.b.yy, vec3<u32>(0u, 53812u, 1u), vec2<f32>(-412f, 1690f), vec3<bool>(false, var_0.x, false)), Struct_1(vec2<f32>(935f, 734f), vec2<i32>(u_input.a.x, u_input.a.x), vec3<u32>(0u, 18005u, 6383u), vec2<f32>(-144f, 718f), vec3<bool>(false, true, var_0.x)), Struct_1(vec2<f32>(965f, 158f), u_input.b.yy, vec3<u32>(1u, 4294967295u, 0u), vec2<f32>(352f, -1879f), vec3<bool>(var_0.x, false, false))))))), -vec2<i32>(-_wgslsmith_div_i32(u_input.a.x, 2182i), u_input.a.x << (_wgslsmith_mod_u32(16179u, 1u) % 32u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(~4294967295u, _wgslsmith_div_u32(4294967295u, 37419u), ~50900u), _wgslsmith_div_vec3_u32(vec3<u32>(7128u, 0u, 50093u), select(vec3<u32>(4294967295u, 1u, 27112u), vec3<u32>(28926u, 0u, 0u), true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_2(Struct_2(Struct_1(vec2<f32>(526f, 1062f), vec2<i32>(u_input.a.x, -1i), vec3<u32>(18803u, 19302u, 47818u), vec2<f32>(-1096f, -254f), vec3<bool>(var_0.x, false, var_0.x)), Struct_1(vec2<f32>(1283f, 701f), u_input.b.wy, vec3<u32>(16478u, 4294967295u, 4294967295u), vec2<f32>(-505f, -1139f), vec3<bool>(var_0.x, false, var_0.x)), Struct_1(vec2<f32>(1000f, 411f), vec2<i32>(u_input.b.x, u_input.b.x), vec3<u32>(4294967295u, 48403u, 0u), vec2<f32>(103f, 1072f), vec3<bool>(true, var_0.x, var_0.x))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1014f, 637f) - vec2<f32>(662f, -1503f)), vec2<f32>(-527f, -692f))), var_0.x)) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(733f, -243f))))))), select(!vec3<bool>(false, any(vec3<bool>(var_0.x, var_0.x, true)), true), vec3<bool>(false, !any(vec3<bool>(false, true, var_0.x)), !var_0.x && true), true));
    var_0 = var_1.e.yz;
    var_0 = var_1.e.xx;
    return Struct_2(var_1, Struct_1(var_1.a, vec2<i32>(-26215i, -u_input.a.x & -12306i), var_1.c, _wgslsmith_f_op_vec2_f32(var_1.d + vec2<f32>(_wgslsmith_div_f32(-916f, -1817f), _wgslsmith_f_op_f32(var_1.a.x * var_1.a.x))), !var_1.e), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, 61494u), firstTrailingBit(vec2<u32>(13420u, 0u))), ~select(vec2<u32>(31780u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<bool>(false, true))));
    var var_1 = ~(~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(52269u, 0u, 0u)), ~vec3<u32>(4294967295u, 0u, 4294967295u)));
    let var_2 = func_1();
    var var_3 = ~vec3<i32>(-37811i, max(-countOneBits(u_input.b.x), (u_input.a.x ^ var_2.a.b.x) & (i32(-1i) * -29406i)), ~_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 7320i, var_2.b.b.x), u_input.b.yzw), ~vec3<i32>(var_2.a.b.x, u_input.a.x, u_input.b.x)));
    var_3 = u_input.b.zyx;
    var var_4 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f + -1432f))) + var_2.a.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2495f) + _wgslsmith_f_op_vec3_f32(func_3(vec4<i32>(15802i, var_2.a.b.x, var_3.x, var_3.x), var_2.a.d.x)).x) + _wgslsmith_f_op_f32(select(var_2.a.a.x, 1000f, var_2.c.e.x)))), u_input.b.zx, func_1().a.c, _wgslsmith_div_vec2_f32(vec2<f32>(457f, -103f), _wgslsmith_f_op_vec2_f32(func_2(Struct_2(Struct_1(vec2<f32>(var_2.b.d.x, var_2.c.a.x), u_input.b.zz, var_2.a.c, vec2<f32>(1348f, var_2.b.d.x), vec3<bool>(var_2.a.e.x, var_2.c.e.x, var_2.c.e.x)), var_2.c, var_2.a)))), var_2.a.e);
    var var_5 = u_input.b;
    var_4 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~(_wgslsmith_dot_vec2_u32(vec2<u32>(var_4.c.x, 1u), var_4.c.zz) | _wgslsmith_mult_u32(81520u, 5242u)), _wgslsmith_div_u32(~31814u, var_4.c.x) | _wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.c.c.x, var_4.c.x, var_4.c.x, 1u), ~vec4<u32>(80867u, var_2.b.c.x, 67769u, 0u))), func_1().b.c.x, var_4.a.x);
}


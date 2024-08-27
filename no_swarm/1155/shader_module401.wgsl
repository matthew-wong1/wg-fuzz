struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: Struct_3,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(33727u, max(min(vec2<i32>(_wgslsmith_div_i32(2147483647i, 29239i), -59333i << (u_input.a % 32u)), abs(vec2<i32>(-2147483647i, -69729i))), vec2<i32>(1i, 1i)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1630f, 812f)))), _wgslsmith_f_op_f32(1f + -659f)))));
    var var_1 = firstLeadingBit(~(~u_input.a));
    var var_2 = select(select(vec3<bool>(all(vec3<bool>(false, true, false)), true, false), vec3<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), true, ~var_0.a < ~u_input.a), select(true, true, select(true, true, true))), !vec3<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true)), true, all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)))), all(select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), true)) != false);
    var var_3 = vec2<i32>(-var_0.b.x, var_0.b.x) >> (vec2<u32>(_wgslsmith_sub_u32(0u ^ ~var_0.a, reverseBits(_wgslsmith_add_u32(29979u, 13291u))), (63745u & _wgslsmith_mult_u32(u_input.a, 8405u)) & _wgslsmith_div_u32(~var_0.a, u_input.a)) % vec2<u32>(32u));
    let var_4 = _wgslsmith_add_u32((firstTrailingBit(36669u) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, 1u, var_0.a), vec4<u32>(6159u, var_0.a, 21878u, var_0.a)), abs(vec4<u32>(var_0.a, var_0.a, 4294967295u, 69807u))) % 32u)) ^ 75719u, countOneBits(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, u_input.a, 4294967295u, 26951u), vec4<u32>(30607u, var_0.a, u_input.a, 111527u)))));
    return reverseBits(u_input.a);
}

fn func_2(arg_0: bool, arg_1: Struct_4, arg_2: i32) -> Struct_2 {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_1.c.a.yx);
    var var_2 = Struct_4(-_wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(arg_1.e, arg_2), -arg_1.a), -(~arg_2)), arg_1.c.b, arg_1.c, true, 2147483647i);
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(450f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(485f - var_1.x) + _wgslsmith_f_op_f32(arg_1.b.c - -2237f)), 415f) * vec3<f32>(var_2.c.c.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-295f * -296f) + _wgslsmith_f_op_f32(var_2.c.b.c * -331f)), 1070f)), Struct_1(_wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(1u, var_2.c.c.a, arg_1.b.a)), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(67648u, u_input.a, 4294967295u), vec3<u32>(var_2.b.a, 12795u, arg_1.b.a)), ~vec3<u32>(90214u, 32376u, var_2.b.a))), ~var_2.c.b.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(floor(var_2.c.b.c))))), Struct_1(23720u, countOneBits(-arg_1.b.b | vec2<i32>(var_2.a, -24516i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.c.c.c, -1305f)), 236f)), _wgslsmith_clamp_u32(abs(59986u >> (var_2.b.a % 32u)), func_3(), _wgslsmith_div_u32(select(4294967295u, var_2.b.a, false), 0u ^ arg_1.b.a) | _wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, arg_1.c.b.a, 4294967295u, var_2.b.a), vec4<u32>(117607u, var_2.c.b.a, 71581u, 49183u), vec4<bool>(var_2.d, var_0, true, arg_1.d)), _wgslsmith_add_vec4_u32(vec4<u32>(8886u, 1u, 0u, 1u), vec4<u32>(u_input.a, 1u, var_2.c.c.a, 96877u)))));
    var var_4 = -_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i & arg_2, ~arg_1.b.b.x, arg_1.a, var_3.b.b.x | 2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(4612i, var_3.c.b.x, -582i, 2147483647i), firstLeadingBit(vec4<i32>(arg_2, 13530i, arg_2, 1i)), ~vec4<i32>(arg_2, 30704i, arg_1.c.c.b.x, var_2.b.b.x))) & ~(~vec4<i32>(var_2.a, 2147483647i, var_3.b.b.x, 25686i) & -vec4<i32>(arg_2, arg_1.b.b.x, 1i, 26372i));
    return Struct_2(_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(var_2.c.c.a, ~var_2.c.c.a, u_input.a)), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(41237u, var_3.b.a, arg_1.c.c.a), vec3<u32>(5265u, var_2.b.a, 60977u)) | _wgslsmith_div_vec3_u32(vec3<u32>(51417u, var_3.b.a, arg_1.c.c.a), vec3<u32>(var_2.c.b.a, arg_1.b.a, var_3.b.a)), reverseBits(vec3<u32>(0u, var_3.b.a, 0u)) ^ firstTrailingBit(vec3<u32>(var_3.b.a, 23285u, arg_1.b.a)))), var_0);
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_2, arg_3: i32) -> bool {
    var var_0 = Struct_1(arg_0.x, vec2<i32>(firstLeadingBit(min(_wgslsmith_sub_i32(-1i, -35859i), arg_3 | -1i)), arg_3), _wgslsmith_f_op_f32(-arg_1));
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(841f, 175f, var_0.c) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-242f, arg_1, var_0.c))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, var_0.c, -566f) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1420f, arg_1, arg_1))))) * vec3<f32>(_wgslsmith_f_op_f32(-567f - 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1)) + _wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(var_0.c + arg_1))), Struct_1(~(~min(15908u, 4294967295u)), select(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.b, vec2<i32>(arg_3, var_0.b.x)), -vec2<i32>(2147483647i, arg_3)), vec2<i32>(arg_3, ~var_0.b.x), any(!vec4<bool>(false, true, arg_2.b, false))), 1717f), Struct_1(u_input.a, var_0.b, var_0.c), ~15329u);
    var var_2 = 4294967295u;
    var_2 = arg_2.a.x;
    var_2 = var_0.a;
    return !func_2(any(vec4<bool>(all(vec3<bool>(false, true, true)), true, false, false)), Struct_4(1i, var_1.c, Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.c, 224f, var_1.a.x)), Struct_1(6467u, vec2<i32>(var_0.b.x, 2147483647i), 734f), var_1.b, u_input.a), true, arg_3), 1i).b;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: i32) -> vec3<f32> {
    let var_0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(219f + arg_1.c) - -226f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c))), arg_1.c, arg_1.c), arg_1, arg_1, u_input.a);
    var var_1 = vec2<bool>(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)))), false);
    let var_2 = vec4<bool>(var_1.x, false, var_1.x, !(func_4(vec4<u32>(4294967295u, 2745u, 27422u, var_0.c.a), _wgslsmith_f_op_f32(arg_1.c - var_0.a.x), func_2(var_1.x, Struct_4(-2147483647i, var_0.c, var_0, var_1.x, -2147483647i), arg_2.x), max(-14550i, arg_0)) || true));
    let var_3 = arg_2.x > ~1i;
    var var_4 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(u_input.a, 0u, u_input.a, var_0.b.a)), reverseBits(~vec4<u32>(26941u, 0u, 3129u, 4294967295u))), var_0.b.a, _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, 4294967295u), abs(11078u)), func_3()), firstLeadingBit(~arg_1.a)), firstLeadingBit(~(~(~vec4<u32>(arg_1.a, 1u, arg_1.a, 0u)))));
    return vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x + 152f), -510f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1215f)))))));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: Struct_4) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(arg_1.a.x * arg_3.c.c.c);
    var var_1 = arg_1.c;
    var var_2 = arg_1.b;
    var var_3 = -918f;
    let var_4 = select(firstTrailingBit(firstLeadingBit(vec3<u32>(arg_0.x, arg_0.x, u_input.a))) << (~vec3<u32>(arg_0.x, firstLeadingBit(11334u), arg_3.c.c.a) % vec3<u32>(32u)), vec3<u32>(~(4294967295u & u_input.a) << (~(~u_input.a) % 32u), 4294967295u, arg_0.x ^ 0u), !select(select(!vec3<bool>(false, arg_3.d, false), vec3<bool>(false, false, false), true), select(!vec3<bool>(arg_3.d, arg_3.d, false), vec3<bool>(arg_3.d, arg_3.d, arg_3.d), vec3<bool>(true, arg_3.d, arg_3.d)), !(!vec3<bool>(arg_3.d, false, arg_3.d))));
    return Struct_2(select(abs(var_4), max(vec3<u32>(~u_input.a, ~1u, var_2.a), vec3<u32>(1u, arg_3.c.c.a, var_1.a)), vec3<bool>(false, func_2(true, Struct_4(9092i, Struct_1(arg_2.x, arg_3.c.b.b, var_2.c), Struct_3(arg_1.a, arg_1.b, Struct_1(var_4.x, arg_3.c.b.b, 451f), 4294967295u), true, arg_3.a), max(var_1.b.x, var_1.b.x)).b, arg_3.d)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(abs(~(~vec2<u32>(40254u, u_input.a))), Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(47819i, Struct_1(4294967295u, vec2<i32>(-27699i, -33138i), -1322f), vec2<i32>(-1i, -6344i), 40351i)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-584f, 1253f, -1493f), vec3<f32>(-340f, -1000f, 615f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 547f, -1755f)), vec3<f32>(-2352f, 1000f, 1505f), vec3<bool>(false, true, false)))), Struct_1(_wgslsmith_add_u32(44246u, 1u), -_wgslsmith_sub_vec2_i32(vec2<i32>(-46644i, -1i), vec2<i32>(1i, -1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -740f))), Struct_1(0u, vec2<i32>(_wgslsmith_mod_i32(51881i, 1209i), ~(-1i)), 1307f), countOneBits(u_input.a)), vec2<u32>(0u, 25054u), Struct_4(~min(~(-23229i), reverseBits(51261i)), Struct_1(_wgslsmith_clamp_u32(u_input.a, 38901u, 53021u) & abs(26024u), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), ~vec2<i32>(-1i, -1i)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(157f)), 367f, true))), Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-764f - -638f), _wgslsmith_f_op_f32(round(164f)), -995f), Struct_1(0u, abs(vec2<i32>(9885i, 55073i)), _wgslsmith_f_op_f32(ceil(399f))), Struct_1(4294967295u, ~vec2<i32>(-2147483647i, -1i), -275f), 1u), false, -abs(1i)));
    var var_1 = firstTrailingBit(_wgslsmith_add_i32(-2147483647i, _wgslsmith_div_i32(-(~2147483647i), max(~(-24288i), 2147483647i))));
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -490f, -574f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-243f, 1164f, 558f))))), Struct_1(u_input.a, (vec2<i32>(-1i) * -vec2<i32>(-1i, 56946i)) >> ((~var_0.a.zz & ~vec2<u32>(45212u, 47366u)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-515f, 1778f)))))), Struct_1(max(_wgslsmith_div_u32(48850u, 4294967295u), var_0.a.x) | 14010u, -firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(-3451i, -32246i), vec2<i32>(2147483647i, -2584i))), -1201f), ~max(0u, func_3()));
    var_1 = -(var_2.c.b.x | var_2.b.b.x);
    var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.a) - var_2.a), Struct_1(~(var_0.a.x & _wgslsmith_mod_u32(4294967295u, u_input.a)), var_2.c.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1597f))))), Struct_1(var_0.a.x, var_2.b.b, -499f), ~var_2.c.a);
    let x = u_input.a;
    s_output = StorageBuffer(30467u, ~(~vec4<u32>(4294967295u, 4294967295u, ~50424u, min(23992u, 0u))));
}


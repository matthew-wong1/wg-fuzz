struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(vec4<u32>(0u, max(~u_input.c.x, u_input.b), 9874u, 38536u) ^ ~(~(~vec4<u32>(u_input.b, 61851u, 12885u, 0u))), 4294967295u ^ ~(~(u_input.d | 0u)), ~(abs(_wgslsmith_div_i32(27596i, u_input.a)) & -1i), ~(i32(-1i) * -6402i), _wgslsmith_f_op_f32(ceil(-1515f)));
    let var_1 = Struct_2(select(select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), !(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))), select(vec2<bool>(true, any(vec3<bool>(false, true, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(326f, var_0.e, -751f, var_0.e)) - vec4<f32>(var_0.e, var_0.e, 3163f, -695f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(868f, var_0.e, 395f, -310f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.e, -1665f, -452f, 906f), vec4<f32>(var_0.e, var_0.e, var_0.e, -2880f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1189f, var_0.e, -1000f))))), Struct_1(var_0.a, ~min(max(var_0.a.x, u_input.d), ~36153u), ~1i, 0i, var_0.e));
    var var_2 = 900f;
    let var_3 = var_0;
    var_2 = var_3.e;
    return -_wgslsmith_div_i32(u_input.a & _wgslsmith_sub_i32(0i, 17112i), var_3.c << (~0u % 32u)) << (~u_input.d % 32u);
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = vec3<bool>(true, true, true);
    var var_1 = Struct_1(arg_0.c.a, min(40752u, ~(~0u) << (~(~arg_0.c.a.x) % 32u)), reverseBits((i32(-1i) * -38503i) >> (arg_0.c.a.x % 32u)), u_input.a, _wgslsmith_f_op_f32(-arg_0.b.x));
    let var_2 = ~(~1u);
    let var_3 = Struct_2(arg_0.a, vec4<f32>(-1294f, _wgslsmith_f_op_f32(sign(-1614f)), arg_0.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.e) - _wgslsmith_div_f32(-146f, 1224f))))), arg_0.c);
    var_1 = Struct_1(select(~arg_0.c.a, _wgslsmith_mult_vec4_u32(firstLeadingBit(firstLeadingBit(var_1.a)), ~(~vec4<u32>(22975u, var_1.b, 61353u, 4294967295u))), !(!vec4<bool>(false, false, arg_0.a.x, true))), 4294967295u, abs(countOneBits(func_3())), ~u_input.a, arg_0.b.x);
    return arg_0.c;
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_2) -> vec2<f32> {
    let var_0 = arg_2.c;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_2.b.yx)));
}

fn func_1(arg_0: u32) -> vec2<u32> {
    let var_0 = !select(select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), true)), vec4<bool>(true, true, true, true), any(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-468f, 220f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(153f, -1000f))), _wgslsmith_div_vec2_f32(vec2<f32>(380f, 463f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-787f, -121f)))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_4(true, Struct_3(true, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 312f, 536f, -488f) - vec4<f32>(589f, 567f, 1514f, -426f)), !vec3<bool>(var_0.x, true, true), ~vec3<u32>(arg_0, u_input.b, 6178u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1061f, 102f))), Struct_2(!vec2<bool>(true, var_0.x), vec4<f32>(-1761f, 305f, 515f, -895f), func_2(Struct_2(vec2<bool>(true, var_0.x), vec4<f32>(-1353f, 2288f, -1495f, -345f), Struct_1(vec4<u32>(arg_0, arg_0, arg_0, arg_0), 0u, -1i, 1i, 375f)))))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1362f, 445f)) - _wgslsmith_f_op_f32(-1679f + 453f))), var_0.x && any(select(var_0.ywz, var_0.zyw, false)))));
    var var_2 = var_0.x;
    return abs(_wgslsmith_mult_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(27449u, 0u), vec2<u32>(u_input.b, 1u)), func_2(Struct_2(var_0.ww, vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), Struct_1(vec4<u32>(23605u, u_input.b, arg_0, 82462u), arg_0, -4723i, 8564i, -1001f))).a.zw)) & (vec2<u32>(1u, 0u) | ~abs(~u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(u_input.c, u_input.c, true), func_1(~_wgslsmith_div_u32(u_input.c.x, ~u_input.b)), false);
    let var_1 = -u_input.a;
    let var_2 = (reverseBits(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(2147483647i, -24518i)), vec2<i32>(u_input.a, 17883i) ^ vec2<i32>(-1i, -1i))) | u_input.a) > ~(-func_3());
    var var_3 = Struct_2(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(470f, -1524f, -604f, -1434f)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-349f, -1197f, 1000f, -540f) - vec4<f32>(1611f, 1192f, 581f, -576f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, -404f, 964f, -1000f), vec4<f32>(-179f, -114f, 1502f, -1615f))), !vec4<bool>(true, true, var_2, var_2)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1317f, -1124f, -219f, -146f)))), vec4<f32>(_wgslsmith_f_op_f32(-2166f + 604f), _wgslsmith_f_op_f32(f32(-1f) * -1120f), _wgslsmith_f_op_f32(min(-328f, 1813f)), -873f)))), Struct_1(vec4<u32>(_wgslsmith_sub_u32(~39182u, ~var_0.x), reverseBits(var_0.x << (var_0.x % 32u)), ~min(27310u, 23662u), _wgslsmith_div_u32(abs(7117u), _wgslsmith_sub_u32(u_input.d, 11475u))), ~u_input.c.x, select(-(i32(-1i) * -13188i), var_1 << (~var_0.x % 32u), var_2), u_input.a ^ -(~(-1i)), 693f));
    let var_4 = Struct_1(var_3.c.a, 28819u, 2525i, 2147483647i >> (1u % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-113f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(select(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 53792i), vec2<i32>(0i, 4483i)), vec2<i32>(-2933i, u_input.a), !var_3.a), _wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.a, var_3.c.d), ~vec2<i32>(var_1, var_1))), vec2<i32>(~1i, -2147483647i)), ~func_2(Struct_2(select(var_3.a, var_3.a, vec2<bool>(var_3.a.x, var_2)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.c.e, var_4.e, var_3.b.x, 123f) + vec4<f32>(var_4.e, var_4.e, 972f, 1611f)), Struct_1(vec4<u32>(4294967295u, 0u, 1u, 17210u), 15257u, 18694i, 21593i, -253f))).d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3.b.x * _wgslsmith_f_op_f32(max(-2002f, var_3.b.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_2(var_3.a, var_3.b, Struct_1(var_4.a, var_4.a.x, u_input.a, 2147483647i, var_3.b.x))).e - _wgslsmith_f_op_f32(-1000f * 437f)), -105f))), 17912u, select(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(20431i, var_4.c), -vec2<i32>(1i, var_3.c.c)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_4.d, 0i, 0i), vec3<i32>(-18273i, var_4.d, 0i)), -1i)), _wgslsmith_div_vec2_i32(firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(15657i, var_4.d), vec2<i32>(-56987i, var_4.d))), _wgslsmith_mult_vec2_i32(vec2<i32>(25761i, u_input.a) >> (vec2<u32>(u_input.c.x, 48029u) % vec2<u32>(32u)), vec2<i32>(u_input.a, 14835i))), any(select(select(vec3<bool>(var_3.a.x, var_3.a.x, true), vec3<bool>(true, false, var_2), vec3<bool>(var_2, false, var_2)), !vec3<bool>(var_2, var_3.a.x, false), all(vec3<bool>(var_2, true, false))))));
}


struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec4<bool>,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<i32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_3,
    d: vec3<f32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 14>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec4<f32> {
    var var_0 = 38472u;
    let var_1 = select(vec3<bool>(all(vec3<bool>(true, any(vec2<bool>(true, true)), u_input.d.x < 10723u)), u_input.c.x > ~countOneBits(-29218i), true), vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-420f)) - 2097f) > _wgslsmith_div_f32(443f, _wgslsmith_div_f32(-374f, 1456f)), all(vec2<bool>(any(vec4<bool>(false, true, true, false)), true)), any(vec3<bool>(true, true, true))), true);
    var var_2 = u_input.c.x;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(483f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(889f, -541f, var_1.x)) + _wgslsmith_f_op_f32(step(-539f, 1000f)))))) + 373f);
    var var_4 = var_1.x;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-240f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2423f), _wgslsmith_f_op_f32(var_3 - -491f))), _wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(-var_3)))));
}

fn func_2() -> u32 {
    let var_0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1520f * 755f), -348f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(356f * 405f), _wgslsmith_f_op_f32(sign(-1355f)), true)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -460f) - -1663f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -514f)))), Struct_2(u_input.b, Struct_1(vec3<u32>(_wgslsmith_add_u32(9421u, 104866u), u_input.a, min(37882u, u_input.d.x)), !all(vec3<bool>(false, false, false)), vec4<bool>(false, true, false, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1075f, -1000f, -1000f, -712f) + vec4<f32>(952f, -1000f, 1481f, 314f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(545f, -980f, 2035f, -431f))), _wgslsmith_mult_vec3_i32(u_input.c.yxz, _wgslsmith_clamp_vec3_i32(vec3<i32>(-635i, -32888i, -2147483647i), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), u_input.c.xwz))), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(u_input.c.x, u_input.c.x), -u_input.c.x), reverseBits(firstLeadingBit(u_input.c.xy))), 1i, Struct_1(reverseBits(u_input.d) << (_wgslsmith_mod_vec3_u32(u_input.d, vec3<u32>(u_input.a, u_input.b, u_input.a)) % vec3<u32>(32u)), any(vec3<bool>(false, false, false)) && true, select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_div_vec4_f32(vec4<f32>(658f, 1398f, 1135f, -1000f), _wgslsmith_f_op_vec4_f32(func_3())), u_input.c.zxy)), Struct_1(firstTrailingBit(u_input.d), any(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), true), vec4<bool>(false, true, true, false), true)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(466f, -675f, -582f, 1000f) * vec4<f32>(1000f, -215f, 588f, -1081f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-255f, 315f, 130f, 826f)))), firstLeadingBit(vec3<i32>(reverseBits(2147483647i), select(0i, 16982i, false), -u_input.c.x))), select(u_input.c.x >= 2147483647i, false, select(true, false, all(vec2<bool>(false, false)))));
    global0 = array<Struct_3, 14>();
    global0 = array<Struct_3, 14>();
    global0 = array<Struct_3, 14>();
    let var_1 = (vec4<u32>(_wgslsmith_sub_u32(~u_input.b, u_input.a), 0u, reverseBits(1u) << ((37461u >> (u_input.b % 32u)) % 32u), 1u) << (_wgslsmith_mod_vec4_u32(vec4<u32>(~33558u, ~var_0.b.a, u_input.b, var_0.b.e.a.x), vec4<u32>(~0u, _wgslsmith_dot_vec3_u32(u_input.d, var_0.c.a), ~u_input.b, ~u_input.a)) % vec4<u32>(32u))) ^ ~min(vec4<u32>(1u << (u_input.d.x % 32u), 1u, _wgslsmith_div_u32(var_0.c.a.x, u_input.b), _wgslsmith_mod_u32(46719u, 1u)), min(firstTrailingBit(vec4<u32>(var_0.c.a.x, 0u, 30185u, u_input.a)), ~vec4<u32>(70292u, 77789u, var_0.c.a.x, var_0.b.a)));
    return ~(~abs(2475u));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_4) -> vec3<u32> {
    global0 = array<Struct_3, 14>();
    var var_0 = ~(~1u);
    var var_1 = vec2<u32>(func_2(), 1u);
    global0 = array<Struct_3, 14>();
    var var_2 = arg_2.d.x;
    return ~vec3<u32>(countOneBits(_wgslsmith_mod_u32(var_1.x, _wgslsmith_mult_u32(0u, 1u))), 4294967295u, 1u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_2 {
    global0 = array<Struct_3, 14>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-arg_3), arg_1.b, Struct_1(u_input.d >> (vec3<u32>(func_2(), arg_2.a.x, arg_0.a.x) % vec3<u32>(32u)), all(vec2<bool>(true, true)), vec4<bool>(true, !select(arg_0.c.x, false, false), -305f >= arg_0.d.x, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.d.x, 166f, arg_2.d.x, 160f), vec4<f32>(arg_2.d.x, -528f, 346f, arg_3.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.d.x, arg_1.a.x, 1079f, -311f) - vec4<f32>(arg_0.d.x, arg_2.d.x, 1000f, arg_2.d.x)))), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_0.e, u_input.c.xwy, vec3<i32>(arg_2.e.x, 2147483647i, -1i)), arg_1.b.e.e << (arg_0.a % vec3<u32>(32u)), min(vec3<i32>(9040i, arg_1.b.d, 31221i), arg_1.b.b.e)) ^ (-arg_1.c.e >> ((vec3<u32>(u_input.d.x, 1u, 1u) ^ vec3<u32>(u_input.b, u_input.a, u_input.b)) % vec3<u32>(32u)))), true);
    return Struct_2(countOneBits(firstLeadingBit(min(arg_2.a.x, 33614u))), var_0.b.e, abs(abs(max(arg_1.b.b.e.yx & u_input.c.xw, max(arg_2.e.yx, arg_2.e.yz)))), -_wgslsmith_div_i32(abs(~var_0.c.e.x), var_0.b.d), var_0.b.b);
}

fn func_5(arg_0: u32, arg_1: Struct_4, arg_2: f32, arg_3: f32) -> StorageBuffer {
    let var_0 = firstTrailingBit(vec2<u32>(func_1(true, vec4<f32>(-827f, arg_1.d.x, 1792f, 491f), Struct_4(Struct_2(arg_0, arg_1.a.b, arg_1.a.b.e.zy, arg_1.a.e.e.x, arg_1.c.b.b), vec3<i32>(arg_1.a.c.x, -2147483647i, arg_1.b.x), Struct_3(arg_1.d, arg_1.c.b, Struct_1(vec3<u32>(u_input.b, arg_0, u_input.d.x), true, arg_1.a.b.c, arg_1.a.b.d, u_input.c.zww), false), arg_1.d, arg_1.e)).x & ~arg_1.a.b.a.x, ~(~1u)));
    global0 = array<Struct_3, 14>();
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.c.c.d.wy * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-589f, -964f), vec2<f32>(arg_3, arg_1.a.e.d.x)))) + vec2<f32>(-181f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_3 + 2060f))))), vec2<f32>(-1955f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(arg_1.a.b.d.x))))))));
    var_1 = _wgslsmith_f_op_vec2_f32(arg_1.d.yz + arg_1.c.c.d.xy);
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(arg_1.c.c.d + arg_1.a.e.d)));
    return StorageBuffer(vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_div_f32(-454f, _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x)))), var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -826f) - -172f)) * 2205f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1684f))))), _wgslsmith_f_op_f32(f32(-1f) * -110f)));
    var var_1 = u_input.b >> (2974u % 32u);
    let x = u_input.a;
    s_output = func_5(_wgslsmith_mult_u32(~u_input.a, firstLeadingBit(57655u) | u_input.d.x), Struct_4(func_4(Struct_1(min(vec3<u32>(1u, 48336u, 20657u), u_input.d), true, vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-153f, 442f, 470f, var_0)), u_input.c.yzw), global0[_wgslsmith_index_u32(4294967295u, 14u)], Struct_1(func_1(false, vec4<f32>(var_0, 463f, var_0, -1000f), Struct_4(Struct_2(u_input.d.x, Struct_1(vec3<u32>(u_input.a, u_input.a, u_input.b), false, vec4<bool>(true, false, true, true), vec4<f32>(-677f, -375f, var_0, var_0), u_input.c.xxz), u_input.c.yz, 0i, Struct_1(vec3<u32>(u_input.d.x, u_input.a, u_input.a), false, vec4<bool>(false, true, true, false), vec4<f32>(var_0, var_0, 509f, 1654f), vec3<i32>(1i, 1i, -1i))), u_input.c.xwx, Struct_3(vec3<f32>(var_0, var_0, var_0), Struct_2(u_input.a, Struct_1(u_input.d, false, vec4<bool>(false, false, true, false), vec4<f32>(414f, var_0, 1071f, var_0), u_input.c.xyy), u_input.c.xz, 14696i, Struct_1(vec3<u32>(u_input.d.x, 4294967295u, u_input.b), false, vec4<bool>(false, true, false, false), vec4<f32>(1000f, -334f, var_0, var_0), u_input.c.yzw)), Struct_1(vec3<u32>(u_input.b, u_input.b, u_input.b), true, vec4<bool>(true, false, true, false), vec4<f32>(452f, var_0, 237f, var_0), vec3<i32>(u_input.c.x, u_input.c.x, 2147483647i)), true), vec3<f32>(var_0, -1320f, -931f), u_input.b)), true, select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true)), vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_mod_vec3_i32(u_input.c.yyy, vec3<i32>(u_input.c.x, u_input.c.x, -2147483647i))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec4_f32(func_3()).ywy, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1097f, var_0, 880f)))))), ~vec3<i32>(firstTrailingBit(1i), -u_input.c.x, -2147483647i), global0[_wgslsmith_index_u32(func_1(false, vec4<f32>(-281f, _wgslsmith_f_op_f32(step(var_0, 1051f)), _wgslsmith_f_op_f32(floor(-623f)), _wgslsmith_f_op_f32(-var_0)), Struct_4(Struct_2(u_input.a, Struct_1(vec3<u32>(14892u, 0u, u_input.a), true, vec4<bool>(false, false, true, false), vec4<f32>(var_0, var_0, var_0, var_0), vec3<i32>(u_input.c.x, 40269i, -2147483647i)), u_input.c.yy, -1i, Struct_1(vec3<u32>(0u, u_input.a, 36910u), false, vec4<bool>(false, true, false, true), vec4<f32>(var_0, var_0, var_0, 867f), vec3<i32>(-2147483647i, 13574i, u_input.c.x))), max(u_input.c.wzz, u_input.c.yyw), Struct_3(vec3<f32>(1170f, var_0, var_0), Struct_2(u_input.a, Struct_1(vec3<u32>(9163u, u_input.b, 4294967295u), true, vec4<bool>(false, true, false, true), vec4<f32>(var_0, var_0, var_0, 1447f), vec3<i32>(83772i, u_input.c.x, u_input.c.x)), u_input.c.wy, 1i, Struct_1(u_input.d, true, vec4<bool>(true, false, true, false), vec4<f32>(354f, 1000f, var_0, var_0), u_input.c.zwx)), Struct_1(vec3<u32>(0u, u_input.a, u_input.d.x), false, vec4<bool>(true, true, true, false), vec4<f32>(-386f, var_0, var_0, var_0), u_input.c.yxz), false), vec3<f32>(var_0, var_0, 428f), _wgslsmith_sub_u32(u_input.d.x, u_input.b))).x, 14u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 299f, 1018f) + vec3<f32>(-880f, var_0, -1250f)) + vec3<f32>(var_0, 1115f, -1101f))), _wgslsmith_div_u32(u_input.b, 5342u)), _wgslsmith_f_op_f32(exp2(var_0)), -1000f);
}


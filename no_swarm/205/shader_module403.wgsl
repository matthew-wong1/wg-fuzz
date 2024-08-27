struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> bool {
    var var_0 = Struct_1(arg_0.b.a);
    var var_1 = abs(vec4<i32>(arg_1, _wgslsmith_clamp_i32((arg_1 ^ arg_1) & firstTrailingBit(-9097i), ~select(arg_1, 746i, arg_0.b.a.x), (-54338i << (u_input.b % 32u)) ^ (arg_1 << (1u % 32u))), arg_1, 34155i));
    var var_2 = arg_0.b;
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2030f, _wgslsmith_f_op_f32(-1601f * -236f), _wgslsmith_f_op_f32(min(-149f, -186f)))))));
    var var_4 = 1000f;
    return any(var_0.a);
}

fn func_2(arg_0: vec2<bool>) -> bool {
    var var_0 = !(!func_3(Struct_2(all(vec4<bool>(true, true, false, arg_0.x)), Struct_1(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), reverseBits(min(-14075i, -1i))));
    let var_1 = Struct_2(arg_0.x, Struct_1(vec4<bool>(!arg_0.x, arg_0.x, true, all(select(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, false, true), false)))));
    var var_2 = 1293f;
    var var_3 = vec4<f32>(-1000f, -210f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-291f + -1193f)), -244f);
    return true;
}

fn func_4(arg_0: bool, arg_1: u32) -> Struct_2 {
    let var_0 = Struct_2(arg_0, Struct_1(!(!(!vec4<bool>(true, false, arg_0, arg_0)))));
    let var_1 = abs(_wgslsmith_add_i32(_wgslsmith_sub_i32(0i, max(max(-7436i, 2147483647i), ~2147483647i)), 2147483647i));
    let var_2 = Struct_1(!(!(!(!vec4<bool>(var_0.b.a.x, true, arg_0, arg_0)))));
    var var_3 = min(~vec3<i32>(var_1, -2147483647i, 10061i), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(max(vec3<i32>(var_1, var_1, 0i), vec3<i32>(0i, var_1, 0i)), vec3<i32>(~var_1, i32(-1i) * -9647i, -28614i), ~(vec3<i32>(21273i, var_1, -11110i) & vec3<i32>(var_1, var_1, -7982i))), ~vec3<i32>(firstTrailingBit(26403i), -1i, var_1)));
    let var_4 = arg_1;
    return var_0;
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: u32, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(733f, 381f, arg_0, 807f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -1767f, 430f))))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(round(-1246f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - 845f) - 841f), 1192f, -2120f))));
    var var_1 = func_4(func_2(arg_1.b.a.zy), min(arg_2, ~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(87267u, 4294967295u, arg_2), vec3<u32>(59033u, arg_2, 15065u), vec3<u32>(u_input.b, u_input.a, 54592u)), vec3<u32>(arg_2, 4294967295u, u_input.b) & vec3<u32>(arg_2, 4294967295u, 1u))));
    var var_2 = func_4(false, u_input.c).b;
    var_2 = func_4(true, ~reverseBits(_wgslsmith_clamp_u32(17330u, arg_2, 46812u)) ^ ~(~32722u >> (arg_2 % 32u))).b;
    let var_3 = -firstLeadingBit(arg_3.x);
    return arg_1;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = u_input.c;
    var_1 = 50389u;
    var_1 = u_input.c;
    var_1 = ~firstLeadingBit(97152u);
    return var_0.b;
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_1(arg_1.a);
    var_0 = func_4(arg_2, max(u_input.b, ~u_input.c)).b;
    let var_1 = _wgslsmith_f_op_f32(-arg_3.x) <= 878f;
    var_0 = arg_1;
    var_0 = func_4(true, abs(1u) ^ u_input.c).b;
    return func_1(arg_3.x, Struct_2(any(arg_1.a), Struct_1(var_0.a)), 6690u, _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(-select(vec2<i32>(-31793i, -3828i), vec2<i32>(0i, 2147483647i), vec2<bool>(false, false)), vec2<i32>(~34716i, 11976i << (u_input.c % 32u))), vec2<i32>(_wgslsmith_mod_i32(0i, 34124i), 1i) & abs(firstTrailingBit(vec2<i32>(-17829i, -10931i))))).b;
}

fn func_7(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: vec4<i32>) -> f32 {
    let var_0 = !(!(!select(select(vec3<bool>(arg_2.a.x, true, arg_1), arg_2.a.zyx, arg_2.a.ywx), arg_2.a.xyx, arg_1)));
    var var_1 = ~_wgslsmith_mult_vec3_u32(~vec3<u32>(_wgslsmith_div_u32(17013u, 17609u), 4294967295u, u_input.b ^ u_input.a), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 79324u, u_input.b), vec3<u32>(85547u, u_input.b, 49012u), max(vec3<u32>(u_input.c, 4294967295u, u_input.a), vec3<u32>(12448u, u_input.a, 5213u))));
    var_1 = vec3<u32>(~(~countOneBits(3023u)), ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.c), firstLeadingBit(vec2<u32>(u_input.c, 10894u))), firstLeadingBit(~68292u)), max(var_1.x, 46329u));
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(452f, -1417f) + vec2<f32>(772f, -1412f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-780f, -414f), vec2<f32>(746f, 518f)))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(1670f)), _wgslsmith_f_op_f32(-872f - -281f))))));
    return _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(1228f * _wgslsmith_f_op_f32(106f * var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_7(~_wgslsmith_add_i32(_wgslsmith_div_i32(57620i, -57298i), 1i), true, func_6(any(vec3<bool>(false, false, false)), func_5(func_1(-1690f, Struct_2(false, Struct_1(vec4<bool>(true, true, true, false))), u_input.c, vec2<i32>(48138i, 48079i)), vec2<bool>(true, true)), !all(vec4<bool>(false, false, true, false)), vec2<f32>(_wgslsmith_f_op_f32(578f + 429f), _wgslsmith_f_op_f32(max(945f, -443f)))), max(~select(vec4<i32>(-45263i, 0i, -2147483647i, 1i), vec4<i32>(-1i, 24789i, 2147483647i, 1i), vec4<bool>(true, false, true, false)), vec4<i32>(-1i, 0i, -1i >> (u_input.c % 32u), ~23994i)))) + _wgslsmith_f_op_f32(304f + -319f));
    var var_1 = vec3<i32>(1i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -7996i, -25191i, 0i), vec4<i32>(2147483647i, 44124i, 8711i, 35605i)), _wgslsmith_mod_i32(-32600i, 15057i)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-26526i, -41822i, 0i), vec3<i32>(24610i, 0i, -51148i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -19563i, 12518i), vec3<i32>(-2147483647i, -52242i, 0i)))), _wgslsmith_dot_vec4_i32(reverseBits(abs(vec4<i32>(-22134i, 29381i, 1432i, 1i))), select(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, -2147483647i, 2147483647i), vec4<i32>(-1i, -1i, 16896i, 2147483647i)), vec4<i32>(58783i, 11755i, -2147483647i, -1i), true))), 1i);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2016f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-275f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1942f, 1281f)))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-1000f)), 747f))));
    let var_3 = func_5(Struct_2(true, Struct_1(vec4<bool>(true, true, true, true))), vec2<bool>(func_6(false, Struct_1(func_1(var_2.x, Struct_2(true, Struct_1(vec4<bool>(false, false, false, true))), u_input.a, vec2<i32>(var_1.x, 25286i)).b.a), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-977f, 724f) * vec2<f32>(-1027f, var_2.x)))).a.x, var_2.x <= 567f));
    let var_4 = ~vec2<i32>(select(1i, _wgslsmith_add_i32(var_1.x, abs(var_1.x)), var_3.a.x), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-30942i, -25132i, -1i, -1i)), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, 4431i, 2147483647i, -2147483647i), vec4<i32>(var_1.x, -2147483647i, 23248i, var_1.x)), vec4<i32>(var_1.x, -13457i, var_1.x, var_1.x))));
    let var_5 = -14800i;
    let var_6 = abs(~reverseBits(vec3<u32>(~0u, abs(u_input.b), _wgslsmith_add_u32(u_input.a, u_input.c))));
    var_0 = -687f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(1u, firstLeadingBit(var_6.x)), vec2<f32>(_wgslsmith_f_op_f32(trunc(-2075f)), -298f), ~(-_wgslsmith_add_vec3_i32(-vec3<i32>(0i, -6780i, 1i), vec3<i32>(var_1.x, var_5, var_1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-800f, var_2.x, var_2.x) - vec3<f32>(var_2.x, -765f, var_2.x)) + vec3<f32>(1529f, var_2.x, -232f)))));
}


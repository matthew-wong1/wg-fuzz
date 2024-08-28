struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: u32,
    d: vec3<bool>,
    e: f32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec3<f32>;

var<private> global2: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(716f, -453f, 2006f), vec3<f32>(-819f, -1693f, 354f), vec3<f32>(2174f, -342f, -2041f), vec3<f32>(-2640f, 710f, 1951f), vec3<f32>(645f, -711f, 355f), vec3<f32>(-1000f, -221f, -550f), vec3<f32>(2298f, -420f, -134f), vec3<f32>(927f, -463f, 456f));

var<private> global3: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(-43053i, Struct_1(0i, -18548i, vec4<i32>(-53828i, 0i, 19503i, 8905i), true), Struct_1(-7604i, -21392i, vec4<i32>(2147483647i, 2147483647i, 1i, 3292i), false), 1000f), Struct_2(29184i, Struct_1(1i, 0i, vec4<i32>(i32(-2147483648), i32(-2147483648), 1441i, -15143i), false), Struct_1(54208i, -34385i, vec4<i32>(81977i, 1i, -22092i, -34233i), false), -872f), Struct_2(-42046i, Struct_1(-8587i, -7838i, vec4<i32>(2147483647i, 5388i, i32(-2147483648), -51521i), false), Struct_1(-1i, 63898i, vec4<i32>(-36242i, -8372i, 12767i, 3146i), true), -1000f), Struct_2(0i, Struct_1(-1i, 1i, vec4<i32>(1263i, 0i, -1i, -1i), true), Struct_1(0i, 77053i, vec4<i32>(-74160i, 2147483647i, 1i, 15585i), false), -889f), Struct_2(2147483647i, Struct_1(-18938i, -1i, vec4<i32>(-1i, 6996i, 0i, -65549i), true), Struct_1(2147483647i, 45219i, vec4<i32>(-1i, 26989i, -36535i, 42095i), true), -134f), Struct_2(37748i, Struct_1(6636i, 0i, vec4<i32>(24807i, 56611i, 1i, 34475i), false), Struct_1(2147483647i, -6269i, vec4<i32>(i32(-2147483648), i32(-2147483648), 56212i, -28145i), true), 297f), Struct_2(2147483647i, Struct_1(i32(-2147483648), 40518i, vec4<i32>(-1i, -66871i, 23484i, 10359i), true), Struct_1(2147483647i, 0i, vec4<i32>(-61941i, -45491i, -1i, 28611i), false), -1249f), Struct_2(i32(-2147483648), Struct_1(0i, i32(-2147483648), vec4<i32>(1i, 9718i, 1i, -33564i), true), Struct_1(i32(-2147483648), 28418i, vec4<i32>(-15431i, 2147483647i, -1i, -1i), true), -679f), Struct_2(33036i, Struct_1(-1i, 1814i, vec4<i32>(-23538i, 1145i, -48716i, -10298i), false), Struct_1(-1i, -2048i, vec4<i32>(i32(-2147483648), 0i, 1i, -3927i), false), -2882f), Struct_2(-1i, Struct_1(1i, 46721i, vec4<i32>(0i, 2147483647i, -173i, -1i), true), Struct_1(1i, 15841i, vec4<i32>(1i, -35770i, -1i, -1i), false), 144f), Struct_2(46232i, Struct_1(-1i, -1i, vec4<i32>(2736i, 16882i, -24978i, -21645i), true), Struct_1(-38040i, -1i, vec4<i32>(55151i, -7396i, -1i, -1i), true), -644f), Struct_2(2147483647i, Struct_1(11448i, -1i, vec4<i32>(i32(-2147483648), -1i, -1i, 65766i), false), Struct_1(1i, -29316i, vec4<i32>(7970i, 37603i, -1i, 11023i), false), -913f), Struct_2(38026i, Struct_1(-17924i, i32(-2147483648), vec4<i32>(-1i, 30287i, -20515i, -1131i), true), Struct_1(21787i, 0i, vec4<i32>(-24166i, 1i, -68968i, 2147483647i), true), -745f));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    global3 = array<Struct_2, 13>();
    var var_0 = Struct_2(max(-1i, u_input.c) & u_input.b.x, Struct_1(abs(u_input.b.x | 1i), min(~_wgslsmith_mod_i32(u_input.e.x, 0i), abs(-92012i)), firstTrailingBit(countOneBits(~vec4<i32>(58018i, u_input.c, u_input.b.x, u_input.c))), true), Struct_1(-2147483647i, -36337i, _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(-50871i, u_input.b.x, u_input.b.x, -2147483647i), vec4<i32>(u_input.c, u_input.c, u_input.e.x, -56844i)), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, 1i, 0i, u_input.e.x), vec4<i32>(u_input.e.x, u_input.b.x, u_input.c, 32166i)), _wgslsmith_add_vec4_i32(vec4<i32>(19759i, 7110i, u_input.c, u_input.b.x), vec4<i32>(u_input.c, u_input.b.x, 1i, u_input.b.x)))), false), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1558f, -2120f))), global1.x) * _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x + global1.x), _wgslsmith_f_op_f32(abs(global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-217f + global1.x)))));
    var_0 = global3[_wgslsmith_index_u32(4294967295u, 13u)];
    var_0 = Struct_2(2147483647i, Struct_1(~u_input.c, var_0.b.a, vec4<i32>(1i, ~u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, u_input.b.x, u_input.b.x, u_input.c), vec4<i32>(24080i, var_0.b.c.x, var_0.a, 46773i)), -2147483647i) ^ abs(-var_0.c.c), all(!vec3<bool>(var_0.b.d, var_0.b.d, var_0.c.d))), Struct_1(max(var_0.a, u_input.c), _wgslsmith_dot_vec4_i32(var_0.b.c, ~var_0.b.c), vec4<i32>(u_input.b.x, u_input.c, -firstLeadingBit(2147483647i), -(30062i ^ var_0.c.b)), false), global1.x);
    let var_1 = Struct_2(-(~(i32(-1i) * -var_0.b.c.x)), Struct_1(-(min(-1i, u_input.b.x) >> (_wgslsmith_mult_u32(global0.x, 103637u) % 32u)), firstLeadingBit(~11206i) << (firstTrailingBit(firstTrailingBit(u_input.a.x)) % 32u), vec4<i32>(-39733i, var_0.c.c.x, _wgslsmith_add_i32(var_0.c.a, 34808i), abs(u_input.c)) & _wgslsmith_sub_vec4_i32(var_0.c.c & var_0.c.c, var_0.b.c), any(!select(vec3<bool>(var_0.b.d, var_0.b.d, true), vec3<bool>(var_0.b.d, false, var_0.b.d), vec3<bool>(false, true, false)))), Struct_1(var_0.a, countOneBits(26848i >> (global0.x % 32u)) << (u_input.d.x % 32u), var_0.c.c, !(!select(var_0.c.d, false, false))), -1123f);
    return _wgslsmith_f_op_f32(-176f + 509f);
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_dot_vec3_i32(max(~(-u_input.b), u_input.e), vec3<i32>(u_input.e.x, countOneBits(u_input.c), select(44602i, 0i, false) << (~1u % 32u))) >= u_input.e.x;
    var var_1 = Struct_1(u_input.e.x, u_input.b.x << (1u % 32u), vec4<i32>(u_input.b.x, ~(-6804i) | (~u_input.b.x >> (u_input.a.x % 32u)), ~(-(~1i)), -886i), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-107f - global1.x) * global1.x) == global1.x));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + 480f) * _wgslsmith_div_f32(173f, _wgslsmith_f_op_f32(func_3()))), 1569f, -236f, -410f);
    var var_3 = vec2<bool>(true, true);
    var var_4 = max(71928u ^ _wgslsmith_div_u32(abs(u_input.a.x) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, 0u, 0u), vec4<u32>(global0.x, u_input.d.x, u_input.a.x, 0u)), 1u & min(global0.x, u_input.a.x)), ~select(~(global0.x << (0u % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0.x, 1u, u_input.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(79095u, global0.x, 20700u, global0.x), vec4<u32>(44453u, global0.x, 0u, u_input.d.x))), !all(vec4<bool>(false, var_1.d, var_3.x, true))));
    return !(!((-559f <= _wgslsmith_f_op_f32(-868f * global1.x)) || var_1.d));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_5, arg_3: u32) -> i32 {
    let var_0 = vec3<bool>(all(vec3<bool>(func_2(), arg_1.x, true && arg_2.b.b.d)), false, all(select(select(!vec2<bool>(false, arg_2.b.c.d), arg_1.xw, u_input.a.x > arg_3), select(select(vec2<bool>(true, true), vec2<bool>(true, false), arg_1.x), arg_1.zw, !arg_1.wy), select(select(vec2<bool>(true, arg_0.c.d), arg_1.yz, true), arg_1.xy, any(arg_1.yw)))));
    global2 = array<vec3<f32>, 8>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.d + global1.x))), _wgslsmith_f_op_f32(arg_2.b.d - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-569f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.b.d + _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(1363f - -739f), 0i < _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.a.x, -1i), min(arg_2.a.wy, vec2<i32>(arg_0.c.c.x, 75492i))))));
    var var_2 = _wgslsmith_div_vec2_f32(var_1.yz, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.b.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.d + var_1.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.yz) * vec2<f32>(_wgslsmith_f_op_f32(trunc(676f)), arg_2.b.d))));
    global3 = array<Struct_2, 13>();
    return _wgslsmith_mult_i32(~(~_wgslsmith_clamp_i32(arg_0.c.c.x, arg_0.c.c.x, arg_2.b.b.b)), -2147483647i) << (4294967295u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~u_input.a.zxx;
    let var_0 = vec3<f32>(-286f, global1.x, 783f);
    let var_1 = Struct_5(vec4<i32>(_wgslsmith_mult_i32(0i, _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.c, -26062i), 2147483647i)), countOneBits(i32(-1i) * -2147483647i), -1i, -19326i), Struct_2(_wgslsmith_div_i32(_wgslsmith_add_i32(func_1(Struct_2(u_input.b.x, Struct_1(u_input.c, -2147483647i, vec4<i32>(-1i, 18195i, u_input.b.x, u_input.e.x), false), Struct_1(23241i, u_input.c, vec4<i32>(u_input.b.x, -1i, u_input.b.x, 15451i), true), global1.x), vec4<bool>(false, true, false, false), Struct_5(vec4<i32>(0i, 42268i, u_input.e.x, u_input.b.x), global3[_wgslsmith_index_u32(4294967295u, 13u)], vec4<u32>(31176u, 1u, u_input.a.x, u_input.d.x), vec3<u32>(u_input.a.x, global0.x, u_input.d.x)), 16150u), _wgslsmith_mod_i32(u_input.c, u_input.b.x)), max(2147483647i, u_input.e.x)), Struct_1(~(-17502i) | func_1(Struct_2(31309i, Struct_1(2147483647i, u_input.b.x, vec4<i32>(-21911i, -22899i, -29954i, -85241i), true), Struct_1(13026i, u_input.c, vec4<i32>(u_input.e.x, u_input.c, u_input.b.x, u_input.c), true), var_0.x), vec4<bool>(false, true, false, true), Struct_5(vec4<i32>(u_input.c, u_input.b.x, u_input.c, 20493i), Struct_2(u_input.c, Struct_1(-11537i, u_input.e.x, vec4<i32>(2147483647i, 1i, u_input.b.x, 6082i), false), Struct_1(49129i, 2147483647i, vec4<i32>(-44422i, -40945i, -2441i, u_input.b.x), true), 750f), u_input.a, u_input.a.xyz), 4294967295u), countOneBits(~1i), abs(~vec4<i32>(u_input.b.x, 1i, 36683i, 2147483647i)), true), Struct_1(~firstTrailingBit(u_input.c), ~(-2147483647i), ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 2147483647i), vec4<i32>(u_input.e.x, u_input.e.x, 0i, -1i)), -u_input.b.x > countOneBits(u_input.b.x)), _wgslsmith_f_op_f32(abs(var_0.x))), u_input.a, vec3<u32>(9522u & ~(~u_input.d.x), ~(~14162u), global0.x));
    global0 = u_input.a.zzx | vec3<u32>(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.d.x, var_1.d.x, u_input.d.x), var_1.c)), ~(~(~18334u)), _wgslsmith_add_u32(min(min(0u, 1u), _wgslsmith_add_u32(global0.x, u_input.d.x)), var_1.c.x));
    let var_2 = vec3<bool>(~_wgslsmith_dot_vec2_i32(vec2<i32>(-6756i, u_input.e.x), vec2<i32>(-1i, var_1.a.x)) >= -5971i, var_1.b.c.d, _wgslsmith_sub_i32(func_1(var_1.b, vec4<bool>(var_1.b.c.d, false, true, var_1.b.b.d), var_1, _wgslsmith_clamp_u32(23838u, global0.x, 4294967295u)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, u_input.e.x, var_1.b.a), var_1.b.b.c)) >= (abs(func_1(var_1.b, vec4<bool>(true, var_1.b.c.d, false, var_1.b.b.d), var_1, 1u)) | _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-1i, var_1.a.x, 24024i)), firstTrailingBit(u_input.b))));
    var var_3 = vec3<i32>(~(-_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(var_1.b.c.c.zxw, u_input.b), -9243i ^ var_1.b.b.c.x)), u_input.b.x, max(_wgslsmith_mod_i32(var_1.b.a, var_1.a.x) << ((global0.x >> (u_input.a.x % 32u)) % 32u), _wgslsmith_div_i32(var_1.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-19139i, var_1.a.x), vec2<i32>(var_1.a.x, 25374i)))) << (_wgslsmith_mod_u32(var_1.d.x, u_input.a.x) % 32u));
    var var_4 = Struct_4(vec4<f32>(var_1.b.d, 201f, _wgslsmith_f_op_f32(-1388f + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-449f)), 431f) + _wgslsmith_div_f32(190f, _wgslsmith_f_op_f32(var_1.b.d * var_0.x)))), !vec2<bool>(select(var_1.d.x == 0u, !var_2.x, var_2.x), true), u_input.d.x, select(vec3<bool>(false, all(select(vec2<bool>(false, true), vec2<bool>(false, var_1.b.c.d), var_2.yz)), select(-1587f == var_0.x, any(var_2), true)), !(!vec3<bool>(true, true, var_2.x)), !select(select(vec3<bool>(var_1.b.c.d, var_1.b.b.d, true), var_2, true), !vec3<bool>(var_1.b.c.d, true, false), func_2())), 1717f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.x, 4294967295u), vec2<u32>(31211u, var_1.c.x), vec2<u32>(var_4.c, 4294967295u)), var_1.d.yx), ~abs(71824u)), 8u)], _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_4.a.xyx + vec3<f32>(-755f, var_4.e, 1192f)) - _wgslsmith_div_vec3_f32(var_4.a.xzz, vec3<f32>(-1000f, -845f, global1.x))), var_0)))), max(56192u & global0.x, var_4.c), vec3<u32>(44439u, _wgslsmith_div_u32(3854u, reverseBits(var_1.d.x << (var_4.c % 32u))), ~reverseBits(~u_input.a.x)), 4294967295u);
}


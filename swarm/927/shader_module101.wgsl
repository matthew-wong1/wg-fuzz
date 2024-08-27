struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(true, 1663f, Struct_1(0i, -31714i), Struct_2(Struct_1(11786i, -1i), vec2<bool>(false, true), vec2<f32>(-445f, 667f), vec4<f32>(-1061f, 781f, -183f, -456f)), Struct_2(Struct_1(8540i, -72479i), vec2<bool>(true, false), vec2<f32>(-725f, 1850f), vec4<f32>(362f, 1084f, 1989f, 128f))), Struct_3(false, -202f, Struct_1(2147483647i, 2147483647i), Struct_2(Struct_1(-21049i, 1i), vec2<bool>(false, true), vec2<f32>(-1304f, 189f), vec4<f32>(1000f, -779f, 244f, -1549f)), Struct_2(Struct_1(-1i, 5872i), vec2<bool>(false, false), vec2<f32>(-599f, -664f), vec4<f32>(1468f, -208f, -305f, 701f))), Struct_3(false, 1665f, Struct_1(-62427i, 18153i), Struct_2(Struct_1(1i, 1i), vec2<bool>(false, true), vec2<f32>(-1220f, -244f), vec4<f32>(122f, 1122f, 234f, -624f)), Struct_2(Struct_1(-45557i, -42332i), vec2<bool>(false, true), vec2<f32>(2641f, -1000f), vec4<f32>(407f, -1940f, -965f, 2043f))), Struct_3(false, -331f, Struct_1(-27927i, -51995i), Struct_2(Struct_1(-26539i, -1i), vec2<bool>(false, false), vec2<f32>(742f, 1000f), vec4<f32>(669f, -204f, 2594f, 1326f)), Struct_2(Struct_1(i32(-2147483648), -1i), vec2<bool>(false, true), vec2<f32>(1133f, 1000f), vec4<f32>(1988f, -441f, -1866f, -124f))), Struct_3(false, -117f, Struct_1(0i, -8680i), Struct_2(Struct_1(-12377i, 23361i), vec2<bool>(false, true), vec2<f32>(-590f, 187f), vec4<f32>(1356f, 1195f, 410f, 1160f)), Struct_2(Struct_1(-1i, 0i), vec2<bool>(false, false), vec2<f32>(889f, 2053f), vec4<f32>(128f, 231f, 1000f, 374f))), Struct_3(false, 1000f, Struct_1(76188i, -29636i), Struct_2(Struct_1(-1i, -19215i), vec2<bool>(true, false), vec2<f32>(-115f, -1343f), vec4<f32>(-500f, 311f, 202f, 648f)), Struct_2(Struct_1(14757i, -1i), vec2<bool>(false, true), vec2<f32>(-611f, -258f), vec4<f32>(-1071f, 554f, 667f, -1000f))), Struct_3(true, 1364f, Struct_1(-1i, i32(-2147483648)), Struct_2(Struct_1(-27101i, 0i), vec2<bool>(false, false), vec2<f32>(-1086f, -558f), vec4<f32>(-104f, 633f, 1165f, -968f)), Struct_2(Struct_1(-1i, 1i), vec2<bool>(false, false), vec2<f32>(-744f, 1390f), vec4<f32>(-115f, -119f, 1891f, 1000f))));

var<private> global1: i32 = -1i;

var<private> global2: array<vec2<u32>, 18>;

var<private> global3: u32 = 4294967295u;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: vec3<u32>, arg_3: u32) -> i32 {
    global2 = array<vec2<u32>, 18>();
    global0 = array<Struct_3, 7>();
    var var_0 = Struct_4(9394i, abs(select(_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_3, 23704u, u_input.a, arg_3), vec4<u32>(arg_3, arg_3, arg_3, arg_2.x)), ~vec4<u32>(0u, u_input.a, u_input.a, arg_2.x), !any(arg_1))));
    let var_1 = Struct_5(vec2<i32>(-1i) * -(countOneBits(vec2<i32>(-2147483647i, arg_0)) & (vec2<i32>(arg_0, 0i) & vec2<i32>(195i, var_0.a))));
    return _wgslsmith_dot_vec3_i32(~(~_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0, -2147483647i, 0i), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0, 15115i, arg_0), vec3<i32>(var_0.a, var_0.a, 28139i)))), _wgslsmith_mult_vec3_i32(~(-vec3<i32>(31344i, arg_0, -23212i)), countOneBits(vec3<i32>(var_0.a, 39932i, var_0.a) & vec3<i32>(-2147483647i, 2147483647i, -2147483647i))) | vec3<i32>(119763i, select(var_1.a.x, 1i, arg_1.x), select(19472i, -var_1.a.x, true)));
}

fn func_2(arg_0: bool) -> vec3<f32> {
    global3 = _wgslsmith_sub_u32(7005u, _wgslsmith_sub_u32(select(1u, ~1u, !arg_0), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 16301u), vec3<u32>(31391u, 31895u, u_input.a)), vec3<u32>(u_input.a, u_input.a, u_input.a)))) << (_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(56575u, 0u), vec2<u32>(u_input.a, u_input.a)) >> (u_input.a % 32u), ~u_input.a, u_input.a) % 32u);
    global1 = reverseBits(~_wgslsmith_add_i32(_wgslsmith_sub_i32(0i, func_3(10684i, vec3<bool>(arg_0, arg_0, arg_0), vec3<u32>(155345u, 35161u, 4294967295u), u_input.a)), i32(-1i) * -17421i));
    var var_0 = Struct_1(-1i, ~func_3(~_wgslsmith_dot_vec4_i32(vec4<i32>(34449i, -1i, -33052i, 1i), vec4<i32>(0i, 0i, -13614i, 1i)), vec3<bool>(any(vec4<bool>(true, arg_0, false, arg_0)), !arg_0, true), ~abs(vec3<u32>(u_input.a, u_input.a, u_input.a)), ~select(u_input.a, 22588u, arg_0)));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, _wgslsmith_dot_vec3_u32(countOneBits(~(~vec3<u32>(u_input.a, 14060u, u_input.a))), ~(~vec3<u32>(u_input.a, u_input.a, 22160u) & vec3<u32>(u_input.a, u_input.a, u_input.a)))), 7u)];
    global3 = u_input.a ^ ~reverseBits(~(u_input.a ^ u_input.a));
    return var_1.e.d.zwx;
}

fn func_1() -> bool {
    let var_0 = vec2<u32>(u_input.a ^ u_input.a, u_input.a >> (4294967295u % 32u)) ^ ~_wgslsmith_sub_vec2_u32(global2[_wgslsmith_index_u32(~u_input.a, 18u)], ~max(global2[_wgslsmith_index_u32(u_input.a, 18u)], vec2<u32>(1u, u_input.a)));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-695f * 833f), _wgslsmith_f_op_f32(-657f * 808f), false)) * 1023f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1f)), 749f)), -255f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(true)) * _wgslsmith_div_vec3_f32(vec3<f32>(1000f, 1488f, 1211f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-203f, 711f, -1000f) + vec3<f32>(-885f, -1489f, -1327f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1186f, -1721f, 224f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(287f, 442f, -1351f) + vec3<f32>(-1000f, -1068f, 103f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-158f, 1000f, -1400f), vec3<f32>(679f, 475f, 1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1654f, 1000f, 1278f) - vec3<f32>(1051f, 672f, 1116f))), vec3<bool>(true, true, true))), vec3<bool>(false, false, true))));
    let var_2 = vec2<i32>(func_3(-min(_wgslsmith_mult_i32(-20871i, -5053i), 1i), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), true), false), vec3<u32>(~var_0.x >> (reverseBits(var_0.x) % 32u), ~abs(4541u), 1u), ~_wgslsmith_add_u32(0u, ~var_0.x)), 0i);
    let var_3 = 36020i;
    let var_4 = Struct_1(var_3, _wgslsmith_mult_i32(var_2.x, -19168i));
    return all(!vec3<bool>(true, any(vec2<bool>(true, false)) != any(vec4<bool>(false, true, true, false)), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(u_input.a << (0u % 32u), _wgslsmith_mult_u32(abs(u_input.a), min(1u, 65306u)), ~1u);
    global0 = array<Struct_3, 7>();
    var var_1 = select(reverseBits(vec4<u32>(0u, _wgslsmith_add_u32(1u, ~u_input.a), ~var_0.x, ~(~1u))), vec4<u32>(u_input.a, ~var_0.x, _wgslsmith_sub_u32(~(~26293u), var_0.x), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(reverseBits(var_0.zz), vec2<u32>(u_input.a, 106062u)), ~u_input.a, 0u)), true);
    let var_2 = Struct_4(0i, abs(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, 0u, var_1.x, 8707u), firstTrailingBit(vec4<u32>(u_input.a, 4294967295u, 0u, 4775u)))));
    let var_3 = Struct_3(all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true))) && func_1(), _wgslsmith_f_op_f32(1326f - -2346f), Struct_1(~(-32684i), ~_wgslsmith_add_i32(-2147483647i, i32(-1i) * -20646i)), Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(-vec2<i32>(var_2.a, 2147483647i), min(vec2<i32>(var_2.a, -18599i), vec2<i32>(35588i, var_2.a))), 0i), vec2<bool>(!(var_2.b.x >= 45707u), false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_2(false)).xy), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1555f, -1069f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(365f, -785f)), _wgslsmith_f_op_f32(f32(-1f) * -2628f)), _wgslsmith_f_op_f32(-556f - _wgslsmith_f_op_vec3_f32(func_2(true)).x), _wgslsmith_div_f32(350f, -1018f))), Struct_2(Struct_1(_wgslsmith_clamp_i32(var_2.a, var_2.a, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 36167i), vec2<i32>(-1i, 18466i))), _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a, var_2.a), vec2<i32>(-57849i, var_2.a)) | -var_2.a), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1895f, -1903f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1936f, -1437f))), _wgslsmith_f_op_vec3_f32(func_2(false)).yy), vec4<f32>(-142f, _wgslsmith_f_op_f32(select(2409f, -794f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1081f) - _wgslsmith_div_f32(-1434f, -1632f)), _wgslsmith_f_op_f32(floor(1f)))));
    let x = u_input.a;
    s_output = StorageBuffer(16430i, ~_wgslsmith_mult_u32(var_0.x, select(54464u, 35023u, true) >> (countOneBits(1u) % 32u)), vec3<i32>(var_3.d.a.a, select(-2147483647i, min(reverseBits(var_3.e.a.b), ~19365i), !var_3.a), 3049i), _wgslsmith_mult_i32(-9404i, 1245i), var_3.c.a);
}


struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec4<bool>,
    d: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(vec4<f32>(1128f, 1000f, -325f, -1000f), Struct_2(vec4<i32>(-1i, i32(-2147483648), -16796i, -26733i), vec2<f32>(-1633f, -1527f), vec4<bool>(false, false, false, true), -30160i)), Struct_4(vec4<f32>(-3585f, 1227f, -1167f, 1717f), Struct_2(vec4<i32>(0i, 0i, i32(-2147483648), 33787i), vec2<f32>(883f, 1265f), vec4<bool>(true, true, true, false), 3045i)), Struct_4(vec4<f32>(-2490f, 870f, -654f, -598f), Struct_2(vec4<i32>(-26110i, -7170i, 2147483647i, -94035i), vec2<f32>(-124f, -299f), vec4<bool>(true, true, false, true), 2147483647i)), Struct_4(vec4<f32>(-1075f, -871f, 1531f, 338f), Struct_2(vec4<i32>(1i, -1i, 28268i, 21775i), vec2<f32>(-1287f, -272f), vec4<bool>(true, true, true, true), 1i)), Struct_4(vec4<f32>(2261f, 679f, -863f, -216f), Struct_2(vec4<i32>(44952i, -12100i, 2147483647i, 2223i), vec2<f32>(-735f, -112f), vec4<bool>(false, false, true, false), 3777i)), Struct_4(vec4<f32>(-1000f, -697f, -1111f, -846f), Struct_2(vec4<i32>(2147483647i, 37568i, 2147483647i, 665i), vec2<f32>(-291f, -609f), vec4<bool>(false, false, true, false), -13981i)), Struct_4(vec4<f32>(311f, 601f, 1029f, 1015f), Struct_2(vec4<i32>(0i, 0i, 53699i, 0i), vec2<f32>(759f, -354f), vec4<bool>(false, true, false, false), i32(-2147483648))), Struct_4(vec4<f32>(2200f, 1078f, -270f, -637f), Struct_2(vec4<i32>(1i, 36106i, -7414i, 0i), vec2<f32>(112f, 1129f), vec4<bool>(false, false, false, true), -102374i)), Struct_4(vec4<f32>(826f, 1000f, 399f, -1000f), Struct_2(vec4<i32>(-4204i, -10260i, i32(-2147483648), i32(-2147483648)), vec2<f32>(-878f, -747f), vec4<bool>(true, true, false, true), i32(-2147483648))), Struct_4(vec4<f32>(853f, 1000f, 363f, -376f), Struct_2(vec4<i32>(2147483647i, -3613i, -22769i, 0i), vec2<f32>(-2190f, 738f), vec4<bool>(true, false, true, true), 2147483647i)), Struct_4(vec4<f32>(1389f, -170f, 548f, -466f), Struct_2(vec4<i32>(13787i, 0i, 1i, 33396i), vec2<f32>(1979f, -1081f), vec4<bool>(false, true, true, true), 29015i)), Struct_4(vec4<f32>(386f, -2008f, 350f, 547f), Struct_2(vec4<i32>(-1i, -1i, 1i, 1i), vec2<f32>(778f, 1061f), vec4<bool>(true, false, false, true), 0i)), Struct_4(vec4<f32>(-1000f, -1218f, 1000f, -183f), Struct_2(vec4<i32>(-1i, 0i, 2147483647i, -38i), vec2<f32>(425f, 1970f), vec4<bool>(false, true, false, false), -1i)), Struct_4(vec4<f32>(399f, 910f, 931f, 893f), Struct_2(vec4<i32>(-1940i, 0i, -26193i, -1i), vec2<f32>(354f, -1582f), vec4<bool>(false, true, false, true), 42681i)), Struct_4(vec4<f32>(-693f, 317f, 1255f, 1248f), Struct_2(vec4<i32>(10420i, 5683i, 281i, 17731i), vec2<f32>(-2153f, -1072f), vec4<bool>(true, true, false, false), 485i)), Struct_4(vec4<f32>(1145f, 545f, 431f, 113f), Struct_2(vec4<i32>(-2803i, 0i, 21958i, 4109i), vec2<f32>(-925f, -1107f), vec4<bool>(false, true, true, true), i32(-2147483648))), Struct_4(vec4<f32>(-436f, -1314f, 477f, -449f), Struct_2(vec4<i32>(19719i, -1i, -1i, -34968i), vec2<f32>(1951f, 327f), vec4<bool>(false, false, false, false), -3471i)), Struct_4(vec4<f32>(-1680f, -234f, 1000f, 267f), Struct_2(vec4<i32>(2147483647i, 13628i, 2147483647i, i32(-2147483648)), vec2<f32>(1025f, -1853f), vec4<bool>(true, true, false, false), 78835i)), Struct_4(vec4<f32>(-2207f, -1000f, 601f, -783f), Struct_2(vec4<i32>(7704i, -1i, 2147483647i, 0i), vec2<f32>(-276f, 350f), vec4<bool>(true, true, true, true), 26752i)), Struct_4(vec4<f32>(-414f, -938f, -1000f, 1556f), Struct_2(vec4<i32>(0i, 2740i, 1i, 2147483647i), vec2<f32>(-1825f, 916f), vec4<bool>(false, true, true, false), 0i)), Struct_4(vec4<f32>(272f, 1902f, 204f, -1000f), Struct_2(vec4<i32>(1i, 37570i, 52684i, 5872i), vec2<f32>(546f, -1000f), vec4<bool>(true, false, true, true), i32(-2147483648))), Struct_4(vec4<f32>(-1295f, -1022f, 726f, -319f), Struct_2(vec4<i32>(i32(-2147483648), -21220i, 1i, -4117i), vec2<f32>(-1226f, -312f), vec4<bool>(false, true, true, true), 28331i)), Struct_4(vec4<f32>(413f, 1856f, -1965f, 786f), Struct_2(vec4<i32>(-1i, -37895i, -26687i, -8334i), vec2<f32>(-578f, 612f), vec4<bool>(true, false, false, true), -1i)), Struct_4(vec4<f32>(775f, 1008f, 418f, 361f), Struct_2(vec4<i32>(52467i, -11220i, -21175i, -38676i), vec2<f32>(107f, -2441f), vec4<bool>(false, false, false, true), 2147483647i)));

var<private> global1: i32;

var<private> global2: array<vec3<f32>, 4> = array<vec3<f32>, 4>(vec3<f32>(275f, -244f, 1354f), vec3<f32>(522f, 1586f, -237f), vec3<f32>(-1891f, 1000f, 1000f), vec3<f32>(-146f, -735f, 1000f));

var<private> global3: Struct_2;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: i32) -> u32 {
    var var_0 = Struct_2(global3.a | abs(_wgslsmith_sub_vec4_i32(~vec4<i32>(global3.d, arg_2, -1i, -18551i), _wgslsmith_mult_vec4_i32(global3.a, global3.a))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(global3.b, global3.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global3.b * vec2<f32>(2763f, -378f)))) - _wgslsmith_f_op_vec2_f32(-global3.b)))), !global3.c, reverseBits(min(~(-u_input.a.x), reverseBits(min(-1i, global3.a.x)))));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, global3.b.x, arg_1, var_0.b.x), vec4<f32>(-558f, arg_1, 406f, -850f), var_0.c)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1, 206f, arg_1, -1875f))), var_0.c)) + vec4<f32>(_wgslsmith_f_op_f32(global3.b.x * -1738f), _wgslsmith_f_op_f32(step(273f, global3.b.x)), _wgslsmith_f_op_f32(1149f - arg_1), arg_1))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, global3.b.x, -603f, global3.b.x) * vec4<f32>(-2422f, arg_1, arg_1, arg_1)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b.x, var_0.b.x, 322f, -158f) - vec4<f32>(1546f, 1023f, arg_1, arg_1)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.b.x, arg_1, -1573f, 536f))), vec4<f32>(1920f, -1000f, 1202f, -1267f))), !vec4<bool>(true, false, var_0.c.x, true))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -535f, 219f, var_0.b.x))))))));
    let var_2 = Struct_1(max(_wgslsmith_mod_u32(4294967295u, _wgslsmith_sub_u32(u_input.c, arg_0)), min(abs(4294967295u), arg_0 | 27794u) | arg_0));
    let var_3 = Struct_1(~(~(_wgslsmith_sub_u32(u_input.c, 1u) & ~arg_0)));
    let var_4 = Struct_3(true);
    return ~0u;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_div_u32(func_3(1u, -1000f, i32(-1i) * -2147483647i) & 4299u, u_input.b) != ~2963u;
    global1 = _wgslsmith_sub_i32(reverseBits(arg_1.a.x << ((u_input.c ^ ~u_input.c) % 32u)), _wgslsmith_div_i32(countOneBits(u_input.a.x), -1i));
    global2 = array<vec3<f32>, 4>();
    global3 = Struct_2(_wgslsmith_sub_vec4_i32(-global3.a, firstTrailingBit(_wgslsmith_mod_vec4_i32(global3.a, select(global3.a, vec4<i32>(arg_1.d, arg_0.x, -2147483647i, global3.a.x), vec4<bool>(false, arg_1.c.x, false, arg_1.c.x))))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1.b.x, _wgslsmith_f_op_f32(exp2(global3.b.x))), global3.b)), global3.c, arg_0.x);
    var var_1 = !global3.c.xyx;
    return arg_1;
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> Struct_3 {
    var var_0 = global2[_wgslsmith_index_u32(0u, 4u)];
    global2 = array<vec3<f32>, 4>();
    let var_1 = Struct_3(any(arg_0.c.zw));
    let var_2 = var_1;
    global1 = _wgslsmith_dot_vec3_i32(reverseBits(u_input.a), arg_0.a.wyz);
    return Struct_3(false);
}

fn func_1(arg_0: vec4<f32>, arg_1: u32) -> vec3<i32> {
    let var_0 = func_4(func_2(~(-min(vec2<i32>(u_input.a.x, global3.a.x), vec2<i32>(-1i, 10610i))), Struct_2(-countOneBits(vec4<i32>(global3.a.x, -1i, 43975i, 1i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(680f, global3.b.x) + _wgslsmith_div_vec2_f32(vec2<f32>(1475f, 298f), vec2<f32>(global3.b.x, 563f))), select(select(vec4<bool>(true, false, global3.c.x, global3.c.x), global3.c, global3.c.x), select(global3.c, vec4<bool>(global3.c.x, global3.c.x, true, false), true), vec4<bool>(false, true, false, global3.c.x)), u_input.d)), (_wgslsmith_add_i32(-u_input.a.x, -2147483647i) << ((_wgslsmith_add_u32(arg_1, 1u) & reverseBits(19731u)) % 32u)) == (~(u_input.d << (4294967295u % 32u)) >> (~firstLeadingBit(arg_1) % 32u)));
    let var_1 = global0[_wgslsmith_index_u32(u_input.c, 24u)];
    global1 = ~firstLeadingBit(var_1.b.a.x) | abs(1i | ~max(var_1.b.d, -1i));
    var var_2 = _wgslsmith_f_op_f32(max(-1858f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(453f + global3.b.x))) - -785f)));
    var_2 = _wgslsmith_f_op_f32(global3.b.x - arg_0.x);
    return _wgslsmith_div_vec3_i32(var_1.b.a.wxy, -select(vec3<i32>(u_input.d, 47162i, 2147483647i) ^ u_input.a, u_input.a << (abs(vec3<u32>(arg_1, 1u, 1u)) % vec3<u32>(32u)), true));
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: vec4<bool>, arg_3: vec3<i32>) -> u32 {
    var var_0 = Struct_5(_wgslsmith_add_i32(14647i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global3.d, 0i), vec2<i32>(7404i, -4516i)) << (countOneBits(vec2<u32>(4294967295u, 4294967295u)) % vec2<u32>(32u)), ~vec2<i32>(18573i, global3.d))), !all(select(vec4<bool>(false, true, false, false), arg_2, false)) && arg_1, ~vec3<i32>(u_input.d, arg_3.x, max(global3.a.x, u_input.a.x)));
    let var_1 = _wgslsmith_f_op_f32(-global3.b.x);
    let var_2 = ~var_0.c;
    var_0 = Struct_5(1i ^ var_2.x, any(select(func_2(reverseBits(var_0.c.yy), Struct_2(global3.a, vec2<f32>(-1550f, var_1), arg_2, var_0.a)).c, vec4<bool>(!global3.c.x, all(vec3<bool>(false, false, var_0.b)), true, true), arg_1)), vec3<i32>(2147483647i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_3.x, 1i), vec3<i32>(-74728i, var_2.x, u_input.d)), -global3.d), abs(-17758i)));
    let var_3 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(firstTrailingBit(u_input.c), u_input.c, 47482u), ~select(1u, u_input.b, false), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 76074u, u_input.b), firstTrailingBit(vec3<u32>(4294967295u, u_input.b, 4294967295u))), ~firstLeadingBit(u_input.b)), min(~max(vec4<u32>(u_input.b, 23382u, 4294967295u, u_input.c), vec4<u32>(u_input.b, u_input.c, 48417u, 4294967295u)), vec4<u32>(u_input.b, ~4294967295u, ~u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.c, 0u), vec3<u32>(11871u, u_input.c, u_input.c))))), ~_wgslsmith_div_u32(~(~u_input.b), u_input.b), u_input.b, select(15236u, abs(4294967295u), arg_2.x));
    return ~select(var_3.x, u_input.b, !(all(vec4<bool>(false, true, arg_1, false)) && false));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -9511i;
    var var_0 = Struct_1(4294967295u);
    let var_1 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(588f)) * global3.b.x)), all(vec4<bool>(global3.b.x != -1645f, true, true, false)), !select(global3.c, select(vec4<bool>(global3.c.x, global3.c.x, true, global3.c.x), global3.c, vec4<bool>(global3.c.x, global3.c.x, false, true)), var_0.a > u_input.c), vec3<i32>(-1i) * -func_1(vec4<f32>(global3.b.x, 103f, 475f, 265f), 14790u)) << (~(~(~var_0.a)) % 32u);
    let var_2 = ~(~u_input.c) > abs(4294967295u);
    var var_3 = firstLeadingBit(~reverseBits(~countOneBits(vec3<u32>(var_0.a, 0u, 34255u))));
    var var_4 = func_2(~vec2<i32>(~global3.d, 3831i), func_2(-vec2<i32>(i32(-1i) * -14183i, 1i), Struct_2(-global3.a ^ abs(vec4<i32>(-16595i, global3.d, u_input.a.x, u_input.d)), global3.b, select(!global3.c, vec4<bool>(global3.c.x, var_2, false, global3.c.x), false), select(-41728i, u_input.a.x, true | global3.c.x))));
    global0 = array<Struct_4, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(123763u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(952f))))), -(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -2147483647i, 67223i), ~global3.a.zyz) | global3.a.wwy));
}


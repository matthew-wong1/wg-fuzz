struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec3<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(198f, vec4<f32>(152f, 491f, -1059f, 869f), vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(-129f, vec4<f32>(1454f, -1030f, 1101f, -1332f), vec2<i32>(7374i, 0i)), Struct_1(-1278f, vec4<f32>(2314f, 1024f, -702f, -330f), vec2<i32>(12306i, -8303i)), Struct_1(-350f, vec4<f32>(518f, -126f, 111f, -271f), vec2<i32>(i32(-2147483648), 1i)), Struct_1(-1374f, vec4<f32>(-1751f, -257f, 457f, 1229f), vec2<i32>(1523i, 57553i)), Struct_1(-1000f, vec4<f32>(904f, 1000f, 1485f, 1245f), vec2<i32>(-25717i, -14421i)), Struct_1(1076f, vec4<f32>(-478f, -1089f, -1000f, -2508f), vec2<i32>(0i, i32(-2147483648))), Struct_1(363f, vec4<f32>(-1595f, 721f, 352f, 429f), vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(-1914f, vec4<f32>(474f, -1000f, 1396f, 2540f), vec2<i32>(-5767i, 11864i)), Struct_1(512f, vec4<f32>(362f, 1090f, 1131f, 1425f), vec2<i32>(-1i, 17127i)), Struct_1(835f, vec4<f32>(-1459f, -527f, -1148f, 1000f), vec2<i32>(31142i, 58475i)), Struct_1(399f, vec4<f32>(733f, 1649f, -348f, 1986f), vec2<i32>(-33529i, 73767i)), Struct_1(778f, vec4<f32>(-322f, 572f, -629f, 1894f), vec2<i32>(52574i, 47814i)), Struct_1(-1406f, vec4<f32>(-1295f, 1159f, 283f, -1064f), vec2<i32>(-47725i, -4770i)), Struct_1(327f, vec4<f32>(1000f, 1352f, -2029f, -972f), vec2<i32>(0i, 2147483647i)), Struct_1(343f, vec4<f32>(-463f, 755f, 696f, 1000f), vec2<i32>(-19148i, 29725i)), Struct_1(-853f, vec4<f32>(-1000f, -271f, -211f, -223f), vec2<i32>(2147483647i, -1i)), Struct_1(-335f, vec4<f32>(-1243f, -2271f, -277f, 1066f), vec2<i32>(0i, -7148i)), Struct_1(1338f, vec4<f32>(460f, -194f, -776f, 1008f), vec2<i32>(i32(-2147483648), -1i)), Struct_1(132f, vec4<f32>(811f, -711f, 770f, -781f), vec2<i32>(1i, -31821i)), Struct_1(-1225f, vec4<f32>(-2433f, -722f, -519f, 231f), vec2<i32>(-13457i, 7250i)), Struct_1(703f, vec4<f32>(694f, -2270f, 1421f, 331f), vec2<i32>(-25542i, -27427i)), Struct_1(-356f, vec4<f32>(-995f, -572f, -862f, -270f), vec2<i32>(-1i, -5664i)), Struct_1(1026f, vec4<f32>(-130f, -1474f, -453f, -1095f), vec2<i32>(2147483647i, 49417i)), Struct_1(862f, vec4<f32>(511f, 101f, -1004f, 882f), vec2<i32>(2147483647i, -4295i)), Struct_1(1000f, vec4<f32>(-1593f, -569f, -748f, 241f), vec2<i32>(-57127i, 4358i)), Struct_1(1086f, vec4<f32>(-1456f, 165f, 381f, 126f), vec2<i32>(1i, -79702i)), Struct_1(-1000f, vec4<f32>(-1303f, -688f, 1080f, 403f), vec2<i32>(-33i, 1i)), Struct_1(-2230f, vec4<f32>(1776f, -839f, 1341f, 575f), vec2<i32>(24812i, -33671i)));

var<private> global2: array<vec3<u32>, 1>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec4<i32> {
    return _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(countOneBits(countOneBits(firstLeadingBit(vec4<i32>(-24917i, 21612i, -37683i, u_input.a)))), -(abs(vec4<i32>(u_input.b, -2147483647i, 32545i, -2147483647i)) | ~vec4<i32>(40285i, 1i, u_input.b, 3888i))), vec4<i32>(1i, 0i, firstTrailingBit(u_input.a), min(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2147483647i, -1i, 1i), vec4<i32>(-49888i, -6733i, -64988i, 2147483647i)) << (4294967295u % 32u), -(u_input.b >> (u_input.c % 32u)))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: vec4<i32>) -> vec2<f32> {
    var var_0 = arg_2;
    var var_1 = 1153f;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(1536f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(310f, arg_2), _wgslsmith_f_op_f32(step(arg_0.a, arg_0.a)))) - -449f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(arg_0.b, vec4<f32>(arg_0.a, 761f, arg_0.b.x, arg_2)))) * arg_0.b), u_input.d.xz);
    let var_3 = arg_1;
    var_1 = _wgslsmith_f_op_f32(var_2.b.x - _wgslsmith_f_op_f32(-arg_2));
    return var_2.b.zw;
}

fn func_2() -> Struct_1 {
    global1 = array<Struct_1, 29>();
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(462f, 2399f), vec2<f32>(216f, 1336f)))), vec2<f32>(1f, 1f), true | (82078u <= u_input.c))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-379f)), -661f) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-995f, 317f))))))), _wgslsmith_f_op_vec2_f32(func_4(Struct_1(_wgslsmith_f_op_f32(1220f * -1403f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(379f, -1243f, 2043f, -473f)), min(_wgslsmith_clamp_vec2_i32(u_input.d.xy, vec2<i32>(-45874i, u_input.a), vec2<i32>(u_input.a, u_input.d.x)), vec2<i32>(u_input.a, 30878i))), false, -965f, _wgslsmith_mult_vec4_i32(func_3(), select(~vec4<i32>(15975i, u_input.a, u_input.b, 21946i), -vec4<i32>(u_input.a, 0i, 1i, u_input.a), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), false))))));
    global2 = array<vec3<u32>, 1>();
    let var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(~0u, 4294967295u, _wgslsmith_mod_u32(u_input.c, 1u)), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.c, abs(4294967295u)), 1u)] << (_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, u_input.c, u_input.c), global2[_wgslsmith_index_u32(4294967295u, 1u)]) % vec3<u32>(32u))), 29u)];
    let var_2 = firstLeadingBit(global2[_wgslsmith_index_u32(u_input.c, 1u)]);
    return global0[_wgslsmith_index_u32(u_input.c | u_input.c, 10u)];
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = ~_wgslsmith_div_vec4_u32(~(abs(vec4<u32>(arg_1, 4294967295u, arg_1, 0u)) | vec4<u32>(u_input.c, arg_1, arg_1, arg_1)), ~vec4<u32>(arg_1, u_input.c, arg_1, ~u_input.c));
    let var_1 = -(~vec2<i32>(arg_0.c.x, firstTrailingBit(-1i))) ^ select(max(vec2<i32>(max(u_input.d.x, -2147483647i), select(2511i, arg_0.c.x, false)), func_2().c), vec2<i32>(_wgslsmith_sub_i32(u_input.a, u_input.a), func_3().x), vec2<bool>(false, true));
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, -1002f, _wgslsmith_f_op_f32(-arg_0.a))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b.x, arg_0.b.x, 653f), vec3<f32>(1886f, arg_2.x, arg_0.b.x)))), func_2().b.wyw, vec3<bool>(true, true, true))))));
    var var_3 = func_2();
    var var_4 = ~(~_wgslsmith_div_vec4_u32(~(~vec4<u32>(var_0.x, 4294967295u, 0u, u_input.c)), select(vec4<u32>(arg_1, arg_1, arg_1, u_input.c), _wgslsmith_sub_vec4_u32(var_0, var_0), true)));
    return func_2();
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a));
    var_1 = arg_2.a;
    var var_2 = 1u;
    let var_3 = func_2();
    return arg_1;
}

fn func_7(arg_0: Struct_1) -> vec3<f32> {
    global1 = array<Struct_1, 29>();
    global2 = array<vec3<u32>, 1>();
    global2 = array<vec3<u32>, 1>();
    let var_0 = func_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-759f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(1254f + arg_0.a), arg_0.a, func_5(Struct_1(509f, vec4<f32>(arg_0.b.x, arg_0.b.x, -970f, -703f), vec2<i32>(arg_0.c.x, 53332i)), 4294967295u, arg_0.b.xy).a, _wgslsmith_f_op_f32(1793f + 783f)))), select(vec2<i32>(1i, u_input.a), -select(u_input.d.zz, vec2<i32>(u_input.a, u_input.d.x), vec2<bool>(false, false)), false)), abs(u_input.c), arg_0.b.xy);
    let var_1 = select(vec3<bool>(select(all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), false && (28318u >= u_input.c), all(vec4<bool>(true, false, true, false))), abs(~u_input.c) <= _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(43457u, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, 1u, 8388u)), vec4<u32>(1u, 12759u, u_input.c, 46922u)), all(vec4<bool>(true, true, true, true))), vec3<bool>((true || (arg_0.a <= 302f)) != false, true, any(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), all(vec2<bool>(true, false))))), true);
    return _wgslsmith_div_vec3_f32(arg_0.b.zxy, vec3<f32>(_wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) + _wgslsmith_div_f32(1049f, 1276f))), _wgslsmith_f_op_f32(round(-1650f)), func_2().a));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = -1000f;
    global1 = array<Struct_1, 29>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-693f, _wgslsmith_f_op_f32(606f * arg_1), _wgslsmith_f_op_f32(483f - -796f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(236f, -308f)), arg_1, _wgslsmith_f_op_f32(-122f + 1055f))))) - _wgslsmith_f_op_vec3_f32(func_7(func_6(vec3<i32>(reverseBits(21816i), firstTrailingBit(0i), _wgslsmith_clamp_i32(u_input.b, u_input.d.x, 2147483647i)), func_5(func_2(), ~u_input.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 863f))), func_5(Struct_1(-269f, vec4<f32>(-396f, -643f, arg_1, 252f), u_input.d.xx), 0u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -150f))), ~u_input.b))));
    var var_2 = any(select(vec4<bool>(any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(max(var_0, var_1.x)) < _wgslsmith_f_op_f32(-arg_0), true, true), vec4<bool>(true, true, any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), countOneBits(u_input.d.x) <= u_input.d.x), !vec4<bool>(true, all(vec4<bool>(false, true, false, true)), true, true)));
    var var_3 = vec3<bool>(_wgslsmith_f_op_vec2_f32(func_4(global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.c, u_input.c), 29u)], true, 309f, _wgslsmith_add_vec4_i32(-vec4<i32>(-33225i, u_input.d.x, u_input.b, 0i), vec4<i32>(u_input.a, -4768i, 42425i, 0i) ^ vec4<i32>(-14192i, u_input.b, u_input.d.x, -10626i)))).x != arg_0, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(16111i, -2147483647i, 2147483647i, -2147483647i), vec4<i32>(2147483647i, -1i, u_input.d.x, u_input.d.x)), (vec4<i32>(1i, 0i, u_input.b, 55300i) << (vec4<u32>(16639u, 81921u, u_input.c, u_input.c) % vec4<u32>(32u))) << ((vec4<u32>(18739u, 27176u, u_input.c, 1895u) ^ vec4<u32>(arg_2.x, arg_2.x, 1u, 59014u)) % vec4<u32>(32u))) != ~(0i >> (max(u_input.c, 86177u) % 32u)), true);
    return Struct_1(-1013f, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(246f, func_2().b.x, _wgslsmith_f_op_f32(arg_1 + -648f), _wgslsmith_f_op_f32(abs(arg_1))), _wgslsmith_f_op_vec4_f32(floor(func_5(global1[_wgslsmith_index_u32(arg_2.x, 29u)], arg_2.x, var_1.xz).b))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1432f, -360f, 1780f, var_0) - vec4<f32>(208f, 839f, -1000f, -352f))))))), -vec2<i32>(-u_input.a, u_input.b));
}

fn func_8(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = arg_1;
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 4294967295u), 29u)];
    var_0 = true;
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, -1000f) * vec2<f32>(_wgslsmith_f_op_vec2_f32(func_4(arg_3, !all(vec3<bool>(true, false, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_div_vec4_i32(~vec4<i32>(0i, arg_3.c.x, arg_2.c.x, -7238i), ~vec4<i32>(-2147483647i, arg_2.c.x, 1i, arg_3.c.x)))).x, func_6(vec3<i32>(-2147483647i, _wgslsmith_mult_i32(arg_3.c.x, var_1.c.x), ~var_1.c.x), global1[_wgslsmith_index_u32(0u, 29u)], arg_3, u_input.a).b.x));
    let var_3 = !select(vec3<bool>(true, arg_0 >= firstLeadingBit(u_input.c), arg_1), vec3<bool>(~u_input.c > 4294967295u, true, false), true);
    return _wgslsmith_sub_u32(firstLeadingBit(abs(_wgslsmith_clamp_u32(~u_input.c, _wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(22744u, 1u)], global2[_wgslsmith_index_u32(u_input.c, 1u)]), u_input.c))), firstTrailingBit(min(arg_0, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(arg_0, u_input.c, arg_0, 1u)), vec4<u32>(0u, 1u, 43382u, 11289u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(_wgslsmith_div_u32(func_8(abs(~43689u), true, func_1(188f, _wgslsmith_f_op_f32(f32(-1f) * -275f), global2[_wgslsmith_index_u32(~4294967295u, 1u)]), global0[_wgslsmith_index_u32(u_input.c, 10u)]), reverseBits(~abs(4294967295u))), 5362u);
    let var_1 = global1[_wgslsmith_index_u32(36107u, 29u)];
    var var_2 = Struct_1(-1036f, _wgslsmith_f_op_vec4_f32(round(var_1.b)), vec2<i32>(var_1.c.x, var_1.c.x));
    global0 = array<Struct_1, 10>();
    let var_3 = u_input.d.x;
    global2 = array<vec3<u32>, 1>();
    global0 = array<Struct_1, 10>();
    global1 = array<Struct_1, 29>();
    var var_4 = Struct_1(_wgslsmith_f_op_f32(sign(1038f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b), func_1(var_2.b.x, -1591f, vec3<u32>(u_input.c, var_0.x, var_0.x)).b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_2.b, var_2.b)) * var_2.b), true)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(346f, var_1.b.x, var_2.b.x, 588f), vec4<f32>(var_1.b.x, -1822f, var_2.b.x, 1192f), vec4<bool>(true, true, false, true))))), _wgslsmith_f_op_vec4_f32(-var_2.b), any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true))))), abs(u_input.d.zy << (_wgslsmith_mod_vec2_u32(~vec2<u32>(52283u, var_0.x), select(var_0, var_0, false)) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, abs(var_4.c.x), -abs(u_input.d.x)), -1i, _wgslsmith_mod_i32(_wgslsmith_add_i32(var_2.c.x, var_4.c.x), 139i), 1i), firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c & 106946u, 19066u), vec2<u32>(firstLeadingBit(27066u), _wgslsmith_mult_u32(7593u, u_input.c)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(388f, _wgslsmith_f_op_f32(max(814f, 2563f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, -1503f, -1140f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(183f, var_4.b.x, var_2.b.x))), vec3<f32>(var_1.a, _wgslsmith_f_op_f32(963f * var_1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1544f)))) - vec3<f32>(1909f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), 296f)), firstTrailingBit(_wgslsmith_add_vec4_i32(~vec4<i32>(47597i, 1i, var_3, -7161i), select(vec4<i32>(1i, 43839i, var_1.c.x, u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, var_2.c.x, 5823i, 30444i), vec4<i32>(14611i, 1i, var_2.c.x, var_3)), vec4<bool>(true, true, true, true)))));
}


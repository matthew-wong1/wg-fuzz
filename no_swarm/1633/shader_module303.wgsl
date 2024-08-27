struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(-693f, -1210f, 783f), vec4<f32>(1830f, 518f, 477f, 355f), vec2<f32>(-1000f, 1506f), false, -17106i);

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<f32>(1500f, 876f, 816f), vec4<f32>(397f, 1000f, 234f, 267f), vec2<f32>(-1205f, 1029f), false, 0i), Struct_1(vec3<f32>(1361f, 200f, 905f), vec4<f32>(1000f, 906f, 1000f, -270f), vec2<f32>(780f, 120f), false, i32(-2147483648)), Struct_1(vec3<f32>(-936f, 1000f, 397f), vec4<f32>(162f, 1821f, 613f, 1329f), vec2<f32>(1000f, 2976f), false, -89853i), Struct_1(vec3<f32>(-163f, 258f, -291f), vec4<f32>(244f, 1708f, -163f, 452f), vec2<f32>(-907f, 162f), true, 2147483647i), Struct_1(vec3<f32>(1000f, 1082f, 121f), vec4<f32>(-1402f, 696f, -193f, -504f), vec2<f32>(1604f, 110f), true, 39885i), Struct_1(vec3<f32>(-445f, 642f, 293f), vec4<f32>(-172f, -1000f, -905f, 327f), vec2<f32>(-909f, -194f), false, 2147483647i), Struct_1(vec3<f32>(-164f, 1007f, 864f), vec4<f32>(-182f, -634f, 1000f, 1000f), vec2<f32>(2046f, -216f), true, 2147483647i), Struct_1(vec3<f32>(1147f, 2446f, -690f), vec4<f32>(588f, -1113f, 581f, 363f), vec2<f32>(-575f, -146f), false, 45329i), Struct_1(vec3<f32>(563f, 555f, -1428f), vec4<f32>(152f, 2013f, -135f, -684f), vec2<f32>(-431f, 2184f), true, i32(-2147483648)), Struct_1(vec3<f32>(-819f, -1579f, 189f), vec4<f32>(-108f, 935f, 1173f, 599f), vec2<f32>(190f, 594f), true, -8867i), Struct_1(vec3<f32>(129f, 364f, 470f), vec4<f32>(1109f, 1717f, 2210f, 2372f), vec2<f32>(1394f, 1269f), true, 2147483647i), Struct_1(vec3<f32>(-1501f, -108f, -788f), vec4<f32>(-1091f, 1395f, -533f, -932f), vec2<f32>(-711f, -420f), true, 30777i), Struct_1(vec3<f32>(-838f, -994f, 1407f), vec4<f32>(-272f, -1140f, 1000f, -1614f), vec2<f32>(-1000f, 1379f), false, 0i), Struct_1(vec3<f32>(-625f, 1012f, 1475f), vec4<f32>(-1658f, -207f, -1785f, 507f), vec2<f32>(-682f, 165f), true, -56337i), Struct_1(vec3<f32>(1000f, -1000f, 699f), vec4<f32>(333f, 152f, -1000f, 1780f), vec2<f32>(-519f, 275f), false, 55673i), Struct_1(vec3<f32>(693f, 341f, -809f), vec4<f32>(-1211f, -1765f, 288f, -885f), vec2<f32>(-209f, 601f), false, 67063i), Struct_1(vec3<f32>(1497f, -1000f, -1079f), vec4<f32>(1003f, -1001f, -1049f, 444f), vec2<f32>(1774f, 2091f), true, 50488i), Struct_1(vec3<f32>(-803f, -1060f, 719f), vec4<f32>(792f, 779f, -538f, 1177f), vec2<f32>(-680f, -240f), false, -14964i), Struct_1(vec3<f32>(-630f, -516f, -1580f), vec4<f32>(-1821f, 307f, -894f, 1000f), vec2<f32>(-1055f, -770f), false, -1i), Struct_1(vec3<f32>(599f, 240f, 1000f), vec4<f32>(1551f, 139f, -902f, -1630f), vec2<f32>(1000f, 141f), false, i32(-2147483648)), Struct_1(vec3<f32>(508f, -921f, -155f), vec4<f32>(-1000f, 113f, 419f, -210f), vec2<f32>(-304f, -1110f), true, -45596i), Struct_1(vec3<f32>(-902f, 491f, -792f), vec4<f32>(-408f, -1039f, -635f, -121f), vec2<f32>(1106f, 500f), true, 12426i), Struct_1(vec3<f32>(-326f, 916f, -655f), vec4<f32>(-196f, 238f, 2708f, 1356f), vec2<f32>(1560f, 571f), false, i32(-2147483648)), Struct_1(vec3<f32>(876f, 1527f, 1038f), vec4<f32>(-203f, -1000f, 975f, -759f), vec2<f32>(-266f, 2023f), true, -1i), Struct_1(vec3<f32>(-300f, -251f, -1192f), vec4<f32>(1000f, 165f, 1076f, -940f), vec2<f32>(108f, -274f), false, -28073i), Struct_1(vec3<f32>(-2095f, 436f, -1221f), vec4<f32>(1000f, -178f, 137f, 1439f), vec2<f32>(-1019f, -398f), true, 30584i), Struct_1(vec3<f32>(-751f, 216f, -124f), vec4<f32>(-1071f, 1130f, 765f, -576f), vec2<f32>(652f, -462f), false, i32(-2147483648)), Struct_1(vec3<f32>(-1633f, -668f, 1108f), vec4<f32>(1100f, -1000f, 804f, 479f), vec2<f32>(-2150f, -1000f), true, -19161i), Struct_1(vec3<f32>(-791f, -920f, 302f), vec4<f32>(279f, -197f, 785f, -266f), vec2<f32>(1130f, -324f), false, -1i), Struct_1(vec3<f32>(-622f, -285f, -903f), vec4<f32>(-219f, -494f, -404f, -1315f), vec2<f32>(836f, 586f), true, 2147483647i), Struct_1(vec3<f32>(-1701f, 478f, 796f), vec4<f32>(-1000f, -1257f, -1073f, -550f), vec2<f32>(973f, 950f), true, i32(-2147483648)));

var<private> global2: bool = false;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: u32) -> vec3<f32> {
    var var_0 = all(!(!vec4<bool>(true, any(vec2<bool>(false, false)), true, global0.d)));
    let var_1 = global0.d;
    var var_2 = vec3<i32>(min(-(~_wgslsmith_div_i32(1i, global0.e)), max(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-29096i, global0.e), vec2<i32>(-45128i, -2147483647i))), ~1i)), _wgslsmith_sub_i32(_wgslsmith_sub_i32(firstTrailingBit(global0.e & -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.e, 1i, 1734i, global0.e) & vec4<i32>(51128i, global0.e, 17385i, global0.e), vec4<i32>(global0.e, -41167i, global0.e, -2147483647i) | vec4<i32>(7049i, -22052i, global0.e, global0.e))), countOneBits(global0.e)), -global0.e);
    global0 = Struct_1(vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(global0.a.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -565f), -742f, !global0.d))), _wgslsmith_f_op_vec4_f32(-global0.b), _wgslsmith_f_op_vec2_f32(-global0.c), any(vec3<bool>(!any(vec2<bool>(true, false)), true, true)), 1i);
    let var_3 = select(-vec4<i32>(~33651i, _wgslsmith_sub_i32(global0.e, 18207i), global0.e, min(-25835i, 0i)), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(31706i, 1353i, 1i, global0.e), vec4<i32>(global0.e, -9439i, 20975i, var_2.x)), ~vec4<i32>(var_2.x, 32214i, 2147483647i, 28999i)) ^ firstTrailingBit(min(vec4<i32>(global0.e, 28293i, var_2.x, global0.e), vec4<i32>(1i, -2147483647i, 0i, -17839i))), vec4<bool>(!all(vec4<bool>(false, true, global0.d, global0.d)), global0.d, true & !global0.d, true & (global0.d | global0.d))) << (countOneBits(vec4<u32>(33082u, u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.b, 16765u), ~u_input.c), u_input.b)) % vec4<u32>(32u));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-344f - 2159f), _wgslsmith_f_op_f32(sign(-221f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global0.c.x, global0.b.x))))), _wgslsmith_f_op_f32(-627f * _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(round(-1000f))))));
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: vec3<f32>) -> vec4<bool> {
    var var_0 = global0.e;
    let var_1 = -633f;
    let var_2 = global1[_wgslsmith_index_u32(arg_0, 31u)];
    var var_3 = max(~(~firstTrailingBit(-vec4<i32>(2147483647i, var_2.e, global0.e, -29773i))), -vec4<i32>(30164i | _wgslsmith_mod_i32(global0.e, global0.e), global0.e, -74493i, -38244i & _wgslsmith_mod_i32(0i, var_2.e)));
    let var_4 = firstLeadingBit(_wgslsmith_add_u32(54865u, _wgslsmith_mod_u32(select(~u_input.a.x, ~u_input.a.x, all(vec4<bool>(false, true, arg_2.x, global0.d))), arg_1.x)));
    return select(vec4<bool>(true, select(_wgslsmith_mult_u32(24500u, 6828u), abs(4294967295u), !var_2.d) > ~arg_1.x, any(select(arg_2, select(vec4<bool>(var_2.d, true, arg_2.x, global0.d), arg_2, arg_2), global0.d)), true), arg_2, select(arg_2.x, global0.d, false));
}

fn func_2() -> u32 {
    global1 = array<Struct_1, 31>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(global0.b.zyx)), global0.b, vec2<f32>(global0.c.x, _wgslsmith_f_op_f32(select(-243f, _wgslsmith_f_op_f32(min(-485f, global0.c.x)), false))), !all(func_4(abs(45626u), ~vec3<u32>(51782u, 0u, 0u), select(vec4<bool>(global0.d, true, false, true), vec4<bool>(false, global0.d, true, global0.d), vec4<bool>(true, true, global0.d, global0.d)), _wgslsmith_f_op_vec3_f32(func_3(4294967295u)))), _wgslsmith_div_i32(abs(global0.e), ~(~global0.e)) << (u_input.c.x % 32u));
    global1 = array<Struct_1, 31>();
    return 28530u;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1.a.x, _wgslsmith_f_op_f32(-1915f - arg_2.a.a.x), !(_wgslsmith_f_op_f32(select(arg_3.b.c.x, -1000f, arg_3.a.d)) <= _wgslsmith_f_op_f32(-arg_3.a.a.x)))), arg_3.e.b.x);
    global2 = !arg_0;
    let var_1 = arg_3.d.x;
    global1 = array<Struct_1, 31>();
    global2 = true;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-arg_2.b.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.e.c.x, arg_1.c.x, var_0, _wgslsmith_div_f32(var_0, arg_3.e.a.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(903f, arg_1.a.x, arg_3.e.a.x, arg_2.a.c.x) + vec4<f32>(arg_2.a.c.x, 131f, 1466f, -522f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.a.xx, arg_2.a.b.yz)))))), !arg_2.a.d, -min(global0.e, ~(-2147483647i)));
}

fn func_1() -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(u_input.c.x, 31u)];
    let var_1 = var_0.c;
    global2 = var_0.d;
    let var_2 = vec4<i32>(global0.e, _wgslsmith_div_i32(global0.e, min(~(-1i & global0.e), -2147483647i)), -28438i, -(i32(-1i) * -39290i) >> (_wgslsmith_mult_u32(abs(34900u), _wgslsmith_dot_vec2_u32(vec2<u32>(27705u, u_input.b), u_input.a.yz) << (abs(4294967295u) % 32u)) % 32u));
    let var_3 = (-vec2<i32>(-2147483647i, var_0.e) << (max(u_input.a.yy, ~u_input.a.zy) % vec2<u32>(32u))) & (max(vec2<i32>(-1i) * -var_2.yw, var_2.zw) >> ((u_input.a.zy & ~_wgslsmith_div_vec2_u32(u_input.a.xy, vec2<u32>(u_input.a.x, u_input.a.x))) % vec2<u32>(32u)));
    return func_5(true, global1[_wgslsmith_index_u32(abs(max(u_input.c.x, func_2())), 31u)], Struct_2(Struct_1(var_0.b.wyz, vec4<f32>(_wgslsmith_f_op_f32(min(global0.a.x, 109f)), var_0.a.x, _wgslsmith_f_op_f32(global0.a.x - global0.c.x), _wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.c.x, 922f), var_0.b.zy)), global0.d, -1i), Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(var_0.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global0.b, vec4<f32>(var_1.x, var_0.a.x, 126f, var_0.a.x), var_0.d)) * vec4<f32>(global0.a.x, -787f, -1847f, var_0.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-973f, var_1.x))), true, var_3.x), var_2.xz, ~vec2<u32>(41742u, ~u_input.c.x), global1[_wgslsmith_index_u32(u_input.b, 31u)]), Struct_2(global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(1u, 31u)], _wgslsmith_sub_vec2_i32(abs(~vec2<i32>(-1i, var_3.x)), vec2<i32>(1i, _wgslsmith_mult_i32(92047i, global0.e))), ~u_input.a.zy, global1[_wgslsmith_index_u32(13993u, 31u)]));
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: vec3<u32>, arg_3: Struct_2) -> f32 {
    let var_0 = true;
    let var_1 = select(!(!select(select(vec2<bool>(var_0, true), vec2<bool>(var_0, global0.d), vec2<bool>(var_0, arg_0.d)), vec2<bool>(global0.d, var_0), vec2<bool>(arg_0.d, false))), func_4(arg_1, vec3<u32>(arg_1, _wgslsmith_mult_u32(arg_2.x, arg_1), 1u) ^ u_input.c.wxy, vec4<bool>(true | func_5(arg_0.d, Struct_1(arg_0.a, arg_0.b, arg_0.a.yx, true, 0i), arg_3, Struct_2(Struct_1(vec3<f32>(arg_0.b.x, -2616f, 291f), vec4<f32>(1620f, arg_3.e.b.x, global0.b.x, 724f), global0.a.yx, arg_3.e.d, arg_0.e), Struct_1(vec3<f32>(-411f, 687f, 167f), arg_3.a.b, global0.c, false, arg_0.e), arg_3.c, vec2<u32>(u_input.a.x, 0u), arg_0)).d, global0.d, false, global0.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.b.x, 1494f, arg_0.b.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, -1978f, arg_3.b.c.x)), vec3<bool>(arg_0.d, arg_0.d, arg_3.e.d))))).wz, !vec2<bool>(arg_3.a.d, (true | arg_0.d) || all(vec4<bool>(false, var_0, true, global0.d))));
    let var_2 = vec2<i32>(-_wgslsmith_dot_vec2_i32(arg_3.c, vec2<i32>(-3468i, global0.e >> (arg_3.d.x % 32u))), _wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(-vec3<i32>(-61754i, arg_3.b.e, arg_3.b.e), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.e, arg_3.a.e, arg_0.e), vec3<i32>(arg_0.e, arg_3.b.e, -2147483647i))), vec3<i32>(-(~global0.e), _wgslsmith_mult_i32(select(global0.e, arg_0.e, global0.d), select(-1i, arg_3.e.e, true)), i32(-1i) * -arg_0.e)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global0.a - vec3<f32>(_wgslsmith_f_op_f32(select(235f, arg_0.b.x, true)), _wgslsmith_f_op_f32(183f - -100f), -137f)), global0.a, select(vec3<bool>(true, func_1().d, true), !select(vec3<bool>(true, arg_3.e.d, global0.d), vec3<bool>(false, arg_3.a.d, var_0), true), vec3<bool>(false, !arg_3.e.d, false)))), vec4<f32>(global0.b.x, arg_0.a.x, arg_0.b.x, global0.b.x), _wgslsmith_f_op_vec2_f32(sign(arg_0.a.yz)), select(_wgslsmith_f_op_f32(min(1054f, _wgslsmith_f_op_f32(abs(arg_0.a.x)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -356f)), func_4(_wgslsmith_mult_u32(~0u, ~arg_3.d.x), ~vec3<u32>(u_input.b, arg_1, u_input.b), vec4<bool>(all(vec4<bool>(arg_0.d, global0.d, arg_0.d, true)), true, true, arg_3.b.d & var_1.x), global0.a).x, !(_wgslsmith_sub_i32(-16105i, arg_0.e) < (global0.e << (u_input.a.x % 32u)))), ~14634i);
    var var_4 = func_1();
    return _wgslsmith_f_op_f32(sign(var_3.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 31>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-743f, 1253f), global0.c.x));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, 1131f, true)) * _wgslsmith_f_op_f32(f32(-1f) * -259f)), _wgslsmith_f_op_f32(trunc(global0.b.x)), _wgslsmith_f_op_f32(3082f + var_0)) + vec3<f32>(global0.c.x, _wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-280f - -894f) - _wgslsmith_f_op_f32(step(global0.a.x, var_0))))), vec4<f32>(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(round(global0.a.x))), _wgslsmith_f_op_f32(func_6(global1[_wgslsmith_index_u32(42998u, 31u)], u_input.c.x, ~u_input.c.xxz, Struct_2(global1[_wgslsmith_index_u32(30883u, 31u)], func_1(), vec2<i32>(global0.e, -37939i) | vec2<i32>(-21523i, global0.e), u_input.a.yx ^ u_input.c.yw, Struct_1(vec3<f32>(var_0, var_0, global0.c.x), vec4<f32>(var_0, var_0, global0.a.x, var_0), global0.c, false, global0.e)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-548f - _wgslsmith_f_op_f32(abs(2115f))), _wgslsmith_f_op_f32(f32(-1f) * -826f)), var_0), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a.zz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(212f, -524f), global0.c))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1612f, -301f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global0.c, vec2<f32>(global0.b.x, -239f)) + global0.c), select(!vec2<bool>(global0.d, global0.d), vec2<bool>(global0.d, global0.d), func_4(0u, u_input.c.xyw, vec4<bool>(true, false, false, true), vec3<f32>(-908f, global0.a.x, -925f)).wx)))), !global0.d, reverseBits(abs(_wgslsmith_dot_vec3_i32(-vec3<i32>(-34153i, global0.e, global0.e), reverseBits(vec3<i32>(-41890i, 2147483647i, -1i))))));
    let var_1 = global0.a.x;
    let var_2 = abs(56569i >> ((u_input.c.x | 1u) % 32u));
    let var_3 = !(!func_4(reverseBits(_wgslsmith_dot_vec2_u32(u_input.c.wx, vec2<u32>(u_input.a.x, 30677u))), vec3<u32>(u_input.b, 0u, 76328u) >> (vec3<u32>(0u, 0u, 16584u) % vec3<u32>(32u)), !vec4<bool>(true, true, global0.d, global0.d), _wgslsmith_f_op_vec3_f32(global0.b.xww + global0.b.wzw)));
    let var_4 = Struct_2(Struct_1(global0.b.xyw, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.c.x, global0.b.x, var_0, -229f), vec4<f32>(980f, -800f, -2124f, -139f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, global0.a.x, var_0, -470f))) - vec4<f32>(1000f, _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_div_f32(1133f, var_0), _wgslsmith_f_op_f32(-336f - -284f))), _wgslsmith_f_op_vec2_f32(-global0.b.xy), true & func_5(true, Struct_1(vec3<f32>(-341f, -1000f, global0.b.x), global0.b, vec2<f32>(-147f, var_0), false, -2147483647i), Struct_2(Struct_1(vec3<f32>(var_0, var_0, var_0), vec4<f32>(2030f, var_0, global0.b.x, 1737f), vec2<f32>(global0.c.x, -1487f), true, var_2), Struct_1(global0.b.xxz, global0.b, global0.b.wz, false, -26370i), vec2<i32>(global0.e, 2147483647i), vec2<u32>(0u, 20455u), global1[_wgslsmith_index_u32(u_input.b, 31u)]), Struct_2(global1[_wgslsmith_index_u32(u_input.c.x, 31u)], global1[_wgslsmith_index_u32(u_input.c.x, 31u)], vec2<i32>(1i, var_2), u_input.c.xx, Struct_1(global0.a, global0.b, global0.c, global0.d, var_2))).d, global0.e), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_div_f32(var_0, var_0), 261f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_vec3_f32(func_3(u_input.b)).x, -1238f), vec2<f32>(-1065f, _wgslsmith_f_op_f32(-1077f - var_0)))), any(var_3), _wgslsmith_mult_i32(~2147483647i, 0i)), vec2<i32>(-firstLeadingBit(global0.e), 45027i) & (vec2<i32>(-1i) * -vec2<i32>(global0.e, var_2)), _wgslsmith_clamp_vec2_u32(vec2<u32>(firstTrailingBit(u_input.c.x | u_input.a.x), 4294967295u), abs(_wgslsmith_div_vec2_u32(max(vec2<u32>(0u, 15699u), u_input.a.yz), min(u_input.c.yz, vec2<u32>(105733u, 4294967295u)))), vec2<u32>(0u, 4294967295u)), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c, u_input.c.xzz, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_5(false, var_4.a, var_4, Struct_2(Struct_1(vec3<f32>(1475f, 755f, 1696f), vec4<f32>(-321f, 1022f, 1175f, var_0), vec2<f32>(1734f, -1000f), var_3.x, global0.e), global1[_wgslsmith_index_u32(var_4.d.x, 31u)], vec2<i32>(1i, var_4.b.e), u_input.a.zx, global1[_wgslsmith_index_u32(var_4.d.x, 31u)])).b - global0.b) * global0.b));
}


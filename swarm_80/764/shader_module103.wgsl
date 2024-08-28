struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(59216i, vec2<f32>(1057f, 271f), Struct_2(vec4<f32>(-131f, 1000f, 253f, -691f), 4294967295u, 0i, 919f, vec2<f32>(-1000f, 908f)));

var<private> global1: vec2<bool> = vec2<bool>(false, false);

var<private> global2: array<Struct_4, 26> = array<Struct_4, 26>(Struct_4(0i, vec2<f32>(151f, 889f), Struct_2(vec4<f32>(1588f, -102f, -1000f, -326f), 16864u, -1i, 592f, vec2<f32>(322f, 159f))), Struct_4(2147483647i, vec2<f32>(-173f, -2354f), Struct_2(vec4<f32>(-590f, -814f, -500f, 2181f), 10724u, 0i, -648f, vec2<f32>(-229f, -2256f))), Struct_4(1i, vec2<f32>(-1688f, 946f), Struct_2(vec4<f32>(-629f, 1000f, -711f, -1268f), 28115u, 0i, 747f, vec2<f32>(887f, -322f))), Struct_4(-1i, vec2<f32>(-535f, -821f), Struct_2(vec4<f32>(-406f, -1748f, 892f, 942f), 16757u, 6362i, -983f, vec2<f32>(534f, -678f))), Struct_4(3996i, vec2<f32>(-1967f, 113f), Struct_2(vec4<f32>(1213f, -485f, 1460f, 432f), 68983u, 3320i, 650f, vec2<f32>(-388f, -128f))), Struct_4(i32(-2147483648), vec2<f32>(709f, 314f), Struct_2(vec4<f32>(866f, -853f, 1137f, 523f), 0u, i32(-2147483648), 2505f, vec2<f32>(1000f, 756f))), Struct_4(-3309i, vec2<f32>(486f, -148f), Struct_2(vec4<f32>(-825f, -2333f, 189f, -792f), 1u, 67233i, -365f, vec2<f32>(-968f, -127f))), Struct_4(-35668i, vec2<f32>(1218f, -294f), Struct_2(vec4<f32>(1223f, 1000f, -130f, -1153f), 0u, 0i, -274f, vec2<f32>(-537f, 1122f))), Struct_4(1i, vec2<f32>(-376f, -1647f), Struct_2(vec4<f32>(623f, -943f, 609f, -1413f), 1u, 0i, 1489f, vec2<f32>(454f, -2065f))), Struct_4(-14870i, vec2<f32>(-870f, 849f), Struct_2(vec4<f32>(-839f, -842f, 425f, 107f), 0u, 0i, -633f, vec2<f32>(407f, -247f))), Struct_4(-9157i, vec2<f32>(-169f, -1387f), Struct_2(vec4<f32>(1621f, 390f, -2013f, 534f), 0u, -7785i, -287f, vec2<f32>(-1082f, 320f))), Struct_4(1i, vec2<f32>(-1387f, 580f), Struct_2(vec4<f32>(-540f, 1000f, -1950f, -1699f), 1u, 2147483647i, -1111f, vec2<f32>(407f, 249f))), Struct_4(-24433i, vec2<f32>(-1000f, 1255f), Struct_2(vec4<f32>(-386f, -858f, -1829f, 947f), 19749u, -1i, -949f, vec2<f32>(373f, 743f))), Struct_4(0i, vec2<f32>(-267f, 656f), Struct_2(vec4<f32>(-851f, 477f, -123f, -331f), 31299u, 35874i, 814f, vec2<f32>(1426f, 414f))), Struct_4(2147483647i, vec2<f32>(978f, -410f), Struct_2(vec4<f32>(2599f, 1057f, -976f, -534f), 46051u, 39549i, 248f, vec2<f32>(-713f, -820f))), Struct_4(1i, vec2<f32>(119f, -555f), Struct_2(vec4<f32>(1210f, 963f, 522f, -1343f), 1u, -5172i, -1072f, vec2<f32>(-1000f, -743f))), Struct_4(1i, vec2<f32>(2055f, 991f), Struct_2(vec4<f32>(-914f, 1645f, 1074f, 648f), 2868u, -21912i, 597f, vec2<f32>(1000f, -130f))), Struct_4(-235i, vec2<f32>(696f, 1314f), Struct_2(vec4<f32>(1574f, 1000f, -293f, -1925f), 4294967295u, 2147483647i, -1802f, vec2<f32>(-419f, -944f))), Struct_4(-1i, vec2<f32>(1369f, 1000f), Struct_2(vec4<f32>(179f, -246f, 1069f, -153f), 4294967295u, 13988i, 2415f, vec2<f32>(-128f, 710f))), Struct_4(0i, vec2<f32>(-1731f, 551f), Struct_2(vec4<f32>(217f, -645f, 848f, 795f), 1u, -25719i, -1000f, vec2<f32>(1969f, -1000f))), Struct_4(11415i, vec2<f32>(1000f, -231f), Struct_2(vec4<f32>(-564f, -292f, 847f, -329f), 4294967295u, 4124i, -222f, vec2<f32>(1443f, 2076f))), Struct_4(-32450i, vec2<f32>(1663f, 430f), Struct_2(vec4<f32>(642f, 1149f, -1155f, 545f), 1u, 0i, -698f, vec2<f32>(2042f, 1388f))), Struct_4(i32(-2147483648), vec2<f32>(2077f, -1589f), Struct_2(vec4<f32>(-1406f, 131f, -101f, -347f), 52957u, 38663i, 1238f, vec2<f32>(-588f, 1720f))), Struct_4(-2754i, vec2<f32>(-1000f, 576f), Struct_2(vec4<f32>(236f, 880f, 1522f, 256f), 67614u, -26134i, -1960f, vec2<f32>(876f, -296f))), Struct_4(-1i, vec2<f32>(749f, 1990f), Struct_2(vec4<f32>(646f, 912f, -575f, 148f), 0u, -3641i, 248f, vec2<f32>(226f, 1541f))), Struct_4(0i, vec2<f32>(-623f, 1000f), Struct_2(vec4<f32>(-599f, 472f, -547f, 377f), 342u, 18288i, -1209f, vec2<f32>(1282f, -360f))));

var<private> global3: array<vec3<i32>, 28>;

var<private> global4: bool;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_5, arg_1: f32, arg_2: vec4<u32>) -> i32 {
    let var_0 = vec3<i32>(countOneBits(-countOneBits(arg_0.d.x)), ~_wgslsmith_mult_i32(~(~1i), arg_0.d.x), 1i);
    global3 = array<vec3<i32>, 28>();
    var var_1 = Struct_3(arg_2, global0.c);
    let var_2 = _wgslsmith_sub_i32(firstLeadingBit(~var_1.b.c), firstLeadingBit(arg_0.d.x));
    let var_3 = true;
    return -var_2;
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = Struct_5(vec4<bool>(true, _wgslsmith_f_op_f32(step(-379f, -1185f)) == 713f, !arg_1.a.x, any(select(vec2<bool>(true, global1.x), arg_1.a.zz, arg_1.a.x))), vec4<bool>(any(select(select(vec4<bool>(true, arg_1.a.x, arg_1.a.x, arg_1.a.x), vec4<bool>(false, global1.x, global1.x, arg_1.a.x), false), vec4<bool>(true, false, global1.x, global1.x), !vec4<bool>(true, true, false, arg_1.a.x))), !(!(arg_1.a.x || global1.x)), true, true), ~(~_wgslsmith_dot_vec2_u32(u_input.c, u_input.b)) & 1u, _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(firstTrailingBit(u_input.a), _wgslsmith_div_i32(12102i, arg_0), max(global0.c.c, u_input.a), 1i), countOneBits(~vec4<i32>(-2147483647i, 0i, arg_0, global0.a))), vec4<i32>(1i, ~arg_0, -1i >> (global0.c.b % 32u), 45783i) & (_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, u_input.a, -1i, global0.c.c), vec4<i32>(33011i, 1i, -2147483647i, u_input.a)) << (abs(vec4<u32>(global0.c.b, 69880u, 1u, u_input.b.x)) % vec4<u32>(32u)))));
    global3 = array<vec3<i32>, 28>();
    var var_1 = 0u;
    var var_2 = arg_1;
    let var_3 = var_2.a;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1813f, -915f, global0.b.x, global0.b.x), vec4<f32>(global0.b.x, -1577f, 229f, global0.b.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-654f, _wgslsmith_f_op_f32(-518f * 1142f), _wgslsmith_f_op_f32(sign(-651f)), _wgslsmith_f_op_f32(-global0.b.x)))) - vec4<f32>(-140f, global0.c.e.x, _wgslsmith_f_op_f32(round(global0.c.a.x)), -1032f));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec3<i32>) -> i32 {
    global4 = false;
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(func_4(~func_3(Struct_5(vec4<bool>(true, false, true, false), vec4<bool>(true, global1.x, arg_1.a.x, global1.x), 0u, vec4<i32>(u_input.a, global0.c.c, 10987i, arg_2.x)), _wgslsmith_f_op_f32(round(arg_0.b.x)), vec4<u32>(11106u, arg_0.c.b, u_input.b.x, 41262u)), Struct_1(select(!vec3<bool>(true, arg_1.a.x, global1.x), arg_1.a, true)))), arg_0.c.b, ~(-32764i >> (_wgslsmith_clamp_u32(_wgslsmith_sub_u32(arg_0.c.b, 52142u), ~92868u, global0.c.b) % 32u)), 403f, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.c.e.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1330f)) + _wgslsmith_f_op_f32(global0.b.x + _wgslsmith_f_op_f32(global0.b.x * global0.c.e.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_0.c.e.x, 974f))), -339f)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(~var_0.c, Struct_1(vec3<bool>(arg_1.a.x, false, global1.x)))).x - _wgslsmith_f_op_f32(f32(-1f) * -433f)) * _wgslsmith_div_f32(arg_0.b.x, _wgslsmith_f_op_f32(sign(var_0.e.x)))));
    var var_2 = arg_0.b;
    let var_3 = u_input.a;
    return 35657i;
}

fn func_1() -> Struct_2 {
    global1 = vec2<bool>(true, select(false, any(vec4<bool>(global1.x, !global1.x, any(vec2<bool>(true, true)), true)), !(!(!global1.x))));
    global0 = Struct_4(_wgslsmith_dot_vec3_i32(reverseBits(global3[_wgslsmith_index_u32(~40969u, 28u)] << (vec3<u32>(55559u, global0.c.b, 58356u) % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(~select(vec3<i32>(global0.a, u_input.a, -1i), vec3<i32>(global0.a, -32005i, global0.c.c), global1.x), vec3<i32>(func_2(global2[_wgslsmith_index_u32(23518u, 26u)], Struct_1(vec3<bool>(global1.x, false, global1.x)), global3[_wgslsmith_index_u32(u_input.b.x, 28u)]), ~global0.a, abs(29198i)))), vec2<f32>(775f, _wgslsmith_f_op_f32(-global0.b.x)), global0.c);
    var var_0 = Struct_4(u_input.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, 564f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, 1994f)), vec2<bool>(global0.b.x != global0.c.a.x, false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-773f, global0.c.e.x) + vec2<f32>(global0.c.d, -229f)), false)), global0.c);
    let var_1 = _wgslsmith_f_op_f32(-var_0.b.x);
    var var_2 = -763f;
    return global0.c;
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = -23102i;
    var var_1 = global0.c;
    global2 = array<Struct_4, 26>();
    let var_2 = _wgslsmith_dot_vec4_u32(abs(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(u_input.c.x, 0u, var_1.b, u_input.c.x)), vec4<u32>(arg_1, u_input.b.x, 0u, arg_0.b) >> (vec4<u32>(u_input.b.x, 50764u, arg_0.b, var_1.b) % vec4<u32>(32u)), vec4<u32>(48784u, 1u, 12157u, 1u)), countOneBits(vec4<u32>(global0.c.b, 101778u, 0u, var_1.b)))), select(~countOneBits(vec4<u32>(0u, 1u, 1u, 0u)) << (vec4<u32>(u_input.c.x << (global0.c.b % 32u), 1u, 1u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(80031u, 4294967295u, 1u, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(var_1.b, u_input.b.x, u_input.c.x, 4294967295u), vec4<u32>(var_1.b, arg_1, 2580u, 1u))), select(vec4<bool>(global1.x, true, true, arg_0.a.x > var_1.e.x), !vec4<bool>(arg_2.x, true, arg_2.x, true), _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(0u, 3200u)) == 0u)));
    var var_3 = Struct_1(select(vec3<bool>(arg_2.x, any(vec2<bool>(global1.x, arg_2.x)), false), vec3<bool>(any(arg_2), (i32(-1i) * -1i) != abs(var_1.c), false), select(select(vec3<bool>(arg_2.x, false, arg_2.x), select(vec3<bool>(true, true, global1.x), vec3<bool>(global1.x, false, arg_2.x), arg_2), !global1.x), select(!arg_2, vec3<bool>(true, true, true), vec3<bool>(global1.x, global1.x, true)), select(vec3<bool>(global1.x, global1.x, arg_2.x), arg_2, !vec3<bool>(arg_2.x, false, false)))));
    return Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-769f)), -267f, _wgslsmith_f_op_f32(arg_0.e.x + -1226f), -2131f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a)))), 59828u, ~(-2147483647i), var_1.a.x, _wgslsmith_f_op_vec2_f32(-global0.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(), u_input.c.x, vec3<bool>(countOneBits(1u) < _wgslsmith_sub_u32(1u ^ global0.c.b, 50297u), !((global0.a ^ u_input.a) > 4521i), true));
    var var_1 = 7141i;
    var var_2 = Struct_3(~vec4<u32>(min(~u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, global0.c.b, u_input.b.x), vec3<u32>(4294967295u, var_0.b, 0u))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(117726u, 98190u, 1u), vec3<u32>(1u, 1u, 59881u)), ~_wgslsmith_mult_u32(var_0.b, 48950u), 0u), Struct_2(vec4<f32>(343f, _wgslsmith_f_op_f32(round(global0.c.e.x)), _wgslsmith_div_f32(var_0.e.x, -1702f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -537f))), var_0.b, select(-49417i, select(-1i, _wgslsmith_clamp_i32(-2147483647i, -24232i, global0.c.c), true), global1.x), 1000f, vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.e.x + 596f)))));
    let var_3 = select(~min(var_2.a, ~var_2.a), select(~(~vec4<u32>(var_0.b, 56579u, 0u, var_0.b)), ~vec4<u32>(u_input.b.x, u_input.c.x, 0u, var_0.b), global1.x) >> (_wgslsmith_clamp_vec4_u32(select(select(vec4<u32>(var_0.b, 0u, 70614u, var_0.b), var_2.a, global1.x), var_2.a, !vec4<bool>(global1.x, global1.x, false, global1.x)), _wgslsmith_mod_vec4_u32(var_2.a, vec4<u32>(77652u, var_2.a.x, 1u, global0.c.b)), abs(var_2.a >> (vec4<u32>(global0.c.b, var_2.b.b, var_0.b, var_2.a.x) % vec4<u32>(32u)))) % vec4<u32>(32u)), true);
    let var_4 = var_2.b;
    var_0 = global0.c;
    var var_5 = Struct_1(select(vec3<bool>(global1.x, global1.x, -var_2.b.c >= _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 31360i, global0.c.c, var_2.b.c), vec4<i32>(u_input.a, var_4.c, -84181i, -1i))), !vec3<bool>(false, all(vec2<bool>(true, global1.x)), false), select(!select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, global1.x, global1.x), false), select(select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, false, true)), vec3<bool>(false, false, global1.x), !vec3<bool>(false, false, global1.x)), !(!vec3<bool>(true, global1.x, true)))));
    var var_6 = global0.a;
    let var_7 = Struct_2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.b.x, -692f, _wgslsmith_f_op_f32(937f * _wgslsmith_f_op_f32(f32(-1f) * -913f)), var_2.b.e.x), var_0.a)), ~(~_wgslsmith_mod_u32(29232u, u_input.b.x)), firstTrailingBit(_wgslsmith_mod_i32(3018i, u_input.a & 12865i)) >> (~0u % 32u), -1887f, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_2.b.d), var_4.a.x) + _wgslsmith_f_op_vec2_f32(global0.c.a.zy - global0.b)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1000f, global0.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.e.x * var_2.b.d)))), -1i);
}


struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: Struct_3,
    d: vec4<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 21> = array<vec2<f32>, 21>(vec2<f32>(272f, -1420f), vec2<f32>(175f, 756f), vec2<f32>(849f, 1429f), vec2<f32>(1376f, 562f), vec2<f32>(161f, 888f), vec2<f32>(-790f, -1545f), vec2<f32>(250f, -452f), vec2<f32>(794f, 360f), vec2<f32>(-1624f, 1000f), vec2<f32>(1219f, -1424f), vec2<f32>(-1514f, 1775f), vec2<f32>(-1160f, -305f), vec2<f32>(1000f, -1180f), vec2<f32>(-287f, 1683f), vec2<f32>(173f, 1180f), vec2<f32>(-776f, -377f), vec2<f32>(-1664f, -129f), vec2<f32>(-1208f, 367f), vec2<f32>(507f, 590f), vec2<f32>(948f, 760f), vec2<f32>(1065f, -1547f));

var<private> global1: array<u32, 15> = array<u32, 15>(0u, 20010u, 80325u, 19658u, 4294967295u, 9469u, 1u, 0u, 4294967295u, 1u, 35031u, 4294967295u, 12535u, 87645u, 1u);

var<private> global2: array<Struct_5, 1> = array<Struct_5, 1>(Struct_5(vec4<bool>(false, true, true, false), vec4<f32>(-295f, -162f, -727f, -335f), Struct_3(vec3<i32>(-1i, -29142i, 2147483647i)), vec4<bool>(false, true, true, false), 73007u));

var<private> global3: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(16617u, 4294967295u), vec2<u32>(10402u, 4294967295u), vec2<u32>(5376u, 92122u), vec2<u32>(811u, 4638u), vec2<u32>(24526u, 17578u));

var<private> global4: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(8120u, true, vec4<f32>(223f, -178f, -118f, 726f), vec2<f32>(-1126f, 218f)), Struct_2(32956u, true, vec4<f32>(1918f, -1454f, -695f, 745f), vec2<f32>(654f, -377f)), Struct_2(4294967295u, false, vec4<f32>(1030f, 318f, 1170f, 318f), vec2<f32>(779f, 703f)), Struct_2(0u, true, vec4<f32>(616f, 1372f, -2118f, 867f), vec2<f32>(223f, 785f)), Struct_2(51060u, false, vec4<f32>(-1184f, -1109f, 417f, -371f), vec2<f32>(2255f, -1239f)), Struct_2(24939u, false, vec4<f32>(-1103f, -1174f, -235f, -506f), vec2<f32>(-309f, -270f)), Struct_2(20521u, true, vec4<f32>(401f, -191f, 1000f, -1866f), vec2<f32>(552f, 1703f)), Struct_2(23715u, false, vec4<f32>(-1459f, -152f, -856f, 162f), vec2<f32>(522f, -263f)), Struct_2(4905u, false, vec4<f32>(309f, 837f, 1739f, 483f), vec2<f32>(1330f, -239f)), Struct_2(0u, false, vec4<f32>(1000f, -335f, -572f, -1000f), vec2<f32>(-1488f, 1507f)), Struct_2(4294967295u, true, vec4<f32>(586f, 478f, -1027f, -865f), vec2<f32>(126f, 1169f)), Struct_2(43702u, true, vec4<f32>(1000f, -672f, 1214f, -1064f), vec2<f32>(845f, 795f)), Struct_2(57125u, false, vec4<f32>(-735f, -1000f, 1563f, 163f), vec2<f32>(102f, 275f)), Struct_2(38754u, true, vec4<f32>(-1335f, 1585f, 455f, -174f), vec2<f32>(-1044f, 1000f)), Struct_2(67757u, true, vec4<f32>(1000f, 2008f, -171f, -735f), vec2<f32>(1000f, -410f)), Struct_2(9785u, false, vec4<f32>(-379f, 1663f, -1305f, 682f), vec2<f32>(-439f, -481f)), Struct_2(1u, true, vec4<f32>(-524f, 214f, -1183f, -641f), vec2<f32>(1000f, -1579f)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3, arg_1: f32) -> i32 {
    let var_0 = u_input.b;
    var var_1 = u_input.d;
    var var_2 = Struct_2(0u, !any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(arg_1)), arg_1, _wgslsmith_div_f32(arg_1, 1081f), _wgslsmith_f_op_f32(floor(-1380f))))), global0[_wgslsmith_index_u32(4294967295u, 21u)]);
    var var_3 = global2[_wgslsmith_index_u32(firstLeadingBit(86516u), 1u)];
    global1 = array<u32, 15>();
    return _wgslsmith_dot_vec3_i32(arg_0.a, var_0);
}

fn func_2(arg_0: vec2<u32>, arg_1: i32) -> Struct_3 {
    let var_0 = !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true)));
    global1 = array<u32, 15>();
    let var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(arg_1 << (~(~arg_0.x) % 32u), func_3(Struct_3(vec3<i32>(33610i, u_input.a.x, 64322i)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1787f, 268f) - _wgslsmith_f_op_f32(606f * 810f))), _wgslsmith_mult_i32(_wgslsmith_div_i32(~(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 35012i, -12704i, arg_1), vec4<i32>(-18488i, arg_1, arg_1, -2147483647i))), _wgslsmith_mult_i32(~38907i, u_input.b.x)), -_wgslsmith_clamp_i32(firstTrailingBit(0i), 15425i, i32(-1i) * -2147483647i)), ~(-(~abs(vec4<i32>(32553i, arg_1, arg_1, arg_1)))));
    let var_2 = global2[_wgslsmith_index_u32(select(22539u, 1u << (firstLeadingBit(max(~0u, ~0u)) % 32u), var_0.x), 1u)];
    let var_3 = Struct_4(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7093u, 15u)], 17u)]);
    return Struct_3(~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.c.a.x, 8712i, 0i), vec3<i32>(64951i, arg_1, 0i)), 12065i, 1i));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: i32, arg_3: vec3<i32>) -> Struct_4 {
    var var_0 = global1[_wgslsmith_index_u32(0u, 15u)];
    let var_1 = min(select(~(_wgslsmith_mod_u32(u_input.d, 15748u) ^ ~31446u), max(global1[_wgslsmith_index_u32(~1u, 15u)], select(1u, global1[_wgslsmith_index_u32(u_input.d, 15u)], select(false, arg_0.x, arg_0.x))), arg_0.x), ~(~u_input.d));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-809f, 106f, -1410f, -1936f), vec4<f32>(-907f, 632f, 776f, 1254f), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x))), vec4<f32>(-1116f, 2224f, -1372f, 1000f), select(vec4<bool>(true, arg_0.x, arg_0.x, true), vec4<bool>(false, true, arg_0.x, arg_0.x), false)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1037f, 2309f, 1134f, 278f) - vec4<f32>(559f, 218f, -1292f, -1000f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(875f, -1025f, 841f, -1035f) * vec4<f32>(-227f, -103f, 453f, -306f))))));
    var var_3 = Struct_2(57941u, false, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-775f - _wgslsmith_f_op_f32(step(var_2.x, 1392f)))), var_2.x, -453f, _wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, -481f))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -249f), _wgslsmith_f_op_f32(var_2.x * var_2.x)) * _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], var_1), 21u)])))));
    let var_4 = Struct_2(~(~(var_3.a << (1u % 32u))) ^ ~17548u, var_3.b, var_2, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1, 15u)], 21u)]);
    return Struct_4(Struct_2(4294967295u, true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(var_2, vec4<f32>(var_3.d.x, 3766f, 2882f, var_2.x))), vec4<f32>(1000f, var_3.c.x, var_4.d.x, 130f), !vec4<bool>(false, var_4.b, true, var_3.b)))), vec2<f32>(-157f, _wgslsmith_f_op_f32(-var_2.x))));
}

fn func_5(arg_0: u32, arg_1: Struct_4) -> u32 {
    var var_0 = Struct_1(firstLeadingBit(abs(_wgslsmith_clamp_u32(0u, 0u, u_input.d) ^ _wgslsmith_add_u32(arg_1.a.a, global1[_wgslsmith_index_u32(26359u, 15u)]))), reverseBits(vec2<u32>(48845u, reverseBits(1u))));
    let var_1 = arg_1.a.b;
    global0 = array<vec2<f32>, 21>();
    global0 = array<vec2<f32>, 21>();
    let var_2 = _wgslsmith_mult_vec4_u32(firstTrailingBit(abs(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, 4684u, var_0.b.x, 1u), vec4<u32>(arg_1.a.a, u_input.d, 0u, 1u)))), vec4<u32>(3800u, ~60926u, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(var_0.a, 15u)], _wgslsmith_add_u32(u_input.d, abs(var_0.b.x))), ~86259u));
    return 6966u;
}

fn func_1() -> f32 {
    var var_0 = u_input.a.x << (~func_5(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(49312u, 15u)], 5u)], vec2<u32>(1u, 4294967295u)), vec2<u32>(u_input.d, 101709u)), func_4(vec3<bool>(false, false, false), func_2(global3[_wgslsmith_index_u32(u_input.d, 5u)], u_input.c), -2147483647i, u_input.b >> (vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], 51615u, 0u) % vec3<u32>(32u)))) % 32u);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1333f) - _wgslsmith_f_op_f32(trunc(-1000f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1342f)) + 735f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(vec3<bool>(false, false, false), Struct_3(vec3<i32>(u_input.c, -67280i, -2147483647i)), _wgslsmith_mod_i32(-2147483647i, u_input.b.x), _wgslsmith_add_vec3_i32(u_input.b, vec3<i32>(u_input.a.x, u_input.a.x, u_input.b.x))).a.d.x * 1073f), 567f, false)));
    global1 = array<u32, 15>();
    let var_2 = func_4(!vec3<bool>(true, all(vec3<bool>(true, true, false)) & true, false), func_2(max(_wgslsmith_add_vec2_u32(global3[_wgslsmith_index_u32(3273u, 5u)], vec2<u32>(u_input.d, u_input.d)) >> (global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(7323u, u_input.d, 21268u, global1[_wgslsmith_index_u32(u_input.d, 15u)]), vec4<u32>(u_input.d, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 15u)], 15u)], 15u)], 15u)], u_input.d, 9527u)), 5u)] % vec2<u32>(32u)), global3[_wgslsmith_index_u32(reverseBits(min(64569u, 47719u)), 5u)]), _wgslsmith_sub_i32(30843i, ~0i)), min(_wgslsmith_mod_i32(_wgslsmith_div_i32(8162i, 2147483647i), _wgslsmith_mod_i32(0i, u_input.a.x)), -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.c, u_input.c, u_input.b.x), vec4<i32>(1i, u_input.c, -2147483647i, -2147483647i))) & (14362i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 46142u, 37240u), ~vec3<u32>(1u, 1u, 1u)) % 32u)), vec3<i32>(_wgslsmith_sub_i32(0i, 9658i), select(u_input.a.x, -2147483647i, true), -2833i) << (~vec3<u32>(59886u, u_input.d, countOneBits(6979u)) % vec3<u32>(32u)));
    var var_3 = abs(max(max(firstLeadingBit(vec3<u32>(u_input.d, u_input.d, 1u)) ^ max(vec3<u32>(var_2.a.a, 13969u, 52253u), vec3<u32>(4294967295u, 1u, u_input.d)), ~vec3<u32>(u_input.d, 51720u, var_2.a.a)), vec3<u32>(4034u, _wgslsmith_div_u32(21692u & global1[_wgslsmith_index_u32(0u, 15u)], 0u), min(~var_2.a.a, 0u >> (u_input.d % 32u)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.c.x * _wgslsmith_f_op_f32(abs(var_2.a.d.x))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.a.c.x - _wgslsmith_f_op_f32(-var_2.a.d.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<u32>, 5>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()));
    global1 = array<u32, 15>();
    var var_1 = global2[_wgslsmith_index_u32(0u, 1u)];
    var var_2 = Struct_2(22332u, (~reverseBits(1u) >= global1[_wgslsmith_index_u32(~var_1.e, 15u)]) || all(select(var_1.d.yw, !vec2<bool>(var_1.d.x, var_1.d.x), var_1.a.x)), _wgslsmith_f_op_vec4_f32(-var_1.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(377f, -663f))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.b.x))));
    var_2 = Struct_2(117960u, any(vec4<bool>(func_4(vec3<bool>(true, true, true), Struct_3(u_input.b), u_input.a.x, vec3<i32>(-10132i, var_1.c.a.x, -1i)).a.b == true, !(!var_1.a.x), false, all(vec3<bool>(var_2.b, true, var_2.b)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_2.c.x)), _wgslsmith_f_op_f32(-var_1.b.x)), 1478f, var_0), vec2<f32>(var_2.d.x, _wgslsmith_f_op_f32(max(var_0, _wgslsmith_div_f32(var_1.b.x, 124f)))));
    global0 = array<vec2<f32>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(u_input.c, u_input.b.x, u_input.b.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-793f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * var_2.c.x), _wgslsmith_f_op_f32(min(var_0, var_2.c.x))))))));
}


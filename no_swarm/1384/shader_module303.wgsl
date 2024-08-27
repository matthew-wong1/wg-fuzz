struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(26709u, vec3<f32>(693f, -1000f, -719f), -1538f, vec3<u32>(1u, 0u, 52390u), vec4<u32>(0u, 89738u, 8168u, 1u)), Struct_1(20838u, vec3<f32>(786f, -1451f, 1336f), 781f, vec3<u32>(81870u, 38516u, 0u), vec4<u32>(4519u, 1u, 4294967295u, 1u)), Struct_1(69397u, vec3<f32>(1004f, 323f, -1000f), 321f, vec3<u32>(48003u, 4294967295u, 8515u), vec4<u32>(25357u, 0u, 27696u, 64234u)), Struct_1(18688u, vec3<f32>(-1642f, 1291f, -825f), -483f, vec3<u32>(37870u, 1u, 3807u), vec4<u32>(4294967295u, 0u, 36846u, 81968u)), Struct_1(0u, vec3<f32>(2247f, -1000f, -548f), 449f, vec3<u32>(41994u, 40257u, 0u), vec4<u32>(0u, 76424u, 41180u, 9701u)), Struct_1(6770u, vec3<f32>(343f, 412f, -506f), 351f, vec3<u32>(1u, 13656u, 42240u), vec4<u32>(1u, 1u, 47754u, 0u)), Struct_1(1u, vec3<f32>(-876f, -542f, -590f), 281f, vec3<u32>(39046u, 97909u, 1u), vec4<u32>(1u, 39172u, 21375u, 86656u)), Struct_1(1u, vec3<f32>(-308f, 698f, 1000f), 2234f, vec3<u32>(9265u, 81344u, 42103u), vec4<u32>(8025u, 66912u, 54162u, 0u)), Struct_1(4294967295u, vec3<f32>(560f, -2082f, 840f), -1239f, vec3<u32>(8297u, 4294967295u, 74474u), vec4<u32>(0u, 69414u, 4294967295u, 90374u)), Struct_1(56597u, vec3<f32>(727f, -1059f, -1683f), 842f, vec3<u32>(0u, 120387u, 0u), vec4<u32>(1u, 4294967295u, 4294967295u, 0u)), Struct_1(27759u, vec3<f32>(407f, -313f, -460f), -1017f, vec3<u32>(20840u, 80497u, 4294967295u), vec4<u32>(30171u, 4294967295u, 4294967295u, 1u)), Struct_1(1u, vec3<f32>(-1582f, 1196f, -1889f), 841f, vec3<u32>(0u, 38499u, 18355u), vec4<u32>(82364u, 81201u, 6384u, 1u)), Struct_1(0u, vec3<f32>(1000f, 1035f, 1578f), 291f, vec3<u32>(136334u, 14170u, 1u), vec4<u32>(0u, 7690u, 1032u, 87923u)), Struct_1(4294967295u, vec3<f32>(-669f, 736f, -955f), -1168f, vec3<u32>(4294967295u, 48464u, 4294967295u), vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u)), Struct_1(85347u, vec3<f32>(1215f, -929f, -757f), 570f, vec3<u32>(21213u, 0u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u)), Struct_1(0u, vec3<f32>(-2162f, -861f, 1452f), -1000f, vec3<u32>(25324u, 5389u, 1u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 13616u)), Struct_1(57357u, vec3<f32>(-909f, 446f, -687f), 1000f, vec3<u32>(21387u, 1u, 4294967295u), vec4<u32>(0u, 1u, 11484u, 1u)), Struct_1(1u, vec3<f32>(219f, -126f, 210f), -787f, vec3<u32>(45125u, 38452u, 1u), vec4<u32>(1u, 0u, 9124u, 26498u)), Struct_1(58697u, vec3<f32>(671f, 2143f, -1281f), 1000f, vec3<u32>(32642u, 10342u, 61172u), vec4<u32>(4294967295u, 2876u, 0u, 4294967295u)), Struct_1(32229u, vec3<f32>(-1015f, -249f, 1000f), 612f, vec3<u32>(45289u, 14554u, 1u), vec4<u32>(1u, 1u, 0u, 4294967295u)), Struct_1(55017u, vec3<f32>(-237f, 417f, 609f), -392f, vec3<u32>(1u, 77200u, 62728u), vec4<u32>(33180u, 4294967295u, 6671u, 4294967295u)), Struct_1(11909u, vec3<f32>(-1731f, -291f, 191f), 312f, vec3<u32>(4294967295u, 0u, 4294967295u), vec4<u32>(0u, 1u, 1u, 1u)), Struct_1(4294967295u, vec3<f32>(1791f, -1000f, -508f), -1132f, vec3<u32>(1u, 33695u, 0u), vec4<u32>(0u, 1u, 22939u, 58344u)), Struct_1(42u, vec3<f32>(702f, 1626f, -737f), -762f, vec3<u32>(0u, 31247u, 0u), vec4<u32>(12192u, 1u, 0u, 1u)), Struct_1(4294967295u, vec3<f32>(-363f, 1758f, 821f), 127f, vec3<u32>(0u, 0u, 56841u), vec4<u32>(1u, 4826u, 0u, 1u)), Struct_1(8640u, vec3<f32>(216f, -1057f, -897f), -350f, vec3<u32>(23466u, 1u, 0u), vec4<u32>(4294967295u, 12910u, 4294967295u, 74998u)), Struct_1(81577u, vec3<f32>(773f, -1600f, 1496f), 435f, vec3<u32>(0u, 37824u, 0u), vec4<u32>(2407u, 0u, 0u, 4294967295u)), Struct_1(5966u, vec3<f32>(2037f, 1365f, 175f), -373f, vec3<u32>(0u, 43970u, 45286u), vec4<u32>(58176u, 0u, 58355u, 0u)));

var<private> global3: i32 = 5679i;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: u32) -> u32 {
    global2 = array<Struct_1, 28>();
    var var_0 = global0[_wgslsmith_index_u32(u_input.a, 5u)];
    let var_1 = global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u ^ u_input.a, ~6292u), min(global1.zy, ~var_0.d.yz) << (vec2<u32>(_wgslsmith_sub_u32(358u, var_0.e.x), global1.x) % vec2<u32>(32u)))), 28u)];
    let var_2 = Struct_1(~(1u ^ min(40398u, 4294967295u | u_input.a)), _wgslsmith_f_op_vec3_f32(-var_0.b), -464f, _wgslsmith_clamp_vec3_u32(vec3<u32>(~(21859u >> (1u % 32u)), 3125u, abs(var_1.d.x)), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 69502u, 0u), var_0.d), var_0.d) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(19817u, arg_2, u_input.a) << (var_0.d % vec3<u32>(32u)), ~vec3<u32>(var_1.a, var_0.e.x, arg_2), vec3<u32>(4294967295u, 7524u, global1.x)), _wgslsmith_add_vec3_u32(~vec3<u32>(12330u, arg_2, u_input.a), select(firstTrailingBit(vec3<u32>(arg_2, 31946u, var_1.e.x)), vec3<u32>(global1.x, var_1.a, 53477u), arg_1.x & true))), var_1.e);
    global2 = array<Struct_1, 28>();
    return _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(var_1.a, 4294967295u), min(var_0.a, var_1.a & _wgslsmith_div_u32(arg_2, 0u))), vec2<u32>(min(var_0.d.x >> (var_0.e.x % 32u), var_1.d.x), ~4552u) << (~vec2<u32>(var_2.a, countOneBits(16804u)) % vec2<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    global0 = array<Struct_1, 5>();
    var var_0 = Struct_1(4294967295u, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(arg_0.b.x)), arg_1.c, 721f) + arg_0.b), _wgslsmith_f_op_f32(f32(-1f) * -703f), vec3<u32>(_wgslsmith_mult_u32(global1.x, u_input.a), _wgslsmith_add_u32(arg_1.d.x, ~(~17713u)), ~1u), _wgslsmith_sub_vec4_u32(~min(~vec4<u32>(global1.x, global1.x, global1.x, 60050u), arg_0.e), ~(~select(arg_0.e, vec4<u32>(1u, 53226u, 22289u, 4294967295u), vec4<bool>(true, false, false, false)))));
    let var_1 = firstLeadingBit(u_input.c);
    var var_2 = 0u;
    global0 = array<Struct_1, 5>();
    return arg_1.d.x;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec2<bool>, arg_3: f32) -> Struct_1 {
    let var_0 = 1205f;
    let var_1 = global0[_wgslsmith_index_u32(func_4(Struct_1(abs(func_3(u_input.b.x, vec4<bool>(arg_0, true, arg_2.x, arg_0), u_input.a)) & min(func_3(u_input.b.x, vec4<bool>(arg_2.x, true, arg_0, true), global1.x), 1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1596f, 292f, -298f), vec3<f32>(-452f, arg_3, 130f)))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, 1025f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 399f, 674f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-910f - _wgslsmith_f_op_f32(min(arg_3, -1342f))) - arg_3), ~(reverseBits(vec3<u32>(1u, global1.x, 1u)) & vec3<u32>(4294967295u, u_input.a, u_input.a)), firstTrailingBit(countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 87557u, 0u, u_input.a), vec4<u32>(14519u, 19013u, 0u, 61320u))))), Struct_1(0u, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_3 + 1627f), -239f, var_0) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1, arg_1, var_0)))), -276f, vec3<u32>(~abs(1u), global1.x, global1.x), vec4<u32>(1u, ~reverseBits(0u), ~_wgslsmith_dot_vec2_u32(global1.xx, vec2<u32>(4294967295u, global1.x)), 1u))), 5u)];
    global2 = array<Struct_1, 28>();
    let var_2 = global2[_wgslsmith_index_u32(~u_input.a << (global1.x % 32u), 28u)];
    global3 = _wgslsmith_add_i32(u_input.c & _wgslsmith_mod_i32(~(-24364i), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.b.xy, u_input.b.xy), -u_input.b.x)), min(-10056i, u_input.b.x));
    return Struct_1(var_2.a ^ firstTrailingBit(~32107u), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, arg_3, 1041f) + var_2.b)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(var_2.b))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(var_2.c)), _wgslsmith_f_op_f32(round(var_1.b.x)), _wgslsmith_div_f32(-289f, arg_1)) + vec3<f32>(_wgslsmith_f_op_f32(arg_1 - 1000f), arg_3, 2046f)))), _wgslsmith_f_op_f32(var_2.c + arg_1), ~(var_2.d | var_1.d), vec4<u32>(_wgslsmith_clamp_u32(reverseBits(31385u), ~var_2.d.x, firstTrailingBit(var_2.e.x)) | _wgslsmith_div_u32(~var_1.a, var_2.e.x), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(1812u, u_input.a, global1.x), var_2.d & var_1.d), u_input.a, var_1.a));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(any(vec2<bool>(_wgslsmith_sub_i32(u_input.c, u_input.b.x) <= min(-1i, 3173i), true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(460f))))))), !vec2<bool>(_wgslsmith_mod_u32(u_input.a, global1.x) > ~u_input.a, true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1025f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-728f)))))))));
    global0 = array<Struct_1, 5>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.b.x, var_0.b.x, 1228f, var_0.b.x))) - _wgslsmith_div_vec4_f32(vec4<f32>(var_0.c, var_0.c, var_0.c, var_0.b.x), vec4<f32>(var_0.b.x, var_0.c, 372f, var_0.c)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-377f, 740f, -1204f, 1342f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, -1141f, 1220f, var_0.b.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, var_0.b.x, var_0.c, 139f) - vec4<f32>(var_0.b.x, -845f, 384f, var_0.c)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.b.x, var_0.b.x, 1000f, var_0.c), vec4<f32>(1000f, 1275f, -1612f, 1000f))), vec4<f32>(var_0.b.x, -1000f, var_0.c, -829f), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false)))))));
    let var_2 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(var_0.a, 1u), 65977u)), countOneBits(_wgslsmith_mod_vec2_u32(var_0.d.xz, var_0.e.ww) >> ((vec2<u32>(78219u, 0u) ^ vec2<u32>(u_input.a, var_0.d.x)) % vec2<u32>(32u)))), var_0.b, _wgslsmith_f_op_f32(-var_0.c), var_0.d, var_0.e);
    var var_3 = var_0.e;
    return global0[_wgslsmith_index_u32(select(var_3.x, var_3.x, !(select(true, false, true) & true) || true), 5u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_1(~21422u, var_0.b, var_0.b.x, vec3<u32>(~firstLeadingBit(1u), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.e.x, var_0.d.x, 0u), vec4<u32>(var_0.a, 56916u, 1u, 1u)), global1.x), firstLeadingBit(~1u)), ~vec4<u32>(min(4294967295u, global1.x), ~func_1().d.x, func_4(Struct_1(52866u, vec3<f32>(1017f, var_0.b.x, 244f), 998f, var_0.d, var_0.e), func_2(true, 1000f, vec2<bool>(true, true), var_0.b.x)), 10131u));
    let var_1 = Struct_1(u_input.a ^ func_2(any(vec3<bool>(true, false, false)), var_0.b.x, vec2<bool>(true, true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_0.c))))).e.x, var_0.b, 1588f, ~vec3<u32>(~u_input.a, _wgslsmith_sub_u32(1u, ~global1.x), 63124u), var_0.e);
    let var_2 = Struct_1(countOneBits(global1.x | 1u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, var_0.c)), 650f, var_1.c)), 2172f, vec3<u32>(3404u, _wgslsmith_mod_u32(~(~var_0.a), _wgslsmith_div_u32(global1.x, ~global1.x)), 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(min(~0u, func_4(global0[_wgslsmith_index_u32(0u, 5u)], Struct_1(var_1.e.x, vec3<f32>(-1496f, 1021f, var_0.c), var_1.b.x, var_0.d, var_0.e))), var_0.a, countOneBits(var_1.e.x), 78189u), ~abs(var_1.e)));
    var var_3 = func_1();
    let var_4 = var_1;
    global1 = vec3<u32>(~_wgslsmith_sub_u32(var_3.e.x, ~(~4294967295u)), var_2.e.x & _wgslsmith_add_u32(0u, 1u), 0u << (0u % 32u));
    global2 = array<Struct_1, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_4.d.x);
}


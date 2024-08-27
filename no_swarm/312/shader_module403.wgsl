struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec4<bool>,
    d: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13> = array<bool, 13>(false, true, false, false, false, false, false, true, true, true, false, false, false);

var<private> global1: array<vec4<bool>, 1>;

var<private> global2: Struct_3;

var<private> global3: array<Struct_5, 21> = array<Struct_5, 21>(Struct_5(Struct_3(1327f, Struct_1(826f), 822f), Struct_3(599f, Struct_1(-361f), -1804f), Struct_1(-1116f), vec3<i32>(0i, 1i, -12701i)), Struct_5(Struct_3(-453f, Struct_1(-1449f), 1413f), Struct_3(-293f, Struct_1(1292f), 437f), Struct_1(536f), vec3<i32>(2147483647i, -51770i, -1i)), Struct_5(Struct_3(-1451f, Struct_1(1000f), 195f), Struct_3(763f, Struct_1(525f), -1834f), Struct_1(1000f), vec3<i32>(2147483647i, -31283i, -23173i)), Struct_5(Struct_3(-1201f, Struct_1(109f), -491f), Struct_3(821f, Struct_1(124f), -1000f), Struct_1(-397f), vec3<i32>(67164i, 2147483647i, -1124i)), Struct_5(Struct_3(-118f, Struct_1(966f), -163f), Struct_3(-303f, Struct_1(-557f), 914f), Struct_1(371f), vec3<i32>(2299i, 41i, 16639i)), Struct_5(Struct_3(-2013f, Struct_1(-869f), 160f), Struct_3(-128f, Struct_1(477f), -134f), Struct_1(-883f), vec3<i32>(364i, 8975i, 1i)), Struct_5(Struct_3(-891f, Struct_1(-1000f), 412f), Struct_3(-351f, Struct_1(105f), 229f), Struct_1(-721f), vec3<i32>(-1i, -74847i, -1i)), Struct_5(Struct_3(-1059f, Struct_1(-1627f), 912f), Struct_3(152f, Struct_1(350f), 981f), Struct_1(-328f), vec3<i32>(3375i, 0i, i32(-2147483648))), Struct_5(Struct_3(2061f, Struct_1(-811f), -447f), Struct_3(-1053f, Struct_1(-736f), -501f), Struct_1(-796f), vec3<i32>(21514i, -1i, 1i)), Struct_5(Struct_3(-240f, Struct_1(-245f), 1477f), Struct_3(-1071f, Struct_1(2196f), -233f), Struct_1(314f), vec3<i32>(-4235i, 0i, -22151i)), Struct_5(Struct_3(135f, Struct_1(-778f), -1000f), Struct_3(-1062f, Struct_1(-1337f), -2302f), Struct_1(-198f), vec3<i32>(59461i, i32(-2147483648), -28249i)), Struct_5(Struct_3(-2115f, Struct_1(521f), -1042f), Struct_3(307f, Struct_1(-1347f), 1671f), Struct_1(-598f), vec3<i32>(1i, -4503i, -9409i)), Struct_5(Struct_3(289f, Struct_1(-506f), -1000f), Struct_3(1384f, Struct_1(328f), -1000f), Struct_1(-377f), vec3<i32>(16051i, -10559i, 2147483647i)), Struct_5(Struct_3(870f, Struct_1(744f), -991f), Struct_3(-341f, Struct_1(-429f), 1632f), Struct_1(884f), vec3<i32>(-62441i, 1i, -7381i)), Struct_5(Struct_3(-1642f, Struct_1(-1050f), -1000f), Struct_3(-633f, Struct_1(1000f), 1383f), Struct_1(-806f), vec3<i32>(-25222i, 1i, i32(-2147483648))), Struct_5(Struct_3(2337f, Struct_1(-1000f), 351f), Struct_3(-1166f, Struct_1(-974f), -2362f), Struct_1(1149f), vec3<i32>(27345i, -1i, -1i)), Struct_5(Struct_3(-707f, Struct_1(1000f), 618f), Struct_3(386f, Struct_1(1161f), -1000f), Struct_1(-437f), vec3<i32>(1i, 0i, 0i)), Struct_5(Struct_3(-2218f, Struct_1(-177f), 2557f), Struct_3(672f, Struct_1(-1018f), 1764f), Struct_1(-784f), vec3<i32>(2147483647i, -19518i, -39915i)), Struct_5(Struct_3(-220f, Struct_1(900f), -2145f), Struct_3(-406f, Struct_1(1000f), -1299f), Struct_1(-1411f), vec3<i32>(-17797i, -1i, 0i)), Struct_5(Struct_3(484f, Struct_1(-627f), 1000f), Struct_3(1247f, Struct_1(1396f), -717f), Struct_1(2316f), vec3<i32>(13624i, -39112i, 820i)), Struct_5(Struct_3(-966f, Struct_1(-1086f), -225f), Struct_3(-705f, Struct_1(-804f), -690f), Struct_1(-1904f), vec3<i32>(1272i, 2147483647i, 1i)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: u32, arg_3: u32) -> f32 {
    var var_0 = arg_1.a;
    let var_1 = !vec2<bool>(any(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, max(arg_2, 1u)), 1u)]), !any(select(vec2<bool>(false, arg_1.c), vec2<bool>(true, arg_1.c), arg_1.c)));
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a + global2.c)), _wgslsmith_div_f32(-1652f, global2.c))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -348f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -302f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(438f * global2.b.a)))))));
    var var_3 = ~vec2<u32>(arg_0, arg_0);
    var var_4 = global3[_wgslsmith_index_u32(~arg_2, 21u)];
    return 311f;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2) -> u32 {
    global2 = Struct_3(_wgslsmith_f_op_f32(-776f * global2.b.a), arg_1.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-460f + 1169f))), 179f) * -344f));
    let var_0 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(global2.a, arg_1.a)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(396f)) - 235f)), _wgslsmith_f_op_f32(f32(-1f) * -693f), all(vec2<bool>(all(global1[_wgslsmith_index_u32(0u, 1u)]), global0[_wgslsmith_index_u32(25303u, 13u)])))), global2.b, true, _wgslsmith_f_op_f32(1000f + 1110f), global2.b);
    var var_1 = ~(~abs(81836u));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a, arg_1.d) - _wgslsmith_f_op_f32(arg_1.e.a - -1011f)))), global2.b, var_0.d);
    global1 = array<vec4<bool>, 1>();
    return _wgslsmith_dot_vec4_u32(vec4<u32>(~34220u >> (_wgslsmith_mod_u32(~4294967295u, _wgslsmith_clamp_u32(23561u, 9193u, 28005u)) % 32u), _wgslsmith_sub_u32(_wgslsmith_sub_u32(~10622u, 1u), 1u), 30947u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(73606u, 1u), ~vec2<u32>(115591u, 52437u))), vec4<u32>(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 23264u, 0u), vec3<u32>(87147u, 0u, 0u))) << (~(~4294967295u) % 32u), reverseBits((61820u >> (1u % 32u)) >> (1u % 32u)), 1u, 74428u));
}

fn func_2() -> Struct_1 {
    global3 = array<Struct_5, 21>();
    let var_0 = _wgslsmith_clamp_vec2_i32(~vec2<i32>(_wgslsmith_div_i32(u_input.b.x, 9284i), -u_input.b.x) & u_input.b.xx, abs((-u_input.b.zy & _wgslsmith_div_vec2_i32(u_input.b.xy, vec2<i32>(1i, u_input.a))) >> (max(countOneBits(vec2<u32>(0u, 27318u)), firstLeadingBit(vec2<u32>(0u, 72552u))) % vec2<u32>(32u))), u_input.b.yy);
    let var_1 = 1u >> (func_4(u_input.b >> (select(vec3<u32>(1u, 21990u, 4294967295u), vec3<u32>(0u, 56892u, 1u), true) % vec3<u32>(32u)), Struct_2(_wgslsmith_f_op_f32(abs(global2.b.a)), Struct_1(_wgslsmith_f_op_f32(func_3(45658u, Struct_2(global2.a, Struct_1(960f), false, 629f, Struct_1(global2.c)), 3966u, 0u))), !global0[_wgslsmith_index_u32(~1u, 13u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1009f, global2.a)), _wgslsmith_f_op_f32(f32(-1f) * -596f)), global2.b)) % 32u);
    var var_2 = 2147483647i;
    var var_3 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~firstLeadingBit(vec4<u32>(var_1, 40870u, var_1, 44550u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1, 0u, var_1, 21435u) << (vec4<u32>(var_1, 1u, var_1, var_1) % vec4<u32>(32u)), vec4<u32>(20370u, var_1, var_1, 4294967295u), vec4<u32>(var_1, 13799u, var_1, 94538u) << (vec4<u32>(1u, var_1, var_1, 86968u) % vec4<u32>(32u)))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_1, 0u, var_1, 17054u) ^ max(vec4<u32>(var_1, 51219u, var_1, var_1), vec4<u32>(46190u, 57491u, var_1, 1u)), ~(~vec4<u32>(var_1, var_1, 0u, var_1)), ~(~vec4<u32>(var_1, 1u, var_1, 4294967295u)))) >> (1u % 32u);
    return Struct_1(_wgslsmith_f_op_f32(-1113f * _wgslsmith_f_op_f32(global2.b.a * _wgslsmith_f_op_f32(-global2.a))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(_wgslsmith_mod_i32(-1i, u_input.a)), -u_input.a, firstTrailingBit(30208i), 2147483647i), _wgslsmith_add_vec4_i32(~vec4<i32>(-36281i, u_input.b.x, u_input.b.x, 26207i), firstLeadingBit(~vec4<i32>(-18153i, u_input.a, u_input.a, u_input.a)))), -8662i);
    var var_2 = var_0.b.a;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, global2.a, 1000f)))))))));
    var_2 = -878f;
    return Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(min(var_3.x, var_3.x)))))));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> f32 {
    let var_0 = u_input.b;
    let var_1 = func_5(Struct_2(1000f, func_2(), global0[_wgslsmith_index_u32(~(~(~arg_1)), 13u)], -1372f, func_2()), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(0u, Struct_2(arg_0.a, global2.b, true, 468f, Struct_1(arg_0.a)), firstLeadingBit(24958u), arg_1))))));
    var var_2 = !(~_wgslsmith_mod_i32(-1i, reverseBits(1784i)) != _wgslsmith_dot_vec4_i32(~abs(vec4<i32>(var_0.x, -2147483647i, -47395i, u_input.b.x)), vec4<i32>(~2147483647i, ~67378i, -35963i, u_input.b.x)));
    global0 = array<bool, 13>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-263f - -620f));
}

fn func_6(arg_0: f32, arg_1: vec3<i32>, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.x, -915f, arg_2.x, -893f), vec4<f32>(2136f, arg_0, -422f, arg_2.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, 591f, -242f, global2.a) * vec4<f32>(1000f, -1178f, arg_2.x, global2.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.a, arg_2.x, arg_2.x, arg_2.x) * vec4<f32>(global2.a, -1000f, arg_2.x, 902f))))))));
    global0 = array<bool, 13>();
    let var_1 = Struct_4(Struct_2(var_0.x, global2.b, all(vec3<bool>(false, all(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 13u)], true, false)), true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-arg_0))), global2.b), 48141u, vec4<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 13u)], !(_wgslsmith_clamp_i32(u_input.a, u_input.a, -23204i) == -u_input.a)), global0[_wgslsmith_index_u32(1u, 13u)]);
    let var_2 = var_0.yw;
    return Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(64821u >> (_wgslsmith_mod_u32(var_1.b, 1u) % 32u), Struct_2(_wgslsmith_f_op_f32(-975f - -1007f), func_2(), true, _wgslsmith_f_op_f32(1051f * global2.a), func_2()), var_1.b, 2052u)))), func_2(), var_1.a.c, var_0.x, global2.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(global2.b, ~12782u, 9295u)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a + _wgslsmith_f_op_f32(481f + -1951f)) + 211f)), u_input.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global2.c, -2595f)), _wgslsmith_f_op_f32(abs(global2.c))), global2.a, _wgslsmith_f_op_f32(max(global2.c, _wgslsmith_div_f32(global2.a, -362f))))));
    global1 = array<vec4<bool>, 1>();
    var var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -252f), -439f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~reverseBits(42445u), var_0, func_4(vec3<i32>(u_input.b.x, 6775i, -3541i) >> (vec3<u32>(31630u, 18885u, 1u) % vec3<u32>(32u)), Struct_2(1351f, Struct_1(global2.b.a), var_0.c, 1000f, Struct_1(var_0.d))), 4294967295u))));
    global0 = array<bool, 13>();
    let var_2 = select(vec2<bool>(false, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(49937u, 16300u), abs(vec2<u32>(12469u, 1u))) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 24479u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, 11659u, 28202u), vec4<u32>(4294967295u, 4294967295u, 3986u, 9364u))), 13u)]), vec2<bool>(false, true), !(!select(select(vec2<bool>(var_0.c, true), vec2<bool>(false, global0[_wgslsmith_index_u32(5600u, 13u)]), false), select(vec2<bool>(var_0.c, true), vec2<bool>(false, false), vec2<bool>(true, global0[_wgslsmith_index_u32(42279u, 13u)])), vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 13u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(max(~_wgslsmith_sub_i32(_wgslsmith_mult_i32(-17302i, 57341i), u_input.a), -47627i), 53239u);
}


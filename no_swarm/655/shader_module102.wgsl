struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: vec2<u32>,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<f32, 7> = array<f32, 7>(-490f, 2784f, 1411f, 1613f, -1483f, 251f, -1405f);

var<private> global2: Struct_2;

var<private> global3: i32 = 2147483647i;

var<private> global4: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec3<u32>(4294967295u, 21090u, 0u), vec3<f32>(138f, -452f, 115f), vec3<bool>(true, false, true), 2147483647i, -433i), Struct_1(vec3<u32>(0u, 4294967295u, 1u), vec3<f32>(1000f, 546f, 990f), vec3<bool>(false, true, false), 1i, -8457i), Struct_1(vec3<u32>(16128u, 0u, 0u), vec3<f32>(-571f, 1734f, -237f), vec3<bool>(true, false, true), 0i, 1i), Struct_1(vec3<u32>(11745u, 1u, 1u), vec3<f32>(-371f, -300f, -257f), vec3<bool>(true, false, false), 32546i, i32(-2147483648)), Struct_1(vec3<u32>(36262u, 0u, 1u), vec3<f32>(-1203f, -417f, 126f), vec3<bool>(true, false, true), -30083i, 13406i), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<f32>(-2098f, -1490f, -182f), vec3<bool>(false, false, false), 23104i, 61277i), Struct_1(vec3<u32>(0u, 75881u, 29946u), vec3<f32>(589f, 1196f, 1793f), vec3<bool>(false, false, true), 1i, -1i), Struct_1(vec3<u32>(63593u, 4294967295u, 2223u), vec3<f32>(1000f, -1046f, -1190f), vec3<bool>(true, false, false), -41092i, -7642i), Struct_1(vec3<u32>(1u, 53220u, 1u), vec3<f32>(137f, 302f, -1000f), vec3<bool>(false, false, true), -13014i, 16762i), Struct_1(vec3<u32>(29918u, 39341u, 34045u), vec3<f32>(-741f, -969f, 897f), vec3<bool>(true, true, true), -22132i, -1i), Struct_1(vec3<u32>(0u, 81252u, 22425u), vec3<f32>(367f, 1697f, -363f), vec3<bool>(false, false, true), -17201i, -55458i), Struct_1(vec3<u32>(31124u, 13159u, 83191u), vec3<f32>(-618f, 907f, 777f), vec3<bool>(true, true, false), 5326i, 2147483647i), Struct_1(vec3<u32>(4294967295u, 18146u, 161492u), vec3<f32>(1000f, 1338f, -3830f), vec3<bool>(true, false, true), -1i, 0i), Struct_1(vec3<u32>(1u, 104818u, 4294967295u), vec3<f32>(-1428f, 1520f, -613f), vec3<bool>(false, false, false), 38206i, 39252i), Struct_1(vec3<u32>(36044u, 0u, 1u), vec3<f32>(1009f, 1125f, 491f), vec3<bool>(false, true, false), i32(-2147483648), 21470i), Struct_1(vec3<u32>(4294967295u, 45886u, 43978u), vec3<f32>(-1093f, 903f, -1000f), vec3<bool>(true, false, true), 342i, 20596i), Struct_1(vec3<u32>(20954u, 1u, 22853u), vec3<f32>(754f, -1860f, 814f), vec3<bool>(true, true, false), i32(-2147483648), -41398i), Struct_1(vec3<u32>(26851u, 1u, 1u), vec3<f32>(1000f, -1000f, 1000f), vec3<bool>(false, false, true), 26441i, 1i), Struct_1(vec3<u32>(0u, 1u, 0u), vec3<f32>(285f, 1000f, 227f), vec3<bool>(false, true, false), 16687i, 75091i), Struct_1(vec3<u32>(19184u, 6772u, 1u), vec3<f32>(1075f, 495f, -1000f), vec3<bool>(true, false, true), 0i, -12158i), Struct_1(vec3<u32>(1u, 31347u, 0u), vec3<f32>(-594f, 553f, 788f), vec3<bool>(false, true, true), 1i, -24153i), Struct_1(vec3<u32>(55773u, 0u, 1u), vec3<f32>(1112f, 335f, 1000f), vec3<bool>(true, false, true), 88331i, -1i), Struct_1(vec3<u32>(1u, 19250u, 4294967295u), vec3<f32>(905f, -1000f, 706f), vec3<bool>(false, true, false), 42876i, 5806i), Struct_1(vec3<u32>(47601u, 4294967295u, 4294967295u), vec3<f32>(1361f, -771f, 1015f), vec3<bool>(false, false, true), -46629i, -5211i), Struct_1(vec3<u32>(4294967295u, 1u, 9563u), vec3<f32>(1572f, 313f, -538f), vec3<bool>(false, true, true), -15023i, 0i), Struct_1(vec3<u32>(40390u, 0u, 59355u), vec3<f32>(-113f, -443f, -571f), vec3<bool>(true, true, false), -1i, 2147483647i), Struct_1(vec3<u32>(2719u, 0u, 1u), vec3<f32>(-158f, 1000f, 828f), vec3<bool>(true, false, false), 58542i, -58812i), Struct_1(vec3<u32>(1u, 1u, 4294967295u), vec3<f32>(-1364f, 445f, -157f), vec3<bool>(true, true, false), 19622i, 2147483647i), Struct_1(vec3<u32>(46226u, 4294967295u, 1u), vec3<f32>(705f, -732f, -1010f), vec3<bool>(false, true, false), 41529i, i32(-2147483648)), Struct_1(vec3<u32>(1u, 87073u, 36608u), vec3<f32>(1389f, 1000f, 1308f), vec3<bool>(true, false, true), 2147483647i, 0i), Struct_1(vec3<u32>(0u, 25032u, 32935u), vec3<f32>(1201f, 320f, -1553f), vec3<bool>(false, false, false), 4403i, -20219i), Struct_1(vec3<u32>(29585u, 23532u, 1u), vec3<f32>(-2218f, 789f, 1016f), vec3<bool>(false, false, true), -27570i, 1i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32, arg_1: Struct_4) -> vec4<bool> {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(max(arg_0, global1[_wgslsmith_index_u32(4294967295u, 7u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0)) - _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(sign(-477f)))), global1[_wgslsmith_index_u32(u_input.a, 7u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))));
    var var_0 = firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(global2.a, 6605i, u_input.b.x << (~u_input.a % 32u)), vec3<i32>(global2.a, ~_wgslsmith_add_i32(u_input.b.x, arg_1.a.e), _wgslsmith_div_i32(_wgslsmith_mult_i32(2147483647i, arg_1.a.d), _wgslsmith_sub_i32(global2.a, -1i)))));
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global0.x)))), 701f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.a.b.xx + vec2<f32>(global0.x, 1313f)), _wgslsmith_f_op_vec2_f32(-global0.zy)))));
    let var_2 = arg_1.a.c;
    let var_3 = global4[_wgslsmith_index_u32(reverseBits(u_input.a), 32u)];
    return !vec4<bool>(arg_1.a.c.x, true, true, true);
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: vec4<bool>, arg_3: Struct_5) -> i32 {
    global4 = array<Struct_1, 32>();
    let var_0 = true;
    var var_1 = Struct_1(~countOneBits(firstLeadingBit(vec3<u32>(u_input.a, u_input.a, 1u)) ^ ~vec3<u32>(0u, u_input.a, 1u)), global0.yzx, vec3<bool>(select(all(func_3(-2985f, Struct_4(Struct_1(vec3<u32>(1u, u_input.a, 1u), vec3<f32>(arg_3.a.x, 280f, -671f), arg_2.xzz, 1i, global2.a), u_input.a, vec2<u32>(u_input.a, u_input.a))).xy), true, false && arg_2.x), arg_1.x, ~(global2.a >> (4294967295u % 32u)) > _wgslsmith_mult_i32(u_input.d.x, global2.a)), max(28884i, global2.a), reverseBits(0i));
    var var_2 = Struct_3(Struct_1(var_1.a, vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1141f, 1338f, var_1.c.x))), _wgslsmith_f_op_f32(-global0.x)), arg_1.xyx, -(~u_input.e), var_1.d), _wgslsmith_clamp_vec3_i32(-vec3<i32>(~87620i, 29468i, -27587i), (_wgslsmith_mod_vec3_i32(vec3<i32>(-66112i, global2.a, var_1.e), vec3<i32>(global2.a, -1i, 74095i)) & firstLeadingBit(vec3<i32>(var_1.e, var_1.d, 0i))) ^ abs(vec3<i32>(-12006i, -43093i, var_1.e)), vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, 0i, var_1.d), vec3<i32>(global2.a, var_1.d, global2.a))), Struct_1(firstLeadingBit(vec3<u32>(0u, 11958u, ~0u)), vec3<f32>(626f, _wgslsmith_f_op_f32(-2615f * -284f), -166f), var_1.c, u_input.b.x, 0i));
    var var_3 = _wgslsmith_mult_vec2_i32(firstLeadingBit(abs(var_2.b.xy)), ~vec2<i32>(25436i, u_input.e) & ~var_2.b.xz) | vec2<i32>(-firstTrailingBit(var_2.b.x), ~_wgslsmith_div_i32(~(-1i), -54570i));
    return abs(~(-1i) << (abs(var_2.c.a.x) % 32u));
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: bool) -> i32 {
    let var_0 = true;
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(global0.x)))))))));
    let var_3 = firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(max(u_input.a << (1u % 32u), 19067u), u_input.a, min(firstLeadingBit(u_input.a), ~1u)), abs(max(vec3<u32>(u_input.a, 0u, 14519u), vec3<u32>(u_input.a, 2348u, u_input.a)) << (~vec3<u32>(4294967295u, u_input.a, u_input.a) % vec3<u32>(32u)))));
    let var_4 = Struct_1(_wgslsmith_clamp_vec3_u32(max(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 39764u, var_3.x), vec3<u32>(0u, 1243u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), var_3 ^ vec3<u32>(u_input.a, var_3.x, var_3.x)), vec3<u32>(~_wgslsmith_div_u32(57790u, u_input.a), _wgslsmith_div_u32(firstLeadingBit(u_input.a), 24108u), u_input.a | ~0u), vec3<u32>(u_input.a, 4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(51731u, var_3.x, 106080u), var_3), var_3))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global0.yzz, vec3<f32>(var_2, var_2, global1[_wgslsmith_index_u32(var_3.x, 7u)])))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global0.zyw))))), func_3(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(var_3.x, 7u)], global0.x)), Struct_4(Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(39012u, 0u, u_input.a), vec3<u32>(4294967295u, 1u, 31898u)), vec3<f32>(var_2, 376f, 559f), !vec3<bool>(var_0, false, var_0), firstTrailingBit(1i), i32(-1i) * -1i), _wgslsmith_dot_vec3_u32(vec3<u32>(1971u, 26560u, u_input.a), vec3<u32>(4294967295u, 0u, 4294967295u) & vec3<u32>(u_input.a, u_input.a, var_3.x)), firstTrailingBit(abs(var_3.yx)))).yzz, min(i32(-1i) * -2147483647i, -(_wgslsmith_mod_i32(92708i, arg_1) << (max(var_3.x, var_3.x) % 32u))), arg_1);
    return -u_input.e << (var_4.a.x % 32u);
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec3<bool>, arg_3: i32) -> i32 {
    global1 = array<f32, 7>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-824f, -798f, -986f, -1982f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-403f, 1000f, 230f, 1172f), vec4<f32>(arg_0, -122f, 1824f, -1459f)))))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -496f), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 * 474f), arg_0, all(vec3<bool>(true, arg_1, arg_1)))), -552f)));
    var var_1 = Struct_2(global2.a);
    global2 = Struct_2(func_5(min(func_4(true, func_3(arg_0, Struct_4(global4[_wgslsmith_index_u32(1u, 32u)], u_input.a, vec2<u32>(18309u, 24765u))), !vec4<bool>(arg_2.x, true, arg_2.x, arg_1), Struct_5(vec2<f32>(1414f, global1[_wgslsmith_index_u32(22693u, 7u)]))), u_input.c.x), _wgslsmith_mod_i32(-select(var_1.a, 83858i, arg_2.x), select(var_1.a, -34320i, arg_1) ^ max(global2.a, var_1.a)), !any(vec4<bool>(arg_2.x, arg_1, false, false))));
    var var_2 = Struct_2(2576i);
    return 31881i;
}

fn func_1() -> StorageBuffer {
    var var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global0.wy))));
    let var_1 = Struct_1(_wgslsmith_mult_vec3_u32(~vec3<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a), u_input.a, 0u), countOneBits(~vec3<u32>(52402u, 29589u, u_input.a))), global0.xxw, !(!select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), true)), func_2(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 7u)] + _wgslsmith_f_op_f32(abs(-881f))), true, select(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), _wgslsmith_mult_i32(~(global2.a & -1i), global2.a)), -38818i);
    var var_2 = var_1.c;
    var var_3 = Struct_2(_wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.c.x, 1i), func_2(global1[_wgslsmith_index_u32(1u, 7u)], !(!var_2.x), var_1.c, -2147483647i), (i32(-1i) * -global2.a) & 2147483647i));
    var var_4 = Struct_2(-2147483647i >> (u_input.a % 32u));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.xz - var_1.b.zy)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 75012u;
    let x = u_input.a;
    s_output = func_1();
}


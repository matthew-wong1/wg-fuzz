struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: bool,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(580f, 1279f, -1783f, 810f);

var<private> global1: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(1i, -375f, false, vec3<f32>(-1815f, 1000f, 998f)), Struct_2(2147483647i, 742f, false, vec3<f32>(445f, -933f, 563f)), Struct_2(2147483647i, -1260f, true, vec3<f32>(-317f, 1219f, -474f)), Struct_2(-1i, 744f, false, vec3<f32>(149f, 470f, 192f)), Struct_2(-10130i, 729f, true, vec3<f32>(-312f, 1219f, -835f)), Struct_2(1i, -894f, true, vec3<f32>(1273f, -821f, 1601f)), Struct_2(i32(-2147483648), -1286f, false, vec3<f32>(1175f, 480f, 1097f)), Struct_2(-27780i, -831f, false, vec3<f32>(712f, 1939f, -1156f)), Struct_2(33986i, -421f, true, vec3<f32>(1205f, -1379f, -445f)), Struct_2(5818i, 2070f, true, vec3<f32>(709f, -1000f, 1000f)), Struct_2(1i, -605f, false, vec3<f32>(1403f, -1011f, 266f)), Struct_2(51440i, -214f, true, vec3<f32>(-892f, 122f, 120f)), Struct_2(i32(-2147483648), -344f, false, vec3<f32>(-410f, 690f, -1000f)), Struct_2(-64793i, -689f, false, vec3<f32>(-171f, -698f, 138f)), Struct_2(-1i, 811f, true, vec3<f32>(-293f, 306f, -1819f)), Struct_2(0i, -1051f, false, vec3<f32>(-832f, 1175f, -1000f)), Struct_2(-30199i, 472f, true, vec3<f32>(-452f, 1313f, -1550f)), Struct_2(-23452i, -222f, false, vec3<f32>(-626f, -2155f, 1313f)), Struct_2(27976i, 456f, true, vec3<f32>(-756f, 1103f, -1651f)), Struct_2(-1i, 1105f, false, vec3<f32>(-566f, -1977f, 2385f)), Struct_2(i32(-2147483648), 1628f, true, vec3<f32>(1741f, -1397f, 224f)), Struct_2(62718i, -349f, false, vec3<f32>(1000f, -1326f, 277f)), Struct_2(0i, -296f, false, vec3<f32>(-554f, 480f, 1021f)), Struct_2(33494i, -2196f, true, vec3<f32>(-870f, -1714f, 1044f)), Struct_2(i32(-2147483648), -493f, true, vec3<f32>(-362f, 761f, -468f)), Struct_2(1i, -1545f, true, vec3<f32>(-385f, 1401f, 693f)), Struct_2(-1i, -2104f, false, vec3<f32>(-1799f, -1561f, -435f)), Struct_2(-37016i, -772f, true, vec3<f32>(-367f, -159f, 1000f)));

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec2<f32>(374f, 102f), 38455u), Struct_1(vec2<f32>(2220f, -1000f), 4294967295u), Struct_1(vec2<f32>(-1000f, -1981f), 27116u), Struct_1(vec2<f32>(797f, -636f), 4294967295u), Struct_1(vec2<f32>(-944f, 865f), 0u), Struct_1(vec2<f32>(891f, 523f), 0u), Struct_1(vec2<f32>(1106f, 1211f), 26095u), Struct_1(vec2<f32>(-695f, 823f), 3308u), Struct_1(vec2<f32>(-875f, -479f), 0u), Struct_1(vec2<f32>(1324f, -903f), 4294967295u), Struct_1(vec2<f32>(651f, 540f), 96071u), Struct_1(vec2<f32>(-629f, 2155f), 50332u), Struct_1(vec2<f32>(-765f, 2020f), 36729u), Struct_1(vec2<f32>(-519f, -328f), 0u), Struct_1(vec2<f32>(1000f, 119f), 54226u), Struct_1(vec2<f32>(890f, 274f), 25742u), Struct_1(vec2<f32>(-1047f, -630f), 70112u), Struct_1(vec2<f32>(-1227f, 630f), 1u), Struct_1(vec2<f32>(1132f, 1343f), 0u), Struct_1(vec2<f32>(1000f, -1000f), 82847u), Struct_1(vec2<f32>(574f, -661f), 14276u), Struct_1(vec2<f32>(1477f, -641f), 1u));

var<private> global3: array<vec2<f32>, 18> = array<vec2<f32>, 18>(vec2<f32>(122f, 338f), vec2<f32>(-1005f, -428f), vec2<f32>(-2981f, 846f), vec2<f32>(-1485f, 3107f), vec2<f32>(910f, -1000f), vec2<f32>(1183f, 807f), vec2<f32>(-713f, 671f), vec2<f32>(-229f, 1012f), vec2<f32>(-1108f, 695f), vec2<f32>(-756f, 115f), vec2<f32>(-2936f, 1101f), vec2<f32>(2116f, 214f), vec2<f32>(1099f, -621f), vec2<f32>(666f, -588f), vec2<f32>(1679f, -1492f), vec2<f32>(-418f, 1423f), vec2<f32>(825f, -124f), vec2<f32>(872f, 1336f));

var<private> global4: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(2147483647i, -1140f, true, vec3<f32>(-1685f, 128f, -1000f)), Struct_2(-9095i, -1444f, true, vec3<f32>(-294f, 2905f, 1551f)), Struct_2(15819i, 894f, true, vec3<f32>(-630f, -1142f, -509f)), Struct_2(47258i, -124f, false, vec3<f32>(-1415f, 264f, 391f)), Struct_2(0i, -553f, false, vec3<f32>(984f, -736f, 950f)), Struct_2(10498i, -574f, true, vec3<f32>(-1118f, -1678f, 280f)), Struct_2(19131i, -1102f, false, vec3<f32>(-280f, 393f, 1000f)), Struct_2(17411i, 258f, false, vec3<f32>(692f, -873f, -274f)), Struct_2(-19922i, 2013f, true, vec3<f32>(474f, -393f, 440f)), Struct_2(-8210i, 1157f, false, vec3<f32>(-164f, -411f, 1986f)), Struct_2(0i, -1394f, true, vec3<f32>(-314f, -760f, 569f)), Struct_2(62470i, 221f, true, vec3<f32>(-1361f, 316f, 1171f)), Struct_2(2147483647i, -142f, true, vec3<f32>(290f, 1216f, 128f)), Struct_2(-107633i, 378f, true, vec3<f32>(465f, -954f, -346f)), Struct_2(2147483647i, -377f, false, vec3<f32>(-1230f, -493f, 237f)), Struct_2(-8954i, -573f, false, vec3<f32>(-288f, 550f, 159f)), Struct_2(-1i, -269f, true, vec3<f32>(354f, -283f, 1000f)), Struct_2(0i, -1000f, false, vec3<f32>(575f, -1397f, -1907f)), Struct_2(i32(-2147483648), 122f, false, vec3<f32>(-367f, 791f, 2042f)), Struct_2(0i, 125f, true, vec3<f32>(-1181f, 484f, 108f)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2) -> u32 {
    let var_0 = vec3<bool>(any(!select(vec2<bool>(arg_1.c, true), select(vec2<bool>(false, false), vec2<bool>(true, arg_1.c), vec2<bool>(arg_1.c, true)), !vec2<bool>(arg_1.c, arg_1.c))), arg_1.c, true);
    global2 = array<Struct_1, 22>();
    var var_1 = arg_0.zy;
    let var_2 = Struct_1(global3[_wgslsmith_index_u32(u_input.a.x, 18u)], _wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a.x, 26602u, 1u) ^ select(vec3<u32>(24507u, 4294967295u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), arg_1.c)), abs(~firstLeadingBit(vec3<u32>(1u, 1u, u_input.a.x)))));
    var var_3 = !select(select(var_0.xx, vec2<bool>(arg_1.c | arg_1.c, arg_1.c), vec2<bool>(true, false)), !vec2<bool>(any(vec2<bool>(arg_1.c, true)), var_0.x), true);
    return ~(~(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b, u_input.a.x, u_input.a.x) >> (vec3<u32>(u_input.a.x, 4294967295u, 47945u) % vec3<u32>(32u)), ~vec3<u32>(u_input.a.x, u_input.a.x, var_2.b)) | 1u));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = global4[_wgslsmith_index_u32(abs(~(~30518u << (func_3(vec3<i32>(-1i, 0i, -5745i), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.wx, vec2<u32>(39527u, arg_0.x)), 20u)]) % 32u))), 20u)];
    let var_1 = Struct_2(~var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -468f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x))), true, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1282f, 1514f, var_0.c)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.d.x))), -1000f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.xyy)) + vec3<f32>(-2427f, _wgslsmith_f_op_f32(-897f - var_0.d.x), global0.x))));
    return global2[_wgslsmith_index_u32(arg_0.x, 22u)];
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    var var_0 = func_2(vec4<u32>(countOneBits(u_input.a.x), 65682u, u_input.a.x, firstLeadingBit(firstLeadingBit(_wgslsmith_mult_u32(23745u, u_input.a.x)))));
    global1 = array<Struct_2, 28>();
    global4 = array<Struct_2, 20>();
    global3 = array<vec2<f32>, 18>();
    var var_1 = global1[_wgslsmith_index_u32(var_0.b << (_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a)) % 32u), 28u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) * -868f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b * -353f))), 1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.x + 829f), global0.x, 1136f, _wgslsmith_div_f32(215f, -284f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x) * vec4<f32>(global0.x, global0.x, 545f, global0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1529f, global0.x, -956f, global0.x))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(850f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-833f)) * _wgslsmith_f_op_f32(f32(-1f) * -394f)), -198f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -216f), _wgslsmith_f_op_f32(func_1(vec2<bool>(false, true))))))));
    var var_1 = true || any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true))));
    let var_2 = vec2<i32>(select(-(~(1i >> (u_input.a.x % 32u))), 1i, true), _wgslsmith_mod_i32(countOneBits(abs(-44789i)), ~(i32(-1i) * -70918i)) & (1i >> ((u_input.a.x | _wgslsmith_add_u32(93118u, 24165u)) % 32u)));
    let var_3 = global2[_wgslsmith_index_u32(min(abs(1568u), ~1u), 22u)];
    let var_4 = ~(~vec4<u32>(var_3.b >> (1u % 32u), ~var_3.b, 46866u, reverseBits(var_3.b))) >> (_wgslsmith_add_vec4_u32(vec4<u32>(62974u, var_3.b, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_3.b, var_3.b, 0u), vec3<u32>(var_3.b, 1u, 6587u)), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 276u, var_3.b, 53934u), vec4<u32>(u_input.a.x, var_3.b, 4294967295u, 31907u)))), ~(vec4<u32>(u_input.a.x, 0u, 76227u, var_3.b) | vec4<u32>(u_input.a.x, var_3.b, u_input.a.x, 57743u)) & _wgslsmith_mod_vec4_u32(vec4<u32>(var_3.b, u_input.a.x, var_3.b, var_3.b) & vec4<u32>(u_input.a.x, 0u, 37602u, u_input.a.x), vec4<u32>(var_3.b, u_input.a.x, var_3.b, 24738u))) % vec4<u32>(32u));
    var var_5 = firstLeadingBit(~vec2<u32>(~var_4.x << (var_3.b % 32u), ~4294967295u));
    var var_6 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(2147483647i, min(-(~1i), countOneBits(~33731i))), 536i, -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(667f, 789f)) - _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_3.a.x), global0.xx), _wgslsmith_f_op_vec2_f32(-var_0.xz)))), var_2.x, ~vec4<i32>(_wgslsmith_mod_i32(10049i, _wgslsmith_clamp_i32(-20574i, var_2.x, 1i)), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, -2147483647i, var_2.x, -2147483647i), vec4<i32>(19688i, 52402i, var_2.x, var_2.x))), var_2.x, 51631i));
}


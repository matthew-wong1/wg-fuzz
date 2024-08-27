struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: u32,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

var<private> global1: array<Struct_4, 19> = array<Struct_4, 19>(Struct_4(vec4<f32>(1770f, 1219f, 882f, -967f), true, Struct_3(4294967295u, Struct_2(vec3<bool>(true, false, false), vec3<f32>(772f, 128f, -399f), Struct_1(-100f, 50800u, 0u, 0u, 1918f), vec2<bool>(false, false)), Struct_2(vec3<bool>(false, true, false), vec3<f32>(-416f, 280f, 365f), Struct_1(-300f, 0u, 26439u, 1u, -190f), vec2<bool>(false, true)), 63834u, vec2<i32>(-3202i, -40718i))), Struct_4(vec4<f32>(1252f, -1192f, 785f, -326f), false, Struct_3(4294967295u, Struct_2(vec3<bool>(true, false, false), vec3<f32>(1000f, 2018f, -183f), Struct_1(-580f, 6897u, 4294967295u, 0u, -224f), vec2<bool>(true, false)), Struct_2(vec3<bool>(true, true, true), vec3<f32>(-984f, 2573f, 346f), Struct_1(1239f, 0u, 46715u, 49326u, 1001f), vec2<bool>(false, true)), 29451u, vec2<i32>(-1i, 21727i))), Struct_4(vec4<f32>(-521f, 766f, 1023f, -1603f), false, Struct_3(35714u, Struct_2(vec3<bool>(true, false, false), vec3<f32>(-2023f, -868f, -1030f), Struct_1(-574f, 69845u, 33676u, 4294967295u, 1509f), vec2<bool>(true, true)), Struct_2(vec3<bool>(true, true, true), vec3<f32>(1337f, -1000f, -1000f), Struct_1(944f, 52971u, 4294967295u, 38776u, -568f), vec2<bool>(false, false)), 8669u, vec2<i32>(-38744i, 19959i))), Struct_4(vec4<f32>(1426f, -1000f, -2278f, 1068f), true, Struct_3(1u, Struct_2(vec3<bool>(true, false, false), vec3<f32>(936f, -1062f, 1280f), Struct_1(412f, 67349u, 27142u, 4294967295u, -986f), vec2<bool>(true, false)), Struct_2(vec3<bool>(true, true, true), vec3<f32>(109f, -959f, 515f), Struct_1(1277f, 9195u, 27820u, 435u, -577f), vec2<bool>(false, true)), 0u, vec2<i32>(-991i, 40164i))), Struct_4(vec4<f32>(1574f, 1700f, -1000f, 1000f), false, Struct_3(4232u, Struct_2(vec3<bool>(false, true, false), vec3<f32>(288f, 408f, 1418f), Struct_1(1615f, 51334u, 20299u, 1u, -1450f), vec2<bool>(true, false)), Struct_2(vec3<bool>(false, false, false), vec3<f32>(-1903f, 1237f, -1421f), Struct_1(124f, 4294967295u, 4294967295u, 84270u, 453f), vec2<bool>(false, true)), 57783u, vec2<i32>(1i, 1i))), Struct_4(vec4<f32>(720f, -1497f, -1509f, -1804f), false, Struct_3(1u, Struct_2(vec3<bool>(true, true, true), vec3<f32>(-1849f, -780f, 237f), Struct_1(902f, 11189u, 13226u, 79758u, -356f), vec2<bool>(true, true)), Struct_2(vec3<bool>(false, false, true), vec3<f32>(-977f, -1000f, -1162f), Struct_1(1583f, 32011u, 0u, 0u, 232f), vec2<bool>(true, true)), 1u, vec2<i32>(-1i, -44352i))), Struct_4(vec4<f32>(-2247f, 668f, 352f, -231f), false, Struct_3(1u, Struct_2(vec3<bool>(false, true, true), vec3<f32>(-155f, -2248f, -1000f), Struct_1(-120f, 1u, 89120u, 14205u, -1090f), vec2<bool>(false, true)), Struct_2(vec3<bool>(false, false, true), vec3<f32>(735f, 867f, 1193f), Struct_1(905f, 4294967295u, 1u, 4294967295u, -1067f), vec2<bool>(false, false)), 64152u, vec2<i32>(0i, -42101i))), Struct_4(vec4<f32>(1000f, 460f, -1000f, 1000f), false, Struct_3(0u, Struct_2(vec3<bool>(true, true, true), vec3<f32>(203f, -158f, 427f), Struct_1(1425f, 0u, 1u, 4294967295u, -728f), vec2<bool>(false, false)), Struct_2(vec3<bool>(false, false, true), vec3<f32>(761f, -143f, -1437f), Struct_1(822f, 4294967295u, 23268u, 66420u, 1134f), vec2<bool>(false, true)), 63002u, vec2<i32>(1i, 26581i))), Struct_4(vec4<f32>(-1345f, 1056f, -823f, 2001f), true, Struct_3(6994u, Struct_2(vec3<bool>(true, false, true), vec3<f32>(-106f, -1594f, -709f), Struct_1(-816f, 1u, 0u, 20615u, -875f), vec2<bool>(true, false)), Struct_2(vec3<bool>(false, false, false), vec3<f32>(-1319f, -1665f, -1000f), Struct_1(1952f, 95629u, 96036u, 1u, 123f), vec2<bool>(false, false)), 4294967295u, vec2<i32>(5506i, -34860i))), Struct_4(vec4<f32>(-1139f, -831f, 1306f, 759f), true, Struct_3(0u, Struct_2(vec3<bool>(false, false, true), vec3<f32>(494f, 1157f, 1791f), Struct_1(2183f, 4294967295u, 10392u, 4294967295u, 1185f), vec2<bool>(true, true)), Struct_2(vec3<bool>(true, false, true), vec3<f32>(398f, -1791f, -1067f), Struct_1(-1750f, 4294967295u, 187u, 47935u, 1000f), vec2<bool>(false, true)), 0u, vec2<i32>(36974i, 39502i))), Struct_4(vec4<f32>(2002f, -1000f, 773f, 285f), false, Struct_3(13608u, Struct_2(vec3<bool>(true, true, true), vec3<f32>(136f, -1000f, 255f), Struct_1(786f, 63276u, 1u, 1u, -1598f), vec2<bool>(false, true)), Struct_2(vec3<bool>(false, false, false), vec3<f32>(-2292f, -3212f, -720f), Struct_1(1106f, 8510u, 16391u, 20730u, 774f), vec2<bool>(false, false)), 26244u, vec2<i32>(-1i, 1i))), Struct_4(vec4<f32>(-175f, -989f, 345f, -391f), true, Struct_3(4294967295u, Struct_2(vec3<bool>(true, false, false), vec3<f32>(1286f, -911f, 1059f), Struct_1(-234f, 4294967295u, 76295u, 32138u, -100f), vec2<bool>(false, true)), Struct_2(vec3<bool>(false, false, false), vec3<f32>(917f, -593f, -302f), Struct_1(339f, 20703u, 16004u, 12324u, -869f), vec2<bool>(true, true)), 0u, vec2<i32>(8448i, 1i))), Struct_4(vec4<f32>(-1658f, -1305f, -621f, 1317f), false, Struct_3(1u, Struct_2(vec3<bool>(false, true, true), vec3<f32>(1290f, 835f, 257f), Struct_1(-858f, 3612u, 54324u, 17117u, 723f), vec2<bool>(false, false)), Struct_2(vec3<bool>(false, true, true), vec3<f32>(-544f, -1872f, -1000f), Struct_1(-532f, 86282u, 1u, 13622u, -378f), vec2<bool>(false, false)), 20819u, vec2<i32>(-1i, -2686i))), Struct_4(vec4<f32>(324f, -1000f, -875f, -1037f), true, Struct_3(4294967295u, Struct_2(vec3<bool>(false, true, false), vec3<f32>(387f, 782f, 756f), Struct_1(-365f, 28862u, 4294967295u, 0u, 403f), vec2<bool>(false, true)), Struct_2(vec3<bool>(false, false, true), vec3<f32>(2507f, -192f, 1039f), Struct_1(1000f, 4294967295u, 16051u, 23771u, 163f), vec2<bool>(false, true)), 23526u, vec2<i32>(70856i, 0i))), Struct_4(vec4<f32>(-1035f, -391f, -1436f, 1262f), true, Struct_3(4294967295u, Struct_2(vec3<bool>(false, true, false), vec3<f32>(-469f, 299f, -434f), Struct_1(-614f, 0u, 79163u, 47103u, -722f), vec2<bool>(false, false)), Struct_2(vec3<bool>(true, false, false), vec3<f32>(-1769f, -243f, 544f), Struct_1(598f, 1u, 80675u, 34072u, -1184f), vec2<bool>(true, false)), 19326u, vec2<i32>(2147483647i, -6204i))), Struct_4(vec4<f32>(-1174f, -638f, -910f, 1374f), false, Struct_3(0u, Struct_2(vec3<bool>(true, true, false), vec3<f32>(-713f, 1837f, -231f), Struct_1(306f, 19400u, 4294967295u, 0u, -1204f), vec2<bool>(false, false)), Struct_2(vec3<bool>(true, true, true), vec3<f32>(-1534f, 460f, 1209f), Struct_1(-972f, 1u, 1u, 39090u, 1275f), vec2<bool>(false, true)), 54432u, vec2<i32>(3570i, 33044i))), Struct_4(vec4<f32>(152f, -794f, 834f, 322f), true, Struct_3(1u, Struct_2(vec3<bool>(true, false, false), vec3<f32>(-435f, 1568f, 380f), Struct_1(-943f, 0u, 26401u, 29487u, -247f), vec2<bool>(false, true)), Struct_2(vec3<bool>(false, false, false), vec3<f32>(-973f, -1788f, -385f), Struct_1(1140f, 1u, 1u, 74036u, 356f), vec2<bool>(false, true)), 56555u, vec2<i32>(-19789i, -11645i))), Struct_4(vec4<f32>(-1184f, 164f, 3371f, -1000f), true, Struct_3(1u, Struct_2(vec3<bool>(false, false, true), vec3<f32>(924f, -911f, 1996f), Struct_1(-388f, 31640u, 4294967295u, 4294967295u, -742f), vec2<bool>(true, false)), Struct_2(vec3<bool>(true, true, false), vec3<f32>(-1507f, 1922f, -621f), Struct_1(1468f, 0u, 52769u, 1u, 365f), vec2<bool>(true, true)), 4294967295u, vec2<i32>(2147483647i, 43079i))), Struct_4(vec4<f32>(-148f, -563f, 1402f, 1389f), true, Struct_3(70689u, Struct_2(vec3<bool>(false, false, false), vec3<f32>(-1195f, 1621f, 989f), Struct_1(-1060f, 27499u, 54054u, 14944u, 1371f), vec2<bool>(false, true)), Struct_2(vec3<bool>(false, true, false), vec3<f32>(506f, -1633f, 682f), Struct_1(979f, 0u, 4294967295u, 1u, 1315f), vec2<bool>(true, true)), 8192u, vec2<i32>(-1i, 1i))));

var<private> global2: array<Struct_1, 16>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(vec3<bool>(!select(all(vec4<bool>(false, false, true, true)), true, true), any(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), false)), true), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(min(-1918f, -3173f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(731f, 599f, true)), _wgslsmith_f_op_f32(-942f - -1000f))), _wgslsmith_f_op_f32(-950f + 1356f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1337f, -600f, -422f))))), global2[_wgslsmith_index_u32((~74504u & global0[_wgslsmith_index_u32(abs(u_input.c.x), 19u)]) << (~(~u_input.c.x >> (~global0[_wgslsmith_index_u32(u_input.c.x, 19u)] % 32u)) % 32u), 16u)], !vec2<bool>(!any(vec2<bool>(false, false)), !any(vec4<bool>(false, false, false, false))));
    let var_1 = !(!vec3<bool>(!any(vec2<bool>(var_0.a.x, false)), !(var_0.a.x || var_0.a.x), var_0.a.x));
    let var_2 = !vec4<bool>(var_0.a.x, var_0.a.x, true, !var_0.d.x);
    global0 = array<u32, 19>();
    global2 = array<Struct_1, 16>();
    return var_0.c.a;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<u32>, arg_3: vec4<u32>) -> Struct_2 {
    global1 = array<Struct_4, 19>();
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32((~_wgslsmith_dot_vec4_u32(arg_2, u_input.c) ^ 47737u) | (_wgslsmith_add_u32(arg_2.x, arg_2.x) ^ min(arg_3.x, 4294967295u)), 19u)], _wgslsmith_mult_u32(~0u, 1u)), 16u)];
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, -330f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-298f + _wgslsmith_f_op_f32(984f - arg_0.e)) - var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_0.e)), var_0.a, any(arg_1.zy))) * _wgslsmith_f_op_f32(func_3()))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(ceil(-697f)), _wgslsmith_f_op_f32(-arg_0.e)))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, 609f, -353f))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.e, 126f, var_0.a), vec3<f32>(-1105f, arg_0.e, 1493f), vec3<bool>(true, false, arg_1.x)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(-1064f, -1000f, -1035f), vec3<f32>(-1031f, -826f, var_0.e)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-577f, var_0.a, var_0.e))))))));
    let var_3 = vec4<bool>(var_0.e >= _wgslsmith_f_op_f32(-515f * _wgslsmith_f_op_f32(-var_2.x)), true, arg_1.x, !any(arg_1) & true);
    return Struct_2(vec3<bool>(true, var_3.x | true, true), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(179f, var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1622f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(730f, -496f)) - _wgslsmith_f_op_f32(step(-1039f, 1494f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + 297f))))), Struct_1(arg_0.a, _wgslsmith_dot_vec3_u32(min(vec3<u32>(4294967295u, arg_3.x, 38469u), ~u_input.c.xxy), arg_3.wyz), _wgslsmith_div_u32(abs(1u), 21365u), ((80405u >> (var_0.b % 32u)) | firstTrailingBit(20217u)) << (1u % 32u), _wgslsmith_f_op_f32(f32(-1f) * -1301f)), !(!vec2<bool>(select(var_3.x, arg_1.x, false), any(vec3<bool>(arg_1.x, true, true)))));
}

fn func_1(arg_0: u32, arg_1: vec3<f32>) -> f32 {
    let var_0 = 3555u;
    global0 = array<u32, 19>();
    global0 = array<u32, 19>();
    let var_1 = abs(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(~60970u, global0[_wgslsmith_index_u32(u_input.c.x, 19u)]), ~(~global0[_wgslsmith_index_u32(35872u, 19u)])), arg_0));
    var var_2 = Struct_3(global0[_wgslsmith_index_u32(1u, 19u)], func_2(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.c, ~u_input.c), 16u)], select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), false), vec3<bool>(any(vec2<bool>(true, true)), 58249u <= global0[_wgslsmith_index_u32(var_1.x, 19u)], true), vec3<bool>(true, true, true)), vec4<u32>(countOneBits(_wgslsmith_mod_u32(0u, u_input.c.x)), 47184u, ~firstLeadingBit(1u), _wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, 15170u), 4373u)), vec4<u32>(var_1.x, 4294967295u, min(global0[_wgslsmith_index_u32(min(15764u, 4294967295u), 19u)], 4294967295u), 21642u)), Struct_2(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.x, arg_1.x, arg_1.x), vec3<f32>(103f, 1000f, 672f), true))), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~arg_0, _wgslsmith_add_u32(~var_1.x, 1u)), 16u)], !func_2(global2[_wgslsmith_index_u32(1u, 16u)], select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), abs(u_input.c), u_input.c).a.yy), _wgslsmith_mult_u32(~4294967295u, ~_wgslsmith_mult_u32(54240u, 0u | global0[_wgslsmith_index_u32(1u, 19u)])), max(vec2<i32>(abs(_wgslsmith_mod_i32(-1i, u_input.a.x)), u_input.a.x), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, u_input.b.x), -vec2<i32>(u_input.a.x, 76983i))));
    return 835f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~(~1u) | ~global0[_wgslsmith_index_u32(~15060u, 19u)]), global0[_wgslsmith_index_u32(0u, 19u)], ~_wgslsmith_mod_u32(4294967295u, u_input.c.x)), 19u)], 19u)];
    var var_1 = _wgslsmith_div_f32(-182f, _wgslsmith_f_op_f32(var_0.c.b.b.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1206f) + -478f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.c.b.x)))));
    let var_2 = var_0.b;
    var var_3 = global2[_wgslsmith_index_u32(~(22546u | ~u_input.c.x), 16u)];
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(max(var_3.e, _wgslsmith_f_op_f32(func_1(abs(global0[_wgslsmith_index_u32(~u_input.c.x, 19u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(210f, var_3.a, 136f)))))), _wgslsmith_f_op_f32(var_3.e + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1316f + _wgslsmith_f_op_f32(func_1(4294967295u, var_0.a.xwz)))))), var_3.e);
    var_1 = 1018f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, 357f);
}


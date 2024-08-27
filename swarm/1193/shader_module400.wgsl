struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 29>;

var<private> global1: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(-1i, 8757i, 388i), vec3<i32>(1i, 0i, 55518i), vec3<i32>(2147483647i, -1641i, 0i), vec3<i32>(26419i, 22025i, -29191i), vec3<i32>(0i, 29406i, 35725i));

var<private> global2: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(4294967295u, vec3<i32>(2147483647i, 1i, -769i), Struct_1(vec3<i32>(-54175i, -15370i, 68292i), vec4<f32>(596f, -301f, -455f, 824f), vec2<bool>(false, false), -1i), -1i, Struct_1(vec3<i32>(34410i, i32(-2147483648), 8285i), vec4<f32>(115f, -1163f, -2031f, -811f), vec2<bool>(false, false), -19677i)), Struct_3(1u, vec3<i32>(i32(-2147483648), 22864i, 1i), Struct_1(vec3<i32>(53806i, -7011i, -3797i), vec4<f32>(-762f, -395f, 972f, -241f), vec2<bool>(false, true), -73554i), -1i, Struct_1(vec3<i32>(37690i, 31936i, 44225i), vec4<f32>(161f, 881f, 279f, 1807f), vec2<bool>(true, false), -1i)), Struct_3(0u, vec3<i32>(17344i, 2147483647i, 31702i), Struct_1(vec3<i32>(0i, 58448i, 0i), vec4<f32>(1000f, -434f, -1015f, 2942f), vec2<bool>(true, true), -26361i), 1i, Struct_1(vec3<i32>(0i, i32(-2147483648), -50995i), vec4<f32>(-225f, 1482f, 1500f, -354f), vec2<bool>(true, true), 3678i)), Struct_3(15089u, vec3<i32>(0i, -1i, -5285i), Struct_1(vec3<i32>(-1i, -12536i, -418i), vec4<f32>(1048f, -732f, -1111f, 407f), vec2<bool>(true, true), 39341i), -24519i, Struct_1(vec3<i32>(-29349i, 1i, 2147483647i), vec4<f32>(1405f, -956f, -636f, 416f), vec2<bool>(false, true), 23636i)), Struct_3(35514u, vec3<i32>(1i, -12903i, 2147483647i), Struct_1(vec3<i32>(1i, 4860i, -3422i), vec4<f32>(-625f, 121f, -897f, 847f), vec2<bool>(true, false), 2522i), -8374i, Struct_1(vec3<i32>(18415i, 46650i, -27838i), vec4<f32>(205f, -1235f, 1565f, -393f), vec2<bool>(false, false), -12779i)), Struct_3(4294967295u, vec3<i32>(1i, 28138i, 2147483647i), Struct_1(vec3<i32>(-1i, i32(-2147483648), -1i), vec4<f32>(1151f, -183f, -322f, -560f), vec2<bool>(false, false), -1i), 0i, Struct_1(vec3<i32>(34690i, 1i, i32(-2147483648)), vec4<f32>(-1000f, -465f, -287f, -849f), vec2<bool>(true, true), -30105i)), Struct_3(0u, vec3<i32>(-50864i, -1i, i32(-2147483648)), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 68407i), vec4<f32>(949f, 1416f, -376f, -897f), vec2<bool>(true, true), -4939i), 1i, Struct_1(vec3<i32>(1i, 0i, i32(-2147483648)), vec4<f32>(-666f, -1000f, -633f, -184f), vec2<bool>(false, false), i32(-2147483648))), Struct_3(0u, vec3<i32>(-8249i, 1i, 0i), Struct_1(vec3<i32>(-8892i, -23394i, 46533i), vec4<f32>(1546f, 204f, -578f, -265f), vec2<bool>(true, true), 2147483647i), -40305i, Struct_1(vec3<i32>(i32(-2147483648), 17555i, 23662i), vec4<f32>(311f, 1000f, 1081f, -2451f), vec2<bool>(true, false), -1i)), Struct_3(39581u, vec3<i32>(0i, i32(-2147483648), 0i), Struct_1(vec3<i32>(16093i, 63765i, -31838i), vec4<f32>(231f, -164f, 328f, -941f), vec2<bool>(true, true), 63005i), -18528i, Struct_1(vec3<i32>(-30207i, i32(-2147483648), 2147483647i), vec4<f32>(731f, -1493f, 1088f, -1235f), vec2<bool>(false, false), 1i)), Struct_3(1u, vec3<i32>(-1i, 1i, -3681i), Struct_1(vec3<i32>(-54899i, 2147483647i, -8558i), vec4<f32>(-702f, -113f, 2069f, -1171f), vec2<bool>(false, true), 52772i), -44115i, Struct_1(vec3<i32>(-1i, -1i, 85506i), vec4<f32>(-1087f, -1103f, 339f, 936f), vec2<bool>(false, true), 2147483647i)), Struct_3(0u, vec3<i32>(24069i, 1i, -25861i), Struct_1(vec3<i32>(-19842i, 16245i, 11296i), vec4<f32>(-800f, 222f, -506f, 1000f), vec2<bool>(true, true), 1i), 2147483647i, Struct_1(vec3<i32>(-17262i, 38807i, -2843i), vec4<f32>(829f, -1681f, -371f, 861f), vec2<bool>(false, false), -41661i)), Struct_3(0u, vec3<i32>(-1i, 0i, -1i), Struct_1(vec3<i32>(13268i, -30082i, i32(-2147483648)), vec4<f32>(-548f, -436f, -1358f, 172f), vec2<bool>(false, false), 2147483647i), -113i, Struct_1(vec3<i32>(0i, -33684i, -31385i), vec4<f32>(980f, 712f, 679f, 670f), vec2<bool>(true, true), 2147483647i)), Struct_3(14526u, vec3<i32>(1i, -29975i, -45756i), Struct_1(vec3<i32>(8247i, -13097i, -12871i), vec4<f32>(-2176f, -544f, 129f, -693f), vec2<bool>(false, false), -49576i), -46353i, Struct_1(vec3<i32>(-1i, -85559i, -929i), vec4<f32>(408f, 202f, 1119f, 1000f), vec2<bool>(false, true), -1i)), Struct_3(1u, vec3<i32>(1i, 31747i, 1i), Struct_1(vec3<i32>(-1i, -1i, 27233i), vec4<f32>(-914f, 456f, -2450f, -673f), vec2<bool>(true, true), 2147483647i), 48696i, Struct_1(vec3<i32>(7763i, -43042i, -1596i), vec4<f32>(1399f, 391f, -906f, -887f), vec2<bool>(true, false), 1i)), Struct_3(75476u, vec3<i32>(0i, 0i, -46678i), Struct_1(vec3<i32>(2147483647i, 12661i, 41245i), vec4<f32>(-768f, -858f, 1417f, -206f), vec2<bool>(true, true), -11868i), 0i, Struct_1(vec3<i32>(51804i, 23051i, i32(-2147483648)), vec4<f32>(-397f, -698f, 1376f, -1002f), vec2<bool>(true, false), 33376i)), Struct_3(32059u, vec3<i32>(10349i, 32715i, 1i), Struct_1(vec3<i32>(-3876i, i32(-2147483648), -1i), vec4<f32>(1415f, 528f, -1008f, -207f), vec2<bool>(true, true), -14419i), 2147483647i, Struct_1(vec3<i32>(2147483647i, 8851i, 10070i), vec4<f32>(631f, -1293f, 254f, -238f), vec2<bool>(false, false), 17491i)), Struct_3(8174u, vec3<i32>(-14487i, 21625i, i32(-2147483648)), Struct_1(vec3<i32>(1i, 8909i, -5724i), vec4<f32>(135f, -1029f, 919f, 279f), vec2<bool>(true, true), -1i), i32(-2147483648), Struct_1(vec3<i32>(-62292i, 37150i, 8472i), vec4<f32>(-880f, -1659f, 1000f, -586f), vec2<bool>(true, false), 2147483647i)), Struct_3(4294967295u, vec3<i32>(i32(-2147483648), -2778i, 0i), Struct_1(vec3<i32>(1i, 7693i, 32885i), vec4<f32>(464f, -1317f, -1000f, -265f), vec2<bool>(true, false), 10961i), -36960i, Struct_1(vec3<i32>(-25623i, 24954i, -3014i), vec4<f32>(-2512f, -306f, 1020f, 488f), vec2<bool>(false, true), 15725i)), Struct_3(1u, vec3<i32>(1i, 0i, -5813i), Struct_1(vec3<i32>(-7689i, -26625i, -17150i), vec4<f32>(-406f, 549f, 1940f, -1000f), vec2<bool>(false, true), -48487i), 24327i, Struct_1(vec3<i32>(1i, 11343i, -1i), vec4<f32>(273f, -814f, -2246f, -912f), vec2<bool>(false, true), 44586i)), Struct_3(0u, vec3<i32>(-32081i, 10247i, 0i), Struct_1(vec3<i32>(32400i, -17194i, 32490i), vec4<f32>(-3406f, -1044f, 152f, -919f), vec2<bool>(false, true), -1i), 2147483647i, Struct_1(vec3<i32>(-25593i, 556i, 2147483647i), vec4<f32>(-694f, -216f, -1000f, -1633f), vec2<bool>(true, true), 1i)), Struct_3(271u, vec3<i32>(31757i, i32(-2147483648), 2147483647i), Struct_1(vec3<i32>(-18490i, 2147483647i, -5143i), vec4<f32>(-756f, 867f, 1000f, -1949f), vec2<bool>(false, true), -10582i), 1i, Struct_1(vec3<i32>(2147483647i, -4009i, 11639i), vec4<f32>(-279f, 401f, -1188f, -1877f), vec2<bool>(false, false), 2147483647i)), Struct_3(0u, vec3<i32>(29816i, -1i, i32(-2147483648)), Struct_1(vec3<i32>(-20788i, -1i, -29299i), vec4<f32>(-838f, 1000f, -1142f, -842f), vec2<bool>(true, false), -14182i), 2147483647i, Struct_1(vec3<i32>(-1i, -16782i, 31416i), vec4<f32>(-316f, -125f, 1292f, 293f), vec2<bool>(true, true), -1i)), Struct_3(0u, vec3<i32>(1575i, -11205i, 10136i), Struct_1(vec3<i32>(-6609i, 0i, 1807i), vec4<f32>(1574f, 1033f, 493f, -115f), vec2<bool>(true, false), 73522i), 2147483647i, Struct_1(vec3<i32>(1i, 0i, 54646i), vec4<f32>(1326f, -1000f, 1893f, 1002f), vec2<bool>(true, true), 1i)), Struct_3(12540u, vec3<i32>(2147483647i, 0i, 23478i), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), vec4<f32>(509f, 961f, 1948f, -1238f), vec2<bool>(false, true), -34383i), -1i, Struct_1(vec3<i32>(-19663i, 23054i, 45212i), vec4<f32>(676f, -486f, 127f, 313f), vec2<bool>(false, false), i32(-2147483648))), Struct_3(4294967295u, vec3<i32>(-3526i, 37721i, 0i), Struct_1(vec3<i32>(35232i, 40277i, 2147483647i), vec4<f32>(-1000f, -1427f, -786f, -375f), vec2<bool>(false, false), 12059i), -36368i, Struct_1(vec3<i32>(-9549i, i32(-2147483648), -30075i), vec4<f32>(1000f, -706f, 1000f, -1398f), vec2<bool>(true, false), -1375i)), Struct_3(52413u, vec3<i32>(i32(-2147483648), 2147483647i, 0i), Struct_1(vec3<i32>(-27857i, -42169i, 10499i), vec4<f32>(-533f, 142f, -2256f, 507f), vec2<bool>(false, false), 12408i), i32(-2147483648), Struct_1(vec3<i32>(31633i, -1i, 30285i), vec4<f32>(-476f, -573f, -561f, 1000f), vec2<bool>(false, false), 40834i)), Struct_3(0u, vec3<i32>(22087i, 2147483647i, 4602i), Struct_1(vec3<i32>(1i, 1i, 2147483647i), vec4<f32>(-1240f, 1000f, 1709f, -1000f), vec2<bool>(true, true), 0i), 2147483647i, Struct_1(vec3<i32>(-3238i, 14320i, 0i), vec4<f32>(-307f, 479f, 1000f, -1387f), vec2<bool>(false, true), -75868i)), Struct_3(1u, vec3<i32>(-28192i, -55143i, 2147483647i), Struct_1(vec3<i32>(-10739i, 2147483647i, 14614i), vec4<f32>(-1347f, 1258f, 853f, -1000f), vec2<bool>(true, false), 2147483647i), 75269i, Struct_1(vec3<i32>(-19410i, i32(-2147483648), 0i), vec4<f32>(1508f, 1173f, 1051f, -1000f), vec2<bool>(true, false), 26150i)), Struct_3(4294967295u, vec3<i32>(-10326i, 10120i, -1i), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 4725i), vec4<f32>(-403f, -1762f, 314f, -832f), vec2<bool>(true, true), i32(-2147483648)), -1i, Struct_1(vec3<i32>(0i, 13182i, i32(-2147483648)), vec4<f32>(-2216f, 1656f, -1501f, -104f), vec2<bool>(false, false), -20229i)));

var<private> global3: vec3<u32>;

var<private> global4: array<vec4<i32>, 23>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = 1i;
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x * 747f) * 315f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.b.x))))) - var_1.b.x);
    let var_3 = !arg_0.c.x | var_1.c.x;
    return arg_0.c;
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = vec4<i32>(~(~(0i >> (1u % 32u)) >> (global3.x % 32u)), _wgslsmith_add_i32(arg_0.c.d, arg_0.a.d), countOneBits(countOneBits(_wgslsmith_mod_i32(arg_0.c.a.x, -15851i))), (-1i & abs(arg_0.a.d & -1i)) | 2857i);
    let var_1 = select(!(!vec2<bool>(all(arg_0.c.c), any(vec3<bool>(false, false, false)))), vec2<bool>(reverseBits(~43882u) <= (u_input.b ^ _wgslsmith_div_u32(global3.x, 25637u)), arg_0.a.c.x), !(!select(arg_0.c.c, !arg_0.a.c, !arg_0.c.c)));
    let var_2 = Struct_3(u_input.a, firstLeadingBit(firstLeadingBit(global1[_wgslsmith_index_u32(countOneBits(u_input.a), 5u)])) ^ (_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.c.d, arg_0.c.a.x, 2147483647i), vec3<i32>(var_0.x, var_0.x, arg_0.c.a.x)) << (vec3<u32>(countOneBits(0u), arg_0.b, 4294967295u) % vec3<u32>(32u))), arg_0.a, var_0.x, Struct_1(var_0.xzx, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.b.x * arg_0.c.b.x)), _wgslsmith_div_f32(arg_0.a.b.x, _wgslsmith_f_op_f32(-arg_0.a.b.x)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(203f, 1192f), -533f)), arg_0.a.b.x), select(var_1, arg_0.a.c, !(!arg_0.c.c)), -937i));
    global0 = array<vec3<bool>, 29>();
    global1 = array<vec3<i32>, 5>();
    return ~(~u_input.a);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: bool) -> vec4<f32> {
    let var_0 = arg_1;
    let var_1 = reverseBits(vec3<u32>(var_0.a, ~global3.x, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(global3.xz, vec2<u32>(global3.x, var_0.a)), vec2<u32>(u_input.b, arg_2.x)))) >> (~reverseBits(firstTrailingBit(~vec3<u32>(0u, 35054u, 26620u))) % vec3<u32>(32u));
    let var_2 = Struct_4(false);
    let var_3 = arg_1.b;
    let var_4 = Struct_3(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(0u, 2036u, arg_2.x, var_0.a)), ~vec4<u32>(0u, 57275u, 0u, 21995u))), vec2<u32>(func_3(Struct_2(Struct_1(arg_1.e.a, var_0.e.b, vec2<bool>(arg_0.x, true), 1i), arg_1.a, arg_1.c)), global3.x << (abs(arg_2.x) % 32u))), firstLeadingBit(var_0.c.a), Struct_1(arg_1.b >> (var_1 % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1500f, arg_1.e.b.x, _wgslsmith_f_op_f32(-1081f - 1362f), _wgslsmith_f_op_f32(max(arg_1.c.b.x, arg_1.c.b.x)))), vec2<bool>(arg_1.e.c.x, arg_2.x <= (0u ^ u_input.b)), _wgslsmith_mult_i32(_wgslsmith_add_i32(-2147483647i, arg_1.e.d), var_0.c.a.x) << (var_1.x % 32u)), _wgslsmith_sub_i32(-(max(var_3.x, var_0.b.x) | _wgslsmith_mod_i32(var_3.x, 25973i)), -14259i), Struct_1(firstTrailingBit(arg_1.e.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_0.c.b)) + var_0.c.b), arg_0.yx, -29651i));
    return var_4.c.b;
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = Struct_2(Struct_1(~vec3<i32>(~(-2147483647i), 1i, reverseBits(-1i)), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2213f), -1042f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-965f, 782f) + _wgslsmith_f_op_f32(-1310f + 697f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -640f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -786f))), vec2<bool>(true, true), ~1i), ~firstLeadingBit(~(~40222u)), Struct_1(-global1[_wgslsmith_index_u32(4294967295u, 5u)] & _wgslsmith_mod_vec3_i32(vec3<i32>(-8749i, -2147483647i, 410i), global1[_wgslsmith_index_u32(global3.x << (u_input.b % 32u), 5u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(vec3<bool>(arg_0, arg_0, true), global2[_wgslsmith_index_u32(func_3(Struct_2(Struct_1(global1[_wgslsmith_index_u32(u_input.b, 5u)], vec4<f32>(-2141f, -511f, -1519f, -835f), vec2<bool>(true, false), 0i), u_input.b, Struct_1(vec3<i32>(-1i, 37127i, 2503i), vec4<f32>(242f, -1965f, -2476f, 1402f), vec2<bool>(arg_0, true), 8881i))), 29u)], firstTrailingBit(vec2<u32>(global3.x, 4294967295u)), true)) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-516f, -498f, 1076f, 937f), vec4<f32>(-383f, 1586f, 1000f, 908f)))))), select(vec2<bool>(arg_0, arg_0 || true), !vec2<bool>(false, arg_0), func_1(Struct_1(global1[_wgslsmith_index_u32(22802u, 5u)], vec4<f32>(-906f, 281f, 302f, 1246f), vec2<bool>(false, true), -25176i))), ~1i));
    let var_1 = true;
    global2 = array<Struct_3, 29>();
    var_0 = Struct_2(var_0.a, _wgslsmith_dot_vec4_u32(countOneBits(min(select(vec4<u32>(9746u, var_0.b, 50678u, u_input.a), vec4<u32>(6072u, 0u, 39462u, u_input.b), true), vec4<u32>(4294967295u, 4294967295u, u_input.b, global3.x))), ~_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(8110u, 13137u, u_input.b, 13977u)), min(vec4<u32>(var_0.b, 5797u, 44123u, global3.x), vec4<u32>(1u, global3.x, u_input.b, 55811u)))), var_0.a);
    var var_2 = Struct_2(var_0.c, _wgslsmith_mod_u32(reverseBits(~_wgslsmith_dot_vec2_u32(global3.zy, global3.zx)), ~12595u), Struct_1(var_0.c.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.b.x), var_0.c.b.x, _wgslsmith_f_op_f32(-502f - -2362f), -1641f) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_0.c.b * var_0.c.b), _wgslsmith_f_op_vec4_f32(-var_0.c.b), !arg_0))), !var_0.a.c, -1i));
    return ~var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!select(vec2<bool>(false, true), func_1(Struct_1(global1[_wgslsmith_index_u32(u_input.a, 5u)], vec4<f32>(432f, -448f, -1353f, 947f), vec2<bool>(false, true), -2147483647i)), all(vec2<bool>(true, true))));
    global2 = array<Struct_3, 29>();
    var var_1 = vec2<bool>((1722f != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(337f)), _wgslsmith_f_op_f32(trunc(-1118f)), select(var_0, var_0, true)))) & var_0, !(!any(vec4<bool>(var_0, false, true, true))));
    var var_2 = select(select(vec3<bool>(any(select(vec4<bool>(var_0, true, var_0, var_1.x), vec4<bool>(var_1.x, var_0, var_0, false), vec4<bool>(var_0, false, true, true))), !all(global0[_wgslsmith_index_u32(1231u, 29u)]), false), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(countOneBits(func_2(false)), u_input.a), 29u)], vec3<bool>(var_0 | true, all(!vec2<bool>(var_1.x, false)), true)), select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(11041u, 4504u, 1u)), vec3<u32>(1u, 1u, 1u)), 29u)], !vec3<bool>(true, true, var_1.x), global0[_wgslsmith_index_u32(~(~(global3.x | u_input.a)), 29u)]), !select(vec3<bool>(true, true, !var_0), vec3<bool>(any(vec4<bool>(true, var_0, var_0, var_1.x)), all(vec3<bool>(var_1.x, false, false)), all(global0[_wgslsmith_index_u32(56846u, 29u)])), !func_1(Struct_1(global1[_wgslsmith_index_u32(global3.x, 5u)], vec4<f32>(1299f, 1597f, -1780f, -892f), vec2<bool>(var_1.x, true), 19129i)).x));
    global3 = countOneBits(vec3<u32>(_wgslsmith_mod_u32(global3.x, u_input.b), ~u_input.b & u_input.a, 29383u));
    var_1 = vec2<bool>(var_2.x, var_2.x);
    global1 = array<vec3<i32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(-9797i, _wgslsmith_f_op_f32(max(813f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -1060f)))), 1i);
}


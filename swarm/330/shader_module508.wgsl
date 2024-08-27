struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(Struct_1(vec3<f32>(-953f, 506f, 1644f), vec3<u32>(1u, 0u, 7479u), true, -126f), Struct_1(vec3<f32>(1605f, 2068f, -1520f), vec3<u32>(1u, 1u, 0u), true, 862f)), Struct_2(Struct_1(vec3<f32>(-449f, -807f, 766f), vec3<u32>(42465u, 4294967295u, 47569u), false, 1469f), Struct_1(vec3<f32>(-1419f, 246f, 1045f), vec3<u32>(1u, 4294967295u, 13179u), true, 383f)), Struct_2(Struct_1(vec3<f32>(-224f, 285f, 1483f), vec3<u32>(0u, 0u, 4294967295u), false, -693f), Struct_1(vec3<f32>(1451f, 360f, -1010f), vec3<u32>(4294967295u, 4294967295u, 24800u), false, -214f)), Struct_2(Struct_1(vec3<f32>(634f, 1000f, -719f), vec3<u32>(1u, 0u, 4294967295u), true, 112f), Struct_1(vec3<f32>(661f, -611f, -965f), vec3<u32>(4294967295u, 1u, 69281u), true, 207f)), Struct_2(Struct_1(vec3<f32>(-277f, 661f, 949f), vec3<u32>(1u, 66280u, 62988u), false, -1317f), Struct_1(vec3<f32>(277f, 2045f, -288f), vec3<u32>(0u, 30875u, 57174u), false, -202f)), Struct_2(Struct_1(vec3<f32>(-346f, -633f, 1165f), vec3<u32>(0u, 1u, 1u), false, -1088f), Struct_1(vec3<f32>(1785f, -1851f, -1397f), vec3<u32>(4294967295u, 0u, 1u), true, -717f)), Struct_2(Struct_1(vec3<f32>(-1935f, -782f, 1008f), vec3<u32>(0u, 42105u, 81248u), false, -100f), Struct_1(vec3<f32>(-1557f, 420f, 558f), vec3<u32>(5400u, 1u, 1u), false, -576f)), Struct_2(Struct_1(vec3<f32>(585f, -1603f, -433f), vec3<u32>(48303u, 3834u, 8302u), true, 289f), Struct_1(vec3<f32>(-1601f, 1000f, -1000f), vec3<u32>(19962u, 13900u, 1u), true, -517f)), Struct_2(Struct_1(vec3<f32>(-295f, 734f, -1247f), vec3<u32>(33952u, 1u, 6445u), false, 1137f), Struct_1(vec3<f32>(1000f, 1192f, 542f), vec3<u32>(27947u, 4294967295u, 0u), false, 1000f)), Struct_2(Struct_1(vec3<f32>(1000f, 498f, 1406f), vec3<u32>(45259u, 34962u, 88873u), true, -434f), Struct_1(vec3<f32>(-306f, 113f, 1170f), vec3<u32>(23199u, 100831u, 61379u), false, -204f)), Struct_2(Struct_1(vec3<f32>(108f, 327f, 1104f), vec3<u32>(122754u, 0u, 1u), true, 157f), Struct_1(vec3<f32>(460f, 748f, 433f), vec3<u32>(1u, 0u, 1u), false, 2205f)), Struct_2(Struct_1(vec3<f32>(-488f, 1608f, -833f), vec3<u32>(1u, 6688u, 22327u), false, -3000f), Struct_1(vec3<f32>(-651f, -2470f, 1547f), vec3<u32>(4294967295u, 0u, 39832u), true, 1600f)), Struct_2(Struct_1(vec3<f32>(172f, 458f, -1000f), vec3<u32>(1u, 10474u, 39935u), false, -172f), Struct_1(vec3<f32>(-919f, 484f, 2059f), vec3<u32>(9564u, 59284u, 0u), false, -1123f)), Struct_2(Struct_1(vec3<f32>(438f, 1242f, 116f), vec3<u32>(4294967295u, 4294967295u, 72164u), true, 966f), Struct_1(vec3<f32>(1975f, 1471f, 1630f), vec3<u32>(0u, 4294967295u, 470u), false, -794f)), Struct_2(Struct_1(vec3<f32>(-247f, 718f, -1154f), vec3<u32>(33614u, 1u, 4294967295u), false, -1702f), Struct_1(vec3<f32>(577f, -1384f, -598f), vec3<u32>(22873u, 72877u, 39897u), false, 467f)), Struct_2(Struct_1(vec3<f32>(1257f, 1000f, -2178f), vec3<u32>(4294967295u, 4365u, 4294967295u), true, 794f), Struct_1(vec3<f32>(113f, -115f, 1000f), vec3<u32>(44793u, 1u, 7855u), false, -1998f)), Struct_2(Struct_1(vec3<f32>(100f, 699f, 2796f), vec3<u32>(28759u, 1u, 64725u), true, 1070f), Struct_1(vec3<f32>(-1532f, -1330f, 1855f), vec3<u32>(69350u, 0u, 8724u), true, -983f)), Struct_2(Struct_1(vec3<f32>(-273f, -151f, -114f), vec3<u32>(1u, 1u, 3320u), false, 683f), Struct_1(vec3<f32>(1810f, -291f, -1692f), vec3<u32>(1u, 13938u, 0u), true, 153f)), Struct_2(Struct_1(vec3<f32>(1000f, -414f, 243f), vec3<u32>(57219u, 4294967295u, 4294967295u), false, 649f), Struct_1(vec3<f32>(-372f, -408f, -614f), vec3<u32>(0u, 1u, 4294967295u), false, 745f)), Struct_2(Struct_1(vec3<f32>(550f, 1000f, -197f), vec3<u32>(46361u, 4294967295u, 4294967295u), true, 1193f), Struct_1(vec3<f32>(903f, -435f, 253f), vec3<u32>(52207u, 1u, 46838u), true, 1723f)), Struct_2(Struct_1(vec3<f32>(-1256f, 1748f, 179f), vec3<u32>(4294967295u, 0u, 46261u), false, -1431f), Struct_1(vec3<f32>(-1131f, -2235f, 2293f), vec3<u32>(1u, 0u, 1121u), false, 1239f)), Struct_2(Struct_1(vec3<f32>(613f, -187f, -601f), vec3<u32>(26546u, 0u, 58227u), false, -198f), Struct_1(vec3<f32>(-897f, -946f, 1675f), vec3<u32>(6429u, 4294967295u, 64962u), false, 349f)), Struct_2(Struct_1(vec3<f32>(-1220f, -536f, 294f), vec3<u32>(11978u, 1u, 1u), true, 737f), Struct_1(vec3<f32>(1001f, -542f, -2906f), vec3<u32>(22342u, 36363u, 71588u), false, -336f)), Struct_2(Struct_1(vec3<f32>(-494f, -1304f, 1442f), vec3<u32>(1u, 0u, 57834u), false, 1551f), Struct_1(vec3<f32>(882f, 1324f, -1313f), vec3<u32>(8247u, 4294967295u, 14670u), true, 2097f)), Struct_2(Struct_1(vec3<f32>(-910f, 1483f, 729f), vec3<u32>(1u, 1u, 32670u), false, -1241f), Struct_1(vec3<f32>(1292f, 117f, -793f), vec3<u32>(1u, 1u, 1u), false, 324f)), Struct_2(Struct_1(vec3<f32>(1152f, -424f, 408f), vec3<u32>(1u, 1u, 1u), false, 932f), Struct_1(vec3<f32>(-505f, -2059f, 331f), vec3<u32>(6224u, 51396u, 77288u), false, -1538f)), Struct_2(Struct_1(vec3<f32>(1259f, 454f, -908f), vec3<u32>(90215u, 21006u, 7678u), false, -1119f), Struct_1(vec3<f32>(-1289f, 1416f, -348f), vec3<u32>(1u, 67121u, 0u), false, 1624f)), Struct_2(Struct_1(vec3<f32>(-1563f, -1997f, -1694f), vec3<u32>(31639u, 4294967295u, 1u), false, 1791f), Struct_1(vec3<f32>(874f, 909f, -1000f), vec3<u32>(20383u, 0u, 59634u), true, 1272f)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> vec2<u32> {
    let var_0 = arg_1;
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(824f, 150f, -592f)))), firstLeadingBit(countOneBits(vec3<u32>(var_0.b.x, 1u, arg_2.a.b.x))), !all(vec2<bool>(arg_2.a.c, true)), arg_2.b.a.x), Struct_1(arg_2.b.a, arg_0.b, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.d, _wgslsmith_f_op_f32(arg_0.a.x + 2934f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)))));
    var var_2 = _wgslsmith_div_vec2_f32(var_0.a.yx, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.b.a.zy - arg_0.a.xy), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 363f))) + vec2<f32>(_wgslsmith_f_op_f32(-arg_2.a.d), arg_0.a.x)))));
    let var_3 = 46514u;
    var var_4 = arg_1;
    return ~abs(_wgslsmith_div_vec2_u32(~max(var_1.a.b.xy, vec2<u32>(0u, var_1.a.b.x)), arg_0.b.xx | ~arg_2.a.b.yz));
}

fn func_4(arg_0: vec2<u32>) -> bool {
    let var_0 = global0[_wgslsmith_index_u32(max(~u_input.b.x, ~((u_input.b.x >> (u_input.b.x % 32u)) >> (~7262u % 32u)) << (u_input.b.x % 32u)), 28u)];
    global0 = array<Struct_2, 28>();
    let var_1 = ~(~countOneBits(~reverseBits(var_0.b.b.x)));
    let var_2 = var_0.b;
    global0 = array<Struct_2, 28>();
    return (u_input.a >= u_input.a) || (true && var_2.c);
}

fn func_2() -> Struct_2 {
    var var_0 = func_4(~firstLeadingBit(func_3(Struct_1(vec3<f32>(1866f, -1000f, -967f), u_input.b.wxy, true, 1106f), Struct_1(vec3<f32>(-1000f, 1000f, 1160f), u_input.b.wwz, true, -779f), Struct_2(Struct_1(vec3<f32>(-1000f, -542f, -1201f), vec3<u32>(19448u, u_input.b.x, 1u), true, -229f), Struct_1(vec3<f32>(223f, 1167f, 1685f), u_input.b.wxw, false, -217f))) & firstTrailingBit(u_input.b.zw)));
    var_0 = any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec4<bool>(true, false, true, false)), any(vec4<bool>(true, false, false, false))), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false))));
    let var_1 = false;
    global0 = array<Struct_2, 28>();
    return global0[_wgslsmith_index_u32(4294967295u, 28u)];
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> u32 {
    let var_0 = !vec3<bool>(any(select(select(vec3<bool>(false, true, true), vec3<bool>(arg_1, true, arg_0.a.c), arg_0.b.c), !vec3<bool>(true, arg_0.b.c, true), select(vec3<bool>(true, false, true), vec3<bool>(arg_0.b.c, arg_0.b.c, arg_0.a.c), arg_0.b.c))), true, arg_1);
    var var_1 = ~u_input.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1213f, 201f, -1550f, arg_0.b.a.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.d, -130f, -912f, 961f))))));
    let var_3 = (u_input.b.x <= arg_0.b.b.x) | var_0.x;
    let var_4 = arg_0.a.b.x;
    return _wgslsmith_sub_u32(0u, u_input.b.x);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u >> (_wgslsmith_mod_u32(_wgslsmith_clamp_u32(arg_1.x, 76619u, _wgslsmith_div_u32(arg_1.x, 0u)), 48041u) % 32u), 27760u, func_5(func_2(), !arg_0.c)), 28u)];
    let var_1 = var_0.b.b.yz;
    var var_2 = func_2().b.a.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1627f, var_0.a.d, arg_0.a.x) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-957f))), arg_0.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1117f))))))));
    var var_4 = func_3(func_2().a, func_2().a, func_2());
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(~(-28156i >> (u_input.b.x % 32u)) > func_1(Struct_1(vec3<f32>(1150f, -919f, 187f), u_input.b.wyz, false, 521f), u_input.b.zy), any(select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), u_input.a >= 23587i)));
    var var_1 = select(!select(vec4<bool>(var_0.x, false, var_0.x, var_0.x || false), vec4<bool>(true, !var_0.x, true, false), select(select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, true), true), select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(true, true, var_0.x, true), var_0.x), !var_0.x)), !(!select(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), select(vec4<bool>(false, true, false, var_0.x), vec4<bool>(var_0.x, true, true, false), true), true)), !select(select(select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(false, true, false, var_0.x)), vec4<bool>(true, true, var_0.x, true), !vec4<bool>(var_0.x, false, false, false)), vec4<bool>(func_4(vec2<u32>(4294967295u, u_input.b.x)), any(vec4<bool>(var_0.x, var_0.x, false, false)), u_input.a >= u_input.a, all(vec4<bool>(var_0.x, true, var_0.x, true))), !var_0.x));
    let var_2 = global0[_wgslsmith_index_u32(u_input.b.x, 28u)];
    var_1 = !(!select(vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(any(vec4<bool>(false, var_2.a.c, true, var_2.b.c)), true, any(vec4<bool>(var_1.x, var_1.x, true, true)), true), vec4<bool>(any(vec3<bool>(false, var_1.x, var_1.x)), var_0.x != false, true, var_1.x)));
    var var_3 = func_2().b;
    let var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(596f, _wgslsmith_mult_u32(var_4.a.b.x, var_4.a.b.x));
}


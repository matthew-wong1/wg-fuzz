struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
    d: vec2<i32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(Struct_1(vec2<f32>(530f, -386f), vec2<i32>(i32(-2147483648), 9231i), vec3<f32>(1174f, -1503f, -748f)), 1717i, vec2<f32>(-751f, 250f), vec2<i32>(-1i, 0i), true), Struct_3(Struct_1(vec2<f32>(323f, 613f), vec2<i32>(0i, 0i), vec3<f32>(-582f, 441f, -403f)), 1i, vec2<f32>(-1000f, -722f), vec2<i32>(-34139i, 2147483647i), false), Struct_3(Struct_1(vec2<f32>(1000f, -981f), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<f32>(-496f, 800f, 1646f)), -59224i, vec2<f32>(309f, -1560f), vec2<i32>(59413i, -11227i), false), Struct_3(Struct_1(vec2<f32>(208f, -325f), vec2<i32>(15131i, 32684i), vec3<f32>(-617f, 472f, 1000f)), 7279i, vec2<f32>(842f, -2439f), vec2<i32>(-4023i, -5914i), true), Struct_3(Struct_1(vec2<f32>(654f, 883f), vec2<i32>(0i, 36489i), vec3<f32>(-431f, 1000f, -1000f)), 37899i, vec2<f32>(-304f, -149f), vec2<i32>(-1i, 1i), true), Struct_3(Struct_1(vec2<f32>(-1791f, -125f), vec2<i32>(1i, -404i), vec3<f32>(1597f, 1154f, 914f)), -19226i, vec2<f32>(-970f, 1496f), vec2<i32>(-1i, -28448i), true), Struct_3(Struct_1(vec2<f32>(-1907f, 259f), vec2<i32>(-16996i, -1i), vec3<f32>(-1884f, -1000f, -1064f)), 2147483647i, vec2<f32>(598f, 204f), vec2<i32>(i32(-2147483648), 44654i), true), Struct_3(Struct_1(vec2<f32>(-660f, -979f), vec2<i32>(26286i, -29389i), vec3<f32>(-980f, 824f, 1226f)), 2147483647i, vec2<f32>(-946f, -1647f), vec2<i32>(0i, -13325i), true), Struct_3(Struct_1(vec2<f32>(1312f, 1433f), vec2<i32>(2147483647i, -6975i), vec3<f32>(-1066f, 285f, -476f)), -22008i, vec2<f32>(2650f, 573f), vec2<i32>(-68566i, 2147483647i), false), Struct_3(Struct_1(vec2<f32>(-365f, 355f), vec2<i32>(0i, -8206i), vec3<f32>(-401f, 1529f, -240f)), -13798i, vec2<f32>(1000f, -359f), vec2<i32>(0i, -28096i), false), Struct_3(Struct_1(vec2<f32>(2083f, -933f), vec2<i32>(2147483647i, 0i), vec3<f32>(-1067f, 858f, -613f)), 23235i, vec2<f32>(1297f, 1270f), vec2<i32>(i32(-2147483648), 38556i), false), Struct_3(Struct_1(vec2<f32>(447f, -551f), vec2<i32>(1i, i32(-2147483648)), vec3<f32>(416f, -435f, -609f)), 0i, vec2<f32>(-255f, 474f), vec2<i32>(2147483647i, 1i), true), Struct_3(Struct_1(vec2<f32>(-687f, -333f), vec2<i32>(-39330i, -8971i), vec3<f32>(-1245f, -1746f, -486f)), -1i, vec2<f32>(1661f, -264f), vec2<i32>(2147483647i, i32(-2147483648)), true), Struct_3(Struct_1(vec2<f32>(1896f, -1458f), vec2<i32>(-14446i, -20271i), vec3<f32>(414f, -542f, 677f)), 1783i, vec2<f32>(673f, -1558f), vec2<i32>(14266i, 27096i), false), Struct_3(Struct_1(vec2<f32>(792f, -387f), vec2<i32>(1i, -76543i), vec3<f32>(-707f, 330f, -1523f)), -51406i, vec2<f32>(-1968f, 107f), vec2<i32>(2147483647i, i32(-2147483648)), true), Struct_3(Struct_1(vec2<f32>(-954f, -376f), vec2<i32>(-45704i, -1i), vec3<f32>(-756f, 1502f, -649f)), -2431i, vec2<f32>(-1322f, -801f), vec2<i32>(-1i, -16660i), false), Struct_3(Struct_1(vec2<f32>(957f, -1296f), vec2<i32>(0i, 1i), vec3<f32>(464f, -243f, -612f)), 1i, vec2<f32>(295f, 747f), vec2<i32>(16012i, -15057i), false), Struct_3(Struct_1(vec2<f32>(1935f, -831f), vec2<i32>(28346i, -27687i), vec3<f32>(-462f, 186f, 778f)), 15538i, vec2<f32>(1000f, 308f), vec2<i32>(2147483647i, -1i), true), Struct_3(Struct_1(vec2<f32>(-709f, -416f), vec2<i32>(2147483647i, 0i), vec3<f32>(-432f, 516f, -2538f)), 1i, vec2<f32>(-503f, 1577f), vec2<i32>(0i, -12875i), false), Struct_3(Struct_1(vec2<f32>(-1960f, 1000f), vec2<i32>(2147483647i, -22561i), vec3<f32>(-2222f, 836f, 501f)), -1i, vec2<f32>(-961f, 238f), vec2<i32>(-55426i, 47843i), false), Struct_3(Struct_1(vec2<f32>(-678f, 1029f), vec2<i32>(2147483647i, i32(-2147483648)), vec3<f32>(-758f, -212f, -286f)), 8587i, vec2<f32>(-148f, -1221f), vec2<i32>(33681i, 1i), true), Struct_3(Struct_1(vec2<f32>(-1238f, -632f), vec2<i32>(0i, -33530i), vec3<f32>(382f, 1088f, 256f)), 3120i, vec2<f32>(-179f, 1045f), vec2<i32>(2147483647i, 1i), false), Struct_3(Struct_1(vec2<f32>(288f, 556f), vec2<i32>(1i, i32(-2147483648)), vec3<f32>(-1059f, 1469f, 404f)), i32(-2147483648), vec2<f32>(248f, 1271f), vec2<i32>(58091i, -1i), true), Struct_3(Struct_1(vec2<f32>(-523f, -129f), vec2<i32>(20173i, i32(-2147483648)), vec3<f32>(774f, -360f, -532f)), 19715i, vec2<f32>(-849f, -1904f), vec2<i32>(68281i, 2147483647i), true), Struct_3(Struct_1(vec2<f32>(1388f, 228f), vec2<i32>(7982i, -13411i), vec3<f32>(-1268f, 455f, 934f)), 53409i, vec2<f32>(-109f, -697f), vec2<i32>(-32273i, 0i), true));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -190f);
    let var_1 = vec3<u32>(51147u, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 31813u, 0u, 1u), vec4<u32>(53643u, 4294967295u, u_input.c.x, u_input.c.x) | vec4<u32>(1u, u_input.a, u_input.c.x, 0u)), _wgslsmith_mod_u32(100836u, 39584u), 1u), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.c.x, 0u, 42074u), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), ~vec3<u32>(u_input.c.x, 0u, 29480u)) << (vec3<u32>(u_input.a << (0u % 32u), ~0u, u_input.c.x) % vec3<u32>(32u))), 0u);
    global0 = array<Struct_3, 25>();
    return ~_wgslsmith_mod_i32(select(_wgslsmith_mult_i32(u_input.b.x, 1i), -28776i | _wgslsmith_mult_i32(u_input.d, -1i), true), -1i);
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_1) -> vec3<u32> {
    global0 = array<Struct_3, 25>();
    let var_0 = ~_wgslsmith_add_vec4_u32(select(select(~vec4<u32>(u_input.c.x, 47828u, 45923u, 90314u), vec4<u32>(u_input.a, 0u, 0u, u_input.a) << (vec4<u32>(u_input.a, u_input.a, 96740u, 32767u) % vec4<u32>(32u)), arg_1 != arg_1), vec4<u32>(_wgslsmith_add_u32(u_input.a, 1u), u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.c.x, u_input.a)), 3161u), vec4<bool>(true, !arg_1, any(vec4<bool>(arg_1, false, true, true)), !arg_1)), vec4<u32>(4294967295u, _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a, 0u), ~4294967295u), 45129u, u_input.c.x));
    global0 = array<Struct_3, 25>();
    var var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(806f, 1000f, _wgslsmith_f_op_f32(-arg_2.c.x), 174f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1289f, arg_2.c.x, arg_2.a.x, -1397f) * vec4<f32>(arg_2.c.x, 302f, 245f, -2713f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1082f, 439f, arg_2.a.x, arg_2.c.x), vec4<f32>(-1139f, arg_2.c.x, arg_2.a.x, 536f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c.x, 547f, 1263f, -249f)) * vec4<f32>(arg_2.a.x, -1443f, -1187f, arg_2.c.x))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-455f, arg_2.a.x, -1000f, -1056f)))))))));
    return firstTrailingBit(_wgslsmith_div_vec3_u32(var_0.zyy, firstLeadingBit(var_0.zxw)));
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_3 {
    global0 = array<Struct_3, 25>();
    var var_0 = global0[_wgslsmith_index_u32(u_input.c.x, 25u)];
    let var_1 = min(_wgslsmith_add_vec3_u32(vec3<u32>(1u >> (u_input.c.x % 32u), reverseBits(u_input.a), u_input.a) & ~func_3(vec2<i32>(0i, -10666i), true, Struct_1(var_0.a.a, vec2<i32>(0i, 1i), vec3<f32>(178f, -178f, arg_1))), reverseBits(min(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.c.x, u_input.a), vec3<u32>(u_input.c.x, 1u, u_input.c.x)), vec3<u32>(u_input.a, u_input.a, u_input.c.x) ^ vec3<u32>(1u, u_input.a, 25823u)))), ~vec3<u32>(u_input.a, 7859u, ~u_input.a));
    var_0 = global0[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(u_input.c.x, abs(~var_1.x))) | _wgslsmith_sub_u32(var_1.x, ~10702u), 25u)];
    let var_2 = countOneBits(abs(vec4<i32>(min(var_0.a.b.x, u_input.e) << (var_1.x % 32u), var_0.d.x, var_0.b, _wgslsmith_add_i32(0i, var_0.b) & min(54333i, 0i))));
    return global0[_wgslsmith_index_u32(u_input.c.x, 25u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 25>();
    let var_0 = ~u_input.c;
    var var_1 = func_2(func_1(), 1160f);
    var_1 = Struct_3(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_1.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1670f, var_1.c.x)))), vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.c.x), 1012f)), vec2<i32>(abs(abs(40120i)), 1i), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(var_1.a.c, vec3<f32>(-1699f, 544f, 440f))))), ~(-46264i), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.x, _wgslsmith_f_op_f32(-var_1.c.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.c.x, 1000f)))), ~vec2<i32>(-var_1.b, 2147483647i) ^ select(vec2<i32>(var_1.d.x, 1i), ~var_1.d, vec2<bool>(all(vec4<bool>(false, false, var_1.e, true)), false)), true != var_1.e);
    var_1 = global0[_wgslsmith_index_u32(u_input.a << (min(~select(~u_input.c.x, _wgslsmith_mult_u32(var_0.x, var_0.x), all(vec4<bool>(var_1.e, var_1.e, false, var_1.e))), _wgslsmith_sub_u32(4294967295u, u_input.a)) % 32u), 25u)];
    var_1 = Struct_3(Struct_1(vec2<f32>(var_1.c.x, -982f), ~reverseBits(vec2<i32>(1i, var_1.b)) | reverseBits(-u_input.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_1.a.c)) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(596f, 747f, 728f), var_1.a.c), var_1.a.c)))), countOneBits(countOneBits(-58823i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_1.c))), var_1.c), _wgslsmith_clamp_vec2_i32(abs(func_2(10477i >> (u_input.a % 32u), -1984f).d), -_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.d.x, u_input.b.x) | vec2<i32>(3248i, 21052i), firstTrailingBit(vec2<i32>(-1246i, u_input.b.x))), -vec2<i32>(var_1.a.b.x, u_input.e) ^ vec2<i32>(21090i, 0i)), all(select(!vec2<bool>(var_1.e, var_1.e), select(!vec2<bool>(var_1.e, false), vec2<bool>(true, true), select(vec2<bool>(var_1.e, var_1.e), vec2<bool>(false, true), vec2<bool>(false, false))), false)));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec4<i32>(-1i) * -countOneBits(vec4<i32>(var_1.b, u_input.e, var_1.d.x, var_1.b))), abs(31419i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(906f, -2074f)) * _wgslsmith_f_op_vec2_f32(sign(var_1.a.c.zx))), ~(-1i));
}


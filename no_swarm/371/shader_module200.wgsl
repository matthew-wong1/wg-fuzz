struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<u32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(Struct_2(Struct_1(vec4<f32>(1157f, -1156f, -388f, 618f), false, vec4<u32>(1u, 85092u, 4294967295u, 0u), 5478i, true), Struct_1(vec4<f32>(-243f, -750f, 217f, 321f), true, vec4<u32>(4294967295u, 15368u, 1u, 1u), -1i, false)), -66599i, 1728f), Struct_3(Struct_2(Struct_1(vec4<f32>(1017f, -1000f, 198f, 999f), false, vec4<u32>(0u, 4294967295u, 0u, 36933u), -4645i, false), Struct_1(vec4<f32>(1022f, -691f, -547f, -106f), false, vec4<u32>(1u, 0u, 49055u, 19990u), 0i, true)), -1i, 1012f), Struct_3(Struct_2(Struct_1(vec4<f32>(-267f, 454f, -573f, 1899f), false, vec4<u32>(92316u, 4294967295u, 100123u, 1u), -83518i, true), Struct_1(vec4<f32>(-1749f, 1328f, 828f, 540f), false, vec4<u32>(1u, 18424u, 44464u, 0u), 2147483647i, true)), -12137i, -1511f), Struct_3(Struct_2(Struct_1(vec4<f32>(-809f, 1624f, 662f, -307f), true, vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), -36386i, false), Struct_1(vec4<f32>(1218f, 889f, -664f, 633f), false, vec4<u32>(12037u, 1u, 43633u, 58678u), i32(-2147483648), true)), -30838i, 1000f), Struct_3(Struct_2(Struct_1(vec4<f32>(-431f, -492f, -560f, -1179f), false, vec4<u32>(13652u, 7309u, 8938u, 1u), -494i, true), Struct_1(vec4<f32>(-2917f, 658f, -1258f, 1000f), false, vec4<u32>(4474u, 24712u, 27893u, 29031u), -34117i, true)), 1i, 2095f), Struct_3(Struct_2(Struct_1(vec4<f32>(-932f, 827f, -374f, -842f), false, vec4<u32>(4294967295u, 53185u, 0u, 47877u), 1i, true), Struct_1(vec4<f32>(1191f, 948f, -1696f, 443f), true, vec4<u32>(1u, 21810u, 4294967295u, 6903u), 1i, false)), 1i, 731f), Struct_3(Struct_2(Struct_1(vec4<f32>(306f, -750f, 577f, -596f), true, vec4<u32>(18266u, 75184u, 4294967295u, 133581u), -1i, true), Struct_1(vec4<f32>(580f, 763f, -686f, -506f), false, vec4<u32>(59460u, 4294967295u, 46175u, 4294967295u), -14955i, true)), 20349i, 444f), Struct_3(Struct_2(Struct_1(vec4<f32>(1927f, -764f, -808f, -1000f), true, vec4<u32>(1u, 0u, 4294967295u, 0u), i32(-2147483648), false), Struct_1(vec4<f32>(-1962f, -416f, -2309f, -259f), true, vec4<u32>(4294967295u, 19648u, 1u, 44798u), i32(-2147483648), true)), -19514i, -1259f), Struct_3(Struct_2(Struct_1(vec4<f32>(1075f, 2379f, -662f, 1349f), true, vec4<u32>(14559u, 38u, 0u, 4294967295u), 1i, true), Struct_1(vec4<f32>(1000f, -1126f, -884f, 1000f), true, vec4<u32>(5988u, 0u, 31164u, 1u), 0i, true)), 46250i, 1325f), Struct_3(Struct_2(Struct_1(vec4<f32>(-1910f, 373f, 216f, -1472f), false, vec4<u32>(1u, 0u, 1u, 1u), 10525i, true), Struct_1(vec4<f32>(740f, 2204f, 145f, 579f), true, vec4<u32>(21439u, 14262u, 35943u, 4294967295u), 2147483647i, true)), 0i, -1673f), Struct_3(Struct_2(Struct_1(vec4<f32>(-2017f, 518f, -192f, -1874f), true, vec4<u32>(4294967295u, 1u, 4294967295u, 0u), -69068i, false), Struct_1(vec4<f32>(342f, 829f, -518f, 216f), false, vec4<u32>(1033u, 1u, 0u, 45650u), 26836i, false)), 7966i, 767f), Struct_3(Struct_2(Struct_1(vec4<f32>(-1560f, -2477f, -403f, 1433f), true, vec4<u32>(12429u, 79305u, 53981u, 0u), 11184i, true), Struct_1(vec4<f32>(331f, -373f, 954f, 307f), false, vec4<u32>(0u, 11744u, 89072u, 66097u), -1i, false)), -34428i, 239f), Struct_3(Struct_2(Struct_1(vec4<f32>(640f, -1100f, 970f, -900f), true, vec4<u32>(4294967295u, 4979u, 31621u, 0u), -62202i, false), Struct_1(vec4<f32>(-1255f, 1088f, 214f, 871f), false, vec4<u32>(4294967295u, 29603u, 58948u, 4294967295u), -1i, false)), 48220i, 990f), Struct_3(Struct_2(Struct_1(vec4<f32>(1942f, -1300f, 738f, 1499f), false, vec4<u32>(0u, 12328u, 0u, 67407u), -29354i, false), Struct_1(vec4<f32>(551f, 580f, 1103f, 1305f), true, vec4<u32>(45787u, 1u, 1u, 4294967295u), -12988i, false)), 0i, 542f), Struct_3(Struct_2(Struct_1(vec4<f32>(136f, 179f, 1424f, 1323f), true, vec4<u32>(4294967295u, 46464u, 0u, 0u), 1i, false), Struct_1(vec4<f32>(396f, -800f, -1588f, -1907f), true, vec4<u32>(1u, 67487u, 4294967295u, 4294967295u), 1867i, true)), 2147483647i, 323f), Struct_3(Struct_2(Struct_1(vec4<f32>(375f, -1661f, -1000f, 1071f), false, vec4<u32>(1u, 32088u, 43512u, 1u), 44145i, true), Struct_1(vec4<f32>(472f, -1137f, -1444f, 985f), false, vec4<u32>(1u, 4294967295u, 47792u, 1u), 19323i, true)), 39677i, -903f), Struct_3(Struct_2(Struct_1(vec4<f32>(476f, 105f, 1344f, 1204f), false, vec4<u32>(0u, 1u, 1u, 8017u), -32222i, true), Struct_1(vec4<f32>(-1175f, 579f, -2770f, 604f), false, vec4<u32>(68467u, 27808u, 13520u, 25775u), i32(-2147483648), true)), 24606i, -1141f), Struct_3(Struct_2(Struct_1(vec4<f32>(292f, -870f, -846f, -354f), false, vec4<u32>(64446u, 0u, 0u, 4294967295u), -9521i, false), Struct_1(vec4<f32>(1518f, -801f, 1323f, -483f), false, vec4<u32>(4294967295u, 0u, 0u, 4294967295u), -45778i, false)), 2147483647i, 109f), Struct_3(Struct_2(Struct_1(vec4<f32>(1201f, -401f, -122f, -807f), true, vec4<u32>(35652u, 1u, 4294967295u, 0u), -68511i, false), Struct_1(vec4<f32>(623f, -1000f, 421f, -1000f), false, vec4<u32>(40375u, 34101u, 40836u, 4294967295u), 4217i, true)), i32(-2147483648), 2393f), Struct_3(Struct_2(Struct_1(vec4<f32>(197f, 1237f, 323f, 1179f), false, vec4<u32>(10599u, 7917u, 1u, 32744u), -1i, true), Struct_1(vec4<f32>(-1627f, 277f, -807f, 2883f), true, vec4<u32>(1u, 57553u, 0u, 25622u), 0i, true)), 0i, 1784f), Struct_3(Struct_2(Struct_1(vec4<f32>(1020f, -1122f, -1102f, -251f), true, vec4<u32>(77725u, 1u, 1u, 1u), 2147483647i, true), Struct_1(vec4<f32>(-612f, 495f, -2471f, 1364f), false, vec4<u32>(39437u, 1u, 20062u, 9682u), 31548i, false)), 2147483647i, -1000f), Struct_3(Struct_2(Struct_1(vec4<f32>(373f, 219f, 3231f, -1145f), true, vec4<u32>(59619u, 61799u, 1u, 4294967295u), 0i, true), Struct_1(vec4<f32>(1000f, -197f, -1000f, 2235f), true, vec4<u32>(109197u, 22502u, 4294967295u, 43801u), 1i, true)), 2147483647i, 545f), Struct_3(Struct_2(Struct_1(vec4<f32>(855f, -1000f, 2419f, 531f), false, vec4<u32>(1u, 14296u, 4294967295u, 13448u), 1i, false), Struct_1(vec4<f32>(581f, -1660f, -1000f, 533f), true, vec4<u32>(1u, 1u, 0u, 18151u), 0i, false)), 2824i, 250f));

var<private> global2: array<Struct_1, 16>;

var<private> global3: Struct_1 = Struct_1(vec4<f32>(722f, -2106f, -1728f, 374f), true, vec4<u32>(4294967295u, 56137u, 4294967295u, 4294967295u), 41584i, true);

var<private> global4: u32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_div_u32(global3.c.x, ~firstLeadingBit(firstTrailingBit(4294967295u)));
    var var_1 = arg_0.x;
    let var_2 = _wgslsmith_f_op_f32(-global3.a.x);
    let var_3 = global3.e;
    var var_4 = !select(vec4<bool>(true, global3.b, any(select(vec2<bool>(global3.e, true), vec2<bool>(false, global3.e), vec2<bool>(global3.e, global3.e))), true), vec4<bool>(true, true, true, global3.e), (~global3.d | countOneBits(arg_0.x)) > 1i);
    return Struct_2(global2[_wgslsmith_index_u32(arg_1.x, 16u)], Struct_1(_wgslsmith_f_op_vec4_f32(global3.a * _wgslsmith_f_op_vec4_f32(global3.a * _wgslsmith_f_op_vec4_f32(-global3.a))), true, _wgslsmith_div_vec4_u32(~global3.c, global3.c) >> (min(_wgslsmith_mod_vec4_u32(vec4<u32>(6243u, 0u, global3.c.x, var_0), vec4<u32>(36579u, global3.c.x, global3.c.x, arg_1.x)), ~global3.c) % vec4<u32>(32u)), -arg_0.x, select(-1i, _wgslsmith_mod_i32(-2147483647i, 1i), true) >= 2147483647i));
}

fn func_1() -> Struct_2 {
    let var_0 = vec2<f32>(-931f, _wgslsmith_f_op_f32(-880f + 1f));
    var var_1 = global3.a.zxw;
    let var_2 = countOneBits(-vec4<i32>(~reverseBits(global3.d), global3.d, u_input.a, abs(_wgslsmith_div_i32(u_input.a, 48218i))));
    let var_3 = select(!vec2<bool>(all(vec2<bool>(true, true)), any(vec2<bool>(global3.e, global3.b))), vec2<bool>(global3.e, true), 423f <= _wgslsmith_f_op_f32(ceil(global3.a.x)));
    var var_4 = ~var_2.xy;
    return func_2(select(var_2.zz, vec2<i32>(1i >> (1u % 32u), 63575i), select(!select(var_3, vec2<bool>(global3.b, true), true), !vec2<bool>(var_3.x, var_3.x), -36812i > var_4.x)), ~vec2<u32>(global3.c.x, global3.c.x));
}

fn func_3(arg_0: bool) -> Struct_1 {
    let var_0 = true;
    return func_2(countOneBits(select(select(vec2<i32>(global3.d, 1i), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, global3.d), vec2<i32>(global3.d, -2147483647i)), !vec2<bool>(true, var_0)), ~(~vec2<i32>(global3.d, u_input.b)), false)), _wgslsmith_sub_vec2_u32(~(countOneBits(global3.c.wy) & ~vec2<u32>(40061u, 64075u)), vec2<u32>(4294967295u & ~global3.c.x, ~_wgslsmith_div_u32(global3.c.x, 38862u)))).a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool, arg_3: vec3<u32>) -> vec4<u32> {
    let var_0 = 1u;
    var var_1 = arg_1.a;
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.a.x + _wgslsmith_f_op_f32(f32(-1f) * -434f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.a.x, arg_1.c))))), arg_0.b.a.xw));
    var var_3 = Struct_3(func_2(-(vec2<i32>(-1i) * -vec2<i32>(0i, 2147483647i)), arg_0.a.c.yy), -6990i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(726f * _wgslsmith_f_op_f32(-func_3(arg_1.a.a.e).a.x))));
    var_1 = Struct_2(func_1().a, func_2(select(min(-vec2<i32>(5654i, 0i), reverseBits(vec2<i32>(2147483647i, 1i))), ~vec2<i32>(16179i, -2147483647i) | _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 32345i), vec2<i32>(global3.d, 27466i)), !vec2<bool>(var_1.b.b, arg_1.a.b.b)), _wgslsmith_add_vec2_u32(vec2<u32>(reverseBits(4294967295u), global3.c.x | 1u), arg_3.zz)).b);
    return arg_1.a.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = var_0;
    let var_2 = max(global3.c, var_1.a.c);
    global2 = array<Struct_1, 16>();
    let var_3 = Struct_2(var_0.b, Struct_1(var_0.b.a, !(true & (false & var_1.b.e)), func_4(Struct_2(global2[_wgslsmith_index_u32(~var_0.a.c.x, 16u)], func_3(false)), Struct_3(var_0, 3928i, -1668f), var_1.a.b, ~(var_0.b.c.xzw >> (vec3<u32>(var_2.x, 43934u, var_1.a.c.x) % vec3<u32>(32u)))), -var_0.a.d, (var_2.x ^ reverseBits(var_0.a.c.x)) >= 4294967295u));
    var var_4 = ~1i;
    var var_5 = global3.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(-(~_wgslsmith_clamp_i32(var_0.a.d, u_input.a, select(u_input.b, global3.d, true))), -3999i, var_3.b.d);
}


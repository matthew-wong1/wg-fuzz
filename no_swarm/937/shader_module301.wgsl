struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10> = array<bool, 10>(false, false, true, false, true, true, false, true, false, false);

var<private> global1: u32;

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), 11815u, vec2<f32>(651f, -1000f)), Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), 1u, vec2<f32>(-590f, 1000f)), Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), 1u, vec2<f32>(568f, -1000f)), Struct_1(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), 24406u, vec2<f32>(-447f, 431f)));

var<private> global3: vec3<u32>;

var<private> global4: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(vec4<f32>(1227f, 210f, 849f, 1353f), 5296u, 241f, Struct_1(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), 1u, vec2<f32>(-735f, -255f)), Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), 42157u, vec2<f32>(1018f, 776f)), vec3<u32>(56010u, 4294967295u, 1u), vec3<u32>(45595u, 53340u, 1u), vec2<u32>(4294967295u, 4294967295u))), Struct_3(vec4<f32>(922f, 273f, 506f, -630f), 34310u, -1782f, Struct_1(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), 4476u, vec2<f32>(1295f, -1492f)), Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), 41799u, vec2<f32>(-1000f, 337f)), vec3<u32>(65678u, 36434u, 0u), vec3<u32>(0u, 47248u, 53564u), vec2<u32>(5953u, 0u))), Struct_3(vec4<f32>(-1000f, 276f, -1725f, 505f), 0u, 761f, Struct_1(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), 0u, vec2<f32>(1374f, 1348f)), Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), 4294967295u, vec2<f32>(1642f, 105f)), vec3<u32>(0u, 37703u, 9558u), vec3<u32>(60069u, 10991u, 0u), vec2<u32>(52422u, 23997u))), Struct_3(vec4<f32>(1509f, -915f, 495f, -1468f), 38323u, -408f, Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), 1u, vec2<f32>(1000f, 830f)), Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), 0u, vec2<f32>(-152f, -1000f)), vec3<u32>(0u, 7418u, 81851u), vec3<u32>(1u, 43003u, 1u), vec2<u32>(0u, 1u))), Struct_3(vec4<f32>(827f, -358f, 964f, 396f), 4294967295u, 1376f, Struct_1(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), 11410u, vec2<f32>(537f, 1377f)), Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), 11322u, vec2<f32>(-516f, 906f)), vec3<u32>(1u, 0u, 0u), vec3<u32>(26183u, 2965u, 79780u), vec2<u32>(1u, 53668u))), Struct_3(vec4<f32>(1000f, -151f, 1916f, 1408f), 4294967295u, 283f, Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), 44275u, vec2<f32>(-1029f, 1612f)), Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), 3430u, vec2<f32>(437f, -333f)), vec3<u32>(4294967295u, 4294967295u, 11393u), vec3<u32>(4294967295u, 35258u, 49748u), vec2<u32>(61252u, 0u))), Struct_3(vec4<f32>(1000f, 460f, 1000f, -791f), 119356u, -489f, Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), 1u, vec2<f32>(232f, 1000f)), Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), 71847u, vec2<f32>(-1000f, -1468f)), vec3<u32>(1u, 4294967295u, 88779u), vec3<u32>(3518u, 4294967295u, 52581u), vec2<u32>(1u, 1u))), Struct_3(vec4<f32>(-450f, -1000f, 912f, -556f), 98043u, 1350f, Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), 28749u, vec2<f32>(1416f, -1243f)), Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), 37163u, vec2<f32>(344f, -1080f)), vec3<u32>(4294967295u, 16394u, 32454u), vec3<u32>(38450u, 1u, 507u), vec2<u32>(4294967295u, 1u))), Struct_3(vec4<f32>(-1000f, -371f, 1000f, 1000f), 60745u, -2417f, Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), 59651u, vec2<f32>(-529f, -376f)), Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), 0u, vec2<f32>(454f, -118f)), vec3<u32>(132493u, 1u, 26615u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec2<u32>(51011u, 8207u))), Struct_3(vec4<f32>(-1000f, -1000f, 1000f, 408f), 0u, -2275f, Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), 20405u, vec2<f32>(-574f, 572f)), Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), 30050u, vec2<f32>(772f, 1708f)), vec3<u32>(19413u, 0u, 0u), vec3<u32>(22540u, 10056u, 1u), vec2<u32>(27033u, 32351u))), Struct_3(vec4<f32>(813f, 518f, 1149f, 486f), 3445u, -962f, Struct_1(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), 1u, vec2<f32>(3003f, 1105f)), Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), 56503u, vec2<f32>(1253f, -496f)), vec3<u32>(58424u, 8257u, 4294967295u), vec3<u32>(50412u, 0u, 63785u), vec2<u32>(12299u, 4294967295u))), Struct_3(vec4<f32>(823f, 896f, 290f, -233f), 63363u, 494f, Struct_1(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), 0u, vec2<f32>(-2248f, -141f)), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), 11992u, vec2<f32>(105f, -835f)), vec3<u32>(8984u, 4294967295u, 1u), vec3<u32>(1214u, 5218u, 17998u), vec2<u32>(32457u, 0u))), Struct_3(vec4<f32>(-158f, -125f, -1003f, -142f), 52619u, -827f, Struct_1(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), 1u, vec2<f32>(-1863f, -1195f)), Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), 31920u, vec2<f32>(1434f, -280f)), vec3<u32>(1658u, 1u, 4294967295u), vec3<u32>(17968u, 21463u, 68850u), vec2<u32>(1u, 4294967295u))), Struct_3(vec4<f32>(1444f, 1022f, -522f, -1719f), 4294967295u, -910f, Struct_1(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), 84842u, vec2<f32>(-743f, 1000f)), Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), 56336u, vec2<f32>(669f, -1521f)), vec3<u32>(0u, 11616u, 1u), vec3<u32>(1u, 15020u, 8406u), vec2<u32>(0u, 1u))), Struct_3(vec4<f32>(-190f, 933f, 834f, -1762f), 28901u, -1688f, Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), 4294967295u, vec2<f32>(-348f, 929f)), Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), 1u, vec2<f32>(194f, 1674f)), vec3<u32>(0u, 0u, 1u), vec3<u32>(36201u, 0u, 0u), vec2<u32>(76990u, 15173u))), Struct_3(vec4<f32>(1534f, -967f, 1352f, 1000f), 50110u, 829f, Struct_1(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), 57511u, vec2<f32>(-283f, 286f)), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), 0u, vec2<f32>(485f, 1489f)), vec3<u32>(15829u, 1u, 1u), vec3<u32>(31884u, 4294967295u, 79928u), vec2<u32>(4294967295u, 97330u))), Struct_3(vec4<f32>(854f, 442f, -533f, 591f), 2281u, 1000f, Struct_1(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), 1u, vec2<f32>(-136f, 1709f)), Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), 78053u, vec2<f32>(2803f, 1525f)), vec3<u32>(1u, 43620u, 58791u), vec3<u32>(23305u, 14483u, 54297u), vec2<u32>(65406u, 1u))), Struct_3(vec4<f32>(1242f, 1932f, 788f, -894f), 2160u, -2169f, Struct_1(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), 83464u, vec2<f32>(1244f, 329f)), Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), 79243u, vec2<f32>(975f, 1459f)), vec3<u32>(18053u, 20073u, 1u), vec3<u32>(1u, 0u, 55410u), vec2<u32>(33131u, 53376u))), Struct_3(vec4<f32>(1226f, 619f, -1017f, -508f), 71812u, -1194f, Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), 17930u, vec2<f32>(596f, 164f)), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), 17458u, vec2<f32>(-1238f, 1559f)), vec3<u32>(4316u, 1u, 4294967295u), vec3<u32>(16864u, 4561u, 4294967295u), vec2<u32>(21172u, 1u))), Struct_3(vec4<f32>(500f, -717f, 354f, -221f), 0u, 1424f, Struct_1(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), 4294967295u, vec2<f32>(995f, -1501f)), Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), 0u, vec2<f32>(-2899f, -1115f)), vec3<u32>(4294967295u, 34915u, 0u), vec3<u32>(1u, 4294967295u, 113245u), vec2<u32>(16742u, 4294967295u))), Struct_3(vec4<f32>(-208f, 926f, -2356f, 757f), 14330u, -617f, Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), 49558u, vec2<f32>(1000f, 1799f)), Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), 9934u, vec2<f32>(-256f, 147f)), vec3<u32>(39247u, 4294967295u, 18630u), vec3<u32>(1u, 0u, 4294967295u), vec2<u32>(4294967295u, 0u))), Struct_3(vec4<f32>(830f, 2739f, -431f, -544f), 1u, 1000f, Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), 32895u, vec2<f32>(-182f, -426f)), Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), 4294967295u, vec2<f32>(-856f, -257f)), vec3<u32>(0u, 0u, 1u), vec3<u32>(1u, 4294967295u, 0u), vec2<u32>(0u, 68699u))), Struct_3(vec4<f32>(-980f, 826f, -615f, -1000f), 22072u, 3042f, Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), 1226u, vec2<f32>(1433f, 608f)), Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), 0u, vec2<f32>(1000f, 1461f)), vec3<u32>(4294967295u, 1u, 14283u), vec3<u32>(7104u, 59341u, 1u), vec2<u32>(1u, 4294967295u))), Struct_3(vec4<f32>(669f, 106f, 199f, 636f), 0u, 390f, Struct_1(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), 11395u, vec2<f32>(586f, 1265f)), Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), 4294967295u, vec2<f32>(-684f, -2194f)), vec3<u32>(27384u, 4294967295u, 1u), vec3<u32>(1u, 67786u, 4294967295u), vec2<u32>(4294967295u, 16506u))), Struct_3(vec4<f32>(-1137f, 621f, -1205f, -302f), 1u, -811f, Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), 4294967295u, vec2<f32>(720f, -1467f)), Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), 51044u, vec2<f32>(-410f, 664f)), vec3<u32>(43032u, 44759u, 18642u), vec3<u32>(49241u, 65823u, 0u), vec2<u32>(66983u, 1u))), Struct_3(vec4<f32>(221f, -1000f, -1099f, -399f), 7618u, 2023f, Struct_1(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), 6563u, vec2<f32>(-1721f, -1356f)), Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), 1u, vec2<f32>(-670f, -1494f)), vec3<u32>(0u, 0u, 15395u), vec3<u32>(34804u, 0u, 1u), vec2<u32>(20500u, 33890u))));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    var var_0 = global0[_wgslsmith_index_u32(59282u, 10u)] != global0[_wgslsmith_index_u32(u_input.b.x, 10u)];
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(_wgslsmith_mult_u32(~global3.x, 56452u)) & 34242u, u_input.c), 4u)];
    global2 = array<Struct_1, 4>();
    let var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(-41304i, countOneBits(0i), -(~(i32(-1i) * -2147483647i)), 0i >> (u_input.b.x % 32u)), reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 2147483647i, -9941i, 15470i) >> ((vec4<u32>(u_input.a.x, global3.x, var_1.c, u_input.b.x) & vec4<u32>(45851u, 0u, global3.x, global3.x)) % vec4<u32>(32u)), abs(countOneBits(vec4<i32>(-18909i, -752i, -84602i, -1i))))));
    var_0 = global0[_wgslsmith_index_u32(var_1.c, 10u)];
    return global0[_wgslsmith_index_u32(reverseBits(19347u), 10u)];
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<u32>(1u, 1u, u_input.a.x);
    var var_1 = 1183f;
    var var_2 = global0[_wgslsmith_index_u32(firstTrailingBit(1650u | var_0.x), 10u)] || func_3();
    var_2 = global0[_wgslsmith_index_u32(firstTrailingBit(124137u), 10u)];
    let var_3 = 59448u;
    return Struct_1(!vec4<bool>(any(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], false)), global0[_wgslsmith_index_u32(firstLeadingBit(u_input.c), 10u)], !(!global0[_wgslsmith_index_u32(var_3, 10u)]), true), vec4<bool>(func_3(), all(select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], global0[_wgslsmith_index_u32(global3.x, 10u)], false, true), vec4<bool>(global0[_wgslsmith_index_u32(global3.x, 10u)], global0[_wgslsmith_index_u32(u_input.c, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(u_input.b.x, 10u)]), !vec4<bool>(global0[_wgslsmith_index_u32(global3.x, 10u)], true, true, true))), !(true || global0[_wgslsmith_index_u32(global3.x, 10u)]) & func_3(), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(7261u, var_3), 10u)]), firstTrailingBit(var_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1279f, -2655f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-811f, 828f), vec2<f32>(-1139f, -826f), false))))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: Struct_2) -> i32 {
    var var_0 = Struct_2(func_2(), abs(arg_2.b) & vec3<u32>(~abs(6336u), 1472u, 1u), arg_2.b, ~firstLeadingBit(arg_2.c.yy));
    let var_1 = func_2();
    let var_2 = vec3<u32>(~(_wgslsmith_div_u32(var_0.b.x, ~34665u) | firstLeadingBit(4294967295u ^ global3.x)), 1u, 4294967295u);
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1000f, arg_2.a.d.x, arg_2.a.a.x)))))), 719f);
    return 1i;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    var var_0 = vec4<bool>(arg_2.a.b.x, all(arg_2.a.a.yx), arg_3.a.a.x, ~arg_2.a.c == ~func_2().c);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -359f), arg_3.a.d.x, _wgslsmith_f_op_f32(-1697f - arg_3.a.d.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(461f, -133f, -377f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.d.x, 190f, arg_2.a.d.x))))));
    var var_2 = min(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(25870i, -13974i, arg_0) ^ arg_0, _wgslsmith_add_i32(i32(-1i) * -8876i, arg_0), _wgslsmith_mult_i32(_wgslsmith_div_i32(arg_0, arg_0), 2792i), ~arg_0), vec4<i32>(-40345i, arg_0, -_wgslsmith_div_i32(1i, arg_0), ~arg_0)), firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 0i, -2147483647i, arg_0), vec4<i32>(1i, 2147483647i, -26945i, -2147483647i) >> (vec4<u32>(arg_3.a.c, 4294967295u, 4294967295u, u_input.a.x) % vec4<u32>(32u))) ^ vec4<i32>(arg_0 ^ -18136i, arg_0, _wgslsmith_mod_i32(arg_0, 1i), -arg_0)));
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-436f, 305f, 946f, arg_2.a.d.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, arg_3.a.d.x, 2072f, arg_2.a.d.x))))), ~(~global3.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-658f, 474f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))))), Struct_1(arg_2.a.a, func_2().a, 73183u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_2.a.d))))), Struct_2(arg_3.a, arg_3.c, vec3<u32>(global3.x, (arg_2.a.c ^ arg_2.d.x) | 14041u, firstLeadingBit(1u)), ~vec2<u32>(max(arg_2.c.x, arg_3.a.c), u_input.c)));
    return ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~arg_2.b, vec3<u32>(56328u, var_3.d.c, u_input.c) & ~arg_2.c), ~0u, abs(~0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1087f, 947f, -583f) * vec3<f32>(626f, -774f, -1005f)), vec3<f32>(1306f, -507f, -514f)))));
    let var_1 = u_input.b.xx;
    global0 = array<bool, 10>();
    global1 = ~(~func_4(func_1(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 431f, -1194f), vec3<f32>(var_0.x, 840f, var_0.x)), vec2<bool>(global0[_wgslsmith_index_u32(58263u, 10u)], global0[_wgslsmith_index_u32(2467u, 10u)]), Struct_2(Struct_1(vec4<bool>(false, global0[_wgslsmith_index_u32(111509u, 10u)], global0[_wgslsmith_index_u32(1u, 10u)], true), vec4<bool>(global0[_wgslsmith_index_u32(var_1.x, 10u)], global0[_wgslsmith_index_u32(u_input.b.x, 10u)], true, global0[_wgslsmith_index_u32(var_1.x, 10u)]), 32765u, var_0.zz), vec3<u32>(u_input.c, 11086u, u_input.c), vec3<u32>(61435u, var_1.x, var_1.x), vec2<u32>(4294967295u, 4294967295u))), true, Struct_2(func_2(), ~vec3<u32>(u_input.c, global3.x, 0u), u_input.a, global3.yx), Struct_2(Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(0u, 10u)], false, global0[_wgslsmith_index_u32(var_1.x, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)]), vec4<bool>(true, true, true, false), u_input.b.x, var_0.zz), u_input.a ^ u_input.b, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 14518u, 4294967295u), vec3<u32>(4294967295u, 1u, 68306u)), abs(global3.xy))));
    let var_2 = Struct_2(func_2(), abs(~max(reverseBits(u_input.b), vec3<u32>(1u, global3.x, global3.x))), select(~(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 56600u, global3.x), vec3<u32>(49014u, u_input.b.x, 4294967295u))), _wgslsmith_div_vec3_u32(~vec3<u32>(global3.x, var_1.x, 4294967295u), ~vec3<u32>(var_1.x, 5877u, global3.x)), select(!vec3<bool>(global0[_wgslsmith_index_u32(78949u, 10u)], global0[_wgslsmith_index_u32(2637u, 10u)], false), !(!vec3<bool>(true, global0[_wgslsmith_index_u32(5122u, 10u)], global0[_wgslsmith_index_u32(global3.x, 10u)])), true)), ~countOneBits(vec2<u32>(52230u, ~var_1.x)));
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) + _wgslsmith_f_op_f32(var_0.x - -1351f)));
}


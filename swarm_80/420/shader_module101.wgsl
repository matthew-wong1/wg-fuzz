struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: u32,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(48713u, 15647u, 0u, 26609u), vec4<u32>(0u, 16424u, 28366u, 55380u), vec4<u32>(0u, 46597u, 28266u, 84208u), vec4<u32>(9112u, 4739u, 4294967295u, 36035u), vec4<u32>(4294967295u, 63421u, 0u, 1u), vec4<u32>(4294967295u, 1u, 23026u, 0u), vec4<u32>(0u, 1u, 50176u, 63988u), vec4<u32>(41947u, 30479u, 15258u, 0u), vec4<u32>(14544u, 46947u, 0u, 17978u), vec4<u32>(0u, 18970u, 22846u, 12797u), vec4<u32>(40252u, 1u, 45850u, 1u), vec4<u32>(17186u, 11668u, 4294967295u, 17197u), vec4<u32>(903u, 1u, 1u, 4294967295u), vec4<u32>(0u, 0u, 0u, 1u), vec4<u32>(1u, 0u, 4891u, 76609u), vec4<u32>(75059u, 50342u, 4294967295u, 0u), vec4<u32>(1u, 94100u, 44221u, 4294967295u), vec4<u32>(4294967295u, 11275u, 92455u, 0u), vec4<u32>(0u, 0u, 4294967295u, 30433u), vec4<u32>(58647u, 0u, 53385u, 1u));

var<private> global1: Struct_3;

var<private> global2: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(4294967295u, vec3<i32>(7057i, 44537i, 1i), Struct_1(4294967295u, vec2<bool>(false, false), 51159u, -1i, vec4<f32>(709f, 1069f, 187f, 103f)), Struct_2(Struct_1(4294967295u, vec2<bool>(false, false), 56385u, -30605i, vec4<f32>(213f, 1000f, -116f, 2006f)), vec2<i32>(1i, 42614i), Struct_1(19772u, vec2<bool>(true, true), 1u, i32(-2147483648), vec4<f32>(-197f, 550f, 223f, 757f)), 1u, Struct_1(4294967295u, vec2<bool>(false, true), 49867u, -41080i, vec4<f32>(-119f, -1256f, -328f, 1112f)))), Struct_3(3159u, vec3<i32>(8184i, 32539i, 1i), Struct_1(73654u, vec2<bool>(false, false), 19535u, 28323i, vec4<f32>(-554f, 592f, 166f, -539f)), Struct_2(Struct_1(4294967295u, vec2<bool>(true, true), 0u, 2147483647i, vec4<f32>(-412f, 172f, 494f, 518f)), vec2<i32>(56666i, 12109i), Struct_1(14022u, vec2<bool>(true, true), 1u, 2147483647i, vec4<f32>(-767f, -1000f, -358f, 1954f)), 4294967295u, Struct_1(58305u, vec2<bool>(false, false), 1u, -14651i, vec4<f32>(280f, -1394f, -2091f, -449f)))), Struct_3(3498u, vec3<i32>(i32(-2147483648), -5791i, 9242i), Struct_1(45406u, vec2<bool>(true, false), 16742u, 2147483647i, vec4<f32>(-1000f, -349f, -316f, 597f)), Struct_2(Struct_1(1u, vec2<bool>(true, true), 4294967295u, i32(-2147483648), vec4<f32>(1829f, -197f, 1248f, 1000f)), vec2<i32>(-24378i, -1797i), Struct_1(21054u, vec2<bool>(false, true), 12937u, 0i, vec4<f32>(497f, 2617f, -2336f, 622f)), 52020u, Struct_1(4294967295u, vec2<bool>(true, false), 4294967295u, 1i, vec4<f32>(744f, 379f, 1750f, -304f)))), Struct_3(1u, vec3<i32>(0i, 0i, -9044i), Struct_1(1u, vec2<bool>(false, false), 42924u, 15238i, vec4<f32>(-895f, 2196f, -523f, -1045f)), Struct_2(Struct_1(22028u, vec2<bool>(false, false), 4294967295u, -69228i, vec4<f32>(-570f, -566f, 843f, -168f)), vec2<i32>(-25715i, -5851i), Struct_1(32773u, vec2<bool>(false, true), 0u, 1i, vec4<f32>(-435f, 736f, -403f, 1626f)), 45356u, Struct_1(0u, vec2<bool>(false, false), 16210u, -30078i, vec4<f32>(-1230f, -884f, -212f, -103f)))), Struct_3(2405u, vec3<i32>(-1i, 32121i, -38584i), Struct_1(4294967295u, vec2<bool>(true, true), 1u, 2772i, vec4<f32>(467f, 852f, 1706f, 707f)), Struct_2(Struct_1(4294967295u, vec2<bool>(false, false), 1u, 17410i, vec4<f32>(853f, 1000f, 1156f, -139f)), vec2<i32>(33996i, 1i), Struct_1(4162u, vec2<bool>(false, false), 61294u, -57986i, vec4<f32>(-2161f, 2092f, -904f, -779f)), 1u, Struct_1(10371u, vec2<bool>(true, false), 7382u, 0i, vec4<f32>(260f, -862f, -115f, 747f)))), Struct_3(66723u, vec3<i32>(43503i, 2147483647i, 17826i), Struct_1(1u, vec2<bool>(true, true), 4294967295u, 2147483647i, vec4<f32>(523f, 461f, -247f, -156f)), Struct_2(Struct_1(0u, vec2<bool>(true, true), 4294967295u, 2147483647i, vec4<f32>(826f, 751f, 835f, 581f)), vec2<i32>(32287i, i32(-2147483648)), Struct_1(45845u, vec2<bool>(false, false), 30542u, -1i, vec4<f32>(-709f, 1718f, 1102f, -1000f)), 100545u, Struct_1(0u, vec2<bool>(false, false), 13807u, 50408i, vec4<f32>(-1536f, -226f, -925f, 274f)))), Struct_3(9381u, vec3<i32>(-1627i, -1i, -7580i), Struct_1(4294967295u, vec2<bool>(false, true), 0u, 2147483647i, vec4<f32>(-1000f, -1000f, 907f, -527f)), Struct_2(Struct_1(0u, vec2<bool>(false, true), 0u, 44184i, vec4<f32>(-1233f, -1174f, -1037f, -1000f)), vec2<i32>(1i, 233i), Struct_1(0u, vec2<bool>(true, true), 25629u, -44623i, vec4<f32>(1674f, 703f, 1000f, -1000f)), 4294967295u, Struct_1(36497u, vec2<bool>(true, false), 47117u, 18118i, vec4<f32>(1000f, 1937f, 1209f, 914f)))), Struct_3(12479u, vec3<i32>(15078i, -3750i, 1038i), Struct_1(4294967295u, vec2<bool>(false, false), 0u, 2428i, vec4<f32>(-760f, 1442f, 952f, 881f)), Struct_2(Struct_1(101822u, vec2<bool>(false, false), 101697u, 0i, vec4<f32>(436f, 679f, -212f, 983f)), vec2<i32>(35528i, 8048i), Struct_1(1u, vec2<bool>(true, false), 4294967295u, 2147483647i, vec4<f32>(-278f, 1000f, 539f, 1367f)), 0u, Struct_1(1u, vec2<bool>(false, false), 4294967295u, -59099i, vec4<f32>(2187f, 607f, 580f, -813f)))), Struct_3(1u, vec3<i32>(-8857i, -37397i, -20274i), Struct_1(6839u, vec2<bool>(true, false), 0u, -8117i, vec4<f32>(-992f, 1305f, -533f, -476f)), Struct_2(Struct_1(56499u, vec2<bool>(false, true), 1u, 22963i, vec4<f32>(691f, -620f, 930f, -1000f)), vec2<i32>(0i, -31749i), Struct_1(0u, vec2<bool>(false, true), 0u, i32(-2147483648), vec4<f32>(1005f, -1852f, -3078f, -510f)), 1u, Struct_1(4294967295u, vec2<bool>(true, false), 0u, 1i, vec4<f32>(1000f, 486f, 240f, -1000f)))), Struct_3(1u, vec3<i32>(0i, -1i, i32(-2147483648)), Struct_1(4294967295u, vec2<bool>(true, true), 56984u, 4777i, vec4<f32>(150f, -1428f, -805f, 887f)), Struct_2(Struct_1(81179u, vec2<bool>(true, false), 95742u, 21890i, vec4<f32>(-576f, 1000f, -194f, 879f)), vec2<i32>(0i, -7664i), Struct_1(19494u, vec2<bool>(true, false), 14984u, -1i, vec4<f32>(-668f, 1508f, 1000f, -2130f)), 1u, Struct_1(10470u, vec2<bool>(false, true), 27572u, 0i, vec4<f32>(-1000f, -627f, -523f, -1567f)))), Struct_3(1u, vec3<i32>(i32(-2147483648), 16640i, 16117i), Struct_1(0u, vec2<bool>(false, false), 0u, -44071i, vec4<f32>(496f, 1370f, 508f, -924f)), Struct_2(Struct_1(49364u, vec2<bool>(true, false), 0u, 1i, vec4<f32>(279f, 1023f, 2166f, -3447f)), vec2<i32>(-49725i, -37869i), Struct_1(36280u, vec2<bool>(false, true), 1940u, 1i, vec4<f32>(962f, -817f, 167f, -981f)), 6818u, Struct_1(79206u, vec2<bool>(false, true), 4294967295u, -14677i, vec4<f32>(-1221f, -835f, -596f, -745f)))), Struct_3(4294967295u, vec3<i32>(-8154i, -1i, 1i), Struct_1(0u, vec2<bool>(true, true), 22324u, 1i, vec4<f32>(1060f, -1413f, 227f, 2159f)), Struct_2(Struct_1(51887u, vec2<bool>(true, false), 1u, 32224i, vec4<f32>(483f, -396f, 1252f, 889f)), vec2<i32>(1i, 0i), Struct_1(0u, vec2<bool>(true, false), 0u, 4759i, vec4<f32>(1091f, -563f, 335f, -1245f)), 1u, Struct_1(1u, vec2<bool>(false, true), 17509u, -12537i, vec4<f32>(188f, 623f, 510f, -702f)))), Struct_3(4294967295u, vec3<i32>(79832i, -25121i, -26382i), Struct_1(14867u, vec2<bool>(false, false), 0u, 1i, vec4<f32>(552f, 905f, 105f, -1539f)), Struct_2(Struct_1(4294967295u, vec2<bool>(false, false), 27047u, 1i, vec4<f32>(561f, 1000f, -260f, 1000f)), vec2<i32>(1i, -13408i), Struct_1(0u, vec2<bool>(true, true), 1u, 19001i, vec4<f32>(-384f, -887f, 583f, 1451f)), 0u, Struct_1(10826u, vec2<bool>(true, true), 28687u, 13516i, vec4<f32>(-558f, 729f, -1016f, -767f)))), Struct_3(4294967295u, vec3<i32>(-47527i, 271i, 0i), Struct_1(0u, vec2<bool>(true, true), 62483u, 43389i, vec4<f32>(-206f, 168f, 1456f, 1269f)), Struct_2(Struct_1(1u, vec2<bool>(false, false), 22913u, -1i, vec4<f32>(1524f, 699f, -944f, 434f)), vec2<i32>(i32(-2147483648), 2147483647i), Struct_1(4294967295u, vec2<bool>(false, false), 0u, -35761i, vec4<f32>(474f, 1500f, 1000f, 1578f)), 4294967295u, Struct_1(0u, vec2<bool>(true, false), 0u, 27985i, vec4<f32>(662f, -451f, 1234f, -1251f)))), Struct_3(28269u, vec3<i32>(2147483647i, -1i, 0i), Struct_1(4294967295u, vec2<bool>(true, false), 1u, -56041i, vec4<f32>(599f, -941f, -1763f, -982f)), Struct_2(Struct_1(1u, vec2<bool>(true, true), 34616u, 2248i, vec4<f32>(1000f, 1163f, -692f, -276f)), vec2<i32>(i32(-2147483648), 1i), Struct_1(1u, vec2<bool>(true, false), 0u, 0i, vec4<f32>(-1000f, -555f, 2639f, 1000f)), 4294967295u, Struct_1(29557u, vec2<bool>(false, false), 4294967295u, -13340i, vec4<f32>(-620f, -474f, -1118f, 1124f)))));

var<private> global3: vec3<bool>;

var<private> global4: vec2<bool>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: u32) -> vec4<bool> {
    let var_0 = !select(!select(select(vec4<bool>(global3.x, false, arg_2.e.b.x, arg_0.b.x), vec4<bool>(false, arg_2.e.b.x, true, true), vec4<bool>(global3.x, false, global4.x, arg_2.c.b.x)), vec4<bool>(global1.d.c.b.x, arg_2.e.b.x, false, false), select(vec4<bool>(true, arg_0.b.x, false, arg_2.a.b.x), vec4<bool>(global3.x, global4.x, false, true), vec4<bool>(true, false, true, global4.x))), vec4<bool>(~arg_3 >= ~arg_2.a.a, any(vec2<bool>(false, true)) & true, true, global4.x), all(vec4<bool>(arg_2.e.b.x, 4294967295u < arg_3, false, true)));
    var var_1 = arg_2;
    global4 = select(select(select(global1.c.b, global1.d.c.b, !(!arg_0.b)), vec2<bool>(true, var_1.c.a > ~4294967295u), any(vec2<bool>(any(var_0.zw), var_0.x && var_1.c.b.x))), var_0.zy, any(var_0.wzx));
    let var_2 = max(~((vec3<u32>(1u, 0u, 0u) & min(vec3<u32>(11191u, arg_2.d, global1.c.c), vec3<u32>(50901u, global1.a, arg_0.c))) & ~(vec3<u32>(arg_2.a.c, arg_0.a, 38012u) | vec3<u32>(arg_2.a.a, 35748u, 12254u))), vec3<u32>(~(global1.d.e.c >> (countOneBits(arg_3) % 32u)), firstTrailingBit(12648u), _wgslsmith_add_u32(global1.c.a, ~abs(1u))));
    global0 = array<vec4<u32>, 20>();
    return !(!(!var_0));
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = global2[_wgslsmith_index_u32(~global1.d.c.c, 15u)];
    var var_1 = var_0.d;
    global1 = global2[_wgslsmith_index_u32(global1.d.c.a, 15u)];
    let var_2 = Struct_2(Struct_1(var_0.c.c, vec2<bool>(true, any(func_3(Struct_1(var_1.e.a, vec2<bool>(true, var_1.e.b.x), 5694u, 15652i, global1.c.e), var_0.d.e.e.wyy, Struct_2(Struct_1(47320u, var_0.c.b, var_0.c.c, -43221i, global1.d.c.e), global1.d.b, Struct_1(var_1.c.a, var_0.c.b, var_0.c.a, -12826i, vec4<f32>(var_0.c.e.x, global1.c.e.x, var_0.d.e.e.x, 1469f)), 28656u, Struct_1(4693u, var_1.e.b, 61410u, arg_0, var_1.e.e)), global1.d.c.a))), _wgslsmith_add_u32(global1.d.d, global1.d.e.a) >> (4294967295u % 32u), _wgslsmith_dot_vec4_i32(~reverseBits(vec4<i32>(-2147483647i, 2147483647i, var_1.a.d, -1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(1682i, 0i, -32887i, var_1.e.d), abs(vec4<i32>(-1i, 1445i, var_1.a.d, -49723i)))), var_1.c.e), u_input.a, var_0.c, 1u << (~abs(var_1.c.c) % 32u), var_0.c);
    global3 = !(!vec3<bool>(!(var_0.c.a == 4294967295u), true, !global4.x));
    return var_0.c.b.x;
}

fn func_1() -> bool {
    var var_0 = false;
    global3 = vec3<bool>(func_2(u_input.a.x), !(!(1000f > _wgslsmith_f_op_f32(trunc(-1362f)))), _wgslsmith_div_i32(abs(-2147483647i), firstLeadingBit(1i)) == (_wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, global1.d.e.d, 3325i, u_input.a.x), vec4<i32>(2147483647i, 2147483647i, u_input.a.x, -16043i) >> (vec4<u32>(global1.a, global1.a, 4294967295u, global1.d.d) % vec4<u32>(32u))) | -64925i));
    global3 = func_3(global1.c, global1.c.e.yyy, Struct_2(Struct_1(reverseBits(firstTrailingBit(global1.d.e.a)), !global1.c.b, ~reverseBits(23465u), global1.c.d, vec4<f32>(global1.d.c.e.x, global1.d.c.e.x, _wgslsmith_div_f32(global1.c.e.x, global1.d.e.e.x), global1.c.e.x)), u_input.a, Struct_1(_wgslsmith_sub_u32(select(19504u, 0u, global4.x), ~3118u), vec2<bool>(global3.x, true), 1u >> (min(global1.c.a, global1.c.c) % 32u), max(select(u_input.a.x, global1.d.e.d, false), ~(-1i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(global1.d.e.e, vec4<f32>(global1.c.e.x, -486f, 1433f, global1.d.c.e.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d.c.e.x, global1.d.c.e.x, -622f, 1058f)))), 4294967295u, Struct_1(_wgslsmith_mult_u32(global1.d.e.c, global1.d.e.a), vec2<bool>(global1.d.e.b.x, true), 0u, (global1.b.x << (global1.a % 32u)) | (u_input.a.x >> (global1.d.c.c % 32u)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.e.e.x, global1.c.e.x, 1000f, 567f) - vec4<f32>(global1.c.e.x, global1.d.c.e.x, 352f, -2001f)))))), firstTrailingBit(global1.d.c.c)).yxy;
    global0 = array<vec4<u32>, 20>();
    var var_1 = countOneBits(max(_wgslsmith_mult_vec3_u32(~(vec3<u32>(global1.d.a.a, 6038u, 1u) | vec3<u32>(20731u, 4294967295u, global1.c.a)), vec3<u32>(_wgslsmith_mult_u32(0u, 4294967295u), 0u, global1.c.c)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(86072u, 1u, 14118u), vec3<u32>(4294967295u, global1.d.d, 0u)), vec3<u32>(global1.d.a.a, 19472u, 1u) & vec3<u32>(1u, 4294967295u, global1.d.c.a), vec3<u32>(0u, global1.a, 0u)) ^ _wgslsmith_mod_vec3_u32(min(vec3<u32>(global1.c.c, global1.d.e.a, global1.a), vec3<u32>(global1.c.a, global1.d.a.a, 1u)), vec3<u32>(global1.a, global1.d.c.c, 75628u))));
    return global1.d.c.b.x;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_3) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_add_u32(global1.c.c, _wgslsmith_div_u32(~8531u, arg_1.a ^ arg_1.a)) | abs(0u), select(vec2<bool>(false, arg_1.c.b.x), arg_1.c.b, arg_2.d.c.b), ~(~21115u), _wgslsmith_mod_i32(-1i, -arg_1.d.c.d), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.d.c.e.x, global1.d.a.e.x, arg_2.c.b.x)) - _wgslsmith_f_op_f32(sign(-618f))), _wgslsmith_f_op_f32(-arg_1.d.a.e.x), -701f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.c.e.x) * global1.c.e.x)), arg_1.c.e)));
    global3 = !func_3(global1.d.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.c.e.wwz * var_0.e.zyw) - _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 460f, arg_1.c.e.x), vec3<f32>(arg_1.d.a.e.x, var_0.e.x, -140f))), vec3<f32>(-942f, _wgslsmith_f_op_f32(-arg_1.d.e.e.x), _wgslsmith_f_op_f32(f32(-1f) * -579f))), arg_1.d, _wgslsmith_mod_u32(arg_2.c.c, _wgslsmith_add_u32(0u, var_0.a))).zxz;
    var var_1 = true;
    global2 = array<Struct_3, 15>();
    global3 = select(select(vec3<bool>(any(arg_2.c.b), true, true), select(!(!vec3<bool>(global4.x, false, false)), func_3(arg_2.d.c, vec3<f32>(arg_1.d.a.e.x, 997f, var_0.e.x), Struct_2(Struct_1(global1.a, arg_2.d.e.b, arg_1.a, global1.b.x, vec4<f32>(var_0.e.x, arg_1.c.e.x, 138f, -126f)), vec2<i32>(u_input.a.x, global1.c.d), Struct_1(arg_2.a, global3.xz, 2881u, global1.b.x, global1.c.e), 4294967295u, arg_1.c), ~45604u).wzy, select(!vec3<bool>(global1.c.b.x, arg_1.c.b.x, global4.x), !vec3<bool>(arg_2.d.c.b.x, arg_0.x, arg_1.d.a.b.x), vec3<bool>(true, false, global4.x))), vec3<bool>(true, true, true)), vec3<bool>(true, all(!arg_2.c.b), (246f <= _wgslsmith_f_op_f32(max(-610f, global1.c.e.x))) | any(vec3<bool>(global3.x, true, global1.c.b.x))), true);
    return global0[_wgslsmith_index_u32(arg_2.c.c, 20u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(global1.d.c.a, abs(global1.c.c), reverseBits(max(abs(global1.c.c), ~13748u)), 0u);
    global3 = !(!select(select(!vec3<bool>(global3.x, true, global1.c.b.x), !vec3<bool>(global1.d.c.b.x, global4.x, false), !global4.x), !(!vec3<bool>(false, true, global3.x)), select(vec3<bool>(global1.d.a.b.x, global1.c.b.x, global3.x), !vec3<bool>(global3.x, false, global3.x), all(vec4<bool>(false, true, false, false)))));
    var var_1 = func_4(select(global3.xy, global1.d.c.b, func_1()), global2[_wgslsmith_index_u32(var_0.x, 15u)], Struct_3(~var_0.x, global1.b, Struct_1(var_0.x, !select(global3.yz, vec2<bool>(global4.x, true), global1.d.a.b), _wgslsmith_clamp_u32(var_0.x, 786u, 22602u), -2147483647i, global1.d.a.e), Struct_2(Struct_1(0u, vec2<bool>(true, global3.x), var_0.x << (var_0.x % 32u), -global1.c.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.a.e.x, 113f, -1125f, -1077f) + global1.d.c.e)), global1.d.b, global1.d.c, _wgslsmith_clamp_u32(var_0.x & 0u, ~122246u, var_0.x), Struct_1(~1u, select(global3.xz, vec2<bool>(true, false), global3.yx), 41052u, _wgslsmith_mult_i32(0i, 2147483647i), _wgslsmith_f_op_vec4_f32(-global1.c.e)))));
    let var_2 = func_3(global1.c, vec3<f32>(global1.c.e.x, global1.d.a.e.x, global1.d.a.e.x), Struct_2(Struct_1(~_wgslsmith_sub_u32(69688u, var_0.x), func_3(global1.c, _wgslsmith_div_vec3_f32(vec3<f32>(global1.c.e.x, 129f, global1.d.c.e.x), global1.d.e.e.wxw), Struct_2(Struct_1(1u, global1.d.a.b, var_1.x, global1.d.b.x, vec4<f32>(-1685f, global1.d.a.e.x, 1000f, global1.c.e.x)), u_input.a, Struct_1(4294967295u, vec2<bool>(false, global3.x), 1363u, -18856i, global1.d.a.e), global1.a, Struct_1(var_0.x, vec2<bool>(true, false), 25275u, u_input.a.x, global1.c.e)), select(18977u, var_0.x, false)).xy, ~1u, u_input.a.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(global1.c.e)), vec4<f32>(-1540f, global1.c.e.x, global1.c.e.x, -2137f), true))), vec2<i32>(firstTrailingBit(i32(-1i) * -33581i), u_input.a.x), global1.d.e, _wgslsmith_dot_vec3_u32(var_0.yyz, vec3<u32>(_wgslsmith_sub_u32(0u, var_1.x), var_1.x, countOneBits(global1.d.a.a))), Struct_1(_wgslsmith_add_u32(func_4(global3.yz, Struct_3(0u, vec3<i32>(-2147483647i, u_input.a.x, -38349i), global1.c, global1.d), Struct_3(5182u, vec3<i32>(u_input.a.x, 0i, 0i), Struct_1(1515u, vec2<bool>(true, global4.x), 79952u, u_input.a.x, global1.c.e), Struct_2(Struct_1(102963u, vec2<bool>(true, true), 0u, 2147483647i, vec4<f32>(global1.d.e.e.x, -858f, 509f, global1.d.c.e.x)), global1.b.zz, global1.c, 1u, Struct_1(0u, vec2<bool>(global1.d.a.b.x, global3.x), 1u, -2147483647i, vec4<f32>(-1084f, -932f, global1.c.e.x, 1375f))))).x, var_1.x), vec2<bool>(true, 0u > var_0.x), ~_wgslsmith_sub_u32(var_0.x, var_1.x), 23819i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(global1.d.c.e))))), abs(_wgslsmith_sub_u32(global1.c.c, reverseBits(max(0u, 0u)))));
    let var_3 = global1.d;
    var_0 = _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(4294967295u, ~22844u, 18687u, var_0.x)) | _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(global1.a, var_0.x, var_1.x, var_3.d), _wgslsmith_div_vec4_u32(vec4<u32>(0u, var_0.x, var_3.e.a, 0u), global0[_wgslsmith_index_u32(var_1.x, 20u)])), firstTrailingBit(global0[_wgslsmith_index_u32(1u, 20u)])), global0[_wgslsmith_index_u32(var_1.x, 20u)], min(vec4<u32>(global1.d.d, _wgslsmith_mult_u32(4294967295u, 1u), 4294967295u, 4572u) ^ global0[_wgslsmith_index_u32(firstTrailingBit(1u), 20u)], ~_wgslsmith_div_vec4_u32(~global0[_wgslsmith_index_u32(31719u, 20u)], vec4<u32>(var_3.e.c, var_0.x, 44320u, global1.c.a))));
    var_1 = global0[_wgslsmith_index_u32(select(var_3.a.c, _wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(109763u, 4294967295u), vec2<u32>(var_3.d, 4294967295u)), vec2<u32>(0u, _wgslsmith_clamp_u32(var_1.x, 4294967295u, var_3.d))), func_2(_wgslsmith_mod_i32(~39494i, i32(-1i) * -1i))) & abs(~abs(0u) >> (1u % 32u)), 20u)];
    var_1 = ~countOneBits(abs(vec4<u32>(22560u, 4555u, 35248u, var_0.x ^ 4294967295u)));
    var var_4 = select(firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(-71992i, u_input.a.x) & global1.d.b, var_3.b)), (-u_input.a >> (vec2<u32>(~1u, var_0.x) % vec2<u32>(32u))) ^ (_wgslsmith_div_vec2_i32(u_input.a, global1.d.b) & vec2<i32>(_wgslsmith_clamp_i32(global1.b.x, -2147483647i, global1.c.d), 35598i)), select(select(global1.c.b, vec2<bool>(true, true), select(var_3.a.b, global1.c.b, select(vec2<bool>(var_3.e.b.x, false), vec2<bool>(true, var_2.x), global1.c.b))), !vec2<bool>(global3.x, global4.x & false), vec2<bool>(global3.x || global1.d.a.b.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(vec4<i32>(abs(abs(1i)), _wgslsmith_sub_i32(-2147483647i, -41810i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, var_3.e.d, -1i), vec3<i32>(0i, -1i, u_input.a.x)), global1.c.d, select(-2147483647i, 28397i, global1.c.b.x) & u_input.a.x), vec4<i32>(-7732i, 1i, u_input.a.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, global1.b.x, 55763i, u_input.a.x), min(vec4<i32>(var_3.b.x, var_3.b.x, var_4.x, -2147483647i), vec4<i32>(u_input.a.x, -19216i, var_4.x, 53872i))))));
}


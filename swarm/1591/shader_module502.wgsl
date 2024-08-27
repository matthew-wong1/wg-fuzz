struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
    c: bool,
    d: i32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5> = array<i32, 5>(-1i, -3066i, 1i, -50053i, 20923i);

var<private> global1: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(Struct_2(false, 549f, vec4<u32>(4294967295u, 86584u, 0u, 0u), Struct_1(vec3<u32>(58371u, 4294967295u, 67870u), vec2<f32>(-1000f, -961f), vec3<i32>(1i, 46281i, -1i))), Struct_2(false, 186f, vec4<u32>(11346u, 171u, 4294967295u, 1922u), Struct_1(vec3<u32>(0u, 0u, 33122u), vec2<f32>(-710f, -720f), vec3<i32>(35379i, 1i, -49011i))), vec4<i32>(-2329i, 4552i, 0i, 1i)), Struct_3(Struct_2(true, 878f, vec4<u32>(33019u, 4753u, 1u, 4294967295u), Struct_1(vec3<u32>(5928u, 42456u, 60385u), vec2<f32>(621f, 138f), vec3<i32>(2275i, -72870i, 0i))), Struct_2(true, -392f, vec4<u32>(29129u, 25865u, 29060u, 35218u), Struct_1(vec3<u32>(1u, 66038u, 52979u), vec2<f32>(699f, 1175f), vec3<i32>(47942i, 0i, 10717i))), vec4<i32>(-17942i, -27427i, 48330i, 56469i)), Struct_3(Struct_2(true, -914f, vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), Struct_1(vec3<u32>(47062u, 1u, 20757u), vec2<f32>(-1267f, 1522f), vec3<i32>(-31219i, 40666i, 92844i))), Struct_2(false, -979f, vec4<u32>(80252u, 4294967295u, 5441u, 27583u), Struct_1(vec3<u32>(48537u, 0u, 4294967295u), vec2<f32>(-697f, 104f), vec3<i32>(1i, 1i, 14977i))), vec4<i32>(-5628i, -19792i, -1i, 1i)), Struct_3(Struct_2(false, 413f, vec4<u32>(87202u, 0u, 1u, 0u), Struct_1(vec3<u32>(0u, 1u, 25156u), vec2<f32>(-1282f, -1440f), vec3<i32>(20225i, 0i, 20050i))), Struct_2(true, 274f, vec4<u32>(1u, 0u, 0u, 0u), Struct_1(vec3<u32>(6226u, 4294967295u, 0u), vec2<f32>(1000f, 1071f), vec3<i32>(1i, 32604i, 49693i))), vec4<i32>(0i, -23207i, 1i, 39053i)), Struct_3(Struct_2(false, 1155f, vec4<u32>(4322u, 36841u, 4294967295u, 33099u), Struct_1(vec3<u32>(4294967295u, 4294967295u, 16490u), vec2<f32>(-1000f, -893f), vec3<i32>(1i, 38370i, -20480i))), Struct_2(true, 336f, vec4<u32>(23330u, 14880u, 0u, 1u), Struct_1(vec3<u32>(0u, 4612u, 32457u), vec2<f32>(343f, -2581f), vec3<i32>(0i, -26602i, i32(-2147483648)))), vec4<i32>(0i, 1i, -47878i, 2460i)), Struct_3(Struct_2(true, -1129f, vec4<u32>(0u, 95629u, 0u, 1u), Struct_1(vec3<u32>(9884u, 4294967295u, 4294967295u), vec2<f32>(-166f, 430f), vec3<i32>(-103751i, 9853i, 2147483647i))), Struct_2(false, -2013f, vec4<u32>(30074u, 1u, 1u, 4294967295u), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u), vec2<f32>(811f, 495f), vec3<i32>(i32(-2147483648), 0i, -1i))), vec4<i32>(-21078i, 53301i, -1i, 0i)), Struct_3(Struct_2(true, 1134f, vec4<u32>(4294967295u, 22527u, 1u, 0u), Struct_1(vec3<u32>(52935u, 17145u, 4141u), vec2<f32>(-1537f, 1000f), vec3<i32>(-28371i, -1i, 1i))), Struct_2(true, -709f, vec4<u32>(5362u, 1u, 0u, 30096u), Struct_1(vec3<u32>(4294967295u, 55967u, 40354u), vec2<f32>(-2144f, 1664f), vec3<i32>(-6931i, 1i, 13451i))), vec4<i32>(29808i, -1i, 3520i, -1i)), Struct_3(Struct_2(true, 248f, vec4<u32>(72522u, 792u, 41911u, 4294967295u), Struct_1(vec3<u32>(2488u, 2446u, 0u), vec2<f32>(-898f, 948f), vec3<i32>(-36092i, -40117i, -1i))), Struct_2(false, -376f, vec4<u32>(1u, 0u, 2584u, 4294967295u), Struct_1(vec3<u32>(1u, 0u, 29346u), vec2<f32>(-424f, 807f), vec3<i32>(i32(-2147483648), -50018i, -1i))), vec4<i32>(2147483647i, 44455i, -6421i, 1i)), Struct_3(Struct_2(true, -768f, vec4<u32>(60135u, 0u, 43163u, 74509u), Struct_1(vec3<u32>(4294967295u, 43488u, 60290u), vec2<f32>(480f, -361f), vec3<i32>(7737i, i32(-2147483648), 1i))), Struct_2(false, -905f, vec4<u32>(41766u, 17038u, 1u, 36849u), Struct_1(vec3<u32>(17076u, 37300u, 3598u), vec2<f32>(613f, -852f), vec3<i32>(20620i, 1i, i32(-2147483648)))), vec4<i32>(2147483647i, -76836i, -54811i, 688i)), Struct_3(Struct_2(false, 160f, vec4<u32>(617u, 4294967295u, 23574u, 1u), Struct_1(vec3<u32>(29548u, 4294967295u, 1u), vec2<f32>(-206f, -2869f), vec3<i32>(556i, -1i, 1i))), Struct_2(false, -245f, vec4<u32>(2301u, 0u, 33464u, 4294967295u), Struct_1(vec3<u32>(1u, 19926u, 0u), vec2<f32>(1260f, -416f), vec3<i32>(14232i, 0i, i32(-2147483648)))), vec4<i32>(13427i, 10939i, i32(-2147483648), 13355i)), Struct_3(Struct_2(false, -1000f, vec4<u32>(0u, 1u, 93882u, 86308u), Struct_1(vec3<u32>(6788u, 2620u, 70572u), vec2<f32>(378f, 363f), vec3<i32>(21074i, -48662i, -21728i))), Struct_2(false, 1000f, vec4<u32>(11792u, 8423u, 0u, 1u), Struct_1(vec3<u32>(1234u, 4294967295u, 1u), vec2<f32>(258f, -941f), vec3<i32>(0i, -1i, 1i))), vec4<i32>(2147483647i, 19264i, -1i, i32(-2147483648))), Struct_3(Struct_2(true, 1195f, vec4<u32>(1u, 1u, 84878u, 1u), Struct_1(vec3<u32>(0u, 0u, 34467u), vec2<f32>(-1000f, -865f), vec3<i32>(2219i, 0i, 45651i))), Struct_2(false, -773f, vec4<u32>(0u, 0u, 25570u, 4294967295u), Struct_1(vec3<u32>(30596u, 9914u, 1u), vec2<f32>(1942f, -1145f), vec3<i32>(-16498i, i32(-2147483648), 2147483647i))), vec4<i32>(1i, i32(-2147483648), 0i, 2147483647i)), Struct_3(Struct_2(false, -345f, vec4<u32>(93625u, 15071u, 7103u, 0u), Struct_1(vec3<u32>(1u, 4294967295u, 58128u), vec2<f32>(-203f, 401f), vec3<i32>(0i, -1i, 9755i))), Struct_2(false, -1064f, vec4<u32>(0u, 1u, 18043u, 1u), Struct_1(vec3<u32>(86147u, 98926u, 926u), vec2<f32>(-384f, 914f), vec3<i32>(1i, 1i, i32(-2147483648)))), vec4<i32>(2147483647i, 46205i, 0i, 22439i)), Struct_3(Struct_2(true, 164f, vec4<u32>(0u, 1u, 4294967295u, 6609u), Struct_1(vec3<u32>(4294967295u, 3593u, 53835u), vec2<f32>(-1627f, 282f), vec3<i32>(i32(-2147483648), -20040i, 1i))), Struct_2(false, -2157f, vec4<u32>(21784u, 0u, 33546u, 23018u), Struct_1(vec3<u32>(62475u, 66749u, 40147u), vec2<f32>(1000f, -332f), vec3<i32>(i32(-2147483648), i32(-2147483648), -50557i))), vec4<i32>(2147483647i, 1i, i32(-2147483648), 1i)), Struct_3(Struct_2(true, 607f, vec4<u32>(11455u, 1u, 0u, 34606u), Struct_1(vec3<u32>(1u, 82180u, 1u), vec2<f32>(-1398f, -1009f), vec3<i32>(-34586i, 1i, -8199i))), Struct_2(false, 1598f, vec4<u32>(0u, 92479u, 4294967295u, 0u), Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), vec2<f32>(276f, -328f), vec3<i32>(13150i, 1i, 1i))), vec4<i32>(i32(-2147483648), 1i, -35696i, 2147483647i)), Struct_3(Struct_2(false, 1375f, vec4<u32>(103554u, 1u, 4294967295u, 56875u), Struct_1(vec3<u32>(1u, 1u, 4294967295u), vec2<f32>(-1037f, 949f), vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)))), Struct_2(false, -148f, vec4<u32>(15151u, 10066u, 1u, 0u), Struct_1(vec3<u32>(10460u, 2111u, 4294967295u), vec2<f32>(-980f, 1212f), vec3<i32>(26891i, 28916i, 13552i))), vec4<i32>(1i, 49772i, -37714i, 16972i)), Struct_3(Struct_2(false, 912f, vec4<u32>(14040u, 22908u, 0u, 42784u), Struct_1(vec3<u32>(1u, 0u, 20965u), vec2<f32>(-1951f, -1000f), vec3<i32>(1i, -11380i, -17217i))), Struct_2(true, -715f, vec4<u32>(24331u, 97039u, 12876u, 10767u), Struct_1(vec3<u32>(4294967295u, 24507u, 1u), vec2<f32>(-118f, 931f), vec3<i32>(20470i, 0i, 0i))), vec4<i32>(-19413i, -26956i, -1i, i32(-2147483648))), Struct_3(Struct_2(false, -1732f, vec4<u32>(0u, 1u, 12767u, 8844u), Struct_1(vec3<u32>(0u, 26732u, 1u), vec2<f32>(568f, 635f), vec3<i32>(21772i, 12954i, 1i))), Struct_2(true, 1463f, vec4<u32>(22448u, 18368u, 57888u, 4294967295u), Struct_1(vec3<u32>(0u, 0u, 109235u), vec2<f32>(-559f, 1228f), vec3<i32>(20003i, -20815i, -1i))), vec4<i32>(56042i, 2147483647i, 0i, 1i)), Struct_3(Struct_2(true, 1269f, vec4<u32>(0u, 1u, 0u, 70160u), Struct_1(vec3<u32>(4294967295u, 24548u, 63447u), vec2<f32>(1224f, -1224f), vec3<i32>(1i, -64339i, 31096i))), Struct_2(false, 552f, vec4<u32>(0u, 1u, 40627u, 22556u), Struct_1(vec3<u32>(0u, 0u, 0u), vec2<f32>(1000f, -205f), vec3<i32>(-1i, -40754i, -47424i))), vec4<i32>(-10069i, 7999i, 1596i, 4599i)), Struct_3(Struct_2(true, -1000f, vec4<u32>(4294967295u, 14415u, 54115u, 116654u), Struct_1(vec3<u32>(390u, 53701u, 4294967295u), vec2<f32>(467f, -1890f), vec3<i32>(i32(-2147483648), 4807i, -1i))), Struct_2(false, -1040f, vec4<u32>(0u, 1u, 16514u, 0u), Struct_1(vec3<u32>(45881u, 4973u, 1u), vec2<f32>(819f, 1162f), vec3<i32>(6445i, -14977i, -1i))), vec4<i32>(48023i, 18065i, -14885i, -9212i)), Struct_3(Struct_2(false, 1464f, vec4<u32>(46369u, 0u, 25798u, 4294967295u), Struct_1(vec3<u32>(0u, 43620u, 3103u), vec2<f32>(-593f, 1368f), vec3<i32>(19963i, 23332i, 8780i))), Struct_2(true, -785f, vec4<u32>(39885u, 1u, 0u, 63646u), Struct_1(vec3<u32>(45140u, 9426u, 72505u), vec2<f32>(-1313f, 1000f), vec3<i32>(-1i, -1i, i32(-2147483648)))), vec4<i32>(0i, 2147483647i, 1i, 10160i)), Struct_3(Struct_2(false, 704f, vec4<u32>(1u, 4294967295u, 0u, 0u), Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec2<f32>(273f, -1000f), vec3<i32>(6333i, i32(-2147483648), -1i))), Struct_2(false, -793f, vec4<u32>(6846u, 0u, 17699u, 47855u), Struct_1(vec3<u32>(1u, 0u, 0u), vec2<f32>(-218f, -1730f), vec3<i32>(0i, 21639i, -25354i))), vec4<i32>(2147483647i, -51486i, 23763i, -22518i)), Struct_3(Struct_2(false, 835f, vec4<u32>(1u, 1u, 32607u, 18726u), Struct_1(vec3<u32>(23073u, 35687u, 4294967295u), vec2<f32>(411f, -1435f), vec3<i32>(i32(-2147483648), -9811i, 0i))), Struct_2(true, 204f, vec4<u32>(3618u, 0u, 4294967295u, 0u), Struct_1(vec3<u32>(4294967295u, 9974u, 20515u), vec2<f32>(-503f, -1576f), vec3<i32>(1i, -1i, 78535i))), vec4<i32>(2147483647i, 2147483647i, 18643i, 36735i)));

var<private> global2: array<Struct_2, 20>;

var<private> global3: Struct_2 = Struct_2(false, 518f, vec4<u32>(53790u, 25833u, 56646u, 0u), Struct_1(vec3<u32>(30415u, 0u, 17836u), vec2<f32>(1081f, 1584f), vec3<i32>(1i, 0i, -1i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(min(firstTrailingBit(vec3<u32>(_wgslsmith_add_u32(21417u, u_input.c), 0u, reverseBits(u_input.a))), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(global3.d.a, vec3<u32>(51897u, u_input.a, u_input.d)), global3.d.a.x), select(~global3.d.a, vec3<u32>(44954u, 4294967295u, u_input.a), true), ~(~vec3<u32>(global3.d.a.x, 4294967295u, 1u)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(global3.d.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(global3.d.b, vec2<f32>(global3.d.b.x, global3.d.b.x))))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global3.d.b.x, global3.d.b.x), global3.d.b)), _wgslsmith_div_vec2_f32(vec2<f32>(global3.b, 1161f), vec2<f32>(global3.d.b.x, -1590f))))))), global3.d.c ^ _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(-33359i, 0i, u_input.b)), vec3<i32>(u_input.e, -4350i, -1320i)), global3.d.c));
    let var_1 = _wgslsmith_f_op_f32(-637f * 673f);
    global3 = Struct_2(any(vec2<bool>(true, true)), 414f, ~vec4<u32>(var_0.a.x, var_0.a.x, _wgslsmith_mult_u32(~global3.c.x, _wgslsmith_dot_vec4_u32(global3.c, vec4<u32>(26282u, var_0.a.x, 47309u, var_0.a.x))), ~var_0.a.x), Struct_1(vec3<u32>(min(~var_0.a.x, ~0u), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.a.x, 4294967295u, 0u, 84895u), ~global3.c), global3.d.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b - _wgslsmith_div_vec2_f32(var_0.b, var_0.b)) * vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.b.x)), _wgslsmith_div_f32(-958f, -1569f))), ~_wgslsmith_add_vec3_i32(max(var_0.c, vec3<i32>(var_0.c.x, 1i, 1i)), vec3<i32>(1i, var_0.c.x, -1i))));
    var var_2 = true;
    global2 = array<Struct_2, 20>();
    return ~(~reverseBits(1i));
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec2_u32(~global3.c.xx, vec2<u32>(1u, 1u)) >> (_wgslsmith_mod_u32(~24736u, global3.c.x) % 32u);
    var var_1 = vec3<i32>(33340i, abs(_wgslsmith_add_i32(func_3(), -u_input.e)), 0i);
    var var_2 = ~firstLeadingBit(~vec4<i32>(u_input.b, -2147483647i, var_1.x, 47635i) << (vec4<u32>(global3.c.x & u_input.d, ~21777u, 1u, ~60620u) % vec4<u32>(32u)));
    let var_3 = Struct_4(vec3<u32>(~reverseBits(~1u), global3.d.a.x, countOneBits(~u_input.d)), (_wgslsmith_f_op_f32(ceil(arg_0)) >= global3.d.b.x) & all(!(!vec3<bool>(true, false, global3.a))), !(!(!any(vec3<bool>(global3.a, global3.a, global3.a)))), global0[_wgslsmith_index_u32(1u, 5u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(select(global3.d.b.x, arg_0, global3.a))))));
    var_1 = ~select(reverseBits(-(~vec3<i32>(2147483647i, -1i, -101831i))), min(vec3<i32>(-1i, -2147483647i, 0i), vec3<i32>(u_input.b, u_input.b, 2147483647i)), !select(vec3<bool>(true, var_3.b, true), !vec3<bool>(var_3.b, var_3.c, var_3.c), select(vec3<bool>(false, var_3.b, global3.a), vec3<bool>(true, global3.a, global3.a), vec3<bool>(var_3.b, global3.a, var_3.c))));
    return global3.d;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_4) -> f32 {
    let var_0 = Struct_4(global3.d.a, !(true & !all(vec4<bool>(false, true, false, false))), arg_1.a, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_3.a.x, 89319u), firstTrailingBit(1u)), 5u)], 72377i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1082f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) * _wgslsmith_f_op_f32(arg_3.e.x + 1282f)))));
    global3 = Struct_2(true, 448f, global3.c, arg_2);
    global2 = array<Struct_2, 20>();
    global0 = array<i32, 5>();
    let var_1 = func_2(arg_1.b);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.b.x))), _wgslsmith_f_op_f32(round(global3.d.b.x)), global3.a)))) * -1045f);
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1887f, -249f)), 1257f, true)), _wgslsmith_f_op_f32(max(global3.d.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) - _wgslsmith_f_op_f32(-global3.d.b.x)))), _wgslsmith_f_op_f32(func_4(!(!vec3<bool>(true, false, global3.a)), Struct_2(false, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1457f)), _wgslsmith_div_vec4_u32(firstLeadingBit(arg_1), global3.c >> (vec4<u32>(u_input.c, global3.c.x, arg_0, global3.c.x) % vec4<u32>(32u))), Struct_1(vec3<u32>(4294967295u, 1778u, 1u), _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.b, global3.d.b.x) - global3.d.b), -vec3<i32>(global0[_wgslsmith_index_u32(0u, 5u)], global3.d.c.x, 2147483647i))), func_2(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-global3.b))), Struct_4(firstTrailingBit(select(global3.d.a, vec3<u32>(arg_1.x, 4294967295u, 4294967295u), vec3<bool>(global3.a, true, global3.a))), false, all(!vec3<bool>(false, global3.a, global3.a)), ~(-u_input.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.d.b + global3.d.b) - vec2<f32>(global3.b, global3.d.b.x))))));
    var var_1 = global3.d;
    var var_2 = arg_0;
    let var_3 = global3.d;
    let var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3.b.x + -268f), -422f));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(global3.d.c | vec3<i32>(~firstLeadingBit(global3.d.c.x), global0[_wgslsmith_index_u32(func_1(min(4294967295u, u_input.a), ~global3.c), 5u)], 0i));
    let var_1 = global2[_wgslsmith_index_u32(global3.d.a.x, 20u)];
    let x = u_input.a;
    s_output = StorageBuffer(global3.b, global3.d.b.x);
}


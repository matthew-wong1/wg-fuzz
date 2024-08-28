struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<bool>, 27>;

var<private> global2: array<vec4<i32>, 15>;

var<private> global3: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(Struct_1(vec4<i32>(0i, -11121i, 1i, 1i), vec2<u32>(3667u, 20766u), 62379i, 0i, -16258i), vec3<u32>(13091u, 53438u, 4294967295u), 0u, vec2<i32>(-1i, 100502i), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), 2147483647i), vec2<u32>(68063u, 28982u), -1i, -15035i, i32(-2147483648))), Struct_2(Struct_1(vec4<i32>(-68158i, 11333i, -23312i, 0i), vec2<u32>(0u, 4294967295u), 2147483647i, 2557i, 0i), vec3<u32>(0u, 1u, 4294967295u), 47664u, vec2<i32>(-1569i, -37271i), Struct_1(vec4<i32>(1i, 14408i, 39163i, i32(-2147483648)), vec2<u32>(1u, 74970u), 594i, -8325i, 2147483647i)), Struct_2(Struct_1(vec4<i32>(-1i, -17084i, -37702i, 7352i), vec2<u32>(1u, 4294967295u), -1i, i32(-2147483648), 1i), vec3<u32>(0u, 4294967295u, 4294967295u), 4294967295u, vec2<i32>(2147483647i, 2147483647i), Struct_1(vec4<i32>(0i, i32(-2147483648), 24200i, -2473i), vec2<u32>(0u, 60440u), 72743i, 34996i, 46350i)), Struct_2(Struct_1(vec4<i32>(2147483647i, 8080i, 64385i, 5133i), vec2<u32>(18553u, 29446u), -5566i, 2147483647i, 2147483647i), vec3<u32>(1u, 65138u, 0u), 1u, vec2<i32>(2784i, i32(-2147483648)), Struct_1(vec4<i32>(1i, -79284i, -331i, i32(-2147483648)), vec2<u32>(0u, 22107u), 923i, -49677i, 1i)), Struct_2(Struct_1(vec4<i32>(1i, i32(-2147483648), -1i, 21239i), vec2<u32>(4294967295u, 0u), -21743i, -30579i, 18291i), vec3<u32>(84460u, 28128u, 4294967295u), 63093u, vec2<i32>(-28283i, 2147483647i), Struct_1(vec4<i32>(0i, 13877i, -332i, 13054i), vec2<u32>(1u, 62075u), -1i, -16886i, -1i)), Struct_2(Struct_1(vec4<i32>(66665i, -53953i, -52688i, i32(-2147483648)), vec2<u32>(22410u, 994u), -32497i, 52241i, -33670i), vec3<u32>(29106u, 4294967295u, 5099u), 0u, vec2<i32>(-5620i, 0i), Struct_1(vec4<i32>(-1i, -1i, 20575i, 1i), vec2<u32>(72985u, 10722u), 18376i, 1111i, 0i)), Struct_2(Struct_1(vec4<i32>(5010i, i32(-2147483648), -28420i, -24912i), vec2<u32>(64250u, 40477u), -23055i, 0i, 16524i), vec3<u32>(794u, 4294967295u, 0u), 0u, vec2<i32>(52604i, -8800i), Struct_1(vec4<i32>(-36667i, -33974i, 1i, -5385i), vec2<u32>(1u, 33247u), 29979i, 1i, 2147483647i)), Struct_2(Struct_1(vec4<i32>(-1i, 0i, 24946i, -20716i), vec2<u32>(38497u, 80987u), 72427i, -1i, 41467i), vec3<u32>(1u, 4294967295u, 0u), 1u, vec2<i32>(30030i, 59685i), Struct_1(vec4<i32>(i32(-2147483648), -46026i, 32581i, -9130i), vec2<u32>(11100u, 68086u), -2588i, -45992i, 9684i)), Struct_2(Struct_1(vec4<i32>(-31761i, -23261i, 0i, 2147483647i), vec2<u32>(4294967295u, 0u), 6593i, i32(-2147483648), -719i), vec3<u32>(0u, 4294967295u, 36671u), 84979u, vec2<i32>(1i, 1i), Struct_1(vec4<i32>(3028i, -3999i, 13143i, i32(-2147483648)), vec2<u32>(88519u, 11279u), -14124i, 0i, 1i)), Struct_2(Struct_1(vec4<i32>(2147483647i, -1i, 1i, i32(-2147483648)), vec2<u32>(7222u, 71070u), 9399i, 55645i, 3208i), vec3<u32>(135452u, 4294967295u, 4294967295u), 4294967295u, vec2<i32>(-33642i, 0i), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 63001i, 1i), vec2<u32>(44163u, 1u), 0i, i32(-2147483648), 0i)), Struct_2(Struct_1(vec4<i32>(1i, i32(-2147483648), 0i, -2664i), vec2<u32>(13868u, 56046u), 1i, 22353i, 19867i), vec3<u32>(3240u, 112076u, 67399u), 8503u, vec2<i32>(1i, 60609i), Struct_1(vec4<i32>(3430i, 0i, 0i, i32(-2147483648)), vec2<u32>(4294967295u, 113079u), 0i, -1i, -27004i)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, 2147483647i), vec2<u32>(90375u, 0u), 1683i, 8835i, 2147483647i), vec3<u32>(0u, 31171u, 0u), 54872u, vec2<i32>(-1i, -34657i), Struct_1(vec4<i32>(0i, 36186i, -6078i, 14165i), vec2<u32>(30156u, 1u), i32(-2147483648), -1i, 2147483647i)), Struct_2(Struct_1(vec4<i32>(1i, 29886i, 0i, 0i), vec2<u32>(17231u, 1u), -1i, -1i, 22575i), vec3<u32>(2460u, 4294967295u, 31195u), 79453u, vec2<i32>(-39449i, 27491i), Struct_1(vec4<i32>(6347i, i32(-2147483648), -29997i, 26525i), vec2<u32>(0u, 50129u), -1i, 12224i, 24883i)), Struct_2(Struct_1(vec4<i32>(-29904i, -1i, i32(-2147483648), i32(-2147483648)), vec2<u32>(20405u, 31346u), -18191i, 45195i, -7018i), vec3<u32>(1100u, 1u, 40570u), 61008u, vec2<i32>(-27603i, 2147483647i), Struct_1(vec4<i32>(-11362i, -46391i, -45495i, -13311i), vec2<u32>(0u, 84282u), 0i, 20809i, 1i)), Struct_2(Struct_1(vec4<i32>(4592i, 15772i, i32(-2147483648), 2147483647i), vec2<u32>(4294967295u, 63311u), 26309i, 0i, -1i), vec3<u32>(1u, 0u, 1u), 30542u, vec2<i32>(2147483647i, -1199i), Struct_1(vec4<i32>(i32(-2147483648), 61833i, 23066i, -36013i), vec2<u32>(41447u, 15124u), 0i, 1i, 26241i)), Struct_2(Struct_1(vec4<i32>(-35281i, 71744i, -1i, 2147483647i), vec2<u32>(0u, 13836u), -8151i, 1i, i32(-2147483648)), vec3<u32>(0u, 21489u, 60197u), 4294967295u, vec2<i32>(0i, 17085i), Struct_1(vec4<i32>(-67014i, -1624i, 3092i, -14181i), vec2<u32>(9810u, 4294967295u), 12366i, i32(-2147483648), 28655i)), Struct_2(Struct_1(vec4<i32>(0i, -39231i, 1i, 1i), vec2<u32>(68809u, 0u), i32(-2147483648), 6186i, -1i), vec3<u32>(1504u, 42974u, 0u), 27290u, vec2<i32>(i32(-2147483648), 24749i), Struct_1(vec4<i32>(-45804i, i32(-2147483648), 27408i, -1i), vec2<u32>(67038u, 4294967295u), 25591i, -16806i, 27198i)), Struct_2(Struct_1(vec4<i32>(-41757i, -1i, 2147483647i, i32(-2147483648)), vec2<u32>(29587u, 50054u), 16576i, 2147483647i, 25521i), vec3<u32>(72675u, 44959u, 1u), 80882u, vec2<i32>(-15826i, -31760i), Struct_1(vec4<i32>(1i, -1608i, 30092i, -535i), vec2<u32>(88279u, 3629u), 0i, 1i, -32316i)), Struct_2(Struct_1(vec4<i32>(-1i, -2400i, -2348i, 2147483647i), vec2<u32>(1u, 21763u), -31125i, 54908i, -44162i), vec3<u32>(1u, 23646u, 10686u), 1732u, vec2<i32>(51971i, 0i), Struct_1(vec4<i32>(2147483647i, -1i, 0i, 0i), vec2<u32>(0u, 16918u), i32(-2147483648), -25970i, 55894i)), Struct_2(Struct_1(vec4<i32>(14412i, 849i, 1i, i32(-2147483648)), vec2<u32>(72644u, 10789u), 0i, -1i, 29828i), vec3<u32>(6391u, 36032u, 4294967295u), 4294967295u, vec2<i32>(0i, 0i), Struct_1(vec4<i32>(i32(-2147483648), 1i, -1i, -40i), vec2<u32>(4294967295u, 0u), -20754i, -15497i, 67963i)), Struct_2(Struct_1(vec4<i32>(1312i, 33120i, -1i, 1i), vec2<u32>(4700u, 4294967295u), 0i, 0i, i32(-2147483648)), vec3<u32>(0u, 12871u, 1u), 4294967295u, vec2<i32>(4503i, -35723i), Struct_1(vec4<i32>(-12773i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec2<u32>(17372u, 0u), i32(-2147483648), 0i, -13391i)), Struct_2(Struct_1(vec4<i32>(37700i, 1346i, 1i, 70775i), vec2<u32>(1u, 4294967295u), i32(-2147483648), -62453i, 2147483647i), vec3<u32>(25815u, 37596u, 1u), 0u, vec2<i32>(-7244i, -36122i), Struct_1(vec4<i32>(24539i, -44598i, -2561i, i32(-2147483648)), vec2<u32>(1u, 0u), 2147483647i, i32(-2147483648), i32(-2147483648))), Struct_2(Struct_1(vec4<i32>(35683i, -17448i, 2147483647i, 2147483647i), vec2<u32>(39853u, 99496u), 3777i, 2147483647i, -11641i), vec3<u32>(78699u, 1u, 1u), 4340u, vec2<i32>(20792i, 30378i), Struct_1(vec4<i32>(16309i, -1i, 1727i, 1i), vec2<u32>(0u, 1u), 2147483647i, -1i, -27896i)), Struct_2(Struct_1(vec4<i32>(5894i, 1i, 0i, -1i), vec2<u32>(19922u, 4294967295u), 11847i, 1i, 29549i), vec3<u32>(1u, 30278u, 0u), 29948u, vec2<i32>(2147483647i, 47974i), Struct_1(vec4<i32>(0i, -14607i, 2147483647i, i32(-2147483648)), vec2<u32>(38462u, 69985u), -1i, 1i, 53130i)), Struct_2(Struct_1(vec4<i32>(-29813i, i32(-2147483648), -12698i, -26579i), vec2<u32>(119168u, 57732u), -1i, 16025i, 0i), vec3<u32>(0u, 0u, 0u), 0u, vec2<i32>(1i, -2205i), Struct_1(vec4<i32>(0i, 0i, -15901i, -34289i), vec2<u32>(17670u, 1u), -1i, 2147483647i, -27424i)), Struct_2(Struct_1(vec4<i32>(2147483647i, 2147483647i, -15511i, 2147483647i), vec2<u32>(17120u, 1u), 1i, 38979i, 26891i), vec3<u32>(0u, 0u, 0u), 40755u, vec2<i32>(-1i, -39348i), Struct_1(vec4<i32>(-11450i, 2147483647i, 1i, 0i), vec2<u32>(1u, 55576u), 56670i, -16622i, i32(-2147483648))), Struct_2(Struct_1(vec4<i32>(-18904i, 0i, -1i, 0i), vec2<u32>(60492u, 31485u), -8654i, 2147483647i, 5797i), vec3<u32>(56243u, 0u, 0u), 4294967295u, vec2<i32>(57075i, -16742i), Struct_1(vec4<i32>(-45367i, 1i, 0i, 29896i), vec2<u32>(4294967295u, 0u), i32(-2147483648), 0i, -24993i)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 39316i, 20082i, 36744i), vec2<u32>(1u, 95625u), 14112i, 2147483647i, 39379i), vec3<u32>(0u, 26620u, 54u), 14273u, vec2<i32>(i32(-2147483648), -14477i), Struct_1(vec4<i32>(1i, -54775i, 0i, 12212i), vec2<u32>(1u, 1u), -33514i, 2147483647i, 1i)), Struct_2(Struct_1(vec4<i32>(1i, 5612i, -1484i, i32(-2147483648)), vec2<u32>(723u, 0u), 3178i, -1i, 41485i), vec3<u32>(76795u, 1u, 4294967295u), 76510u, vec2<i32>(2169i, 1i), Struct_1(vec4<i32>(2147483647i, 6607i, 1i, 1i), vec2<u32>(24927u, 1529u), 2147483647i, -34047i, 2147483647i)), Struct_2(Struct_1(vec4<i32>(-38394i, 14205i, 1i, -1i), vec2<u32>(4294967295u, 54603u), 74920i, 2147483647i, 10364i), vec3<u32>(0u, 4294967295u, 1u), 4294967295u, vec2<i32>(15980i, 1i), Struct_1(vec4<i32>(2147483647i, -1i, 0i, i32(-2147483648)), vec2<u32>(59891u, 0u), -1i, 13231i, 26560i)), Struct_2(Struct_1(vec4<i32>(-18106i, 39426i, -1i, 6891i), vec2<u32>(19382u, 65344u), 0i, 1i, 0i), vec3<u32>(1u, 80378u, 18139u), 4294967295u, vec2<i32>(i32(-2147483648), 12013i), Struct_1(vec4<i32>(17774i, 2147483647i, 33886i, 70070i), vec2<u32>(74755u, 0u), -9181i, 2147483647i, 23208i)));

var<private> global4: bool = true;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1) -> i32 {
    global2 = array<vec4<i32>, 15>();
    global2 = array<vec4<i32>, 15>();
    global0 = 4294967295u;
    global1 = array<vec2<bool>, 27>();
    global3 = array<Struct_2, 31>();
    return 71275i;
}

fn func_3(arg_0: vec3<i32>) -> vec2<f32> {
    var var_0 = firstTrailingBit(-(~((vec3<i32>(-1i, -12022i, 0i) ^ vec3<i32>(u_input.d, arg_0.x, arg_0.x)) & arg_0)));
    var var_1 = Struct_4(global3[_wgslsmith_index_u32(~(~7325u ^ ~u_input.e.x), 31u)]);
    var var_2 = Struct_4(global3[_wgslsmith_index_u32(0u, 31u)]);
    let var_3 = var_2.a.a;
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-994f, -409f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-265f)), -1662f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-458f, -1357f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-508f, 579f)), true)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(427f, -513f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-217f, -705f)))))));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(518f, _wgslsmith_f_op_f32(f32(-1f) * -779f), all(global1[_wgslsmith_index_u32(24290u, 27u)]))), _wgslsmith_f_op_f32(-681f * _wgslsmith_div_f32(-124f, -1042f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_sub_vec3_i32(vec3<i32>(8570i, u_input.b, 27181i), vec3<i32>(22741i, u_input.d, u_input.d))))))));
    var var_1 = Struct_3(global2[_wgslsmith_index_u32(~4294967295u, 15u)], Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(-u_input.b, 8779i, abs(u_input.d), u_input.b << (u_input.c.x % 32u)), reverseBits(abs(global2[_wgslsmith_index_u32(28882u, 15u)])), firstLeadingBit(vec4<i32>(u_input.d, u_input.d, 2147483647i, u_input.b))), ~(firstTrailingBit(vec2<u32>(62352u, 0u)) | u_input.c), u_input.b, u_input.b, _wgslsmith_mod_i32(~1i, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-1i, u_input.d)), firstLeadingBit(vec2<i32>(-42978i, u_input.b))))), select(-2147483647i, max(u_input.b, abs(-1i)), true));
    global4 = true;
    let var_2 = var_1.b.d;
    var var_3 = Struct_4(Struct_2(var_1.b, vec3<u32>(u_input.c.x & u_input.e.x, ~4294967295u, 30222u) ^ (vec3<u32>(u_input.c.x, var_1.b.b.x, var_1.b.b.x) | (vec3<u32>(u_input.a, 0u, 11106u) ^ vec3<u32>(var_1.b.b.x, 0u, 1u))), ~select(~97090u, 44244u, true), _wgslsmith_sub_vec2_i32(vec2<i32>(var_1.c, _wgslsmith_add_i32(u_input.d, u_input.b)), countOneBits(var_1.b.a.wz)), Struct_1(select(var_1.a, var_1.a, true) >> (vec4<u32>(4294967295u, var_1.b.b.x, 1730u, u_input.e.x) % vec4<u32>(32u)), firstLeadingBit(var_1.b.b) & firstTrailingBit(u_input.e), _wgslsmith_dot_vec4_i32(-vec4<i32>(-21936i, var_1.a.x, u_input.b, u_input.d), ~vec4<i32>(var_1.b.a.x, -2147483647i, 2565i, 42371i)), ~_wgslsmith_dot_vec3_i32(var_1.a.zzw, vec3<i32>(var_1.c, -21604i, 27484i)), _wgslsmith_mult_i32(i32(-1i) * -1i, _wgslsmith_mult_i32(u_input.b, -2147483647i)))));
    return Struct_1(reverseBits(var_1.a), var_1.b.b, _wgslsmith_dot_vec3_i32(select(_wgslsmith_mult_vec3_i32(var_1.b.a.wzz, var_1.a.yyy), var_1.b.a.zyy, vec3<bool>(false, true, true)) >> (var_3.a.b % vec3<u32>(32u)), -var_3.a.e.a.wzy), u_input.d, u_input.b);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = -1328f;
    var var_1 = 67417u;
    global2 = array<vec4<i32>, 15>();
    global1 = array<vec2<bool>, 27>();
    var var_2 = _wgslsmith_add_vec4_u32(arg_2, arg_2) ^ ~_wgslsmith_sub_vec4_u32(abs(~vec4<u32>(u_input.c.x, arg_0, arg_1.b.b.x, arg_1.b.b.x)), (arg_2 << (arg_2 % vec4<u32>(32u))) >> (vec4<u32>(0u, u_input.a, 67078u, 106943u) % vec4<u32>(32u)));
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(Struct_2(Struct_1(vec4<i32>(~u_input.d, ~(-24342i), 1i, func_1(Struct_3(global2[_wgslsmith_index_u32(u_input.c.x, 15u)], Struct_1(vec4<i32>(u_input.d, -14599i, u_input.d, u_input.b), vec2<u32>(u_input.a, u_input.a), 2147483647i, 2147483647i, u_input.d), 1i), Struct_1(vec4<i32>(u_input.b, 73972i, u_input.b, -2147483647i), u_input.e, -18467i, u_input.b, 2147483647i))), ~(~u_input.c), u_input.b, abs(i32(-1i) * -1i), _wgslsmith_div_i32(u_input.d, -u_input.d)), vec3<u32>(u_input.c.x, _wgslsmith_sub_u32(11127u, u_input.e.x) ^ 0u, 27317u), reverseBits(_wgslsmith_div_u32(u_input.c.x, ~u_input.e.x)), vec2<i32>(10104i & u_input.b, 0i) ^ reverseBits(~vec2<i32>(u_input.d, u_input.b)), func_4(~u_input.a >> (~u_input.e.x % 32u), Struct_3(global2[_wgslsmith_index_u32(firstTrailingBit(u_input.e.x), 15u)], func_2(), -20213i), countOneBits(select(vec4<u32>(u_input.e.x, u_input.e.x, 4294967295u, 1u), vec4<u32>(u_input.a, u_input.c.x, u_input.e.x, u_input.e.x), false)))));
    var var_1 = Struct_4(Struct_2(func_2(), var_0.a.b, abs(42669u ^ ~u_input.e.x), vec2<i32>(var_0.a.e.a.x, -u_input.d ^ -u_input.b), Struct_1(-countOneBits(vec4<i32>(var_0.a.a.e, -2147483647i, 62809i, var_0.a.e.d)), vec2<u32>(49675u, countOneBits(52004u)), ~_wgslsmith_clamp_i32(u_input.b, u_input.b, var_0.a.a.c), var_0.a.e.c, ~u_input.d)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.a.a.x, func_2().a.x, var_0.a.e.b.x, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1860f, -809f))))));
}


struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28> = array<i32, 28>(-23128i, 10551i, 42094i, 0i, -1321i, 50090i, i32(-2147483648), -28912i, -77408i, 55322i, 3278i, 13702i, -1i, 41560i, 42735i, 56403i, -15417i, -8581i, -1i, -32056i, -44709i, 1i, 1i, -23434i, 67874i, 35952i, 12423i, 11897i);

var<private> global1: array<vec4<u32>, 19>;

var<private> global2: Struct_2;

var<private> global3: vec3<u32> = vec3<u32>(4294967295u, 1u, 16221u);

var<private> global4: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(-78604i, 2147483647i, 2147483647i, 17295i), 756f, -28373i, vec2<u32>(11610u, 66276u)), vec3<f32>(290f, 1035f, -219f), Struct_1(vec2<bool>(false, false), vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), -57716i), 495f, -17100i, vec2<u32>(6155u, 74090u)), vec3<u32>(4294967295u, 0u, 0u)), Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(-36953i, 0i, 5237i, 4956i), 459f, -1i, vec2<u32>(1u, 0u)), vec3<f32>(539f, -1300f, -3076f), Struct_1(vec2<bool>(true, false), vec4<i32>(2147483647i, -11073i, 3875i, 2147483647i), 2084f, -15209i, vec2<u32>(4294967295u, 1u)), vec3<u32>(1u, 21375u, 1u)), Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(i32(-2147483648), 39008i, 36392i, -24567i), 256f, 1i, vec2<u32>(4294967295u, 6128u)), vec3<f32>(863f, -1000f, -186f), Struct_1(vec2<bool>(false, true), vec4<i32>(2147483647i, 18130i, 26105i, -1i), 1658f, i32(-2147483648), vec2<u32>(4294967295u, 0u)), vec3<u32>(0u, 16830u, 1u)), Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(1748i, 14061i, 27753i, -68195i), -1000f, 14802i, vec2<u32>(1u, 4294967295u)), vec3<f32>(170f, 1145f, 296f), Struct_1(vec2<bool>(false, true), vec4<i32>(112211i, 69423i, 2147483647i, 13333i), 1408f, -38922i, vec2<u32>(4294967295u, 0u)), vec3<u32>(1u, 37170u, 1u)), Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(-1i, -1i, 0i, 0i), -787f, -1i, vec2<u32>(42264u, 4294967295u)), vec3<f32>(623f, 308f, -631f), Struct_1(vec2<bool>(true, true), vec4<i32>(1i, 1765i, -22088i, 1i), 1000f, 1i, vec2<u32>(1u, 0u)), vec3<u32>(55677u, 32550u, 4294967295u)), Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(8563i, -71741i, -54320i, -16359i), 334f, -69627i, vec2<u32>(2961u, 0u)), vec3<f32>(-213f, -680f, 1244f), Struct_1(vec2<bool>(true, false), vec4<i32>(1873i, -38879i, -48441i, 48399i), 1507f, -1i, vec2<u32>(40147u, 40913u)), vec3<u32>(6231u, 85059u, 4294967295u)), Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(-15094i, i32(-2147483648), -23907i, 12333i), -1000f, 16563i, vec2<u32>(31782u, 1u)), vec3<f32>(626f, -1331f, 710f), Struct_1(vec2<bool>(true, false), vec4<i32>(0i, -1i, 1i, 0i), -760f, 12090i, vec2<u32>(1u, 18527u)), vec3<u32>(10486u, 0u, 0u)), Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(1i, -43359i, -1i, -38114i), 1525f, 25863i, vec2<u32>(0u, 17423u)), vec3<f32>(2261f, -425f, 326f), Struct_1(vec2<bool>(true, false), vec4<i32>(-1i, 1i, 19703i, 0i), 835f, i32(-2147483648), vec2<u32>(113448u, 37871u)), vec3<u32>(3587u, 1u, 0u)), Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(7427i, 56118i, i32(-2147483648), -51955i), 220f, -3258i, vec2<u32>(1u, 8506u)), vec3<f32>(-1000f, 246f, 1026f), Struct_1(vec2<bool>(false, false), vec4<i32>(2147483647i, 5865i, 0i, 2147483647i), 307f, -5882i, vec2<u32>(4294967295u, 0u)), vec3<u32>(57777u, 16683u, 66359u)), Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(-6985i, -57534i, 2147483647i, 1i), -881f, -53731i, vec2<u32>(15055u, 54280u)), vec3<f32>(1632f, 138f, -783f), Struct_1(vec2<bool>(true, true), vec4<i32>(-1i, 2147483647i, -8526i, 2147483647i), 1338f, 0i, vec2<u32>(108890u, 4294967295u)), vec3<u32>(127752u, 39320u, 14420u)), Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(-37072i, -2711i, 1i, 40347i), 886f, 1i, vec2<u32>(15169u, 1u)), vec3<f32>(615f, -604f, -1058f), Struct_1(vec2<bool>(true, false), vec4<i32>(1i, -1i, 16385i, 2147483647i), 847f, 1i, vec2<u32>(15784u, 64587u)), vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(18054i, 27629i, -1i, -2921i), -1942f, 39000i, vec2<u32>(0u, 16631u)), vec3<f32>(470f, 473f, 1659f), Struct_1(vec2<bool>(true, false), vec4<i32>(1i, 0i, -21705i, 2147483647i), -377f, 32481i, vec2<u32>(30864u, 4294967295u)), vec3<u32>(1u, 36907u, 75737u)), Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(13253i, 44751i, -130i, 43421i), -609f, 30151i, vec2<u32>(11639u, 40152u)), vec3<f32>(-171f, 433f, 727f), Struct_1(vec2<bool>(true, true), vec4<i32>(1i, -22005i, -16468i, -58902i), -370f, 1i, vec2<u32>(4294967295u, 38617u)), vec3<u32>(1u, 0u, 27651u)), Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(2147483647i, 1i, 5560i, 25620i), -1145f, 7589i, vec2<u32>(51654u, 4294967295u)), vec3<f32>(1378f, 1223f, -692f), Struct_1(vec2<bool>(true, true), vec4<i32>(15730i, 2147483647i, -1i, 10356i), 1188f, i32(-2147483648), vec2<u32>(37021u, 3443u)), vec3<u32>(0u, 89414u, 92818u)), Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(-35626i, 38884i, 6311i, i32(-2147483648)), 765f, 2147483647i, vec2<u32>(1u, 1563u)), vec3<f32>(-572f, 2452f, 347f), Struct_1(vec2<bool>(true, false), vec4<i32>(-34459i, -1i, 53268i, 0i), -1983f, 39423i, vec2<u32>(25447u, 0u)), vec3<u32>(4294967295u, 1u, 24257u)), Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(2147483647i, -796i, 23220i, 21056i), -906f, -64583i, vec2<u32>(1u, 31057u)), vec3<f32>(167f, 444f, 201f), Struct_1(vec2<bool>(true, false), vec4<i32>(40768i, 138i, 2147483647i, -13127i), 227f, -31836i, vec2<u32>(42588u, 4294967295u)), vec3<u32>(4294967295u, 43808u, 3357u)), Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(6728i, -52539i, -1i, 2147483647i), 562f, -1i, vec2<u32>(13550u, 78394u)), vec3<f32>(1000f, 1198f, 1760f), Struct_1(vec2<bool>(false, false), vec4<i32>(1i, 2147483647i, 18829i, -1i), 1000f, 1i, vec2<u32>(4902u, 65722u)), vec3<u32>(1917u, 6774u, 0u)), Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(37929i, -58260i, -1i, 2147483647i), -1614f, -14316i, vec2<u32>(11466u, 19361u)), vec3<f32>(1050f, -1173f, 1030f), Struct_1(vec2<bool>(true, true), vec4<i32>(2147483647i, -6625i, i32(-2147483648), 2147483647i), -720f, -1i, vec2<u32>(1u, 23996u)), vec3<u32>(88905u, 4294967295u, 43744u)), Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(2147483647i, -1i, i32(-2147483648), 2147483647i), 1000f, 7556i, vec2<u32>(8688u, 1u)), vec3<f32>(-315f, -385f, 390f), Struct_1(vec2<bool>(false, true), vec4<i32>(-24784i, -33458i, -35118i, 2147483647i), 1000f, 23752i, vec2<u32>(35374u, 28253u)), vec3<u32>(55137u, 33858u, 10950u)), Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(-43990i, 0i, -657i, -9957i), -800f, -1i, vec2<u32>(0u, 1u)), vec3<f32>(238f, 2085f, -2354f), Struct_1(vec2<bool>(true, false), vec4<i32>(-1i, 23720i, 11670i, 6951i), -356f, -19384i, vec2<u32>(12778u, 34086u)), vec3<u32>(44941u, 91884u, 4294967295u)), Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(13322i, -4681i, 1i, 0i), -1000f, 1i, vec2<u32>(0u, 1u)), vec3<f32>(-875f, 521f, 1345f), Struct_1(vec2<bool>(true, true), vec4<i32>(1i, -49486i, -45254i, 1i), 1000f, -16942i, vec2<u32>(69003u, 79274u)), vec3<u32>(28585u, 0u, 0u)), Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(55195i, 1i, -43596i, 3690i), 496f, 1430i, vec2<u32>(66498u, 4294967295u)), vec3<f32>(-2038f, 118f, -125f), Struct_1(vec2<bool>(false, false), vec4<i32>(30587i, 0i, 0i, -5883i), 607f, -13316i, vec2<u32>(63918u, 0u)), vec3<u32>(0u, 5798u, 13953u)), Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(-26767i, 40315i, -52728i, -33870i), -534f, i32(-2147483648), vec2<u32>(0u, 50251u)), vec3<f32>(-945f, -652f, 794f), Struct_1(vec2<bool>(true, false), vec4<i32>(i32(-2147483648), 0i, 12253i, 1i), -1063f, i32(-2147483648), vec2<u32>(0u, 4294967295u)), vec3<u32>(472u, 30006u, 83659u)), Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(42453i, i32(-2147483648), 17598i, 5588i), 803f, i32(-2147483648), vec2<u32>(42890u, 56910u)), vec3<f32>(-551f, -978f, -574f), Struct_1(vec2<bool>(true, false), vec4<i32>(2147483647i, i32(-2147483648), -2854i, -61900i), -1411f, 2147483647i, vec2<u32>(1u, 0u)), vec3<u32>(4294967295u, 1u, 1u)), Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(22452i, 26179i, -21025i, -18570i), -1928f, 1i, vec2<u32>(4294967295u, 4294967295u)), vec3<f32>(-480f, 230f, 2284f), Struct_1(vec2<bool>(true, true), vec4<i32>(1i, 0i, 16797i, -21941i), 822f, 1i, vec2<u32>(1u, 1u)), vec3<u32>(42342u, 0u, 4294967295u)), Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(-497i, 18430i, 2147483647i, 1i), 778f, i32(-2147483648), vec2<u32>(1u, 0u)), vec3<f32>(-459f, -2224f, -1447f), Struct_1(vec2<bool>(true, false), vec4<i32>(0i, i32(-2147483648), 4862i, 2147483647i), 690f, 3138i, vec2<u32>(2719u, 4713u)), vec3<u32>(4294967295u, 0u, 15573u)), Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(-7846i, -25541i, i32(-2147483648), 2147483647i), -1142f, 1i, vec2<u32>(17008u, 22573u)), vec3<f32>(-861f, -1298f, 222f), Struct_1(vec2<bool>(true, false), vec4<i32>(2147483647i, 0i, -2887i, 0i), 2037f, -26042i, vec2<u32>(0u, 4294967295u)), vec3<u32>(78487u, 0u, 4294967295u)), Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(14128i, 2147483647i, 655i, -2155i), -1268f, 18312i, vec2<u32>(4294967295u, 5352u)), vec3<f32>(970f, -454f, 146f), Struct_1(vec2<bool>(false, false), vec4<i32>(-13908i, 2147483647i, -24385i, i32(-2147483648)), -449f, -29229i, vec2<u32>(0u, 1u)), vec3<u32>(36474u, 72628u, 1u)), Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(2147483647i, -9367i, 1i, -59087i), -333f, -1i, vec2<u32>(0u, 1u)), vec3<f32>(1414f, -1275f, -1195f), Struct_1(vec2<bool>(true, false), vec4<i32>(9172i, 47348i, -35105i, 2147483647i), 419f, -5318i, vec2<u32>(1u, 1u)), vec3<u32>(4294967295u, 1u, 0u)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_3) -> vec2<bool> {
    global1 = array<vec4<u32>, 19>();
    global3 = vec3<u32>(1u, ~_wgslsmith_mod_u32(select(1u, 0u, true), u_input.c.x), ~global3.x);
    var var_0 = arg_2;
    var var_1 = _wgslsmith_add_vec2_i32(u_input.b.xx, vec2<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(global2.c.b & _wgslsmith_div_vec4_i32(global2.c.b, vec4<i32>(0i, -1i, 2147483647i, 6330i)), vec4<i32>(2631i, select(global2.a.b.x, global0[_wgslsmith_index_u32(95759u, 28u)], true), _wgslsmith_mod_i32(global2.c.d, u_input.a), -2147483647i))));
    let var_2 = Struct_3(select(vec2<bool>(false, ~var_1.x < _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(-39995i, -2147483647i, global0[_wgslsmith_index_u32(11047u, 28u)]))), global2.c.a, global2.a.a.x));
    return select(vec2<bool>(true, global2.a.d > -1i), select(select(!var_0.a, global2.a.a, true), select(vec2<bool>(true, false), global2.c.a, select(vec2<bool>(false, var_0.a.x), global2.c.a, global2.a.a.x)), false), global2.c.a);
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.b.x, arg_0.c, global2.c.c, -200f)))))))) + vec4<f32>(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x * global2.a.c)) - 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-972f, arg_0.c)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0.c, _wgslsmith_f_op_f32(-arg_0.c))))));
    var var_1 = Struct_1(select(select(!func_3(vec2<f32>(1354f, 1456f), u_input.c.x, Struct_3(global2.a.a)), func_3(global2.b.xz, 1u, Struct_3(arg_0.a)), arg_0.a.x), !vec2<bool>(global2.c.a.x, !arg_0.a.x), 1i <= _wgslsmith_div_i32(u_input.a, i32(-1i) * -1i)), -select(vec4<i32>(u_input.a, 54980i, -32959i, global0[_wgslsmith_index_u32(4808u, 28u)]), _wgslsmith_clamp_vec4_i32(vec4<i32>(-29316i, u_input.b.x, -33640i, global0[_wgslsmith_index_u32(1u, 28u)]), vec4<i32>(arg_0.d, -2147483647i, -2147483647i, arg_0.b.x), vec4<i32>(u_input.b.x, 0i, global0[_wgslsmith_index_u32(1u, 28u)], u_input.b.x)), !vec4<bool>(false, arg_0.a.x, false, arg_1)) | ~(~(~global2.c.b)), global2.c.c, _wgslsmith_mult_i32(0i, u_input.b.x) | min(_wgslsmith_add_i32(1i, arg_0.d), reverseBits(_wgslsmith_sub_i32(-2147483647i, -38777i))), vec2<u32>(_wgslsmith_dot_vec3_u32(global2.d, u_input.c), _wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(12675u, 1u), vec2<u32>(1u, 0u))), ~reverseBits(u_input.c.xz))));
    let var_2 = Struct_1(vec2<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2000f))) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -705f)), true), vec4<i32>(min(abs(_wgslsmith_clamp_i32(var_1.b.x, arg_0.d, 1i)), 1i), max(firstTrailingBit(var_1.b.x) | arg_0.d, (global2.a.b.x >> (global3.x % 32u)) >> (_wgslsmith_clamp_u32(arg_0.e.x, global2.c.e.x, global2.d.x) % 32u)), -_wgslsmith_dot_vec4_i32(select(vec4<i32>(20508i, -2147483647i, 2147483647i, -8618i), global2.a.b, arg_1), ~global2.c.b), 2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.c.c)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(963f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1518f - arg_0.c), _wgslsmith_f_op_f32(arg_0.c - var_1.c))))), var_1.b.x, select(~_wgslsmith_add_vec2_u32(arg_0.e, vec2<u32>(45066u, 12114u)), u_input.c.xy, !arg_0.a.x));
    global3 = ~countOneBits(abs(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 9974u), u_input.c), var_1.e.x, 37770u)));
    global4 = array<Struct_2, 29>();
    return var_1.e.x;
}

fn func_1(arg_0: u32, arg_1: vec3<f32>) -> Struct_3 {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~arg_0, _wgslsmith_mod_u32(~arg_0, _wgslsmith_dot_vec2_u32(u_input.c.yz, ~global3.xz)), _wgslsmith_div_u32(func_2(Struct_1(global2.c.a, global2.c.b, global2.b.x, 58631i, global3.zz), any(vec2<bool>(false, global2.c.a.x))), ~20569u), 0u), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.d.x ^ 0u, abs(global3.x), 4294967295u << (0u % 32u), _wgslsmith_clamp_u32(4294967295u, global3.x, global3.x)), vec4<u32>(select(4294967295u, global3.x, false), arg_0, u_input.c.x, ~global3.x), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 20794u, 75900u, global3.x) | vec4<u32>(4294967295u, global2.d.x, 4294967295u, global2.a.e.x), ~global1[_wgslsmith_index_u32(37421u, 19u)])));
    var var_1 = global2.a;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(arg_1.x - global2.b.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -1186f)));
    var var_3 = Struct_3(func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global2.b.yy)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2.c.c, -937f))))), global3.x, Struct_3(var_1.a)));
    var_2 = _wgslsmith_div_f32(-959f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.c - -384f))));
    return Struct_3(!vec2<bool>(true, !var_3.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.b.x;
    let var_1 = global3.yy & vec2<u32>(abs(global3.x >> (global2.a.e.x % 32u)), ~(~(74248u >> (1u % 32u))));
    let var_2 = global2.a;
    global1 = array<vec4<u32>, 19>();
    var var_3 = func_1(~0u & firstLeadingBit(global3.x), global2.b);
    global3 = vec3<u32>(61937u, abs(~_wgslsmith_mod_u32(20691u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 64077u), global3.yz))), 1u | _wgslsmith_div_u32(reverseBits(0u), var_2.e.x >> (_wgslsmith_clamp_u32(34428u, global2.a.e.x, 1u) % 32u)));
    var var_4 = Struct_1(select(vec2<bool>(!var_3.a.x, (var_1.x <= 4648u) && (var_2.c <= var_2.c)), func_3(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2.a.c, -465f))), abs(u_input.c.x), Struct_3(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, var_2.a.x)))), select(!var_3.a, !func_3(global2.b.yx, 0u, Struct_3(var_3.a)), global2.a.a)), -select(abs(var_2.b), min(firstLeadingBit(vec4<i32>(0i, global0[_wgslsmith_index_u32(u_input.c.x, 28u)], -14484i, -4457i)), var_2.b), !vec4<bool>(false, var_2.a.x, var_2.a.x, global2.a.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -627f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.c)))), ~reverseBits(u_input.b.x), min(min(select(var_1, vec2<u32>(global3.x, var_2.e.x), false), reverseBits(var_1)), var_1) >> (~(vec2<u32>(5800u, 30645u) >> (var_1 % vec2<u32>(32u))) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(~abs(abs(vec3<u32>(var_2.e.x, u_input.c.x, global3.x))), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(26263u, 18669u, 54856u), u_input.c) & global2.d, ~vec3<u32>(global3.x, var_2.e.x, 4294967295u))), global2.c.b.xxw, var_1, vec4<u32>(var_2.e.x, abs(4294967295u), var_2.e.x, var_4.e.x), _wgslsmith_div_f32(global2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -747f)));
}

